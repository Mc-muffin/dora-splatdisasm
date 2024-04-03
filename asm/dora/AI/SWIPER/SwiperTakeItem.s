.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SwiperTakeItem
/* 27378 80036B78 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2737C 80036B7C 21200000 */  addu       $a0, $zero, $zero
/* 27380 80036B80 FA000524 */  addiu      $a1, $zero, 0xFA
/* 27384 80036B84 1000BFAF */  sw         $ra, 0x10($sp)
/* 27388 80036B88 8666010C */  jal        Sys_VibrationBuzzWork
/* 2738C 80036B8C 32000624 */   addiu     $a2, $zero, 0x32
/* 27390 80036B90 21200000 */  addu       $a0, $zero, $zero
/* 27394 80036B94 FF000524 */  addiu      $a1, $zero, 0xFF
/* 27398 80036B98 6266010C */  jal        Sys_VibrationWaveWork
/* 2739C 80036B9C 64000624 */   addiu     $a2, $zero, 0x64
/* 273A0 80036BA0 5876000C */  jal        RemoveInventoryItem
/* 273A4 80036BA4 00000000 */   nop
/* 273A8 80036BA8 1000BF8F */  lw         $ra, 0x10($sp)
/* 273AC 80036BAC 00000000 */  nop
/* 273B0 80036BB0 0800E003 */  jr         $ra
/* 273B4 80036BB4 1800BD27 */   addiu     $sp, $sp, 0x18
.size SwiperTakeItem, . - SwiperTakeItem
