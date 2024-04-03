.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_openfile
/* 411A0 800509A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 411A4 800509A4 1000BFAF */  sw         $ra, 0x10($sp)
/* 411A8 800509A8 F05C010C */  jal        CDPCFile_FileOpen
/* 411AC 800509AC 00000000 */   nop
/* 411B0 800509B0 1000BF8F */  lw         $ra, 0x10($sp)
/* 411B4 800509B4 21100000 */  addu       $v0, $zero, $zero
/* 411B8 800509B8 0800E003 */  jr         $ra
/* 411BC 800509BC 1800BD27 */   addiu     $sp, $sp, 0x18
.size chunk_openfile, . - chunk_openfile
