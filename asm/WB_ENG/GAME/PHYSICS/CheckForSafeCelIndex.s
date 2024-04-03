.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckForSafeCelIndex
/* 2F2C0 8003EAC0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 2F2C4 8003EAC4 94148727 */  addiu      $a3, $gp, %gp_rel(tempyheight1)
/* 2F2C8 8003EAC8 2000B2AF */  sw         $s2, 0x20($sp)
/* 2F2CC 8003EACC 2190A000 */  addu       $s2, $a1, $zero
/* 2F2D0 8003EAD0 FDFF0324 */  addiu      $v1, $zero, -0x3
/* 2F2D4 8003EAD4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 2F2D8 8003EAD8 21888000 */  addu       $s1, $a0, $zero
/* 2F2DC 8003EADC 2400BFAF */  sw         $ra, 0x24($sp)
/* 2F2E0 8003EAE0 1800B0AF */  sw         $s0, 0x18($sp)
/* 2F2E4 8003EAE4 1400B2AF */  sw         $s2, 0x14($sp)
/* 2F2E8 8003EAE8 8000428E */  lw         $v0, 0x80($s2)
/* 2F2EC 8003EAEC 8400508E */  lw         $s0, 0x84($s2)
/* 2F2F0 8003EAF0 AC0B858F */  lw         $a1, %gp_rel(TV1)($gp)
/* 2F2F4 8003EAF4 24104300 */  and        $v0, $v0, $v1
/* 2F2F8 8003EAF8 800042AE */  sw         $v0, 0x80($s2)
/* 2F2FC 8003EAFC C2171000 */  srl        $v0, $s0, 31
/* 2F300 8003EB00 21800202 */  addu       $s0, $s0, $v0
/* 2F304 8003EB04 43801000 */  sra        $s0, $s0, 1
/* 2F308 8003EB08 0000248E */  lw         $a0, 0x0($s1)
/* 2F30C 8003EB0C 0800268E */  lw         $a2, 0x8($s1)
/* 2F310 8003EB10 0400228E */  lw         $v0, 0x4($s1)
/* 2F314 8003EB14 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 2F318 8003EB18 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F31C 8003EB1C A1F1000C */  jal        CheckCollisionCelHeight4Bottom
/* 2F320 8003EB20 21284500 */   addu      $a1, $v0, $a1
/* 2F324 8003EB24 0000248E */  lw         $a0, 0x0($s1)
/* 2F328 8003EB28 0400258E */  lw         $a1, 0x4($s1)
/* 2F32C 8003EB2C 0800268E */  lw         $a2, 0x8($s1)
/* 2F330 8003EB30 98148727 */  addiu      $a3, $gp, %gp_rel(tempyheight2)
/* 2F334 8003EB34 1000B0AF */  sw         $s0, 0x10($sp)
/* 2F338 8003EB38 21804000 */  addu       $s0, $v0, $zero
/* 2F33C 8003EB3C C9F0000C */  jal        CheckCollisionCelHeight4
/* 2F340 8003EB40 1400B2AF */   sw        $s2, 0x14($sp)
/* 2F344 8003EB44 FF030432 */  andi       $a0, $s0, 0x3FF
/* 2F348 8003EB48 FF030324 */  addiu      $v1, $zero, 0x3FF
/* 2F34C 8003EB4C 02008310 */  beq        $a0, $v1, .L8003EB58
/* 2F350 8003EB50 00000000 */   nop
/* 2F354 8003EB54 21100002 */  addu       $v0, $s0, $zero
.L8003EB58:
/* 2F358 8003EB58 2400BF8F */  lw         $ra, 0x24($sp)
/* 2F35C 8003EB5C 2000B28F */  lw         $s2, 0x20($sp)
/* 2F360 8003EB60 1C00B18F */  lw         $s1, 0x1C($sp)
/* 2F364 8003EB64 1800B08F */  lw         $s0, 0x18($sp)
/* 2F368 8003EB68 0800E003 */  jr         $ra
/* 2F36C 8003EB6C 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckForSafeCelIndex, . - CheckForSafeCelIndex
