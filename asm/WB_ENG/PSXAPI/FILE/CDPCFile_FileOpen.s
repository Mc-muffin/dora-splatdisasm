.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDPCFile_FileOpen
/* 47BC0 800573C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47BC4 800573C4 1000B0AF */  sw         $s0, 0x10($sp)
/* 47BC8 800573C8 21808000 */  addu       $s0, $a0, $zero
/* 47BCC 800573CC 0B80043C */  lui        $a0, %hi(file_lastfname)
/* 47BD0 800573D0 38B48424 */  addiu      $a0, $a0, %lo(file_lastfname)
/* 47BD4 800573D4 1400BFAF */  sw         $ra, 0x14($sp)
/* 47BD8 800573D8 8FC2010C */  jal        strcpy
/* 47BDC 800573DC 21280002 */   addu      $a1, $s0, $zero
/* 47BE0 800573E0 D55A010C */  jal        CDFile_FileOpen
/* 47BE4 800573E4 21200002 */   addu      $a0, $s0, $zero
/* 47BE8 800573E8 1400BF8F */  lw         $ra, 0x14($sp)
/* 47BEC 800573EC 1000B08F */  lw         $s0, 0x10($sp)
/* 47BF0 800573F0 0800E003 */  jr         $ra
/* 47BF4 800573F4 1800BD27 */   addiu     $sp, $sp, 0x18
.size CDPCFile_FileOpen, . - CDPCFile_FileOpen
