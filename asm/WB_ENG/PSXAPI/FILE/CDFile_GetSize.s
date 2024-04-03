.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_GetSize
/* 48108 80057908 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4810C 8005790C 1000BFAF */  sw         $ra, 0x10($sp)
/* 48110 80057910 D55A010C */  jal        CDFile_FileOpen
/* 48114 80057914 00000000 */   nop
/* 48118 80057918 1000BF8F */  lw         $ra, 0x10($sp)
/* 4811C 8005791C 00000000 */  nop
/* 48120 80057920 0800E003 */  jr         $ra
/* 48124 80057924 1800BD27 */   addiu     $sp, $sp, 0x18
.size CDFile_GetSize, . - CDFile_GetSize
