.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetTargetLock
/* 2BD50 8003B550 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BD54 8003B554 00000000 */  nop
/* 2BD58 8003B558 96006290 */  lbu        $v0, 0x96($v1)
/* 2BD5C 8003B55C 0800E003 */  jr         $ra
/* 2BD60 8003B560 00000000 */   nop
.size GetTargetLock, . - GetTargetLock
