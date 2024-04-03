.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RequestState
/* 40480 8004FC80 780F84AF */  sw         $a0, %gp_rel(RequestTaskerState)($gp)
/* 40484 8004FC84 0800E003 */  jr         $ra
/* 40488 8004FC88 00000000 */   nop
.size RequestState, . - RequestState
