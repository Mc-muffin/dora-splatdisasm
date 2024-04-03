.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BeginRedbook
/* 4759C 80056D9C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 475A0 80056DA0 1000BFAF */  sw         $ra, 0x10($sp)
/* 475A4 80056DA4 B27B010C */  jal        PlayXA_Music
/* 475A8 80056DA8 00000000 */   nop
/* 475AC 80056DAC 1000BF8F */  lw         $ra, 0x10($sp)
/* 475B0 80056DB0 00000000 */  nop
/* 475B4 80056DB4 0800E003 */  jr         $ra
/* 475B8 80056DB8 1800BD27 */   addiu     $sp, $sp, 0x18
.size BeginRedbook, . - BeginRedbook
