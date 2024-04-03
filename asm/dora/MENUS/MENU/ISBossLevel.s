.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ISBossLevel
/* 1872C 80027F2C 0880033C */  lui        $v1, %hi(WorldList)
/* 18730 80027F30 8407848F */  lw         $a0, %gp_rel(gmenuworld)($gp)
/* 18734 80027F34 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 18738 80027F38 80100400 */  sll        $v0, $a0, 2
/* 1873C 80027F3C 21104400 */  addu       $v0, $v0, $a0
/* 18740 80027F40 80100200 */  sll        $v0, $v0, 2
/* 18744 80027F44 21186200 */  addu       $v1, $v1, $v0
/* 18748 80027F48 0980023C */  lui        $v0, %hi(gLevel)
/* 1874C 80027F4C 3456428C */  lw         $v0, %lo(gLevel)($v0)
/* 18750 80027F50 0400648C */  lw         $a0, 0x4($v1)
/* 18754 80027F54 01004224 */  addiu      $v0, $v0, 0x1
/* 18758 80027F58 26104400 */  xor        $v0, $v0, $a0
/* 1875C 80027F5C 0800E003 */  jr         $ra
/* 18760 80027F60 0100422C */   sltiu     $v0, $v0, 0x1
.size ISBossLevel, . - ISBossLevel
