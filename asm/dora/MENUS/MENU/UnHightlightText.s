.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UnHightlightText
/* 18480 80027C80 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18484 80027C84 DF000424 */  addiu      $a0, $zero, 0xDF
/* 18488 80027C88 DF000524 */  addiu      $a1, $zero, 0xDF
/* 1848C 80027C8C 1000BFAF */  sw         $ra, 0x10($sp)
/* 18490 80027C90 5363010C */  jal        TextSetTextColor
/* 18494 80027C94 DF000624 */   addiu     $a2, $zero, 0xDF
/* 18498 80027C98 1000BF8F */  lw         $ra, 0x10($sp)
/* 1849C 80027C9C 00000000 */  nop
/* 184A0 80027CA0 0800E003 */  jr         $ra
/* 184A4 80027CA4 1800BD27 */   addiu     $sp, $sp, 0x18
.size UnHightlightText, . - UnHightlightText
