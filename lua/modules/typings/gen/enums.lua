local exports = {}

local DiceRequirementType = exports.DiceRequirementType or {}
DiceRequirementType.VOID = 0
DiceRequirementType[DiceRequirementType.VOID] = "VOID"
DiceRequirementType.CRYO = 1
DiceRequirementType[DiceRequirementType.CRYO] = "CRYO"
DiceRequirementType.HYDRO = 2
DiceRequirementType[DiceRequirementType.HYDRO] = "HYDRO"
DiceRequirementType.PYRO = 3
DiceRequirementType[DiceRequirementType.PYRO] = "PYRO"
DiceRequirementType.ELECTRO = 4
DiceRequirementType[DiceRequirementType.ELECTRO] = "ELECTRO"
DiceRequirementType.ANEMO = 5
DiceRequirementType[DiceRequirementType.ANEMO] = "ANEMO"
DiceRequirementType.GEO = 6
DiceRequirementType[DiceRequirementType.GEO] = "GEO"
DiceRequirementType.DENDRO = 7
DiceRequirementType[DiceRequirementType.DENDRO] = "DENDRO"
DiceRequirementType.ALIGNED = 8
DiceRequirementType[DiceRequirementType.ALIGNED] = "ALIGNED"
DiceRequirementType.ENERGY = 9
DiceRequirementType[DiceRequirementType.ENERGY] = "ENERGY"
DiceRequirementType.LEGEND = 10
DiceRequirementType[DiceRequirementType.LEGEND] = "LEGEND"
exports.DiceRequirementType = DiceRequirementType

local DiceType = exports.DiceType or {}
DiceType.UNSPECIFIED = 0
DiceType[DiceType.UNSPECIFIED] = "UNSPECIFIED"
DiceType.CRYO = 1
DiceType[DiceType.CRYO] = "CRYO"
DiceType.HYDRO = 2
DiceType[DiceType.HYDRO] = "HYDRO"
DiceType.PYRO = 3
DiceType[DiceType.PYRO] = "PYRO"
DiceType.ELECTRO = 4
DiceType[DiceType.ELECTRO] = "ELECTRO"
DiceType.ANEMO = 5
DiceType[DiceType.ANEMO] = "ANEMO"
DiceType.GEO = 6
DiceType[DiceType.GEO] = "GEO"
DiceType.DENDRO = 7
DiceType[DiceType.DENDRO] = "DENDRO"
DiceType.OMNI = 8
DiceType[DiceType.OMNI] = "OMNI"
exports.DiceType = DiceType

local DamageType = exports.DamageType or {}
DamageType.PHYSICAL = 0
DamageType[DamageType.PHYSICAL] = "PHYSICAL"
DamageType.CRYO = 1
DamageType[DamageType.CRYO] = "CRYO"
DamageType.HYDRO = 2
DamageType[DamageType.HYDRO] = "HYDRO"
DamageType.PYRO = 3
DamageType[DamageType.PYRO] = "PYRO"
DamageType.ELECTRO = 4
DamageType[DamageType.ELECTRO] = "ELECTRO"
DamageType.ANEMO = 5
DamageType[DamageType.ANEMO] = "ANEMO"
DamageType.GEO = 6
DamageType[DamageType.GEO] = "GEO"
DamageType.DENDRO = 7
DamageType[DamageType.DENDRO] = "DENDRO"
DamageType.PIERCING = 8
DamageType[DamageType.PIERCING] = "PIERCING"
DamageType.HEAL = 9
DamageType[DamageType.HEAL] = "HEAL"
exports.DamageType = DamageType

local AuraType = exports.AuraType or {}
AuraType.NONE = 0
AuraType[AuraType.NONE] = "NONE"
AuraType.CRYO = 1
AuraType[AuraType.CRYO] = "CRYO"
AuraType.HYDRO = 2
AuraType[AuraType.HYDRO] = "HYDRO"
AuraType.PYRO = 3
AuraType[AuraType.PYRO] = "PYRO"
AuraType.ELECTRO = 4
AuraType[AuraType.ELECTRO] = "ELECTRO"
AuraType.DENDRO = 7
AuraType[AuraType.DENDRO] = "DENDRO"
AuraType.CRYO_DENDRO = 113
AuraType[AuraType.CRYO_DENDRO] = "CRYO_DENDRO"
exports.AuraType = AuraType

local ReactionType = exports.ReactionType or ({})
ReactionType.UNSPECIFIED = 0
ReactionType[ReactionType.UNSPECIFIED] = "UNSPECIFIED"
ReactionType.MELT = 101
ReactionType[ReactionType.MELT] = "MELT"
ReactionType.VAPORIZE = 102
ReactionType[ReactionType.VAPORIZE] = "VAPORIZE"
ReactionType.OVERLOADED = 103
ReactionType[ReactionType.OVERLOADED] = "OVERLOADED"
ReactionType.SUPERCONDUCT = 104
ReactionType[ReactionType.SUPERCONDUCT] = "SUPERCONDUCT"
ReactionType.ELECTRO_CHARGED = 105
ReactionType[ReactionType.ELECTRO_CHARGED] = "ELECTRO_CHARGED"
ReactionType.FROZEN = 106
ReactionType[ReactionType.FROZEN] = "FROZEN"
ReactionType.SWIRL_CRYO = 107
ReactionType[ReactionType.SWIRL_CRYO] = "SWIRL_CRYO"
ReactionType.SWIRL_HYDRO = 108
ReactionType[ReactionType.SWIRL_HYDRO] = "SWIRL_HYDRO"
ReactionType.SWIRL_PYRO = 109
ReactionType[ReactionType.SWIRL_PYRO] = "SWIRL_PYRO"
ReactionType.SWIRL_ELECTRO = 110
ReactionType[ReactionType.SWIRL_ELECTRO] = "SWIRL_ELECTRO"
ReactionType.CRYSTALLIZE_CRYO = 111
ReactionType[ReactionType.CRYSTALLIZE_CRYO] = "CRYSTALLIZE_CRYO"
ReactionType.CRYSTALLIZE_HYDRO = 112
ReactionType[ReactionType.CRYSTALLIZE_HYDRO] = "CRYSTALLIZE_HYDRO"
ReactionType.CRYSTALLIZE_PYRO = 113
ReactionType[ReactionType.CRYSTALLIZE_PYRO] = "CRYSTALLIZE_PYRO"
ReactionType.CRYSTALLIZE_ELECTRO = 114
ReactionType[ReactionType.CRYSTALLIZE_ELECTRO] = "CRYSTALLIZE_ELECTRO"
ReactionType.BURNING = 115
ReactionType[ReactionType.BURNING] = "BURNING"
ReactionType.BLOOM = 116
ReactionType[ReactionType.BLOOM] = "BLOOM"
ReactionType.QUICKEN = 117
ReactionType[ReactionType.QUICKEN] = "QUICKEN"
ReactionType.LUNAR_ELECTRO_CHARGED = 3001
ReactionType[ReactionType.LUNAR_ELECTRO_CHARGED] = "LUNAR_ELECTRO_CHARGED"
ReactionType.LUNAR_BLOOM = 3002
ReactionType[ReactionType.LUNAR_BLOOM] = "LUNAR_BLOOM"
ReactionType.LUNAR_CRYSTALLIZE_HYDRO = 3003
ReactionType[ReactionType.LUNAR_CRYSTALLIZE_HYDRO] = "LUNAR_CRYSTALLIZE_HYDRO"
exports.ReactionType = ReactionType

local function createBaseDiceRequirement()
    return { type = DiceRequirementType.VOID, count = 0}
end

exports.DiceRequirement = {
    create = function(self, base)
        return exports.DiceRequirement:fromPartial(base or ({}))
    end,
    fromPartial = function(self, object)
        local message = createBaseDiceRequirement()
        message.type = object.type or 0
        message.count = object.count or 0
        return message
    end
}

return exports