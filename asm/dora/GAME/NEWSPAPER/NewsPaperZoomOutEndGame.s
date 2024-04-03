.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel NewsPaperZoomOutEndGame
/* 15CF8 800254F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 15CFC 800254FC 0A000224 */  addiu      $v0, $zero, 0xA
/* 15D00 80025500 1000BFAF */  sw         $ra, 0x10($sp)
/* 15D04 80025504 FC0682AF */  sw         $v0, %gp_rel(PaperState)($gp)
/* 15D08 80025508 7095000C */  jal        SetNewsPaper
/* 15D0C 8002550C 01000424 */   addiu     $a0, $zero, 0x1
/* 15D10 80025510 1000BF8F */  lw         $ra, 0x10($sp)
/* 15D14 80025514 00000000 */  nop
/* 15D18 80025518 0800E003 */  jr         $ra
/* 15D1C 8002551C 1800BD27 */   addiu     $sp, $sp, 0x18
.size NewsPaperZoomOutEndGame, . - NewsPaperZoomOutEndGame
