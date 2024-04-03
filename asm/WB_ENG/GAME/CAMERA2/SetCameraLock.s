.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetCameraLock
/* 2BD64 8003B564 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BD68 8003B568 0800E003 */  jr         $ra
/* 2BD6C 8003B56C 950044A0 */   sb        $a0, 0x95($v0)
.size SetCameraLock, . - SetCameraLock
