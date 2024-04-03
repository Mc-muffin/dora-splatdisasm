.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetTrackingMode
/* 2BDA4 8003B5A4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BDA8 8003B5A8 0800E003 */  jr         $ra
/* 2BDAC 8003B5AC 970044A0 */   sb        $a0, 0x97($v0)
.size SetTrackingMode, . - SetTrackingMode
