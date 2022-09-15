/// @description Battle Start
Battle_SetNextState(BATTLE_STATE.TURN_PREPARATION)
if global.phase = 2
    Battle_SetTurnNumber(13)
else
    Battle_SetTurnNumber(0)
