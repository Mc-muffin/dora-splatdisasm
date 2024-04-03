.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_ChunkOfType
/* 40FA0 800507A0 FFFF0A24 */  addiu      $t2, $zero, -0x1
/* 40FA4 800507A4 0000898C */  lw         $t1, 0x0($a0)
/* 40FA8 800507A8 00000000 */  nop
/* 40FAC 800507AC 14002011 */  beqz       $t1, .L80050800
/* 40FB0 800507B0 21380000 */   addu      $a3, $zero, $zero
/* 40FB4 800507B4 0C00848C */  lw         $a0, 0xC($a0)
/* 40FB8 800507B8 FFFF0B24 */  addiu      $t3, $zero, -0x1
/* 40FBC 800507BC 21400000 */  addu       $t0, $zero, $zero
/* 40FC0 800507C0 21188800 */  addu       $v1, $a0, $t0
.L800507C4:
/* 40FC4 800507C4 0000628C */  lw         $v0, 0x0($v1)
/* 40FC8 800507C8 00000000 */  nop
/* 40FCC 800507CC 0600A214 */  bne        $a1, $v0, .L800507E8
/* 40FD0 800507D0 00000000 */   nop
/* 40FD4 800507D4 0400628C */  lw         $v0, 0x4($v1)
/* 40FD8 800507D8 00000000 */  nop
/* 40FDC 800507DC 0200C214 */  bne        $a2, $v0, .L800507E8
/* 40FE0 800507E0 00000000 */   nop
/* 40FE4 800507E4 2150E000 */  addu       $t2, $a3, $zero
.L800507E8:
/* 40FE8 800507E8 0100E724 */  addiu      $a3, $a3, 0x1
/* 40FEC 800507EC 2B10E900 */  sltu       $v0, $a3, $t1
/* 40FF0 800507F0 03004010 */  beqz       $v0, .L80050800
/* 40FF4 800507F4 14000825 */   addiu     $t0, $t0, 0x14
/* 40FF8 800507F8 F2FF4B11 */  beq        $t2, $t3, .L800507C4
/* 40FFC 800507FC 21188800 */   addu      $v1, $a0, $t0
.L80050800:
/* 41000 80050800 0800E003 */  jr         $ra
/* 41004 80050804 21104001 */   addu      $v0, $t2, $zero
.size chunk_ChunkOfType, . - chunk_ChunkOfType
