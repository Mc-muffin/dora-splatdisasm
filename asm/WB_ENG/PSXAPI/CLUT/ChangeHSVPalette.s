.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ChangeHSVPalette
/* 4EDBC 8005E5BC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4EDC0 8005E5C0 1000BFAF */  sw         $ra, 0x10($sp)
/* 4EDC4 8005E5C4 A477010C */  jal        ChangeHSV
/* 4EDC8 8005E5C8 00000000 */   nop
/* 4EDCC 8005E5CC 1000BF8F */  lw         $ra, 0x10($sp)
/* 4EDD0 8005E5D0 00000000 */  nop
/* 4EDD4 8005E5D4 0800E003 */  jr         $ra
/* 4EDD8 8005E5D8 1800BD27 */   addiu     $sp, $sp, 0x18
.size ChangeHSVPalette, . - ChangeHSVPalette
