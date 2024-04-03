.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ShowScreen2
/* 23E90 80033690 02000224 */  addiu      $v0, $zero, 0x2
/* 23E94 80033694 01000324 */  addiu      $v1, $zero, 0x1
/* 23E98 80033698 F81382AF */  sw         $v0, %gp_rel(g_instructionalscreen)($gp)
/* 23E9C 8003369C 081483AF */  sw         $v1, %gp_rel(gSection)($gp)
/* 23EA0 800336A0 DC1383AF */  sw         $v1, %gp_rel(gMoveEttoSection)($gp)
/* 23EA4 800336A4 CC1380AF */  sw         $zero, %gp_rel(gInstructionalScreenState)($gp)
/* 23EA8 800336A8 0800E003 */  jr         $ra
/* 23EAC 800336AC 01000224 */   addiu     $v0, $zero, 0x1
.size ShowScreen2, . - ShowScreen2
