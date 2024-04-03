.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCameraLock
/* 2BD70 8003B570 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BD74 8003B574 00000000 */  nop
/* 2BD78 8003B578 95006290 */  lbu        $v0, 0x95($v1)
/* 2BD7C 8003B57C 0800E003 */  jr         $ra
/* 2BD80 8003B580 00000000 */   nop
.size GetCameraLock, . - GetCameraLock
