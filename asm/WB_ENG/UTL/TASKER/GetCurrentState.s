.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCurrentState
/* 404A0 8004FCA0 740F828F */  lw         $v0, %gp_rel(CurrentTaskerState)($gp)
/* 404A4 8004FCA4 0800E003 */  jr         $ra
/* 404A8 8004FCA8 00000000 */   nop
.size GetCurrentState, . - GetCurrentState
