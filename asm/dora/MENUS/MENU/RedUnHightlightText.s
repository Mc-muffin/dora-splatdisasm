.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RedUnHightlightText
/* 18404 80027C04 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18408 80027C08 6F000424 */  addiu      $a0, $zero, 0x6F
/* 1840C 80027C0C 21280000 */  addu       $a1, $zero, $zero
/* 18410 80027C10 1000BFAF */  sw         $ra, 0x10($sp)
/* 18414 80027C14 5363010C */  jal        TextSetTextColor
/* 18418 80027C18 21300000 */   addu      $a2, $zero, $zero
/* 1841C 80027C1C 1000BF8F */  lw         $ra, 0x10($sp)
/* 18420 80027C20 00000000 */  nop
/* 18424 80027C24 0800E003 */  jr         $ra
/* 18428 80027C28 1800BD27 */   addiu     $sp, $sp, 0x18
.size RedUnHightlightText, . - RedUnHightlightText
