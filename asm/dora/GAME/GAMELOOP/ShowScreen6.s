.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ShowScreen6
/* 23F18 80033718 06000224 */  addiu      $v0, $zero, 0x6
/* 23F1C 8003371C F81382AF */  sw         $v0, %gp_rel(g_instructionalscreen)($gp)
/* 23F20 80033720 05000224 */  addiu      $v0, $zero, 0x5
/* 23F24 80033724 01000324 */  addiu      $v1, $zero, 0x1
/* 23F28 80033728 081482AF */  sw         $v0, %gp_rel(gSection)($gp)
/* 23F2C 8003372C DC1380AF */  sw         $zero, %gp_rel(gMoveEttoSection)($gp)
/* 23F30 80033730 CC1383AF */  sw         $v1, %gp_rel(gInstructionalScreenState)($gp)
/* 23F34 80033734 0800E003 */  jr         $ra
/* 23F38 80033738 01000224 */   addiu     $v0, $zero, 0x1
.size ShowScreen6, . - ShowScreen6
