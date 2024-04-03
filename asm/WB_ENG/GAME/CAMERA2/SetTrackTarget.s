.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetTrackTarget
/* 2BC5C 8003B45C 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BC60 8003B460 00000000 */  nop
/* 2BC64 8003B464 080044AC */  sw         $a0, 0x8($v0)
/* 2BC68 8003B468 0C0045AC */  sw         $a1, 0xC($v0)
/* 2BC6C 8003B46C 0800E003 */  jr         $ra
/* 2BC70 8003B470 100046AC */   sw        $a2, 0x10($v0)
.size SetTrackTarget, . - SetTrackTarget
