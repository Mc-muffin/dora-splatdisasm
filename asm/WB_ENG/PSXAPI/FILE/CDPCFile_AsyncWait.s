.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDPCFile_AsyncWait
/* 47C60 80057460 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47C64 80057464 1000BFAF */  sw         $ra, 0x10($sp)
/* 47C68 80057468 635D010C */  jal        CDFile_AsyncWait
/* 47C6C 8005746C 00000000 */   nop
/* 47C70 80057470 1000BF8F */  lw         $ra, 0x10($sp)
/* 47C74 80057474 00000000 */  nop
/* 47C78 80057478 0800E003 */  jr         $ra
/* 47C7C 8005747C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CDPCFile_AsyncWait, . - CDPCFile_AsyncWait
