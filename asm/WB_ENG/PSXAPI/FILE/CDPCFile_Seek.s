.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDPCFile_Seek
/* 47BF8 800573F8 0B80033C */  lui        $v1, %hi(gCDFileInfo)
/* 47BFC 800573FC 78AA6324 */  addiu      $v1, $v1, %lo(gCDFileInfo)
/* 47C00 80057400 0400628C */  lw         $v0, 0x4($v1)
/* 47C04 80057404 00000000 */  nop
/* 47C08 80057408 21104400 */  addu       $v0, $v0, $a0
/* 47C0C 8005740C 100062AC */  sw         $v0, 0x10($v1)
/* 47C10 80057410 0800E003 */  jr         $ra
/* 47C14 80057414 00000000 */   nop
.size CDPCFile_Seek, . - CDPCFile_Seek
