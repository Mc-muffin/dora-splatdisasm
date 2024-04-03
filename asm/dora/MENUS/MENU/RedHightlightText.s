.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RedHightlightText
/* 183DC 80027BDC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 183E0 80027BE0 DF000424 */  addiu      $a0, $zero, 0xDF
/* 183E4 80027BE4 21280000 */  addu       $a1, $zero, $zero
/* 183E8 80027BE8 1000BFAF */  sw         $ra, 0x10($sp)
/* 183EC 80027BEC 5363010C */  jal        TextSetTextColor
/* 183F0 80027BF0 21300000 */   addu      $a2, $zero, $zero
/* 183F4 80027BF4 1000BF8F */  lw         $ra, 0x10($sp)
/* 183F8 80027BF8 00000000 */  nop
/* 183FC 80027BFC 0800E003 */  jr         $ra
/* 18400 80027C00 1800BD27 */   addiu     $sp, $sp, 0x18
.size RedHightlightText, . - RedHightlightText
