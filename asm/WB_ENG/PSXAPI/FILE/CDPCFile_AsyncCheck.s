.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDPCFile_AsyncCheck
/* 47C40 80057440 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47C44 80057444 1000BFAF */  sw         $ra, 0x10($sp)
/* 47C48 80057448 6A5D010C */  jal        CDFile_AsyncCheck
/* 47C4C 8005744C 00000000 */   nop
/* 47C50 80057450 1000BF8F */  lw         $ra, 0x10($sp)
/* 47C54 80057454 00000000 */  nop
/* 47C58 80057458 0800E003 */  jr         $ra
/* 47C5C 8005745C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CDPCFile_AsyncCheck, . - CDPCFile_AsyncCheck
