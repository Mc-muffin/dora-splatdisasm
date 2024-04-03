.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel NewsPaperZoomOut
/* 15D48 80025548 04000224 */  addiu      $v0, $zero, 0x4
/* 15D4C 8002554C FC0682AF */  sw         $v0, %gp_rel(PaperState)($gp)
/* 15D50 80025550 0800E003 */  jr         $ra
/* 15D54 80025554 00000000 */   nop
.size NewsPaperZoomOut, . - NewsPaperZoomOut
