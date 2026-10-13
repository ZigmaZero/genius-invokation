--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]

local __TS__ArrayMap = require("utils.tsbinding").arrayMap
local PreviewData = require("modules.typings.gen.preview").PreviewData
local enums = require("modules.typings.gen.enums")
local DiceRequirement = enums.DiceRequirement
local DiceType = enums.DiceType
local action = require("modules.typings.gen.action")
local DeclareEndAction = action.DeclareEndAction
local ElementalTuningAction = action.ElementalTuningAction
local PlayCardAction = action.PlayCardAction
local SwitchActiveAction = action.SwitchActiveAction
local UseSkillAction = action.UseSkillAction

local exports = {}
exports.ActionValidity = exports.ActionValidity or ({})
exports.ActionValidity.VALID = 0
exports.ActionValidity[exports.ActionValidity.VALID] = "VALID"
exports.ActionValidity.CONDITION_NOT_MET = 1
exports.ActionValidity[exports.ActionValidity.CONDITION_NOT_MET] = "CONDITION_NOT_MET"
exports.ActionValidity.NO_TARGET = 2
exports.ActionValidity[exports.ActionValidity.NO_TARGET] = "NO_TARGET"
exports.ActionValidity.NO_DICE = 3
exports.ActionValidity[exports.ActionValidity.NO_DICE] = "NO_DICE"
exports.ActionValidity.NO_ENERGY = 4
exports.ActionValidity[exports.ActionValidity.NO_ENERGY] = "NO_ENERGY"
exports.ActionValidity.DISABLED = 5
exports.ActionValidity[exports.ActionValidity.DISABLED] = "DISABLED"
exports.ActionValidity.NO_LEGEND = 6
exports.ActionValidity[exports.ActionValidity.NO_LEGEND] = "NO_LEGEND"
local function createBaseRerollDiceRequest(self)
    return {}
end
exports.RerollDiceRequest = {
    create = function(self, base)
        return exports.RerollDiceRequest:fromPartial(base or ({}))
    end,
    fromPartial = function(self, _)
        local message = createBaseRerollDiceRequest(nil)
        return message
    end
}
local function createBaseSwitchHandsRequest(self)
    return {}
end
exports.SwitchHandsRequest = {
    create = function(self, base)
        return exports.SwitchHandsRequest:fromPartial(base or ({}))
    end,
    fromPartial = function(self, _)
        local message = createBaseSwitchHandsRequest(nil)
        return message
    end
}
local function createBaseChooseActiveRequest(self)
    return {candidateIds = {}}
end
exports.ChooseActiveRequest = {
    create = function(self, base)
        return exports.ChooseActiveRequest:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseChooseActiveRequest(nil)
        local opt_0 = object.candidateIds
        message.candidateIds = opt_0 and __TS__ArrayMap(
            object.candidateIds,
            function(_, e) return e end
        ) or ({})
        return message
    end
}
local function createBaseAction(self)
    return {
        action = nil,
        preview = {},
        requiredCost = {},
        autoSelectedDice = {},
        validity = 0,
        isFast = false
    }
end
exports.Action = {
    create = function(self, base)
        return exports.Action:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseAction(nil)
        local opt_2 = object.action
        local temp_6 = (opt_2 and opt_2["$case"]) == "switchActive"
        if temp_6 then
            local opt_4 = object.action
            temp_6 = (opt_4 and opt_4.value) ~= nil
        end
        local temp_6_9 = temp_6
        if temp_6_9 then
            local opt_7 = object.action
            temp_6_9 = (opt_7 and opt_7.value) ~= nil
        end
        if temp_6_9 then
            message.action = {
                ["$case"] = "switchActive",
                value = SwitchActiveAction:fromPartial(object.action.value)
            }
        end
        local opt_10 = object.action
        local temp_14 = (opt_10 and opt_10["$case"]) == "playCard"
        if temp_14 then
            local opt_12 = object.action
            temp_14 = (opt_12 and opt_12.value) ~= nil
        end
        local temp_14_17 = temp_14
        if temp_14_17 then
            local opt_15 = object.action
            temp_14_17 = (opt_15 and opt_15.value) ~= nil
        end
        if temp_14_17 then
            message.action = {
                ["$case"] = "playCard",
                value = PlayCardAction:fromPartial(object.action.value)
            }
        end
        local opt_18 = object.action
        local temp_22 = (opt_18 and opt_18["$case"]) == "useSkill"
        if temp_22 then
            local opt_20 = object.action
            temp_22 = (opt_20 and opt_20.value) ~= nil
        end
        local temp_22_25 = temp_22
        if temp_22_25 then
            local opt_23 = object.action
            temp_22_25 = (opt_23 and opt_23.value) ~= nil
        end
        if temp_22_25 then
            message.action = {
                ["$case"] = "useSkill",
                value = UseSkillAction:fromPartial(object.action.value)
            }
        end
        local opt_26 = object.action
        local temp_30 = (opt_26 and opt_26["$case"]) == "elementalTuning"
        if temp_30 then
            local opt_28 = object.action
            temp_30 = (opt_28 and opt_28.value) ~= nil
        end
        local temp_30_33 = temp_30
        if temp_30_33 then
            local opt_31 = object.action
            temp_30_33 = (opt_31 and opt_31.value) ~= nil
        end
        if temp_30_33 then
            message.action = {
                ["$case"] = "elementalTuning",
                value = ElementalTuningAction:fromPartial(object.action.value)
            }
        end
        local opt_34 = object.action
        local temp_38 = (opt_34 and opt_34["$case"]) == "declareEnd"
        if temp_38 then
            local opt_36 = object.action
            temp_38 = (opt_36 and opt_36.value) ~= nil
        end
        local temp_38_41 = temp_38
        if temp_38_41 then
            local opt_39 = object.action
            temp_38_41 = (opt_39 and opt_39.value) ~= nil
        end
        if temp_38_41 then
            message.action = {
                ["$case"] = "declareEnd",
                value = DeclareEndAction:fromPartial(object.action.value)
            }
        end
        local opt_42 = object.preview
        if opt_42 ~= nil then
            opt_42 = opt_42:map(function(_, e) return PreviewData:fromPartial(e) end)
        end
        message.preview = opt_42 or ({})
        local opt_44 = object.requiredCost
        if opt_44 ~= nil then
            opt_44 = opt_44:map(function(_, e) return DiceRequirement:fromPartial(e) end)
        end
        message.requiredCost = opt_44 or ({})
        local opt_46 = object.autoSelectedDice
        if opt_46 ~= nil then
            opt_46 = opt_46:map(function(_, e) return e end)
        end
        message.autoSelectedDice = opt_46 or ({})
        message.validity = object.validity or 0
        local object_isFast_48 = object.isFast
        if object_isFast_48 == nil then
            object_isFast_48 = false
        end
        message.isFast = object_isFast_48
        return message
    end
}
local function createBaseActionRequest(self)
    return {action = {}}
end
exports.ActionRequest = {
    create = function(self, base)
        return exports.ActionRequest:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseActionRequest(nil)
        local opt_49 = object.action
        message.action = opt_49 and __TS__ArrayMap(
            object.action,
            function(_, e) return exports.Action:fromPartial(e) end
        ) or ({})
        return message
    end
}
local function createBaseSelectCardRequest(self)
    return {candidateDefinitionIds = {}}
end
exports.SelectCardRequest = {
    create = function(self, base)
        return exports.SelectCardRequest:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSelectCardRequest(nil)
        local opt_51 = object.candidateDefinitionIds
        message.candidateDefinitionIds = opt_51 and __TS__ArrayMap(
            object.candidateDefinitionIds,
            function(_, e) return e end
        ) or ({})
        return message
    end
}
local function createBaseRequest(self)
    return {request = nil}
end
exports.Request = {
    create = function(self, base)
        return exports.Request:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseRequest(nil)
        local opt_53 = object.request
        local temp_57 = (opt_53 and opt_53["$case"]) == "rerollDice"
        if temp_57 then
            local opt_55 = object.request
            temp_57 = (opt_55 and opt_55.value) ~= nil
        end
        local temp_57_60 = temp_57
        if temp_57_60 then
            local opt_58 = object.request
            temp_57_60 = (opt_58 and opt_58.value) ~= nil
        end
        if temp_57_60 then
            message.request = {
                ["$case"] = "rerollDice",
                value = exports.RerollDiceRequest:fromPartial(object.request.value)
            }
        end
        local opt_61 = object.request
        local temp_65 = (opt_61 and opt_61["$case"]) == "switchHands"
        if temp_65 then
            local opt_63 = object.request
            temp_65 = (opt_63 and opt_63.value) ~= nil
        end
        local temp_65_68 = temp_65
        if temp_65_68 then
            local opt_66 = object.request
            temp_65_68 = (opt_66 and opt_66.value) ~= nil
        end
        if temp_65_68 then
            message.request = {
                ["$case"] = "switchHands",
                value = exports.SwitchHandsRequest:fromPartial(object.request.value)
            }
        end
        local opt_69 = object.request
        local temp_73 = (opt_69 and opt_69["$case"]) == "chooseActive"
        if temp_73 then
            local opt_71 = object.request
            temp_73 = (opt_71 and opt_71.value) ~= nil
        end
        local temp_73_76 = temp_73
        if temp_73_76 then
            local opt_74 = object.request
            temp_73_76 = (opt_74 and opt_74.value) ~= nil
        end
        if temp_73_76 then
            message.request = {
                ["$case"] = "chooseActive",
                value = exports.ChooseActiveRequest:fromPartial(object.request.value)
            }
        end
        local opt_77 = object.request
        local temp_81 = (opt_77 and opt_77["$case"]) == "action"
        if temp_81 then
            local opt_79 = object.request
            temp_81 = (opt_79 and opt_79.value) ~= nil
        end
        local temp_81_84 = temp_81
        if temp_81_84 then
            local opt_82 = object.request
            temp_81_84 = (opt_82 and opt_82.value) ~= nil
        end
        if temp_81_84 then
            message.request = {
                ["$case"] = "action",
                value = exports.ActionRequest:fromPartial(object.request.value)
            }
        end
        local opt_85 = object.request
        local temp_89 = (opt_85 and opt_85["$case"]) == "selectCard"
        if temp_89 then
            local opt_87 = object.request
            temp_89 = (opt_87 and opt_87.value) ~= nil
        end
        local temp_89_92 = temp_89
        if temp_89_92 then
            local opt_90 = object.request
            temp_89_92 = (opt_90 and opt_90.value) ~= nil
        end
        if temp_89_92 then
            message.request = {
                ["$case"] = "selectCard",
                value = exports.SelectCardRequest:fromPartial(object.request.value)
            }
        end
        return message
    end
}
local function createBaseRerollDiceResponse(self)
    return {diceToReroll = {}}
end
exports.RerollDiceResponse = {
    create = function(self, base)
        return exports.RerollDiceResponse:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseRerollDiceResponse(nil)
        local opt_93 = object.diceToReroll
        if opt_93 ~= nil then
            opt_93 = opt_93:map(function(_, e) return e end)
        end
        message.diceToReroll = opt_93 or ({})
        return message
    end
}
local function createBaseSwitchHandsResponse(self)
    return {removedHandIds = {}}
end
exports.SwitchHandsResponse = {
    create = function(self, base)
        return exports.SwitchHandsResponse:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSwitchHandsResponse(nil)
        local opt_95 = object.removedHandIds
        message.removedHandIds = opt_95 and __TS__ArrayMap(
            object.removedHandIds,
            function(_, e) return e end
        ) or ({})
        return message
    end
}
local function createBaseChooseActiveResponse(self)
    return {activeCharacterId = 0}
end
exports.ChooseActiveResponse = {
    create = function(self, base)
        return exports.ChooseActiveResponse:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseChooseActiveResponse(nil)
        message.activeCharacterId = object.activeCharacterId or 0
        return message
    end
}
local function createBaseActionResponse(self)
    return {chosenActionIndex = 0, usedDice = {}}
end
exports.ActionResponse = {
    create = function(self, base)
        return exports.ActionResponse:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseActionResponse(nil)
        message.chosenActionIndex = object.chosenActionIndex or 0
        local opt_97 = object.usedDice
        if opt_97 ~= nil then
            opt_97 = opt_97:map(function(_, e) return e end)
        end
        message.usedDice = opt_97 or ({})
        return message
    end
}
local function createBaseSelectCardResponse(self)
    return {selectedDefinitionId = 0}
end
exports.SelectCardResponse = {
    create = function(self, base)
        return exports.SelectCardResponse:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSelectCardResponse(nil)
        message.selectedDefinitionId = object.selectedDefinitionId or 0
        return message
    end
}
local function createBaseResponse(self)
    return {response = nil}
end
exports.Response = {
    create = function(self, base)
        return exports.Response:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseResponse(nil)
        local opt_99 = object.response
        local temp_103 = (opt_99 and opt_99["$case"]) == "rerollDice"
        if temp_103 then
            local opt_101 = object.response
            temp_103 = (opt_101 and opt_101.value) ~= nil
        end
        local temp_103_106 = temp_103
        if temp_103_106 then
            local opt_104 = object.response
            temp_103_106 = (opt_104 and opt_104.value) ~= nil
        end
        if temp_103_106 then
            message.response = {
                ["$case"] = "rerollDice",
                value = exports.RerollDiceResponse:fromPartial(object.response.value)
            }
        end
        local opt_107 = object.response
        local temp_111 = (opt_107 and opt_107["$case"]) == "switchHands"
        if temp_111 then
            local opt_109 = object.response
            temp_111 = (opt_109 and opt_109.value) ~= nil
        end
        local temp_111_114 = temp_111
        if temp_111_114 then
            local opt_112 = object.response
            temp_111_114 = (opt_112 and opt_112.value) ~= nil
        end
        if temp_111_114 then
            message.response = {
                ["$case"] = "switchHands",
                value = exports.SwitchHandsResponse:fromPartial(object.response.value)
            }
        end
        local opt_115 = object.response
        local temp_119 = (opt_115 and opt_115["$case"]) == "chooseActive"
        if temp_119 then
            local opt_117 = object.response
            temp_119 = (opt_117 and opt_117.value) ~= nil
        end
        local temp_119_122 = temp_119
        if temp_119_122 then
            local opt_120 = object.response
            temp_119_122 = (opt_120 and opt_120.value) ~= nil
        end
        if temp_119_122 then
            message.response = {
                ["$case"] = "chooseActive",
                value = exports.ChooseActiveResponse:fromPartial(object.response.value)
            }
        end
        local opt_123 = object.response
        local temp_127 = (opt_123 and opt_123["$case"]) == "action"
        if temp_127 then
            local opt_125 = object.response
            temp_127 = (opt_125 and opt_125.value) ~= nil
        end
        local temp_127_130 = temp_127
        if temp_127_130 then
            local opt_128 = object.response
            temp_127_130 = (opt_128 and opt_128.value) ~= nil
        end
        if temp_127_130 then
            message.response = {
                ["$case"] = "action",
                value = exports.ActionResponse:fromPartial(object.response.value)
            }
        end
        local opt_131 = object.response
        local temp_135 = (opt_131 and opt_131["$case"]) == "selectCard"
        if temp_135 then
            local opt_133 = object.response
            temp_135 = (opt_133 and opt_133.value) ~= nil
        end
        local temp_135_138 = temp_135
        if temp_135_138 then
            local opt_136 = object.response
            temp_135_138 = (opt_136 and opt_136.value) ~= nil
        end
        if temp_135_138 then
            message.response = {
                ["$case"] = "selectCard",
                value = exports.SelectCardResponse:fromPartial(object.response.value)
            }
        end
        return message
    end
}
return exports
