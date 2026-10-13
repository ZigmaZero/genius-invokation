--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local mutation = require("modules.typings.gen.mutation")
local ApplyAuraEM = mutation.ApplyAuraEM
local CreateEntityEM = mutation.CreateEntityEM
local DamageEM = mutation.DamageEM
local ModifyEntityVarEM = mutation.ModifyEntityVarEM
local MoveEntityEM = mutation.MoveEntityEM
local RemoveEntityEM = mutation.RemoveEntityEM
local SwitchActiveEM = mutation.SwitchActiveEM
local TransformDefinitionEM = mutation.TransformDefinitionEM

local exports = {}
local function createBasePreviewData(self)
    return {mutation = nil}
end
exports.PreviewData = {
    create = function(self, base)
        local exports_PreviewData_fromPartial_1 = exports.PreviewData.fromPartial
        local base_0 = base
        if base_0 == nil then
            base_0 = {}
        end
        return exports_PreviewData_fromPartial_1(exports.PreviewData, base_0)
    end,
    fromPartial = function(self, object)
        local message = createBasePreviewData(nil)
        local opt_2 = object.mutation
        if opt_2 ~= nil then
            opt_2 = opt_2["$case"]
        end
        local temp_6 = opt_2 == "switchActive"
        if temp_6 then
            local opt_4 = object.mutation
            if opt_4 ~= nil then
                opt_4 = opt_4.value
            end
            temp_6 = opt_4 ~= nil
        end
        local temp_6_9 = temp_6
        if temp_6_9 then
            local opt_7 = object.mutation
            if opt_7 ~= nil then
                opt_7 = opt_7.value
            end
            temp_6_9 = opt_7 ~= nil
        end
        if temp_6_9 then
            message.mutation = {
                ["$case"] = "switchActive",
                value = SwitchActiveEM:fromPartial(object.mutation.value)
            }
        end
        local opt_10 = object.mutation
        if opt_10 ~= nil then
            opt_10 = opt_10["$case"]
        end
        local temp_14 = opt_10 == "createEntity"
        if temp_14 then
            local opt_12 = object.mutation
            if opt_12 ~= nil then
                opt_12 = opt_12.value
            end
            temp_14 = opt_12 ~= nil
        end
        local temp_14_17 = temp_14
        if temp_14_17 then
            local opt_15 = object.mutation
            if opt_15 ~= nil then
                opt_15 = opt_15.value
            end
            temp_14_17 = opt_15 ~= nil
        end
        if temp_14_17 then
            message.mutation = {
                ["$case"] = "createEntity",
                value = CreateEntityEM:fromPartial(object.mutation.value)
            }
        end
        local opt_18 = object.mutation
        if opt_18 ~= nil then
            opt_18 = opt_18["$case"]
        end
        local temp_22 = opt_18 == "removeEntity"
        if temp_22 then
            local opt_20 = object.mutation
            if opt_20 ~= nil then
                opt_20 = opt_20.value
            end
            temp_22 = opt_20 ~= nil
        end
        local temp_22_25 = temp_22
        if temp_22_25 then
            local opt_23 = object.mutation
            if opt_23 ~= nil then
                opt_23 = opt_23.value
            end
            temp_22_25 = opt_23 ~= nil
        end
        if temp_22_25 then
            message.mutation = {
                ["$case"] = "removeEntity",
                value = RemoveEntityEM:fromPartial(object.mutation.value)
            }
        end
        local opt_26 = object.mutation
        if opt_26 ~= nil then
            opt_26 = opt_26["$case"]
        end
        local temp_30 = opt_26 == "modifyEntityVar"
        if temp_30 then
            local opt_28 = object.mutation
            if opt_28 ~= nil then
                opt_28 = opt_28.value
            end
            temp_30 = opt_28 ~= nil
        end
        local temp_30_33 = temp_30
        if temp_30_33 then
            local opt_31 = object.mutation
            if opt_31 ~= nil then
                opt_31 = opt_31.value
            end
            temp_30_33 = opt_31 ~= nil
        end
        if temp_30_33 then
            message.mutation = {
                ["$case"] = "modifyEntityVar",
                value = ModifyEntityVarEM:fromPartial(object.mutation.value)
            }
        end
        local opt_34 = object.mutation
        if opt_34 ~= nil then
            opt_34 = opt_34["$case"]
        end
        local temp_38 = opt_34 == "transformDefinition"
        if temp_38 then
            local opt_36 = object.mutation
            if opt_36 ~= nil then
                opt_36 = opt_36.value
            end
            temp_38 = opt_36 ~= nil
        end
        local temp_38_41 = temp_38
        if temp_38_41 then
            local opt_39 = object.mutation
            if opt_39 ~= nil then
                opt_39 = opt_39.value
            end
            temp_38_41 = opt_39 ~= nil
        end
        if temp_38_41 then
            message.mutation = {
                ["$case"] = "transformDefinition",
                value = TransformDefinitionEM:fromPartial(object.mutation.value)
            }
        end
        local opt_42 = object.mutation
        if opt_42 ~= nil then
            opt_42 = opt_42["$case"]
        end
        local temp_46 = opt_42 == "damage"
        if temp_46 then
            local opt_44 = object.mutation
            if opt_44 ~= nil then
                opt_44 = opt_44.value
            end
            temp_46 = opt_44 ~= nil
        end
        local temp_46_49 = temp_46
        if temp_46_49 then
            local opt_47 = object.mutation
            if opt_47 ~= nil then
                opt_47 = opt_47.value
            end
            temp_46_49 = opt_47 ~= nil
        end
        if temp_46_49 then
            message.mutation = {
                ["$case"] = "damage",
                value = DamageEM:fromPartial(object.mutation.value)
            }
        end
        local opt_50 = object.mutation
        if opt_50 ~= nil then
            opt_50 = opt_50["$case"]
        end
        local temp_54 = opt_50 == "applyAura"
        if temp_54 then
            local opt_52 = object.mutation
            if opt_52 ~= nil then
                opt_52 = opt_52.value
            end
            temp_54 = opt_52 ~= nil
        end
        local temp_54_57 = temp_54
        if temp_54_57 then
            local opt_55 = object.mutation
            if opt_55 ~= nil then
                opt_55 = opt_55.value
            end
            temp_54_57 = opt_55 ~= nil
        end
        if temp_54_57 then
            message.mutation = {
                ["$case"] = "applyAura",
                value = ApplyAuraEM:fromPartial(object.mutation.value)
            }
        end
        local opt_58 = object.mutation
        if opt_58 ~= nil then
            opt_58 = opt_58["$case"]
        end
        local temp_62 = opt_58 == "moveEntity"
        if temp_62 then
            local opt_60 = object.mutation
            if opt_60 ~= nil then
                opt_60 = opt_60.value
            end
            temp_62 = opt_60 ~= nil
        end
        local temp_62_65 = temp_62
        if temp_62_65 then
            local opt_63 = object.mutation
            if opt_63 ~= nil then
                opt_63 = opt_63.value
            end
            temp_62_65 = opt_63 ~= nil
        end
        if temp_62_65 then
            message.mutation = {
                ["$case"] = "moveEntity",
                value = MoveEntityEM:fromPartial(object.mutation.value)
            }
        end
        return message
    end
}
return exports
