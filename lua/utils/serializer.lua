
local Base64 = require("base64")

--- Tag	Type	Payload
--- 0	nil	    None
--- 1	false	None
--- 2	true	None
--- 3	Integer	8-byte signed integer
--- 4	Float	8-byte double
--- 5	String	4-byte length + raw bytes
--- 6	Table	4-byte entry count + encoded key/value pairs

local Serializer = {}

local function encodeValue(value, output, ancestors)
    local t = type(value)

    if t == "nil" then
        output[#output + 1] = "\0"

    elseif t == "boolean" then
        output[#output + 1] = value and "\2" or "\1"

    elseif t == "number" then
        if math.type(value) == "integer" then
            output[#output + 1] = "\3"
            output[#output + 1] = string.pack(">j", value)
        else
            output[#output + 1] = "\4"
            output[#output + 1] = string.pack(">d", value)
        end

    elseif t == "string" then
        output[#output + 1] = "\5"
        output[#output + 1] = string.pack(">I4", #value)
        output[#output + 1] = value

    elseif t == "table" then
        assert(not ancestors[value], "cyclic table detected")
        ancestors[value] = true

        local count = 0
        for _ in pairs(value) do
            count = count + 1
        end

        assert(count <= 0xFFFFFFFF, "table too large")

        output[#output + 1] = "\6"
        output[#output + 1] = string.pack(">I4", count)

        for k, v in pairs(value) do
            encodeValue(k, output, ancestors)
            encodeValue(v, output, ancestors)
        end

        ancestors[value] = nil

    else
        error("Unsupported Lua type: " .. t)
    end
end

function Serializer.serialize(value)
    local output = {}
    encodeValue(value, output, {})
    return table.concat(output)
end

local function decodeValue(data, pos)
    assert(pos <= #data, "unexpected end of data")

    local tag = data:byte(pos)
    pos = pos + 1

    if tag == 0 then
        return nil, pos

    elseif tag == 1 then
        return false, pos

    elseif tag == 2 then
        return true, pos

    elseif tag == 3 then
        local value
        value, pos = string.unpack(">j", data, pos)
        return value, pos

    elseif tag == 4 then
        local value
        value, pos = string.unpack(">d", data, pos)
        return value, pos

    elseif tag == 5 then
        local length
        length, pos = string.unpack(">I4", data, pos)

        assert(length <= #data - pos + 1,
            "string exceeds remaining data")

        local value = data:sub(pos, pos + length - 1)
        return value, pos + length

    elseif tag == 6 then
        local count
        count, pos = string.unpack(">I4", data, pos)

        local result = {}

        for _ = 1, count do
            local key, value

            key, pos = decodeValue(data, pos)
            value, pos = decodeValue(data, pos)

            assert(key ~= nil, "nil table key")
            result[key] = value
        end

        return result, pos

    else
        error("Invalid serialization tag: " .. tag)
    end
end

function Serializer.deserialize(data)
    local value, pos = decodeValue(data, 1)
    assert(pos == #data + 1, "trailing data")
    return value
end

function Serializer.encode(value)
    return Base64.encode(Serializer.serialize(value))
end

function Serializer.decode(data)
    return Serializer.deserialize(Base64.decode(data))
end

return Serializer
