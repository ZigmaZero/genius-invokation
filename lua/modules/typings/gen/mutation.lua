--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local enums = require("modules.typings.gen.enums")
local AuraType = enums.AuraType
local DamageType = enums.DamageType
local DiceType = enums.DiceType
local ReactionType = enums.ReactionType

local state = require("modules.typings.gen.state")
local AttachmentState = state.AttachmentState
local CharacterState = state.CharacterState
local EntityState = state.EntityState
local PhaseType = state.PhaseType
local PlayerStatus = state.PlayerStatus

local exports = {}
exports.SwitchActiveFromAction = exports.SwitchActiveFromAction or ({})
exports.SwitchActiveFromAction.NONE = 0
exports.SwitchActiveFromAction[exports.SwitchActiveFromAction.NONE] = "NONE"
exports.SwitchActiveFromAction.SLOW = 1
exports.SwitchActiveFromAction[exports.SwitchActiveFromAction.SLOW] = "SLOW"
exports.SwitchActiveFromAction.FAST = 2
exports.SwitchActiveFromAction[exports.SwitchActiveFromAction.FAST] = "FAST"
exports.EntityArea = exports.EntityArea or ({})
exports.EntityArea.UNSPECIFIED = 0
exports.EntityArea[exports.EntityArea.UNSPECIFIED] = "UNSPECIFIED"
exports.EntityArea.CHARACTER = 1
exports.EntityArea[exports.EntityArea.CHARACTER] = "CHARACTER"
exports.EntityArea.COMBAT_STATUS = 2
exports.EntityArea[exports.EntityArea.COMBAT_STATUS] = "COMBAT_STATUS"
exports.EntityArea.SUMMON = 3
exports.EntityArea[exports.EntityArea.SUMMON] = "SUMMON"
exports.EntityArea.SUPPORT = 4
exports.EntityArea[exports.EntityArea.SUPPORT] = "SUPPORT"
exports.EntityArea.HAND = 5
exports.EntityArea[exports.EntityArea.HAND] = "HAND"
exports.EntityArea.PILE = 6
exports.EntityArea[exports.EntityArea.PILE] = "PILE"
exports.MoveEntityReason = exports.MoveEntityReason or ({})
exports.MoveEntityReason.UNSPECIFIED = 0
exports.MoveEntityReason[exports.MoveEntityReason.UNSPECIFIED] = "UNSPECIFIED"
exports.MoveEntityReason.SWITCH = 1
exports.MoveEntityReason[exports.MoveEntityReason.SWITCH] = "SWITCH"
exports.MoveEntityReason.DRAW = 2
exports.MoveEntityReason[exports.MoveEntityReason.DRAW] = "DRAW"
exports.MoveEntityReason.UNDRAW = 3
exports.MoveEntityReason[exports.MoveEntityReason.UNDRAW] = "UNDRAW"
exports.MoveEntityReason.STEAL = 4
exports.MoveEntityReason[exports.MoveEntityReason.STEAL] = "STEAL"
exports.MoveEntityReason.SWAP = 5
exports.MoveEntityReason[exports.MoveEntityReason.SWAP] = "SWAP"
exports.MoveEntityReason.EQUIP = 6
exports.MoveEntityReason[exports.MoveEntityReason.EQUIP] = "EQUIP"
exports.MoveEntityReason.CREATE_SUPPORT = 7
exports.MoveEntityReason[exports.MoveEntityReason.CREATE_SUPPORT] = "CREATE_SUPPORT"
exports.MoveEntityReason.UNEQUIP = 8
exports.MoveEntityReason[exports.MoveEntityReason.UNEQUIP] = "UNEQUIP"
exports.MoveEntityReason.UNSUPPORT = 9
exports.MoveEntityReason[exports.MoveEntityReason.UNSUPPORT] = "UNSUPPORT"
exports.RemoveEntityReason = exports.RemoveEntityReason or ({})
exports.RemoveEntityReason.UNSPECIFIED = 0
exports.RemoveEntityReason[exports.RemoveEntityReason.UNSPECIFIED] = "UNSPECIFIED"
exports.RemoveEntityReason.EVENT_CARD_PLAYED = 1
exports.RemoveEntityReason[exports.RemoveEntityReason.EVENT_CARD_PLAYED] = "EVENT_CARD_PLAYED"
exports.RemoveEntityReason.ELEMENTAL_TUNING = 2
exports.RemoveEntityReason[exports.RemoveEntityReason.ELEMENTAL_TUNING] = "ELEMENTAL_TUNING"
exports.RemoveEntityReason.OVERFLOW = 3
exports.RemoveEntityReason[exports.RemoveEntityReason.OVERFLOW] = "OVERFLOW"
exports.RemoveEntityReason.DISCARDED = 4
exports.RemoveEntityReason[exports.RemoveEntityReason.DISCARDED] = "DISCARDED"
exports.RemoveEntityReason.EVENT_CARD_PLAY_NO_EFFECT = 5
exports.RemoveEntityReason[exports.RemoveEntityReason.EVENT_CARD_PLAY_NO_EFFECT] = "EVENT_CARD_PLAY_NO_EFFECT"
exports.RemoveEntityReason.EVENT_CARD_DRAWN = 6
exports.RemoveEntityReason[exports.RemoveEntityReason.EVENT_CARD_DRAWN] = "EVENT_CARD_DRAWN"
exports.RemoveEntityReason.EQUIP_OVERRIDDEN = 7
exports.RemoveEntityReason[exports.RemoveEntityReason.EQUIP_OVERRIDDEN] = "EQUIP_OVERRIDDEN"
exports.RemoveEntityReason.CREATE_SUPPORT_OVERRIDDEN = 8
exports.RemoveEntityReason[exports.RemoveEntityReason.CREATE_SUPPORT_OVERRIDDEN] = "CREATE_SUPPORT_OVERRIDDEN"
exports.RemoveEntityReason.TARGET_OF_SUPPORT_PLAYED = 9
exports.RemoveEntityReason[exports.RemoveEntityReason.TARGET_OF_SUPPORT_PLAYED] = "TARGET_OF_SUPPORT_PLAYED"
exports.ModifyDirection = exports.ModifyDirection or ({})
exports.ModifyDirection.UNSPECIFIED = 0
exports.ModifyDirection[exports.ModifyDirection.UNSPECIFIED] = "UNSPECIFIED"
exports.ModifyDirection.INCREASE = 1
exports.ModifyDirection[exports.ModifyDirection.INCREASE] = "INCREASE"
exports.ModifyDirection.DECREASE = 2
exports.ModifyDirection[exports.ModifyDirection.DECREASE] = "DECREASE"
exports.ResetDiceReason = exports.ResetDiceReason or ({})
exports.ResetDiceReason.UNSPECIFIED = 0
exports.ResetDiceReason[exports.ResetDiceReason.UNSPECIFIED] = "UNSPECIFIED"
exports.ResetDiceReason.ROLL = 1
exports.ResetDiceReason[exports.ResetDiceReason.ROLL] = "ROLL"
exports.ResetDiceReason.CONSUME = 2
exports.ResetDiceReason[exports.ResetDiceReason.CONSUME] = "CONSUME"
exports.ResetDiceReason.ELEMENTAL_TUNING = 3
exports.ResetDiceReason[exports.ResetDiceReason.ELEMENTAL_TUNING] = "ELEMENTAL_TUNING"
exports.ResetDiceReason.GENERATE = 4
exports.ResetDiceReason[exports.ResetDiceReason.GENERATE] = "GENERATE"
exports.ResetDiceReason.CONVERT = 5
exports.ResetDiceReason[exports.ResetDiceReason.CONVERT] = "CONVERT"
exports.ResetDiceReason.ABSORB = 6
exports.ResetDiceReason[exports.ResetDiceReason.ABSORB] = "ABSORB"
exports.HealKind = exports.HealKind or ({})
exports.HealKind.NOT_A_HEAL = 0
exports.HealKind[exports.HealKind.NOT_A_HEAL] = "NOT_A_HEAL"
exports.HealKind.COMMON = 1
exports.HealKind[exports.HealKind.COMMON] = "COMMON"
exports.HealKind.IMMUNE_DEFEATED = 2
exports.HealKind[exports.HealKind.IMMUNE_DEFEATED] = "IMMUNE_DEFEATED"
exports.HealKind.REVIVE = 3
exports.HealKind[exports.HealKind.REVIVE] = "REVIVE"
exports.HealKind.INCREASE_MAX_HEALTH = 4
exports.HealKind[exports.HealKind.INCREASE_MAX_HEALTH] = "INCREASE_MAX_HEALTH"
exports.HealKind.DISTRIBUTION = 5
exports.HealKind[exports.HealKind.DISTRIBUTION] = "DISTRIBUTION"
exports.SkillType = exports.SkillType or ({})
exports.SkillType.TRIGGERED = 0
exports.SkillType[exports.SkillType.TRIGGERED] = "TRIGGERED"
exports.SkillType.CHARACTER_PASSIVE = 1
exports.SkillType[exports.SkillType.CHARACTER_PASSIVE] = "CHARACTER_PASSIVE"
exports.SkillType.NORMAL = 2
exports.SkillType[exports.SkillType.NORMAL] = "NORMAL"
exports.SkillType.ELEMENTAL = 3
exports.SkillType[exports.SkillType.ELEMENTAL] = "ELEMENTAL"
exports.SkillType.BURST = 4
exports.SkillType[exports.SkillType.BURST] = "BURST"
exports.SkillType.TECHNIQUE = 5
exports.SkillType[exports.SkillType.TECHNIQUE] = "TECHNIQUE"
exports.SkillType.TRIGGERED_FROM_ITS_ATTACHMENT = 6
exports.SkillType[exports.SkillType.TRIGGERED_FROM_ITS_ATTACHMENT] = "TRIGGERED_FROM_ITS_ATTACHMENT"
exports.PlayerFlag = exports.PlayerFlag or ({})
exports.PlayerFlag.UNSPECIFIED = 0
exports.PlayerFlag[exports.PlayerFlag.UNSPECIFIED] = "UNSPECIFIED"
exports.PlayerFlag.DECLARED_END = 1
exports.PlayerFlag[exports.PlayerFlag.DECLARED_END] = "DECLARED_END"
exports.PlayerFlag.LEGEND_USED = 2
exports.PlayerFlag[exports.PlayerFlag.LEGEND_USED] = "LEGEND_USED"
local function createBaseExposedMutation(self)
    return { mutation = nil }
end
exports.ExposedMutation = {
    create = function(self, base)
        return exports.ExposedMutation:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseExposedMutation(nil)
        local opt_0 = object.mutation
        local temp_4 = (opt_0 and opt_0["$case"]) == "changePhase"
        if temp_4 then
            local opt_2 = object.mutation
            temp_4 = (opt_2 and opt_2.value) ~= nil
        end
        local temp_4_7 = temp_4
        if temp_4_7 then
            local opt_5 = object.mutation
            temp_4_7 = (opt_5 and opt_5.value) ~= nil
        end
        if temp_4_7 then
            message.mutation = {
                ["$case"] = "changePhase",
                value = exports.ChangePhaseEM:fromPartial(object.mutation.value)
            }
        end
        local opt_8 = object.mutation
        local temp_12 = (opt_8 and opt_8["$case"]) == "stepRound"
        if temp_12 then
            local opt_10 = object.mutation
            temp_12 = (opt_10 and opt_10.value) ~= nil
        end
        local temp_12_15 = temp_12
        if temp_12_15 then
            local opt_13 = object.mutation
            temp_12_15 = (opt_13 and opt_13.value) ~= nil
        end
        if temp_12_15 then
            message.mutation = {
                ["$case"] = "stepRound",
                value = exports.StepRoundEM:fromPartial(object.mutation.value)
            }
        end
        local opt_16 = object.mutation
        local temp_20 = (opt_16 and opt_16["$case"]) == "switchTurn"
        if temp_20 then
            local opt_18 = object.mutation
            temp_20 = (opt_18 and opt_18.value) ~= nil
        end
        local temp_20_23 = temp_20
        if temp_20_23 then
            local opt_21 = object.mutation
            temp_20_23 = (opt_21 and opt_21.value) ~= nil
        end
        if temp_20_23 then
            message.mutation = {
                ["$case"] = "switchTurn",
                value = exports.SwitchTurnEM:fromPartial(object.mutation.value)
            }
        end
        local opt_24 = object.mutation
        local temp_28 = (opt_24 and opt_24["$case"]) == "setWinner"
        if temp_28 then
            local opt_26 = object.mutation
            temp_28 = (opt_26 and opt_26.value) ~= nil
        end
        local temp_28_31 = temp_28
        if temp_28_31 then
            local opt_29 = object.mutation
            temp_28_31 = (opt_29 and opt_29.value) ~= nil
        end
        if temp_28_31 then
            message.mutation = {
                ["$case"] = "setWinner",
                value = exports.SetWinnerEM:fromPartial(object.mutation.value)
            }
        end
        local opt_32 = object.mutation
        local temp_36 = (opt_32 and opt_32["$case"]) == "switchActive"
        if temp_36 then
            local opt_34 = object.mutation
            temp_36 = (opt_34 and opt_34.value) ~= nil
        end
        local temp_36_39 = temp_36
        if temp_36_39 then
            local opt_37 = object.mutation
            temp_36_39 = (opt_37 and opt_37.value) ~= nil
        end
        if temp_36_39 then
            message.mutation = {
                ["$case"] = "switchActive",
                value = exports.SwitchActiveEM:fromPartial(object.mutation.value)
            }
        end
        local opt_40 = object.mutation
        local temp_44 = (opt_40 and opt_40["$case"]) == "createCharacter"
        if temp_44 then
            local opt_42 = object.mutation
            temp_44 = (opt_42 and opt_42.value) ~= nil
        end
        local temp_44_47 = temp_44
        if temp_44_47 then
            local opt_45 = object.mutation
            temp_44_47 = (opt_45 and opt_45.value) ~= nil
        end
        if temp_44_47 then
            message.mutation = {
                ["$case"] = "createCharacter",
                value = exports.CreateCharacterEM:fromPartial(object.mutation.value)
            }
        end
        local opt_48 = object.mutation
        local temp_52 = (opt_48 and opt_48["$case"]) == "createEntity"
        if temp_52 then
            local opt_50 = object.mutation
            temp_52 = (opt_50 and opt_50.value) ~= nil
        end
        local temp_52_55 = temp_52
        if temp_52_55 then
            local opt_53 = object.mutation
            temp_52_55 = (opt_53 and opt_53.value) ~= nil
        end
        if temp_52_55 then
            message.mutation = {
                ["$case"] = "createEntity",
                value = exports.CreateEntityEM:fromPartial(object.mutation.value)
            }
        end
        local opt_56 = object.mutation
        local temp_60 = (opt_56 and opt_56["$case"]) == "removeEntity"
        if temp_60 then
            local opt_58 = object.mutation
            temp_60 = (opt_58 and opt_58.value) ~= nil
        end
        local temp_60_63 = temp_60
        if temp_60_63 then
            local opt_61 = object.mutation
            temp_60_63 = (opt_61 and opt_61.value) ~= nil
        end
        if temp_60_63 then
            message.mutation = {
                ["$case"] = "removeEntity",
                value = exports.RemoveEntityEM:fromPartial(object.mutation.value)
            }
        end
        local opt_64 = object.mutation
        local temp_68 = (opt_64 and opt_64["$case"]) == "modifyEntityVar"
        if temp_68 then
            local opt_66 = object.mutation
            temp_68 = (opt_66 and opt_66.value) ~= nil
        end
        local temp_68_71 = temp_68
        if temp_68_71 then
            local opt_69 = object.mutation
            temp_68_71 = (opt_69 and opt_69.value) ~= nil
        end
        if temp_68_71 then
            message.mutation = {
                ["$case"] = "modifyEntityVar",
                value = exports.ModifyEntityVarEM:fromPartial(object.mutation.value)
            }
        end
        local opt_72 = object.mutation
        local temp_76 = (opt_72 and opt_72["$case"]) == "transformDefinition"
        if temp_76 then
            local opt_74 = object.mutation
            temp_76 = (opt_74 and opt_74.value) ~= nil
        end
        local temp_76_79 = temp_76
        if temp_76_79 then
            local opt_77 = object.mutation
            temp_76_79 = (opt_77 and opt_77.value) ~= nil
        end
        if temp_76_79 then
            message.mutation = {
                ["$case"] = "transformDefinition",
                value = exports.TransformDefinitionEM:fromPartial(object.mutation.value)
            }
        end
        local opt_80 = object.mutation
        local temp_84 = (opt_80 and opt_80["$case"]) == "resetDice"
        if temp_84 then
            local opt_82 = object.mutation
            temp_84 = (opt_82 and opt_82.value) ~= nil
        end
        local temp_84_87 = temp_84
        if temp_84_87 then
            local opt_85 = object.mutation
            temp_84_87 = (opt_85 and opt_85.value) ~= nil
        end
        if temp_84_87 then
            message.mutation = {
                ["$case"] = "resetDice",
                value = exports.ResetDiceEM:fromPartial(object.mutation.value)
            }
        end
        local opt_88 = object.mutation
        local temp_92 = (opt_88 and opt_88["$case"]) == "damage"
        if temp_92 then
            local opt_90 = object.mutation
            temp_92 = (opt_90 and opt_90.value) ~= nil
        end
        local temp_92_95 = temp_92
        if temp_92_95 then
            local opt_93 = object.mutation
            temp_92_95 = (opt_93 and opt_93.value) ~= nil
        end
        if temp_92_95 then
            message.mutation = {
                ["$case"] = "damage",
                value = exports.DamageEM:fromPartial(object.mutation.value)
            }
        end
        local opt_96 = object.mutation
        local temp_100 = (opt_96 and opt_96["$case"]) == "applyAura"
        if temp_100 then
            local opt_98 = object.mutation
            temp_100 = (opt_98 and opt_98.value) ~= nil
        end
        local temp_100_103 = temp_100
        if temp_100_103 then
            local opt_101 = object.mutation
            temp_100_103 = (opt_101 and opt_101.value) ~= nil
        end
        if temp_100_103 then
            message.mutation = {
                ["$case"] = "applyAura",
                value = exports.ApplyAuraEM:fromPartial(object.mutation.value)
            }
        end
        local opt_104 = object.mutation
        local temp_108 = (opt_104 and opt_104["$case"]) == "skillUsed"
        if temp_108 then
            local opt_106 = object.mutation
            temp_108 = (opt_106 and opt_106.value) ~= nil
        end
        local temp_108_111 = temp_108
        if temp_108_111 then
            local opt_109 = object.mutation
            temp_108_111 = (opt_109 and opt_109.value) ~= nil
        end
        if temp_108_111 then
            message.mutation = {
                ["$case"] = "skillUsed",
                value = exports.SkillUsedEM:fromPartial(object.mutation.value)
            }
        end
        local opt_112 = object.mutation
        local temp_116 = (opt_112 and opt_112["$case"]) == "playerStatusChange"
        if temp_116 then
            local opt_114 = object.mutation
            temp_116 = (opt_114 and opt_114.value) ~= nil
        end
        local temp_116_119 = temp_116
        if temp_116_119 then
            local opt_117 = object.mutation
            temp_116_119 = (opt_117 and opt_117.value) ~= nil
        end
        if temp_116_119 then
            message.mutation = {
                ["$case"] = "playerStatusChange",
                value = exports.PlayerStatusChangeEM:fromPartial(object.mutation.value)
            }
        end
        local opt_120 = object.mutation
        local temp_124 = (opt_120 and opt_120["$case"]) == "swapCharacterPosition"
        if temp_124 then
            local opt_122 = object.mutation
            temp_124 = (opt_122 and opt_122.value) ~= nil
        end
        local temp_124_127 = temp_124
        if temp_124_127 then
            local opt_125 = object.mutation
            temp_124_127 = (opt_125 and opt_125.value) ~= nil
        end
        if temp_124_127 then
            message.mutation = {
                ["$case"] = "swapCharacterPosition",
                value = exports.SwapCharacterPositionEM:fromPartial(object.mutation.value)
            }
        end
        local opt_128 = object.mutation
        local temp_132 = (opt_128 and opt_128["$case"]) == "setPlayerFlag"
        if temp_132 then
            local opt_130 = object.mutation
            temp_132 = (opt_130 and opt_130.value) ~= nil
        end
        local temp_132_135 = temp_132
        if temp_132_135 then
            local opt_133 = object.mutation
            temp_132_135 = (opt_133 and opt_133.value) ~= nil
        end
        if temp_132_135 then
            message.mutation = {
                ["$case"] = "setPlayerFlag",
                value = exports.SetPlayerFlagEM:fromPartial(object.mutation.value)
            }
        end
        local opt_136 = object.mutation
        local temp_140 = (opt_136 and opt_136["$case"]) == "rerollDone"
        if temp_140 then
            local opt_138 = object.mutation
            temp_140 = (opt_138 and opt_138.value) ~= nil
        end
        local temp_140_143 = temp_140
        if temp_140_143 then
            local opt_141 = object.mutation
            temp_140_143 = (opt_141 and opt_141.value) ~= nil
        end
        if temp_140_143 then
            message.mutation = {
                ["$case"] = "rerollDone",
                value = exports.RerollDoneEM:fromPartial(object.mutation.value)
            }
        end
        local opt_144 = object.mutation
        local temp_148 = (opt_144 and opt_144["$case"]) == "switchHandsDone"
        if temp_148 then
            local opt_146 = object.mutation
            temp_148 = (opt_146 and opt_146.value) ~= nil
        end
        local temp_148_151 = temp_148
        if temp_148_151 then
            local opt_149 = object.mutation
            temp_148_151 = (opt_149 and opt_149.value) ~= nil
        end
        if temp_148_151 then
            message.mutation = {
                ["$case"] = "switchHandsDone",
                value = exports.SwitchHandsDoneEM:fromPartial(object.mutation.value)
            }
        end
        local opt_152 = object.mutation
        local temp_156 = (opt_152 and opt_152["$case"]) == "chooseActiveDone"
        if temp_156 then
            local opt_154 = object.mutation
            temp_156 = (opt_154 and opt_154.value) ~= nil
        end
        local temp_156_159 = temp_156
        if temp_156_159 then
            local opt_157 = object.mutation
            temp_156_159 = (opt_157 and opt_157.value) ~= nil
        end
        if temp_156_159 then
            message.mutation = {
                ["$case"] = "chooseActiveDone",
                value = exports.ChooseActiveDoneEM:fromPartial(object.mutation.value)
            }
        end
        local opt_160 = object.mutation
        local temp_164 = (opt_160 and opt_160["$case"]) == "selectCardDone"
        if temp_164 then
            local opt_162 = object.mutation
            temp_164 = (opt_162 and opt_162.value) ~= nil
        end
        local temp_164_167 = temp_164
        if temp_164_167 then
            local opt_165 = object.mutation
            temp_164_167 = (opt_165 and opt_165.value) ~= nil
        end
        if temp_164_167 then
            message.mutation = {
                ["$case"] = "selectCardDone",
                value = exports.SelectCardDoneEM:fromPartial(object.mutation.value)
            }
        end
        local opt_168 = object.mutation
        local temp_172 = (opt_168 and opt_168["$case"]) == "handleEvent"
        if temp_172 then
            local opt_170 = object.mutation
            temp_172 = (opt_170 and opt_170.value) ~= nil
        end
        local temp_172_175 = temp_172
        if temp_172_175 then
            local opt_173 = object.mutation
            temp_172_175 = (opt_173 and opt_173.value) ~= nil
        end
        if temp_172_175 then
            message.mutation = {
                ["$case"] = "handleEvent",
                value = exports.HandleEventEM:fromPartial(object.mutation.value)
            }
        end
        local opt_176 = object.mutation
        local temp_180 = (opt_176 and opt_176["$case"]) == "moveEntity"
        if temp_180 then
            local opt_178 = object.mutation
            temp_180 = (opt_178 and opt_178.value) ~= nil
        end
        local temp_180_183 = temp_180
        if temp_180_183 then
            local opt_181 = object.mutation
            temp_180_183 = (opt_181 and opt_181.value) ~= nil
        end
        if temp_180_183 then
            message.mutation = {
                ["$case"] = "moveEntity",
                value = exports.MoveEntityEM:fromPartial(object.mutation.value)
            }
        end
        local opt_184 = object.mutation
        local temp_188 = (opt_184 and opt_184["$case"]) == "createAttachment"
        if temp_188 then
            local opt_186 = object.mutation
            temp_188 = (opt_186 and opt_186.value) ~= nil
        end
        local temp_188_191 = temp_188
        if temp_188_191 then
            local opt_189 = object.mutation
            temp_188_191 = (opt_189 and opt_189.value) ~= nil
        end
        if temp_188_191 then
            message.mutation = {
                ["$case"] = "createAttachment",
                value = exports.CreateAttachmentEM:fromPartial(object.mutation.value)
            }
        end
        local opt_192 = object.mutation
        local temp_196 = (opt_192 and opt_192["$case"]) == "resetVariables"
        if temp_196 then
            local opt_194 = object.mutation
            temp_196 = (opt_194 and opt_194.value) ~= nil
        end
        local temp_196_199 = temp_196
        if temp_196_199 then
            local opt_197 = object.mutation
            temp_196_199 = (opt_197 and opt_197.value) ~= nil
        end
        if temp_196_199 then
            message.mutation = {
                ["$case"] = "resetVariables",
                value = exports.ResetVariablesEM:fromPartial(object.mutation.value)
            }
        end
        return message
    end
}
local function createBaseChangePhaseEM(self)
    return { newPhase = PhaseType.INIT_HANDS, hasChange = false }
end
exports.ChangePhaseEM = {
    create = function(self, base)
        return exports.ChangePhaseEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseChangePhaseEM(nil)
        local object_newPhase_200 = object.newPhase
        if object_newPhase_200 == nil then
            object_newPhase_200 = 0
        end
        message.newPhase = object_newPhase_200
        local object_hasChange_201 = object.hasChange
        if object_hasChange_201 == nil then
            object_hasChange_201 = false
        end
        message.hasChange = object_hasChange_201
        return message
    end
}
local function createBaseStepRoundEM(self)
    return {}
end
exports.StepRoundEM = {
    create = function(self, base)
        return exports.StepRoundEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, _)
        local message = createBaseStepRoundEM(nil)
        return message
    end
}
local function createBaseSwitchTurnEM(self)
    return {}
end
exports.SwitchTurnEM = {
    create = function(self, base)
        return exports.SwitchTurnEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, _)
        local message = createBaseSwitchTurnEM(nil)
        return message
    end
}
local function createBaseSetWinnerEM(self)
    return { winner = nil }
end
exports.SetWinnerEM = {
    create = function(self, base)
        return exports.SetWinnerEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSetWinnerEM(nil)
        message.winner = object.winner or nil
        return message
    end
}
local function createBaseSwitchActiveEM(self)
    return {
        who = 0,
        characterId = 0,
        characterDefinitionId = 0,
        viaSkillDefinitionId = nil,
        fromAction = 0
    }
end
exports.SwitchActiveEM = {
    create = function(self, base)
        return exports.SwitchActiveEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSwitchActiveEM(nil)
        message.who = object.who or 0
        message.characterId = object.characterId or 0
        message.characterDefinitionId = object.characterDefinitionId or 0
        message.viaSkillDefinitionId = object.viaSkillDefinitionId or nil
        message.fromAction = object.fromAction or 0
        return message
    end
}
local function createBaseCreateCharacterEM(self)
    return { who = 0, character = nil }
end
exports.CreateCharacterEM = {
    create = function(self, base)
        return exports.CreateCharacterEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseCreateCharacterEM(nil)
        message.who = object.who or 0
        local temp_202
        if object.character ~= nil and object.character ~= nil then
            temp_202 = CharacterState:fromPartial(object.character)
        else
            temp_202 = nil
        end
        message.character = temp_202
        return message
    end
}
local function createBaseCreateEntityEM(self)
    return { who = 0, where = exports.EntityArea.UNSPECIFIED, entity = nil, masterCharacterId = nil }
end
exports.CreateEntityEM = {
    create = function(self, base)
        return exports.CreateEntityEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseCreateEntityEM(nil)
        message.who = object.who or 0
        message.where = object.where or 0
        local temp_203
        if object.entity ~= nil and object.entity ~= nil then
            temp_203 = EntityState:fromPartial(object.entity)
        else
            temp_203 = nil
        end
        message.entity = temp_203
        message.masterCharacterId = object.masterCharacterId or nil
        return message
    end
}
local function createBaseCreateAttachmentEM(self)
    return { who = 0, where = exports.EntityArea.UNSPECIFIED, attachment = nil, masterCardId = 0 }
end
exports.CreateAttachmentEM = {
    create = function(self, base)
        return exports.CreateAttachmentEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseCreateAttachmentEM(nil)
        message.who = object.who or 0
        message.where = object.where or 0
        local temp_204
        if object.attachment ~= nil and object.attachment ~= nil then
            temp_204 = AttachmentState:fromPartial(object.attachment)
        else
            temp_204 = nil
        end
        message.attachment = temp_204
        message.masterCardId = object.masterCardId or 0
        return message
    end
}
local function createBaseMoveEntityEM(self)
    return {
        fromWho = 0,
        fromWhere = exports.EntityArea.UNSPECIFIED,
        toWho = 0,
        toWhere = exports.EntityArea.UNSPECIFIED,
        targetIndex = nil,
        entity = nil,
        reason = exports.MoveEntityReason.UNSPECIFIED,
        toMasterCharacterId = nil
    }
end
exports.MoveEntityEM = {
    create = function(self, base)
        return exports.MoveEntityEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseMoveEntityEM(nil)
        message.fromWho = object.fromWho or 0
        message.fromWhere = object.fromWhere or 0
        message.toWho = object.toWho or 0
        message.toWhere = object.toWhere or 0
        message.targetIndex = object.targetIndex or nil
        local temp_205
        if object.entity ~= nil and object.entity ~= nil then
            temp_205 = EntityState:fromPartial(object.entity)
        else
            temp_205 = nil
        end
        message.entity = temp_205
        message.reason = object.reason or 0
        message.toMasterCharacterId = object.toMasterCharacterId or nil
        return message
    end
}
local function createBaseRemoveEntityEM(self)
    return { who = 0, entity = nil, where = exports.EntityArea.UNSPECIFIED, reason = exports.RemoveEntityReason
    .UNSPECIFIED }
end
exports.RemoveEntityEM = {
    create = function(self, base)
        return exports.RemoveEntityEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseRemoveEntityEM(nil)
        message.who = object.who or 0
        local temp_206
        if object.entity ~= nil and object.entity ~= nil then
            temp_206 = EntityState:fromPartial(object.entity)
        else
            temp_206 = nil
        end
        message.entity = temp_206
        message.where = object.where or 0
        message.reason = object.reason or 0
        return message
    end
}
local function createBaseModifyEntityVarEM(self)
    return {
        entityId = 0,
        entityDefinitionId = 0,
        variableName = "",
        variableValue = 0,
        direction = 0,
        oldValue = 0
    }
end
exports.ModifyEntityVarEM = {
    create = function(self, base)
        return exports.ModifyEntityVarEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseModifyEntityVarEM(nil)
        message.entityId = object.entityId or 0
        message.entityDefinitionId = object.entityDefinitionId or 0
        message.variableName = object.variableName or ""
        message.variableValue = object.variableValue or 0
        message.direction = object.direction or 0
        message.oldValue = object.oldValue or 0
        return message
    end
}
local function createBaseResetVariablesEM(self)
    return { entityId = 0, entityDefinitionId = 0 }
end
exports.ResetVariablesEM = {
    create = function(self, base)
        return exports.ResetVariablesEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseResetVariablesEM(nil)
        message.entityId = object.entityId or 0
        message.entityDefinitionId = object.entityDefinitionId or 0
        return message
    end
}
local function createBaseTransformDefinitionEM(self)
    return { entityId = 0, newEntityDefinitionId = 0 }
end
exports.TransformDefinitionEM = {
    create = function(self, base)
        return exports.TransformDefinitionEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseTransformDefinitionEM(nil)
        message.entityId = object.entityId or 0
        message.newEntityDefinitionId = object.newEntityDefinitionId or 0
        return message
    end
}
local function createBaseResetDiceEM(self)
    return { who = 0, dice = {}, reason = 0, conversionTargetHint = nil }
end
exports.ResetDiceEM = {
    create = function(self, base)
        return exports.ResetDiceEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseResetDiceEM(nil)
        message.who = object.who or 0
        local opt_207 = object.dice
        if opt_207 ~= nil then
            opt_207 = opt_207:map(function(_, e) return e end)
        end
        message.dice = opt_207 or ({})
        message.reason = object.reason or 0
        local object_conversionTargetHint_209 = object.conversionTargetHint
        if object_conversionTargetHint_209 == nil then
            object_conversionTargetHint_209 = nil
        end
        message.conversionTargetHint = object_conversionTargetHint_209
        return message
    end
}
local function createBaseDamageEM(self)
    return {
        damageType = DamageType.PHYSICAL,
        value = 0,
        targetId = 0,
        targetDefinitionId = 0,
        sourceId = 0,
        sourceDefinitionId = 0,
        isSkillMainDamage = false,
        reactionType = ReactionType.UNSPECIFIED,
        causeDefeated = false,
        oldAura = AuraType.NONE,
        newAura = AuraType.NONE,
        oldHealth = 0,
        newHealth = 0,
        healKind = 0
    }
end
exports.DamageEM = {
    create = function(self, base)
        return exports.DamageEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseDamageEM(nil)
        local object_damageType_210 = object.damageType
        if object_damageType_210 == nil then
            object_damageType_210 = 0
        end
        message.damageType = object_damageType_210
        message.value = object.value or 0
        message.targetId = object.targetId or 0
        message.targetDefinitionId = object.targetDefinitionId or 0
        message.sourceId = object.sourceId or 0
        message.sourceDefinitionId = object.sourceDefinitionId or 0
        local object_isSkillMainDamage_211 = object.isSkillMainDamage
        if object_isSkillMainDamage_211 == nil then
            object_isSkillMainDamage_211 = false
        end
        message.isSkillMainDamage = object_isSkillMainDamage_211
        local object_reactionType_212 = object.reactionType
        if object_reactionType_212 == nil then
            object_reactionType_212 = 0
        end
        message.reactionType = object_reactionType_212
        local object_causeDefeated_213 = object.causeDefeated
        if object_causeDefeated_213 == nil then
            object_causeDefeated_213 = false
        end
        message.causeDefeated = object_causeDefeated_213
        local object_oldAura_214 = object.oldAura
        if object_oldAura_214 == nil then
            object_oldAura_214 = 0
        end
        message.oldAura = object_oldAura_214
        local object_newAura_215 = object.newAura
        if object_newAura_215 == nil then
            object_newAura_215 = 0
        end
        message.newAura = object_newAura_215
        message.oldHealth = object.oldHealth or 0
        message.newHealth = object.newHealth or 0
        message.healKind = object.healKind or 0
        return message
    end
}
local function createBaseApplyAuraEM(self)
    return {
        elementType = DamageType.PHYSICAL,
        targetId = 0,
        targetDefinitionId = 0,
        reactionType = ReactionType.UNSPECIFIED,
        oldAura = AuraType.NONE,
        newAura = AuraType.NONE
    }
end
exports.ApplyAuraEM = {
    create = function(self, base)
        return exports.ApplyAuraEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseApplyAuraEM(nil)
        local object_elementType_216 = object.elementType
        if object_elementType_216 == nil then
            object_elementType_216 = 0
        end
        message.elementType = object_elementType_216
        message.targetId = object.targetId or 0
        message.targetDefinitionId = object.targetDefinitionId or 0
        local object_reactionType_217 = object.reactionType
        if object_reactionType_217 == nil then
            object_reactionType_217 = 0
        end
        message.reactionType = object_reactionType_217
        local object_oldAura_218 = object.oldAura
        if object_oldAura_218 == nil then
            object_oldAura_218 = 0
        end
        message.oldAura = object_oldAura_218
        local object_newAura_219 = object.newAura
        if object_newAura_219 == nil then
            object_newAura_219 = 0
        end
        message.newAura = object_newAura_219
        return message
    end
}
local function createBaseSkillUsedEM(self)
    return {
        callerId = 0,
        callerDefinitionId = 0,
        skillDefinitionId = 0,
        skillType = exports.SkillType.TRIGGERED,
        who = 0,
        triggeredOn = nil
    }
end
--- 使用或触发了技能
exports.SkillUsedEM = {
    create = function(self, base)
        return exports.SkillUsedEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSkillUsedEM(nil)
        message.callerId = object.callerId or 0
        message.callerDefinitionId = object.callerDefinitionId or 0
        message.skillDefinitionId = object.skillDefinitionId or 0
        message.skillType = object.skillType or 0
        message.who = object.who or 0
        message.triggeredOn = object.triggeredOn or nil
        return message
    end
}
local function createBasePlayerStatusChangeEM(self)
    return { who = 0, status = PlayerStatus.UNSPECIFIED }
end
exports.PlayerStatusChangeEM = {
    create = function(self, base)
        return exports.PlayerStatusChangeEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBasePlayerStatusChangeEM(nil)
        message.who = object.who or 0
        local object_status_220 = object.status
        if object_status_220 == nil then
            object_status_220 = 0
        end
        message.status = object_status_220
        return message
    end
}
local function createBaseSwapCharacterPositionEM(self)
    return {
        who = 0,
        character0Id = 0,
        character0DefinitionId = 0,
        character1Id = 0,
        character1DefinitionId = 0
    }
end
exports.SwapCharacterPositionEM = {
    create = function(self, base)
        return exports.SwapCharacterPositionEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSwapCharacterPositionEM(nil)
        message.who = object.who or 0
        message.character0Id = object.character0Id or 0
        message.character0DefinitionId = object.character0DefinitionId or 0
        message.character1Id = object.character1Id or 0
        message.character1DefinitionId = object.character1DefinitionId or 0
        return message
    end
}
local function createBaseSetPlayerFlagEM(self)
    return { who = 0, flagName = exports.PlayerFlag.UNSPECIFIED, flagValue = false }
end
exports.SetPlayerFlagEM = {
    create = function(self, base)
        return exports.SetPlayerFlagEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSetPlayerFlagEM(nil)
        message.who = object.who or 0
        message.flagName = object.flagName or 0
        local object_flagValue_221 = object.flagValue
        if object_flagValue_221 == nil then
            object_flagValue_221 = false
        end
        message.flagValue = object_flagValue_221
        return message
    end
}
local function createBaseRerollDoneEM(self)
    return { who = 0, count = 0 }
end
exports.RerollDoneEM = {
    create = function(self, base)
        return exports.RerollDoneEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseRerollDoneEM(nil)
        message.who = object.who or 0
        message.count = object.count or 0
        return message
    end
}
local function createBaseChooseActiveDoneEM(self)
    return { who = 0, characterId = 0, characterDefinitionId = 0 }
end
exports.ChooseActiveDoneEM = {
    create = function(self, base)
        return exports.ChooseActiveDoneEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseChooseActiveDoneEM(nil)
        message.who = object.who or 0
        message.characterId = object.characterId or 0
        message.characterDefinitionId = object.characterDefinitionId or 0
        return message
    end
}
local function createBaseSwitchHandsDoneEM(self)
    return { who = 0, count = 0 }
end
exports.SwitchHandsDoneEM = {
    create = function(self, base)
        return exports.SwitchHandsDoneEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSwitchHandsDoneEM(nil)
        message.who = object.who or 0
        message.count = object.count or 0
        return message
    end
}
local function createBaseSelectCardDoneEM(self)
    return { who = 0, selectedDefinitionId = 0 }
end
exports.SelectCardDoneEM = {
    create = function(self, base)
        return exports.SelectCardDoneEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSelectCardDoneEM(nil)
        message.who = object.who or 0
        message.selectedDefinitionId = object.selectedDefinitionId or 0
        return message
    end
}
local function createBaseHandleEventEM(self)
    return { isClose = false, eventName = "" }
end
exports.HandleEventEM = {
    create = function(self, base)
        return exports.HandleEventEM:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseHandleEventEM(nil)
        local object_isClose_222 = object.isClose
        if object_isClose_222 == nil then
            object_isClose_222 = false
        end
        message.isClose = object_isClose_222
        message.eventName = object.eventName or ""
        return message
    end
}
return exports
