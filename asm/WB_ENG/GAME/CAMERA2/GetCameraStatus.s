.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCameraStatus
/* 2BD30 8003B530 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BD34 8003B534 00000000 */  nop
/* 2BD38 8003B538 98006290 */  lbu        $v0, 0x98($v1)
/* 2BD3C 8003B53C 0800E003 */  jr         $ra
/* 2BD40 8003B540 00000000 */   nop
.size GetCameraStatus, . - GetCameraStatus
