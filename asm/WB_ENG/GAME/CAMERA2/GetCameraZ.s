.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCameraZ
/* 2BE64 8003B664 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BE68 8003B668 00000000 */  nop
/* 2BE6C 8003B66C 3400628C */  lw         $v0, 0x34($v1)
/* 2BE70 8003B670 0800E003 */  jr         $ra
/* 2BE74 8003B674 00000000 */   nop
.size GetCameraZ, . - GetCameraZ
