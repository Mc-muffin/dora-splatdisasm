.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetTrackDistance
/* 2BCA0 8003B4A0 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BCA4 8003B4A4 00000000 */  nop
/* 2BCA8 8003B4A8 7C00628C */  lw         $v0, 0x7C($v1)
/* 2BCAC 8003B4AC 0800E003 */  jr         $ra
/* 2BCB0 8003B4B0 00000000 */   nop
.size GetTrackDistance, . - GetTrackDistance
