.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_NthChunkOfType
/* 41008 80050808 21500000 */  addu       $t2, $zero, $zero
/* 4100C 8005080C FFFF0B24 */  addiu      $t3, $zero, -0x1
/* 41010 80050810 0000898C */  lw         $t1, 0x0($a0)
/* 41014 80050814 00000000 */  nop
/* 41018 80050818 13002011 */  beqz       $t1, .L80050868
/* 4101C 8005081C 21380000 */   addu      $a3, $zero, $zero
/* 41020 80050820 0C00848C */  lw         $a0, 0xC($a0)
/* 41024 80050824 FFFF0C24 */  addiu      $t4, $zero, -0x1
/* 41028 80050828 21400000 */  addu       $t0, $zero, $zero
/* 4102C 8005082C 21108800 */  addu       $v0, $a0, $t0
.L80050830:
/* 41030 80050830 0000438C */  lw         $v1, 0x0($v0)
/* 41034 80050834 00000000 */  nop
/* 41038 80050838 0500A314 */  bne        $a1, $v1, .L80050850
/* 4103C 8005083C 00000000 */   nop
/* 41040 80050840 02004615 */  bne        $t2, $a2, .L8005084C
/* 41044 80050844 00000000 */   nop
/* 41048 80050848 2158E000 */  addu       $t3, $a3, $zero
.L8005084C:
/* 4104C 8005084C 01004A25 */  addiu      $t2, $t2, 0x1
.L80050850:
/* 41050 80050850 0100E724 */  addiu      $a3, $a3, 0x1
/* 41054 80050854 2B10E900 */  sltu       $v0, $a3, $t1
/* 41058 80050858 03004010 */  beqz       $v0, .L80050868
/* 4105C 8005085C 14000825 */   addiu     $t0, $t0, 0x14
/* 41060 80050860 F3FF6C11 */  beq        $t3, $t4, .L80050830
/* 41064 80050864 21108800 */   addu      $v0, $a0, $t0
.L80050868:
/* 41068 80050868 0800E003 */  jr         $ra
/* 4106C 8005086C 21106001 */   addu      $v0, $t3, $zero
.size chunk_NthChunkOfType, . - chunk_NthChunkOfType
