local function getPlayerSelf()
    return game.GetGlobalCustomVariableValue(Enum.CustomVariableEntityType.PlayerSelf, "PlayerSelf")
end

local function getPlayerList()
    return game.GetGlobalCustomVariableValue(Enum.CustomVariableEntityType.Level, "PlayerList")
end

return {
    getPlayerSelf = getPlayerSelf,
    getPlayerList = getPlayerList
}