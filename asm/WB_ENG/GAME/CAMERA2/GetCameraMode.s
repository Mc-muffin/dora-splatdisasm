.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCameraMode
/* 2C070 8003B870 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2C074 8003B874 00000000 */  nop
/* 2C078 8003B878 00006290 */  lbu        $v0, 0x0($v1)
/* 2C07C 8003B87C 0800E003 */  jr         $ra
/* 2C080 8003B880 00000000 */   nop
.size GetCameraMode, . - GetCameraMode
