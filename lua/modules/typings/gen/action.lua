local arrayMap = require("utils.tsbinding").arrayMap
local exports = {}
local function createBaseSwitchActiveAction(self)
    return {characterId = 0, characterDefinitionId = 0}
end
exports.SwitchActiveAction = {
    create = function(self, base)
        return exports.SwitchActiveAction:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseSwitchActiveAction(nil)
        message.characterId = object.characterId or 0
        message.characterDefinitionId = object.characterDefinitionId or 0
        return message
    end
}
local function createBasePlayCardAction(self)
    return {cardId = 0, cardDefinitionId = 0, targetIds = {}, willBeEffectless = false}
end
--- 打出手牌
exports.PlayCardAction = {
    create = function(self, base)
        return exports.PlayCardAction:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBasePlayCardAction(nil)
        message.cardId = object.cardId or 0
        message.cardDefinitionId = object.cardDefinitionId or 0
        local opt_0 = object.targetIds
        message.targetIds = opt_0 and arrayMap(
            object.targetIds,
            function(_, e) return e end
        ) or ({})
        local object_willBeEffectless_2 = object.willBeEffectless
        if object_willBeEffectless_2 == nil then
            object_willBeEffectless_2 = false
        end
        message.willBeEffectless = object_willBeEffectless_2
        return message
    end
}
local function createBaseUseSkillAction(self)
    return {skillDefinitionId = 0, targetIds = {}, mainDamageTargetId = nil}
end
--- 使用技能
exports.UseSkillAction = {
    create = function(self, base)
        return exports.UseSkillAction:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseUseSkillAction(nil)
        message.skillDefinitionId = object.skillDefinitionId or 0
        local opt_3 = object.targetIds
        message.targetIds = opt_3 and arrayMap(
            object.targetIds,
            function(_, e) return e end
        ) or ({})
        message.mainDamageTargetId = object.mainDamageTargetId or nil
        return message
    end
}
local function createBaseElementalTuningAction(self)
    return {removedCardId = 0, targetDice = 0, allowTuningAnyDice = false}
end
--- 元素调和
exports.ElementalTuningAction = {
    create = function(self, base)
        return exports.ElementalTuningAction:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseElementalTuningAction(nil)
        message.removedCardId = object.removedCardId or 0
        message.targetDice = object.targetDice or 0
        local object_allowTuningAnyDice_5 = object.allowTuningAnyDice
        if object_allowTuningAnyDice_5 == nil then
            object_allowTuningAnyDice_5 = false
        end
        message.allowTuningAnyDice = object_allowTuningAnyDice_5
        return message
    end
}
local function createBaseDeclareEndAction(self)
    return {}
end
--- 宣布结束
exports.DeclareEndAction = {
    create = function(self, base)
        return exports.DeclareEndAction:fromPartial(base or ({}))
    end,
    fromPartial = function(self, _)
        local message = createBaseDeclareEndAction(nil)
        return message
    end
}
return exports