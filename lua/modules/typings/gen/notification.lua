local State = require("modules.typings.gen.state").State
local ExposedMutation = require("modules.typings.gen.mutation").ExposedMutation

local exports = {}
local function createBaseNotification(self)
    return {state = nil, mutation = {}}
end
exports.Notification = {
    create = function(self, base)
        local exports_Notification_fromPartial_1 = exports.Notification.fromPartial
        local base_0 = base
        if base_0 == nil then
            base_0 = {}
        end
        return exports_Notification_fromPartial_1(exports.Notification, base_0)
    end,
    fromPartial = function(self, object)
        local message = createBaseNotification(nil)
        local temp_2
        if object.state ~= nil and object.state ~= nil then
            temp_2 = State:fromPartial(object.state)
        else
            temp_2 = nil
        end
        message.state = temp_2
        local opt_3 = object.mutation
        if opt_3 ~= nil then
            opt_3 = opt_3:map(function(_, e) return ExposedMutation:fromPartial(e) end)
        end
        message.mutation = opt_3 or ({})
        return message
    end
}
return exports