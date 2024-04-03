.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HightlightText
/* 18454 80027C54 7C078493 */  lbu        $a0, %gp_rel(HLR)($gp)
/* 18458 80027C58 7D078593 */  lbu        $a1, %gp_rel(HLG)($gp)
/* 1845C 80027C5C 7E078693 */  lbu        $a2, %gp_rel(HLB)($gp)
/* 18460 80027C60 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18464 80027C64 1000BFAF */  sw         $ra, 0x10($sp)
/* 18468 80027C68 5363010C */  jal        TextSetTextColor
/* 1846C 80027C6C 00000000 */   nop
/* 18470 80027C70 1000BF8F */  lw         $ra, 0x10($sp)
/* 18474 80027C74 00000000 */  nop
/* 18478 80027C78 0800E003 */  jr         $ra
/* 1847C 80027C7C 1800BD27 */   addiu     $sp, $sp, 0x18
.size HightlightText, . - HightlightText
