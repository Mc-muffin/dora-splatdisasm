.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ClearVRAM
/* 4BB50 8005B350 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4BB54 8005B354 21200000 */  addu       $a0, $zero, $zero
/* 4BB58 8005B358 21280000 */  addu       $a1, $zero, $zero
/* 4BB5C 8005B35C 00040624 */  addiu      $a2, $zero, 0x400
/* 4BB60 8005B360 3000BFAF */  sw         $ra, 0x30($sp)
/* 4BB64 8005B364 DF6C010C */  jal        ClearVRAMRect
/* 4BB68 8005B368 00020724 */   addiu     $a3, $zero, 0x200
/* 4BB6C 8005B36C 3000BF8F */  lw         $ra, 0x30($sp)
/* 4BB70 8005B370 00000000 */  nop
/* 4BB74 8005B374 0800E003 */  jr         $ra
/* 4BB78 8005B378 3800BD27 */   addiu     $sp, $sp, 0x38
.size ClearVRAM, . - ClearVRAM
