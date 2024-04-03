.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_malloc
/* 41210 80050A10 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 41214 80050A14 1000BFAF */  sw         $ra, 0x10($sp)
/* 41218 80050A18 2B3F010C */  jal        new_malloc
/* 4121C 80050A1C 00000000 */   nop
/* 41220 80050A20 1000BF8F */  lw         $ra, 0x10($sp)
/* 41224 80050A24 00000000 */  nop
/* 41228 80050A28 0800E003 */  jr         $ra
/* 4122C 80050A2C 1800BD27 */   addiu     $sp, $sp, 0x18
.size chunk_malloc, . - chunk_malloc
