.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetTrackAltitude
/* 2BC80 8003B480 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BC84 8003B484 00000000 */  nop
/* 2BC88 8003B488 7400628C */  lw         $v0, 0x74($v1)
/* 2BC8C 8003B48C 0800E003 */  jr         $ra
/* 2BC90 8003B490 00000000 */   nop
.size GetTrackAltitude, . - GetTrackAltitude
