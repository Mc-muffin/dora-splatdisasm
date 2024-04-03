.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ShowScreen3
/* 23EB0 800336B0 03000224 */  addiu      $v0, $zero, 0x3
/* 23EB4 800336B4 02000324 */  addiu      $v1, $zero, 0x2
/* 23EB8 800336B8 F81382AF */  sw         $v0, %gp_rel(g_instructionalscreen)($gp)
/* 23EBC 800336BC 081483AF */  sw         $v1, %gp_rel(gSection)($gp)
/* 23EC0 800336C0 DC1383AF */  sw         $v1, %gp_rel(gMoveEttoSection)($gp)
/* 23EC4 800336C4 CC1380AF */  sw         $zero, %gp_rel(gInstructionalScreenState)($gp)
/* 23EC8 800336C8 0800E003 */  jr         $ra
/* 23ECC 800336CC 01000224 */   addiu     $v0, $zero, 0x1
.size ShowScreen3, . - ShowScreen3
