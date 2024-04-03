.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetTrackAltitude
/* 2BC74 8003B474 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BC78 8003B478 0800E003 */  jr         $ra
/* 2BC7C 8003B47C 740044AC */   sw        $a0, 0x74($v0)
.size SetTrackAltitude, . - SetTrackAltitude
