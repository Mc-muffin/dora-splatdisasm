.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCollisionCelHeightNoSlope
/* 2F298 8003EA98 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2F29C 8003EA9C 1000BFAF */  sw         $ra, 0x10($sp)
/* 2F2A0 8003EAA0 27F0000C */  jal        CheckCollisionCelHeight
/* 2F2A4 8003EAA4 00000000 */   nop
/* 2F2A8 8003EAA8 1000BF8F */  lw         $ra, 0x10($sp)
/* 2F2AC 8003EAAC 00000000 */  nop
/* 2F2B0 8003EAB0 0800E003 */  jr         $ra
/* 2F2B4 8003EAB4 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckCollisionCelHeightNoSlope, . - CheckCollisionCelHeightNoSlope
