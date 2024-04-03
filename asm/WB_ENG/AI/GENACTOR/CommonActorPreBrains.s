.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CommonActorPreBrains
/* 3AA48 8004A248 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3AA4C 8004A24C 1000B0AF */  sw         $s0, 0x10($sp)
/* 3AA50 8004A250 21808000 */  addu       $s0, $a0, $zero
/* 3AA54 8004A254 1400BFAF */  sw         $ra, 0x14($sp)
/* 3AA58 8004A258 1000028E */  lw         $v0, 0x10($s0)
/* 3AA5C 8004A25C 00000000 */  nop
/* 3AA60 8004A260 00014230 */  andi       $v0, $v0, 0x100
/* 3AA64 8004A264 18004010 */  beqz       $v0, .L8004A2C8
/* 3AA68 8004A268 1000043C */   lui       $a0, (0x100000 >> 16)
/* 3AA6C 8004A26C 4400028E */  lw         $v0, 0x44($s0)
/* 3AA70 8004A270 00000000 */  nop
/* 3AA74 8004A274 1C00438C */  lw         $v1, 0x1C($v0)
/* 3AA78 8004A278 00000000 */  nop
/* 3AA7C 8004A27C 24186400 */  and        $v1, $v1, $a0
/* 3AA80 8004A280 12006014 */  bnez       $v1, .L8004A2CC
/* 3AA84 8004A284 21100000 */   addu      $v0, $zero, $zero
/* 3AA88 8004A288 8D68000C */  jal        ETPreventEnemyAttack
/* 3AA8C 8004A28C 00000000 */   nop
/* 3AA90 8004A290 0E004010 */  beqz       $v0, .L8004A2CC
/* 3AA94 8004A294 01000224 */   addiu     $v0, $zero, 0x1
/* 3AA98 8004A298 73FB000C */  jal        MotionPhysics_Halt
/* 3AA9C 8004A29C 6C000426 */   addiu     $a0, $s0, 0x6C
/* 3AAA0 8004A2A0 3C01038E */  lw         $v1, 0x13C($s0)
/* 3AAA4 8004A2A4 00000000 */  nop
/* 3AAA8 8004A2A8 04006010 */  beqz       $v1, .L8004A2BC
/* 3AAAC 8004A2AC 21200002 */   addu      $a0, $s0, $zero
/* 3AAB0 8004A2B0 21280000 */  addu       $a1, $zero, $zero
/* 3AAB4 8004A2B4 DCE2000C */  jal        ForceAnim
/* 3AAB8 8004A2B8 2C010626 */   addiu     $a2, $s0, 0x12C
.L8004A2BC:
/* 3AABC 8004A2BC 440100AE */  sw         $zero, 0x144($s0)
/* 3AAC0 8004A2C0 2025010C */  jal        CommonActorPostBrains
/* 3AAC4 8004A2C4 21200002 */   addu      $a0, $s0, $zero
.L8004A2C8:
/* 3AAC8 8004A2C8 21100000 */  addu       $v0, $zero, $zero
.L8004A2CC:
/* 3AACC 8004A2CC 1400BF8F */  lw         $ra, 0x14($sp)
/* 3AAD0 8004A2D0 1000B08F */  lw         $s0, 0x10($sp)
/* 3AAD4 8004A2D4 0800E003 */  jr         $ra
/* 3AAD8 8004A2D8 1800BD27 */   addiu     $sp, $sp, 0x18
.size CommonActorPreBrains, . - CommonActorPreBrains
