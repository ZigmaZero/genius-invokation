local ts = {}

local function ts_class()
    local c = {prototype = {}}
    c.prototype.__index = c.prototype
    c.prototype.constructor = c
    return c
end

local function ts_new(target, ...)
    local instance = setmetatable({}, target.prototype)
    instance:__constructor(...)
    return instance
end

local function ts_arrayMap(self, callbackFn, thisArg)
    local result = {}
    for i = 1, #self do
        result[i] = callbackFn(thisArg, self[i], i - 1, self)
    end
    return result
end

local function ts_objectEntries(obj)
    local result = {}
    local len = 0
    for key in pairs(obj) do
        len = len + 1
        result[len] = {key, obj[key]}
    end
    return result
end

local function ts_countVarArgs(...)
    return select("#", ...)
end

local function ts_arrayReduce(self, callbackFn, ...)
    local len = #self
    local k = 0
    local accumulator = nil
    if ts_countVarArgs(...) ~= 0 then
        accumulator = ...
    elseif len > 0 then
        accumulator = self[1]
        k = 1
    else
        error("Reduce of empty array with no initial value", 0)
    end
    for i = k + 1, len do
        accumulator = callbackFn(
            nil,
            accumulator,
            self[i],
            i - 1,
            self
        )
    end
    return accumulator
end

local function ts_objectAssign(target, ...)
    local sources = {...}
    for i = 1, #sources do
        local source = sources[i]
        if type(source) == "table" then
            for key in pairs(source) do
                target[key] = source[key]
            end
        end
    end
    return target
end

local function ts_objectRest(target, usedProperties)
    local result = {}
    for property in pairs(target) do
        if not usedProperties[property] then
            result[property] = target[property]
        end
    end
    return result
end

ts.class = ts_class
ts.new = ts_new
ts.arrayMap = ts_arrayMap
ts.arrayReduce = ts_arrayReduce
ts.countVarArgs = ts_countVarArgs
ts.objectEntries = ts_objectEntries
ts.objectAssign = ts_objectAssign
ts.objectRest = ts_objectRest

return ts