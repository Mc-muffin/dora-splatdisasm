.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetAltitudeOffset
/* 2BCE0 8003B4E0 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BCE4 8003B4E4 00000000 */  nop
/* 2BCE8 8003B4E8 7800628C */  lw         $v0, 0x78($v1)
/* 2BCEC 8003B4EC 0800E003 */  jr         $ra
/* 2BCF0 8003B4F0 00000000 */   nop
.size GetAltitudeOffset, . - GetAltitudeOffset
