.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ShowScreen5
/* 23EF4 800336F4 05000224 */  addiu      $v0, $zero, 0x5
/* 23EF8 800336F8 F81382AF */  sw         $v0, %gp_rel(g_instructionalscreen)($gp)
/* 23EFC 800336FC 04000224 */  addiu      $v0, $zero, 0x4
/* 23F00 80033700 01000324 */  addiu      $v1, $zero, 0x1
/* 23F04 80033704 081482AF */  sw         $v0, %gp_rel(gSection)($gp)
/* 23F08 80033708 DC1380AF */  sw         $zero, %gp_rel(gMoveEttoSection)($gp)
/* 23F0C 8003370C CC1383AF */  sw         $v1, %gp_rel(gInstructionalScreenState)($gp)
/* 23F10 80033710 0800E003 */  jr         $ra
/* 23F14 80033714 01000224 */   addiu     $v0, $zero, 0x1
.size ShowScreen5, . - ShowScreen5
