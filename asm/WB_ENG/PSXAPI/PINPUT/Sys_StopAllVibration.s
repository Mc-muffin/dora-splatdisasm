.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sys_StopAllVibration
/* 4A4AC 80059CAC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4A4B0 80059CB0 1000B0AF */  sw         $s0, 0x10($sp)
/* 4A4B4 80059CB4 21800000 */  addu       $s0, $zero, $zero
/* 4A4B8 80059CB8 1400BFAF */  sw         $ra, 0x14($sp)
.L80059CBC:
/* 4A4BC 80059CBC 5965010C */  jal        Sys_StopVibration
/* 4A4C0 80059CC0 21200002 */   addu      $a0, $s0, $zero
/* 4A4C4 80059CC4 01000226 */  addiu      $v0, $s0, 0x1
/* 4A4C8 80059CC8 FF005030 */  andi       $s0, $v0, 0xFF
/* 4A4CC 80059CCC 0200032E */  sltiu      $v1, $s0, 0x2
/* 4A4D0 80059CD0 FAFF6014 */  bnez       $v1, .L80059CBC
/* 4A4D4 80059CD4 00000000 */   nop
/* 4A4D8 80059CD8 1400BF8F */  lw         $ra, 0x14($sp)
/* 4A4DC 80059CDC 1000B08F */  lw         $s0, 0x10($sp)
/* 4A4E0 80059CE0 0800E003 */  jr         $ra
/* 4A4E4 80059CE4 1800BD27 */   addiu     $sp, $sp, 0x18
.size Sys_StopAllVibration, . - Sys_StopAllVibration
