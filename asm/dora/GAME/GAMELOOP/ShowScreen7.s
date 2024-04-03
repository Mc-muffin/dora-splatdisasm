.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ShowScreen7
/* 23F3C 8003373C 07000224 */  addiu      $v0, $zero, 0x7
/* 23F40 80033740 F81382AF */  sw         $v0, %gp_rel(g_instructionalscreen)($gp)
/* 23F44 80033744 06000224 */  addiu      $v0, $zero, 0x6
/* 23F48 80033748 01000324 */  addiu      $v1, $zero, 0x1
/* 23F4C 8003374C 081482AF */  sw         $v0, %gp_rel(gSection)($gp)
/* 23F50 80033750 DC1380AF */  sw         $zero, %gp_rel(gMoveEttoSection)($gp)
/* 23F54 80033754 CC1383AF */  sw         $v1, %gp_rel(gInstructionalScreenState)($gp)
/* 23F58 80033758 0800E003 */  jr         $ra
/* 23F5C 8003375C 01000224 */   addiu     $v0, $zero, 0x1
.size ShowScreen7, . - ShowScreen7
