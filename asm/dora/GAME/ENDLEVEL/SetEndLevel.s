.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetEndLevel
/* 10FD0 800207D0 601384AF */  sw         $a0, %gp_rel(EndlevelType)($gp)
/* 10FD4 800207D4 480585AF */  sw         $a1, %gp_rel(BonusTimer)($gp)
/* 10FD8 800207D8 0800E003 */  jr         $ra
/* 10FDC 800207DC 00000000 */   nop
.size SetEndLevel, . - SetEndLevel
