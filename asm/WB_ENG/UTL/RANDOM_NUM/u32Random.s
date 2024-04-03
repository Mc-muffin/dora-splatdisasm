.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel u32Random
/* 40B44 80050344 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 40B48 80050348 1000B0AF */  sw         $s0, 0x10($sp)
/* 40B4C 8005034C 21808000 */  addu       $s0, $a0, $zero
/* 40B50 80050350 0A000012 */  beqz       $s0, .L8005037C
/* 40B54 80050354 1400BFAF */   sw        $ra, 0x14($sp)
/* 40B58 80050358 37C2010C */  jal        rand
/* 40B5C 8005035C 00000000 */   nop
/* 40B60 80050360 1B005000 */  divu       $zero, $v0, $s0
/* 40B64 80050364 10100000 */  mfhi       $v0
/* 40B68 80050368 02000016 */  bnez       $s0, .L80050374
/* 40B6C 8005036C 00000000 */   nop
/* 40B70 80050370 CD010000 */  break      0, 7
.L80050374:
/* 40B74 80050374 E0400108 */  j          .L80050380
/* 40B78 80050378 00000000 */   nop
.L8005037C:
/* 40B7C 8005037C 01000224 */  addiu      $v0, $zero, 0x1
.L80050380:
/* 40B80 80050380 1400BF8F */  lw         $ra, 0x14($sp)
/* 40B84 80050384 1000B08F */  lw         $s0, 0x10($sp)
/* 40B88 80050388 0800E003 */  jr         $ra
/* 40B8C 8005038C 1800BD27 */   addiu     $sp, $sp, 0x18
.size u32Random, . - u32Random
