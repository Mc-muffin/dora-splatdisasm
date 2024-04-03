.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_AsyncCheck
/* 47DA8 800575A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47DAC 800575AC 01000424 */  addiu      $a0, $zero, 0x1
/* 47DB0 800575B0 1000BFAF */  sw         $ra, 0x10($sp)
/* 47DB4 800575B4 ABD2010C */  jal        CdReady
/* 47DB8 800575B8 21280000 */   addu      $a1, $zero, $zero
/* 47DBC 800575BC 0980033C */  lui        $v1, %hi(gCDCallback)
/* 47DC0 800575C0 5C82628C */  lw         $v0, %lo(gCDCallback)($v1)
/* 47DC4 800575C4 1000BF8F */  lw         $ra, 0x10($sp)
/* 47DC8 800575C8 0100422C */  sltiu      $v0, $v0, 0x1
/* 47DCC 800575CC 0800E003 */  jr         $ra
/* 47DD0 800575D0 1800BD27 */   addiu     $sp, $sp, 0x18
.size CDFile_AsyncCheck, . - CDFile_AsyncCheck
