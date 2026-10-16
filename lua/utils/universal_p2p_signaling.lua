local Serializer = require("serializer")
local PlayerRegistry = require("player_registry")

local signaling = {}
signaling.listening = false
signaling.callbackTable = {}

local function splitByCount(str, count)
    assert(count > 0, "count must be positive")

    local chunks = {}

    for i = 1, #str, count do
        chunks[#chunks + 1] = str:sub(i, i + count - 1)
    end

    return chunks
end

function signaling.sendOne(who, id, data, includeSelf)
    if who == PlayerRegistry.getPlayerSelf() and not includeSelf then
        return
    end

    local payload = Serializer.encode(data)
    local payloadList = splitByCount(payload, 999)

    game.ServerSignal("P2PWire")
        :AddInt(PlayerRegistry.getPlayerSelf())
        :AddInt(who)
        :AddString(id)
        :AddStringList(payloadList)
        :SendSignal()
end

function signaling.sendSome(whos, id, data, includeSelf)
    for _, value in ipairs(whos) do
        signaling.sendOne(value, id, data, includeSelf)
    end
end

function signaling.sendAll(id, data, includeSelf)
    signaling.sendSome(PlayerRegistry.getPlayerList(), id, data, includeSelf)
end

local function joinChunks(chunks)
    return table.concat(chunks)
end

---Listens to the P2PWire for ServerSignals. Payload is decoded, but mind the function signature.
---@param id string The identifier for wire signals.
---@param callback fun(from: number, to: number, payload: any): nil The callback function.
function signaling.addListener(id, callback)
    if not signaling.listening then
        signaling.listening = true

        script:RegisterServerSignalHandler(
            "P2PWire",
            function(signalName, signalParams)
                local from = signalParams[1]
                local to = signalParams[2]
                local messageId = signalParams[3]
                local payloadList = signalParams[4]

                -- Ignore messages not addressed to this player (if sent here by mistake).
                local self = PlayerRegistry.getPlayerSelf()
                if to ~= self then
                    return
                end

                local callbacks =
                    signaling.callbackTable[messageId]

                if not callbacks then
                    return
                end

                local payload = Serializer.decode(
                    joinChunks(payloadList)
                )

                -- Decode once, regardless of callback count.
                for _, func in ipairs(callbacks) do
                    func(from, to, payload)
                end
            end
        )
    end

    signaling.callbackTable[id] =
        signaling.callbackTable[id] or {}

    table.insert(signaling.callbackTable[id], callback)
end

---Removes a callback function registered as a listener.
function signaling.removeListener(id, callback)
    for index, value in ipairs(signaling.callbackTable[id] or {}) do
        if value == callback then
            table.remove(signaling.callbackTable[id], index)
            return
        end
    end
end