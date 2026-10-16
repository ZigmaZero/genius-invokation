
local Base64 = {}

local alphabet =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

function Base64.encode(data)
    assert(type(data) == "string", "expected a string")

    local result = {}
    local len = #data

    for i = 1, len, 3 do
        local a = data:byte(i) or 0
        local b = data:byte(i + 1) or 0
        local c = data:byte(i + 2) or 0

        local n = a * 65536 + b * 256 + c

        local c1 = math.floor(n / 262144) % 64 + 1
        local c2 = math.floor(n / 4096) % 64 + 1
        local c3 = math.floor(n / 64) % 64 + 1
        local c4 = n % 64 + 1

        result[#result + 1] = alphabet:sub(c1, c1)
        result[#result + 1] = alphabet:sub(c2, c2)

        if i + 1 <= len then
            result[#result + 1] = alphabet:sub(c3, c3)
        else
            result[#result + 1] = "="
        end

        if i + 2 <= len then
            result[#result + 1] = alphabet:sub(c4, c4)
        else
            result[#result + 1] = "="
        end
    end

    return table.concat(result)
end

function Base64.decode(data)
    assert(type(data) == "string", "expected a string")

    local reverse = {}
    for i = 1, #alphabet do
        reverse[alphabet:sub(i, i)] = i - 1
    end

    local result = {}

    for i = 1, #data, 4 do
        local c1 = data:sub(i, i)
        local c2 = data:sub(i + 1, i + 1)
        local c3 = data:sub(i + 2, i + 2)
        local c4 = data:sub(i + 3, i + 3)

        local a = reverse[c1]
        local b = reverse[c2]
        local c = c3 == "=" and 0 or reverse[c3]
        local d = c4 == "=" and 0 or reverse[c4]

        assert(a and b and c and d, "invalid Base64 input")

        local n = a * 262144 + b * 4096 + c * 64 + d

        result[#result + 1] =
            string.char(math.floor(n / 65536) % 256)

        if c3 ~= "=" then
            result[#result + 1] =
                string.char(math.floor(n / 256) % 256)
        end

        if c4 ~= "=" then
            result[#result + 1] =
                string.char(n % 256)
        end
    end

    return table.concat(result)
end

return Base64
