.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_datadump
/* 41108 80050908 82280500 */  srl        $a1, $a1, 2
/* 4110C 8005090C 0500A010 */  beqz       $a1, .L80050924
/* 41110 80050910 21180000 */   addu      $v1, $zero, $zero
/* 41114 80050914 01006324 */  addiu      $v1, $v1, 0x1
.L80050918:
/* 41118 80050918 2B106500 */  sltu       $v0, $v1, $a1
/* 4111C 8005091C FEFF4014 */  bnez       $v0, .L80050918
/* 41120 80050920 01006324 */   addiu     $v1, $v1, 0x1
.L80050924:
/* 41124 80050924 0800E003 */  jr         $ra
/* 41128 80050928 00000000 */   nop
.size chunk_datadump, . - chunk_datadump
