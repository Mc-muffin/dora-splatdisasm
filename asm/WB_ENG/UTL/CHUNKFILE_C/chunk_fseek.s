.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_fseek
/* 411C8 800509C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 411CC 800509CC 1000BFAF */  sw         $ra, 0x10($sp)
/* 411D0 800509D0 FE5C010C */  jal        CDPCFile_Seek
/* 411D4 800509D4 2120A000 */   addu      $a0, $a1, $zero
/* 411D8 800509D8 1000BF8F */  lw         $ra, 0x10($sp)
/* 411DC 800509DC 00000000 */  nop
/* 411E0 800509E0 0800E003 */  jr         $ra
/* 411E4 800509E4 1800BD27 */   addiu     $sp, $sp, 0x18
.size chunk_fseek, . - chunk_fseek
