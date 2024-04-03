.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel NewsPaperZoomIn
/* 15CD0 800254D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 15CD4 800254D4 05000224 */  addiu      $v0, $zero, 0x5
/* 15CD8 800254D8 1000BFAF */  sw         $ra, 0x10($sp)
/* 15CDC 800254DC FC0682AF */  sw         $v0, %gp_rel(PaperState)($gp)
/* 15CE0 800254E0 0F79010C */  jal        InitColorCluts
/* 15CE4 800254E4 00000000 */   nop
/* 15CE8 800254E8 1000BF8F */  lw         $ra, 0x10($sp)
/* 15CEC 800254EC 00000000 */  nop
/* 15CF0 800254F0 0800E003 */  jr         $ra
/* 15CF4 800254F4 1800BD27 */   addiu     $sp, $sp, 0x18
.size NewsPaperZoomIn, . - NewsPaperZoomIn
