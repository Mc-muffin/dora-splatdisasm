.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AnimateWorldCells
/* 55D68 80065568 C417848F */  lw         $a0, %gp_rel(WorldCellAnims)($gp)
/* 55D6C 8006556C 8C17858F */  lw         $a1, %gp_rel(NumWorldCellAnims)($gp)
/* 55D70 80065570 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 55D74 80065574 1000BFAF */  sw         $ra, 0x10($sp)
/* 55D78 80065578 FC8A010C */  jal        AnimateCells
/* 55D7C 8006557C 00000000 */   nop
/* 55D80 80065580 C017848F */  lw         $a0, %gp_rel(LocalCellAnims)($gp)
/* 55D84 80065584 8817858F */  lw         $a1, %gp_rel(NumLocalCellAnims)($gp)
/* 55D88 80065588 FC8A010C */  jal        AnimateCells
/* 55D8C 8006558C 00000000 */   nop
/* 55D90 80065590 1000BF8F */  lw         $ra, 0x10($sp)
/* 55D94 80065594 00000000 */  nop
/* 55D98 80065598 0800E003 */  jr         $ra
/* 55D9C 8006559C 1800BD27 */   addiu     $sp, $sp, 0x18
.size AnimateWorldCells, . - AnimateWorldCells
