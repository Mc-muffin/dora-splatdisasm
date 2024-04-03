.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetDistanceOffset
/* 2BCC0 8003B4C0 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BCC4 8003B4C4 00000000 */  nop
/* 2BCC8 8003B4C8 8000628C */  lw         $v0, 0x80($v1)
/* 2BCCC 8003B4CC 0800E003 */  jr         $ra
/* 2BCD0 8003B4D0 00000000 */   nop
.size GetDistanceOffset, . - GetDistanceOffset
