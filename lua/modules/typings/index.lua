local exports = require("modules.typings.common_enums") or ({})

local action = require("modules.typings.gen.action")

exports.UseSkillAction = action.UseSkillAction
exports.PlayCardAction = action.PlayCardAction
exports.SwitchActiveAction = action.SwitchActiveAction
exports.ElementalTuningAction = action.ElementalTuningAction
exports.DeclareEndAction = action.DeclareEndAction

exports.PreviewData = require("modules.typings.gen.preview").PreviewData

local state = require("modules.typings.gen.state")

exports.PbPhaseType = state.PhaseType
exports.PbCharacterState = state.CharacterState
exports.PbEntityState = state.EntityState
exports.PbAttachmentState = state.AttachmentState
exports.PbPlayerState = state.PlayerState
exports.PbSkillInfo = state.SkillInfo
exports.PbGameState = state.State
exports.PbEquipmentType = state.EquipmentType
exports.PbPlayerStatus = state.PlayerStatus
exports.PbEntityType = state.EntityType

exports.Notification = require("modules.typings.gen.notification").Notification

local mutation = require("modules.typings.gen.mutation")

exports.PbEntityArea = mutation.EntityArea
exports.PbMoveEntityReason = mutation.MoveEntityReason
exports.PbRemoveEntityReason = mutation.RemoveEntityReason
exports.PbSkillType = mutation.SkillType
exports.PbModifyDirection = mutation.ModifyDirection
exports.PbHealKind = mutation.HealKind
exports.PbResetDiceReason = mutation.ResetDiceReason
exports.PbSwitchActiveFromAction = mutation.SwitchActiveFromAction
exports.PbPlayerFlag = mutation.PlayerFlag
exports.ChangePhaseEM = mutation.ChangePhaseEM
exports.CreateCharacterEM = mutation.CreateCharacterEM
exports.CreateEntityEM = mutation.CreateEntityEM
exports.CreateAttachmentEM = mutation.CreateAttachmentEM
exports.MoveEntityEM = mutation.MoveEntityEM
exports.DamageEM = mutation.DamageEM
exports.ApplyAuraEM = mutation.ApplyAuraEM
exports.ModifyEntityVarEM = mutation.ModifyEntityVarEM
exports.PlayerStatusChangeEM = mutation.PlayerStatusChangeEM
exports.RemoveEntityEM = mutation.RemoveEntityEM
exports.ResetDiceEM = mutation.ResetDiceEM
exports.SetWinnerEM = mutation.SetWinnerEM
exports.StepRoundEM = mutation.StepRoundEM
exports.SwitchActiveEM = mutation.SwitchActiveEM
exports.SwitchTurnEM = mutation.SwitchTurnEM
exports.TransformDefinitionEM = mutation.TransformDefinitionEM
exports.SkillUsedEM = mutation.SkillUsedEM
exports.SetPlayerFlagEM = mutation.SetPlayerFlagEM
exports.RerollDoneEM = mutation.RerollDoneEM
exports.SwitchHandsDoneEM = mutation.SwitchHandsDoneEM
exports.ChooseActiveDoneEM = mutation.ChooseActiveDoneEM
exports.SelectCardDoneEM = mutation.SelectCardDoneEM
exports.HandleEventEM = mutation.HandleEventEM
exports.ResetVariablesEM = mutation.ResetVariablesEM

local rpc = require("modules.typings.gen.rpc")
exports.Action = rpc.Action
exports.ActionValidity = rpc.ActionValidity
exports.ActionRequest = rpc.ActionRequest
exports.ActionResponse = rpc.ActionResponse
exports.ChooseActiveRequest = rpc.ChooseActiveRequest
exports.ChooseActiveResponse = rpc.ChooseActiveResponse
exports.RerollDiceRequest = rpc.RerollDiceRequest
exports.RerollDiceResponse = rpc.RerollDiceResponse
exports.SelectCardRequest = rpc.SelectCardRequest
exports.SelectCardResponse = rpc.SelectCardResponse
exports.SwitchHandsRequest = rpc.SwitchHandsRequest
exports.SwitchHandsResponse = rpc.SwitchHandsResponse

exports.RpcRequest = rpc.Request
exports.RpcResponse = rpc.Response

local ts = require("utils.tsbinding")
local __TS__ObjectAssign = ts.objectAssign
local __TS__ObjectRest = ts.objectRest

function exports.createRpcRequest(method, value)
    return {request = {["$case"] = method, value = value}}
end
function exports.createRpcResponse(method, value)
    return {response = {["$case"] = method, value = value}}
end

function exports.flattenPbOneof(self, caseValueObj)
    local value
    local caseVal
    caseVal = caseValueObj["$case"]
    value = caseValueObj.value
    return __TS__ObjectAssign({["$case"] = caseVal}, value)
end
function exports.unFlattenOneof(self, flattened)
    local fobj = flattened
    local caseVal = fobj["$case"]
    local value = __TS__ObjectRest(fobj, {["$case"] = true})
    return {["$case"] = caseVal, value = value}
end

-- Note: function `dispatchRpc(RpcDispatcher): (RpcRequest) => Promise<RpcResponse>` missing impl.
-- to be replaced with UI callback based dispatch.

exports.PbExposedMutation = mutation.ExposedMutation