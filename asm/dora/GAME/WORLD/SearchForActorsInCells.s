.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SearchForActorsInCells
/* 149AC 800241AC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 149B0 800241B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 149B4 800241B4 21808000 */  addu       $s0, $a0, $zero
/* 149B8 800241B8 1800BFAF */  sw         $ra, 0x18($sp)
/* 149BC 800241BC AD85000C */  jal        SearchForDigActors
/* 149C0 800241C0 1400B1AF */   sw        $s1, 0x14($sp)
/* 149C4 800241C4 21200002 */  addu       $a0, $s0, $zero
/* 149C8 800241C8 8085000C */  jal        SearchForCrateActors
/* 149CC 800241CC 21884000 */   addu      $s1, $v0, $zero
/* 149D0 800241D0 21102202 */  addu       $v0, $s1, $v0
/* 149D4 800241D4 1800BF8F */  lw         $ra, 0x18($sp)
/* 149D8 800241D8 1400B18F */  lw         $s1, 0x14($sp)
/* 149DC 800241DC 1000B08F */  lw         $s0, 0x10($sp)
/* 149E0 800241E0 0800E003 */  jr         $ra
/* 149E4 800241E4 2000BD27 */   addiu     $sp, $sp, 0x20
.size SearchForActorsInCells, . - SearchForActorsInCells
