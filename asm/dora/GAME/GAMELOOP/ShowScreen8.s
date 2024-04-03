.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ShowScreen8
/* 23F60 80033760 08000224 */  addiu      $v0, $zero, 0x8
/* 23F64 80033764 F81382AF */  sw         $v0, %gp_rel(g_instructionalscreen)($gp)
/* 23F68 80033768 01000224 */  addiu      $v0, $zero, 0x1
/* 23F6C 8003376C DC1380AF */  sw         $zero, %gp_rel(gMoveEttoSection)($gp)
/* 23F70 80033770 CC1382AF */  sw         $v0, %gp_rel(gInstructionalScreenState)($gp)
/* 23F74 80033774 0800E003 */  jr         $ra
/* 23F78 80033778 00000000 */   nop
.size ShowScreen8, . - ShowScreen8
