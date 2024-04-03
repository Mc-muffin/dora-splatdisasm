.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel NewsPaperLevelComplete
/* 15CA0 800254A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 15CA4 800254A4 E806838F */  lw         $v1, %gp_rel(PaperScaleMid)($gp)
/* 15CA8 800254A8 01000224 */  addiu      $v0, $zero, 0x1
/* 15CAC 800254AC 1000BFAF */  sw         $ra, 0x10($sp)
/* 15CB0 800254B0 D00682AF */  sw         $v0, %gp_rel(NewsPaperPauseFlag)($gp)
/* 15CB4 800254B4 F40683AF */  sw         $v1, %gp_rel(ScalePaper)($gp)
/* 15CB8 800254B8 4895000C */  jal        NewsPaperZoomOutLevelComplete
/* 15CBC 800254BC 00000000 */   nop
/* 15CC0 800254C0 1000BF8F */  lw         $ra, 0x10($sp)
/* 15CC4 800254C4 00000000 */  nop
/* 15CC8 800254C8 0800E003 */  jr         $ra
/* 15CCC 800254CC 1800BD27 */   addiu     $sp, $sp, 0x18
.size NewsPaperLevelComplete, . - NewsPaperLevelComplete
