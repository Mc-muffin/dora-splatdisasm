.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel NewsPaperZoomOutLevelComplete
/* 15D20 80025520 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 15D24 80025524 07000224 */  addiu      $v0, $zero, 0x7
/* 15D28 80025528 1000BFAF */  sw         $ra, 0x10($sp)
/* 15D2C 8002552C FC0682AF */  sw         $v0, %gp_rel(PaperState)($gp)
/* 15D30 80025530 7095000C */  jal        SetNewsPaper
/* 15D34 80025534 21200000 */   addu      $a0, $zero, $zero
/* 15D38 80025538 1000BF8F */  lw         $ra, 0x10($sp)
/* 15D3C 8002553C 00000000 */  nop
/* 15D40 80025540 0800E003 */  jr         $ra
/* 15D44 80025544 1800BD27 */   addiu     $sp, $sp, 0x18
.size NewsPaperZoomOutLevelComplete, . - NewsPaperZoomOutLevelComplete
