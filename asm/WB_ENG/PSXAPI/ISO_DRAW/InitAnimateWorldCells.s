.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitAnimateWorldCells
/* 55B30 80065330 8C1780AF */  sw         $zero, %gp_rel(NumWorldCellAnims)($gp)
/* 55B34 80065334 0800E003 */  jr         $ra
/* 55B38 80065338 00000000 */   nop
.size InitAnimateWorldCells, . - InitAnimateWorldCells
