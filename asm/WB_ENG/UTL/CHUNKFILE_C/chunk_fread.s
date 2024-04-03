.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_fread
/* 411E8 800509E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 411EC 800509EC 1000BFAF */  sw         $ra, 0x10($sp)
/* 411F0 800509F0 065D010C */  jal        CDPCFile_Read
/* 411F4 800509F4 21380000 */   addu      $a3, $zero, $zero
/* 411F8 800509F8 185D010C */  jal        CDPCFile_AsyncWait
/* 411FC 800509FC 00000000 */   nop
/* 41200 80050A00 1000BF8F */  lw         $ra, 0x10($sp)
/* 41204 80050A04 00000000 */  nop
/* 41208 80050A08 0800E003 */  jr         $ra
/* 4120C 80050A0C 1800BD27 */   addiu     $sp, $sp, 0x18
.size chunk_fread, . - chunk_fread
