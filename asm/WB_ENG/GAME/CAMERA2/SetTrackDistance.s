.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetTrackDistance
/* 2BC94 8003B494 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BC98 8003B498 0800E003 */  jr         $ra
/* 2BC9C 8003B49C 7C0044AC */   sw        $a0, 0x7C($v0)
.size SetTrackDistance, . - SetTrackDistance
