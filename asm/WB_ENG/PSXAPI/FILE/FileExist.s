.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FileExist
/* 47AEC 800572EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47AF0 800572F0 1000BFAF */  sw         $ra, 0x10($sp)
/* 47AF4 800572F4 425E010C */  jal        CDFile_GetSize
/* 47AF8 800572F8 00000000 */   nop
/* 47AFC 800572FC 1000BF8F */  lw         $ra, 0x10($sp)
/* 47B00 80057300 00000000 */  nop
/* 47B04 80057304 0800E003 */  jr         $ra
/* 47B08 80057308 1800BD27 */   addiu     $sp, $sp, 0x18
.size FileExist, . - FileExist
