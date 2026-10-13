local enums = require("modules.typings.gen.enums")
local PbDiceType = enums.DiceType
local PbDiceRequirementType = enums.DiceRequirementType
local PbDiceRequirement = enums.DiceRequirement
local PbDamageType = enums.DamageType
local PbAuraType = enums.AuraType
local PbReactionType = enums.ReactionType

local exports = {}

exports.PbDiceType = PbDiceType
exports.PbDiceRequirementType = PbDiceRequirementType
exports.PbDiceRequirement = PbDiceRequirement
exports.PbDamageType = PbDamageType
exports.PbAuraType = PbAuraType
exports.PbReactionType = PbReactionType

exports.DiceType = {
    Void = exports.PbDiceRequirementType.VOID,
    Cryo = exports.PbDiceType.CRYO,
    Hydro = exports.PbDiceType.HYDRO,
    Pyro = exports.PbDiceType.PYRO,
    Electro = exports.PbDiceType.ELECTRO,
    Anemo = exports.PbDiceType.ANEMO,
    Geo = exports.PbDiceType.GEO,
    Dendro = exports.PbDiceType.DENDRO,
    Omni = exports.PbDiceType.OMNI,
    Aligned = exports.PbDiceRequirementType.ALIGNED,
    Energy = exports.PbDiceRequirementType.ENERGY,
    Legend = exports.PbDiceRequirementType.LEGEND
}
exports.DamageType = {
    Physical = exports.PbDamageType.PHYSICAL,
    Cryo = exports.PbDamageType.CRYO,
    Hydro = exports.PbDamageType.HYDRO,
    Pyro = exports.PbDamageType.PYRO,
    Electro = exports.PbDamageType.ELECTRO,
    Anemo = exports.PbDamageType.ANEMO,
    Geo = exports.PbDamageType.GEO,
    Dendro = exports.PbDamageType.DENDRO,
    Piercing = exports.PbDamageType.PIERCING,
    Heal = exports.PbDamageType.HEAL
}
exports.Aura = {
    None = exports.PbAuraType.NONE,
    Cryo = exports.PbAuraType.CRYO,
    Hydro = exports.PbAuraType.HYDRO,
    Pyro = exports.PbAuraType.PYRO,
    Electro = exports.PbAuraType.ELECTRO,
    Dendro = exports.PbAuraType.DENDRO,
    CryoDendro = exports.PbAuraType.CRYO_DENDRO
}
exports.Reaction = {
    Melt = exports.PbReactionType.MELT,
    Vaporize = exports.PbReactionType.VAPORIZE,
    Overloaded = exports.PbReactionType.OVERLOADED,
    Superconduct = exports.PbReactionType.SUPERCONDUCT,
    ElectroCharged = exports.PbReactionType.ELECTRO_CHARGED,
    Frozen = exports.PbReactionType.FROZEN,
    SwirlCryo = exports.PbReactionType.SWIRL_CRYO,
    SwirlHydro = exports.PbReactionType.SWIRL_HYDRO,
    SwirlPyro = exports.PbReactionType.SWIRL_PYRO,
    SwirlElectro = exports.PbReactionType.SWIRL_ELECTRO,
    CrystallizeCryo = exports.PbReactionType.CRYSTALLIZE_CRYO,
    CrystallizeHydro = exports.PbReactionType.CRYSTALLIZE_HYDRO,
    CrystallizePyro = exports.PbReactionType.CRYSTALLIZE_PYRO,
    CrystallizeElectro = exports.PbReactionType.CRYSTALLIZE_ELECTRO,
    Burning = exports.PbReactionType.BURNING,
    Bloom = exports.PbReactionType.BLOOM,
    Quicken = exports.PbReactionType.QUICKEN,
    LunarElectroCharged = exports.PbReactionType.LUNAR_ELECTRO_CHARGED,
    LunarBloom = exports.PbReactionType.LUNAR_BLOOM,
    LunarCrystallizeHydro = exports.PbReactionType.LUNAR_CRYSTALLIZE_HYDRO
}
exports.CHARACTER_TAG_SHIELD = 1 << 0
exports.CHARACTER_TAG_BARRIER = 1 << 1
exports.CHARACTER_TAG_DISABLE_SKILL = 1 << 2
exports.CHARACTER_TAG_NIGHTSOULS_BLESSING = 1 << 3
exports.CHARACTER_TAG_BOND_OF_LIFE = 1 << 4
exports.CARD_TAG_ABYSS = 1 << 0
exports.CARD_TAG_CONDUCTIVE = 1 << 1

return exports