.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ShowScreen4
/* 23ED0 800336D0 04000224 */  addiu      $v0, $zero, 0x4
/* 23ED4 800336D4 03000324 */  addiu      $v1, $zero, 0x3
/* 23ED8 800336D8 F81382AF */  sw         $v0, %gp_rel(g_instructionalscreen)($gp)
/* 23EDC 800336DC 01000224 */  addiu      $v0, $zero, 0x1
/* 23EE0 800336E0 081483AF */  sw         $v1, %gp_rel(gSection)($gp)
/* 23EE4 800336E4 DC1380AF */  sw         $zero, %gp_rel(gMoveEttoSection)($gp)
/* 23EE8 800336E8 CC1382AF */  sw         $v0, %gp_rel(gInstructionalScreenState)($gp)
/* 23EEC 800336EC 0800E003 */  jr         $ra
/* 23EF0 800336F0 00000000 */   nop
.size ShowScreen4, . - ShowScreen4
