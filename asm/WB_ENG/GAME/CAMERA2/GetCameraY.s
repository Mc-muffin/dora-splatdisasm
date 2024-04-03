.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCameraY
/* 2BE50 8003B650 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BE54 8003B654 00000000 */  nop
/* 2BE58 8003B658 3000628C */  lw         $v0, 0x30($v1)
/* 2BE5C 8003B65C 0800E003 */  jr         $ra
/* 2BE60 8003B660 00000000 */   nop
.size GetCameraY, . - GetCameraY
