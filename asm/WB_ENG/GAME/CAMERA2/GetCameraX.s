.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCameraX
/* 2BE3C 8003B63C 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BE40 8003B640 00000000 */  nop
/* 2BE44 8003B644 2C00628C */  lw         $v0, 0x2C($v1)
/* 2BE48 8003B648 0800E003 */  jr         $ra
/* 2BE4C 8003B64C 00000000 */   nop
.size GetCameraX, . - GetCameraX
