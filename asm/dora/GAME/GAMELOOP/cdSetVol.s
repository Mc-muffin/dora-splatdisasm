.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel cdSetVol
/* 23CAC 800334AC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23CB0 800334B0 1000BFAF */  sw         $ra, 0x10($sp)
/* 23CB4 800334B4 1F7B010C */  jal        SetXA_Volume
/* 23CB8 800334B8 2120A000 */   addu      $a0, $a1, $zero
/* 23CBC 800334BC 1000BF8F */  lw         $ra, 0x10($sp)
/* 23CC0 800334C0 00000000 */  nop
/* 23CC4 800334C4 0800E003 */  jr         $ra
/* 23CC8 800334C8 1800BD27 */   addiu     $sp, $sp, 0x18
.size cdSetVol, . - cdSetVol
