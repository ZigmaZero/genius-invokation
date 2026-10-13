local ts = require("utils.tsbinding")

local exports = {}
local PhaseType = {}
PhaseType.INIT_HANDS = 0
PhaseType[PhaseType.INIT_HANDS] = "INIT_HANDS"
PhaseType.INIT_ACTIVES = 1
PhaseType[PhaseType.INIT_ACTIVES] = "INIT_ACTIVES"
PhaseType.ROLL = 2
PhaseType[PhaseType.ROLL] = "ROLL"
PhaseType.ACTION = 3
PhaseType[PhaseType.ACTION] = "ACTION"
PhaseType.END = 4
PhaseType[PhaseType.END] = "END"
PhaseType.GAME_END = 5
PhaseType[PhaseType.GAME_END] = "GAME_END"
exports.PhaseType = PhaseType
--- 玩家的当前 IO 状态
local PlayerStatus = {}
PlayerStatus.UNSPECIFIED = 0
PlayerStatus[PlayerStatus.UNSPECIFIED] = "UNSPECIFIED"
PlayerStatus.CHOOSING_ACTIVE = 1
PlayerStatus[PlayerStatus.CHOOSING_ACTIVE] = "CHOOSING_ACTIVE"
PlayerStatus.SWITCHING_HANDS = 2
PlayerStatus[PlayerStatus.SWITCHING_HANDS] = "SWITCHING_HANDS"
PlayerStatus.REROLLING = 3
PlayerStatus[PlayerStatus.REROLLING] = "REROLLING"
PlayerStatus.ACTING = 4
PlayerStatus[PlayerStatus.ACTING] = "ACTING"
PlayerStatus.SELECTING_CARDS = 5
PlayerStatus[PlayerStatus.SELECTING_CARDS] = "SELECTING_CARDS"
exports.PlayerStatus = PlayerStatus

local EntityType = {}
EntityType.UNSPECIFIED = 0
EntityType[EntityType.UNSPECIFIED] = "UNSPECIFIED"
EntityType.EVENT_CARD = 1
EntityType[EntityType.EVENT_CARD] = "EVENT_CARD"
EntityType.STATUS = 2
EntityType[EntityType.STATUS] = "STATUS"
EntityType.COMBAT_STATUS = 3
EntityType[EntityType.COMBAT_STATUS] = "COMBAT_STATUS"
EntityType.SUMMON = 4
EntityType[EntityType.SUMMON] = "SUMMON"
EntityType.SUPPORT = 5
EntityType[EntityType.SUPPORT] = "SUPPORT"
EntityType.EQUIPMENT = 6
EntityType[EntityType.EQUIPMENT] = "EQUIPMENT"
exports.EntityType = EntityType

local EquipmentType = {}
EquipmentType.OTHER = 0
EquipmentType[EquipmentType.OTHER] = "OTHER"
EquipmentType.WEAPON = 1
EquipmentType[EquipmentType.WEAPON] = "WEAPON"
EquipmentType.ARTIFACT = 2
EquipmentType[EquipmentType.ARTIFACT] = "ARTIFACT"
EquipmentType.TECHNIQUE = 3
EquipmentType[EquipmentType.TECHNIQUE] = "TECHNIQUE"
EquipmentType = EquipmentType
exports.EquipmentType = EquipmentType

local function createBaseState(self)
    return {
        phase = 0,
        roundNumber = 0,
        currentTurn = 0,
        winner = nil,
        player = {}
    }
end

exports.State = {
    create = function(self, base)
        return exports.State:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseState(nil)
        message.phase = object.phase or 0
        message.roundNumber = object.roundNumber or 0
        message.currentTurn = object.currentTurn or 0
        message.winner = object.winner or nil
        local opt_6 = object.player
        message.player = opt_6 and ts.arrayMap(
            object.player,
            function(_, e) return exports.PlayerState:fromPartial(e) end
        ) or ({})
        return message
    end
}
local function createBasePlayerState(self)
    return {
        activeCharacterId = nil,
        character = {},
        combatStatus = {},
        summon = {},
        support = {},
        dice = {},
        pileCard = {},
        handCard = {},
        status = 0,
        declaredEnd = false,
        legendUsed = false,
        initiativeSkill = {}
    }
end
exports.PlayerState = {
    create = function(self, base)
        return exports.PlayerState:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBasePlayerState(nil)
        message.activeCharacterId = object.activeCharacterId or nil
        local opt_8 = object.character
        message.character = opt_8 and ts.arrayMap(
            object.character,
            function(_, e) return exports.CharacterState:fromPartial(e) end
        ) or ({})
        local opt_10 = object.combatStatus
        message.combatStatus = opt_10 and ts.arrayMap(
            object.combatStatus,
            function(_, e) return exports.EntityState:fromPartial(e) end
        ) or ({})
        local opt_12 = object.summon
        message.summon = opt_12 and ts.arrayMap(
            object.summon,
            function(_, e) return exports.EntityState:fromPartial(e) end
        ) or ({})
        local opt_14 = object.support
        message.support = opt_14 and ts.arrayMap(
            object.support,
            function(_, e) return exports.EntityState:fromPartial(e) end
        ) or ({})
        local opt_16 = object.dice
        message.dice = opt_16 and ts.arrayMap(
            object.dice,
            function(_, e) return e end
        ) or ({})
        local opt_18 = object.pileCard
        message.pileCard = opt_18 and ts.arrayMap(
            object.pileCard,
            function(_, e) return exports.EntityState:fromPartial(e) end
        ) or ({})
        local opt_20 = object.handCard
        message.handCard = opt_20 and ts.arrayMap(
            object.handCard,
            function(_, e) return exports.EntityState:fromPartial(e) end
        ) or ({})
        message.status = object.status or 0
        local object_declaredEnd_22 = object.declaredEnd
        if object_declaredEnd_22 == nil then
            object_declaredEnd_22 = false
        end
        message.declaredEnd = object_declaredEnd_22
        local object_legendUsed_23 = object.legendUsed
        if object_legendUsed_23 == nil then
            object_legendUsed_23 = false
        end
        message.legendUsed = object_legendUsed_23
        local opt_24 = object.initiativeSkill
        message.initiativeSkill = opt_24 and ts.arrayMap(
            object.initiativeSkill,
            function(_, e) return exports.SkillInfo:fromPartial(e) end
        ) or ({})
        return message
    end
}
local function createBaseCharacterState(self)
    return {
        id = 0,
        definitionId = 0,
        entity = {},
        defeated = false,
        health = 0,
        maxHealth = 0,
        energy = 0,
        maxEnergy = 0,
        aura = 0,
        tags = 0,
        specialEnergyName = nil
    }
end
exports.CharacterState = {
    create = function(self, base)
        return exports.CharacterState:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseCharacterState(nil)
        message.id = object.id or 0
        message.definitionId = object.definitionId or 0
        local opt_26 = object.entity
        message.entity = opt_26 and ts.arrayMap(
            object.entity,
            function(_, e) return exports.EntityState:fromPartial(e) end
        ) or ({})
        local object_defeated_28 = object.defeated
        if object_defeated_28 == nil then
            object_defeated_28 = false
        end
        message.defeated = object_defeated_28
        message.health = object.health or 0
        message.maxHealth = object.maxHealth or 0
        message.energy = object.energy or 0
        message.maxEnergy = object.maxEnergy or 0
        message.aura = object.aura or 0
        message.tags = object.tags or 0
        message.specialEnergyName = object.specialEnergyName or nil
        return message
    end
}
local function createBaseEntityState(self)
    return {
        id = 0,
        definitionId = 0,
        descriptionDictionary = {},
        definitionCost = {},
        tags = 0,
        attachment = {},
        type = 0,
        variableName = nil,
        variableValue = nil,
        hintText = nil,
        hintIcon = nil,
        hasUsagePerRound = false,
        equipment = nil
    }
end
exports.EntityState = {
    create = function(self, base)
        return exports.EntityState:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseEntityState(nil)
        message.id = object.id or 0
        message.definitionId = object.definitionId or 0
        message.descriptionDictionary = ts.arrayReduce(
            ts.objectEntries(object.descriptionDictionary or ({})),
            function(_, acc, bindingPattern0)
                local value
                local key
                key = bindingPattern0[1]
                value = bindingPattern0[2]
                if value ~= nil then
                    acc[key] = tostring(value)
                end
                return acc
            end,
            {}
        )
        local opt_29 = object.definitionCost
        message.definitionCost = opt_29 and ts.arrayMap(
            object.definitionCost,
            function(_, e) return exports.DiceRequirement:fromPartial(e) end
        ) or ({})
        message.tags = object.tags or 0
        local opt_31 = object.attachment
        message.attachment = opt_31 and ts.arrayMap(
            object.attachment,
            function(_, e) return exports.AttachmentState:fromPartial(e) end
        ) or ({})
        message.type = object.type or 0
        message.variableName = object.variableName or nil
        message.variableValue = object.variableValue or nil
        message.hintText = object.hintText or nil
        message.hintIcon = object.hintIcon or nil
        local object_hasUsagePerRound_33 = object.hasUsagePerRound
        if object_hasUsagePerRound_33 == nil then
            object_hasUsagePerRound_33 = false
        end
        message.hasUsagePerRound = object_hasUsagePerRound_33
        message.equipment = object.equipment or nil
        return message
    end
}
local function createBaseEntityState_DescriptionDictionaryEntry(self)
    return {key = "", value = ""}
end
exports.EntityState_DescriptionDictionaryEntry = {
    create = function(self, base)
        return exports.EntityState_DescriptionDictionaryEntry:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseEntityState_DescriptionDictionaryEntry(nil)
        message.key = object.key or ""
        message.value = object.value or ""
        return message
    end
}
local function createBaseAttachmentState(self)
    return {
        id = 0,
        definitionId = 0,
        descriptionDictionary = {},
        variableName = nil,
        variableValue = nil
    }
end
exports.AttachmentState = {
    create = function(self, base)
        return exports.AttachmentState:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseAttachmentState(nil)
        message.id = object.id or 0
        message.definitionId = object.definitionId or 0
        message.descriptionDictionary = ts.arrayReduce(
            ts.objectEntries(object.descriptionDictionary or ({})),
            function(_, acc, bindingPattern0)
                local value
                local key
                key = bindingPattern0[1]
                value = bindingPattern0[2]
                if value ~= nil then
                    acc[key] = tostring(value)
                end
                return acc
            end,
            {}
        )
        message.variableName = object.variableName or nil
        message.variableValue = object.variableValue or nil
        return message
    end
}
local function createBaseAttachmentState_DescriptionDictionaryEntry(self)
    return {key = "", value = ""}
end
exports.AttachmentState_DescriptionDictionaryEntry = {
    create = function(self, base)
        return exports.AttachmentState_DescriptionDictionaryEntry:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseAttachmentState_DescriptionDictionaryEntry(nil)
        message.key = object.key or ""
        message.value = object.value or ""
        return message
    end
}
local function createBaseSkillInfo(self)
    return {definitionId = 0, definitionCost = {}}
end
exports.SkillInfo = {
    create = function(self, base)
        return exports.SkillInfo:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSkillInfo(nil)
        message.definitionId = object.definitionId or 0
        local opt_34 = object.definitionCost
        message.definitionCost = opt_34 and ts.arrayMap(
            object.definitionCost,
            function(_, e) return exports.DiceRequirement:fromPartial(e) end
        ) or ({})
        return message
    end
}
return exports