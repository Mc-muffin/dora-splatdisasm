.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetDistanceOffset
/* 2BCB4 8003B4B4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BCB8 8003B4B8 0800E003 */  jr         $ra
/* 2BCBC 8003B4BC 800044AC */   sw        $a0, 0x80($v0)
.size SetDistanceOffset, . - SetDistanceOffset
