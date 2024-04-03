.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GreyText
/* 1842C 80027C2C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18430 80027C30 40000424 */  addiu      $a0, $zero, 0x40
/* 18434 80027C34 40000524 */  addiu      $a1, $zero, 0x40
/* 18438 80027C38 1000BFAF */  sw         $ra, 0x10($sp)
/* 1843C 80027C3C 5363010C */  jal        TextSetTextColor
/* 18440 80027C40 40000624 */   addiu     $a2, $zero, 0x40
/* 18444 80027C44 1000BF8F */  lw         $ra, 0x10($sp)
/* 18448 80027C48 00000000 */  nop
/* 1844C 80027C4C 0800E003 */  jr         $ra
/* 18450 80027C50 1800BD27 */   addiu     $sp, $sp, 0x18
.size GreyText, . - GreyText
