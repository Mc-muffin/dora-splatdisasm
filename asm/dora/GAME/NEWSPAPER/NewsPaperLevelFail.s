.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel NewsPaperLevelFail
/* 15C70 80025470 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 15C74 80025474 E806838F */  lw         $v1, %gp_rel(PaperScaleMid)($gp)
/* 15C78 80025478 01000224 */  addiu      $v0, $zero, 0x1
/* 15C7C 8002547C 1000BFAF */  sw         $ra, 0x10($sp)
/* 15C80 80025480 D00682AF */  sw         $v0, %gp_rel(NewsPaperPauseFlag)($gp)
/* 15C84 80025484 F40683AF */  sw         $v1, %gp_rel(ScalePaper)($gp)
/* 15C88 80025488 3E95000C */  jal        NewsPaperZoomOutEndGame
/* 15C8C 8002548C 00000000 */   nop
/* 15C90 80025490 1000BF8F */  lw         $ra, 0x10($sp)
/* 15C94 80025494 00000000 */  nop
/* 15C98 80025498 0800E003 */  jr         $ra
/* 15C9C 8002549C 1800BD27 */   addiu     $sp, $sp, 0x18
.size NewsPaperLevelFail, . - NewsPaperLevelFail
