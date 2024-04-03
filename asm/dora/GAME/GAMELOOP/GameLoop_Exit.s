.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GameLoop_Exit
/* 23F7C 8003377C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 23F80 80033780 1000BFAF */  sw         $ra, 0x10($sp)
/* 23F84 80033784 5965010C */  jal        Sys_StopVibration
/* 23F88 80033788 21200000 */   addu      $a0, $zero, $zero
/* 23F8C 8003378C 6F5B010C */  jal        StopRedbook
/* 23F90 80033790 00000000 */   nop
/* 23F94 80033794 9769010C */  jal        updateScreen
/* 23F98 80033798 00000000 */   nop
/* 23F9C 8003379C 9BD7010C */  jal        VSyncCallback
/* 23FA0 800337A0 21200000 */   addu      $a0, $zero, $zero
.L800337A4:
/* 23FA4 800337A4 36DB010C */  jal        DrawSync
/* 23FA8 800337A8 01000424 */   addiu     $a0, $zero, 0x1
/* 23FAC 800337AC FDFF4014 */  bnez       $v0, .L800337A4
/* 23FB0 800337B0 00000000 */   nop
/* 23FB4 800337B4 1000BF8F */  lw         $ra, 0x10($sp)
/* 23FB8 800337B8 00000000 */  nop
/* 23FBC 800337BC 0800E003 */  jr         $ra
/* 23FC0 800337C0 1800BD27 */   addiu     $sp, $sp, 0x18
.size GameLoop_Exit, . - GameLoop_Exit
