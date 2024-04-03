.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetTargetLock
/* 2BD44 8003B544 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BD48 8003B548 0800E003 */  jr         $ra
/* 2BD4C 8003B54C 960044A0 */   sb        $a0, 0x96($v0)
.size SetTargetLock, . - SetTargetLock
