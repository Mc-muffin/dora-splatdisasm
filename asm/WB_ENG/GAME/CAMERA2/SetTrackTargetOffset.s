.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetTrackTargetOffset
/* 2BCF4 8003B4F4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BCF8 8003B4F8 00000000 */  nop
/* 2BCFC 8003B4FC 140044AC */  sw         $a0, 0x14($v0)
/* 2BD00 8003B500 180045AC */  sw         $a1, 0x18($v0)
/* 2BD04 8003B504 0800E003 */  jr         $ra
/* 2BD08 8003B508 1C0046AC */   sw        $a2, 0x1C($v0)
.size SetTrackTargetOffset, . - SetTrackTargetOffset
