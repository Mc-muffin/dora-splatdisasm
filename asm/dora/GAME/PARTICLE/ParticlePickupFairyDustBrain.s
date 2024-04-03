.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticlePickupFairyDustBrain
/* 1F1FC 8002E9FC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1F200 8002EA00 21380000 */  addu       $a3, $zero, $zero
/* 1F204 8002EA04 21308000 */  addu       $a2, $a0, $zero
/* 1F208 8002EA08 2000BFAF */  sw         $ra, 0x20($sp)
/* 1F20C 8002EA0C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 1F210 8002EA10 1800B2AF */  sw         $s2, 0x18($sp)
/* 1F214 8002EA14 1400B1AF */  sw         $s1, 0x14($sp)
/* 1F218 8002EA18 1000B0AF */  sw         $s0, 0x10($sp)
/* 1F21C 8002EA1C 4000D18C */  lw         $s1, 0x40($a2)
/* 1F220 8002EA20 4400C28C */  lw         $v0, 0x44($a2)
/* 1F224 8002EA24 0800C38C */  lw         $v1, 0x8($a2)
/* 1F228 8002EA28 1400C88C */  lw         $t0, 0x14($a2)
/* 1F22C 8002EA2C 21282002 */  addu       $a1, $s1, $zero
/* 1F230 8002EA30 1F006018 */  blez       $v1, .L8002EAB0
/* 1F234 8002EA34 6C005324 */   addiu     $s3, $v0, 0x6C
/* 1F238 8002EA38 01000924 */  addiu      $t1, $zero, 0x1
.L8002EA3C:
/* 1F23C 8002EA3C 0000A284 */  lh         $v0, 0x0($a1)
/* 1F240 8002EA40 00000000 */  nop
/* 1F244 8002EA44 14004914 */  bne        $v0, $t1, .L8002EA98
/* 1F248 8002EA48 00000000 */   nop
/* 1F24C 8002EA4C 0400A28C */  lw         $v0, 0x4($a1)
/* 1F250 8002EA50 1000A38C */  lw         $v1, 0x10($a1)
/* 1F254 8002EA54 1800A48C */  lw         $a0, 0x18($a1)
/* 1F258 8002EA58 21104300 */  addu       $v0, $v0, $v1
/* 1F25C 8002EA5C 1400A38C */  lw         $v1, 0x14($a1)
/* 1F260 8002EA60 0400A2AC */  sw         $v0, 0x4($a1)
/* 1F264 8002EA64 0800A28C */  lw         $v0, 0x8($a1)
/* 1F268 8002EA68 21186800 */  addu       $v1, $v1, $t0
/* 1F26C 8002EA6C 21104300 */  addu       $v0, $v0, $v1
/* 1F270 8002EA70 0C00A38C */  lw         $v1, 0xC($a1)
/* 1F274 8002EA74 0800A2AC */  sw         $v0, 0x8($a1)
/* 1F278 8002EA78 0200A294 */  lhu        $v0, 0x2($a1)
/* 1F27C 8002EA7C 21186400 */  addu       $v1, $v1, $a0
/* 1F280 8002EA80 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 1F284 8002EA84 0200A2A4 */  sh         $v0, 0x2($a1)
/* 1F288 8002EA88 00140200 */  sll        $v0, $v0, 16
/* 1F28C 8002EA8C 02004014 */  bnez       $v0, .L8002EA98
/* 1F290 8002EA90 0C00A3AC */   sw        $v1, 0xC($a1)
/* 1F294 8002EA94 0000A0A4 */  sh         $zero, 0x0($a1)
.L8002EA98:
/* 1F298 8002EA98 0100E724 */  addiu      $a3, $a3, 0x1
/* 1F29C 8002EA9C 0800C28C */  lw         $v0, 0x8($a2)
/* 1F2A0 8002EAA0 00000000 */  nop
/* 1F2A4 8002EAA4 2A10E200 */  slt        $v0, $a3, $v0
/* 1F2A8 8002EAA8 E4FF4014 */  bnez       $v0, .L8002EA3C
/* 1F2AC 8002EAAC 7400A524 */   addiu     $a1, $a1, 0x74
.L8002EAB0:
/* 1F2B0 8002EAB0 0C00C28C */  lw         $v0, 0xC($a2)
/* 1F2B4 8002EAB4 00000000 */  nop
/* 1F2B8 8002EAB8 04004018 */  blez       $v0, .L8002EACC
/* 1F2BC 8002EABC FFFF4224 */   addiu     $v0, $v0, -0x1
/* 1F2C0 8002EAC0 02004014 */  bnez       $v0, .L8002EACC
/* 1F2C4 8002EAC4 0C00C2AC */   sw        $v0, 0xC($a2)
/* 1F2C8 8002EAC8 0000C0AC */  sw         $zero, 0x0($a2)
.L8002EACC:
/* 1F2CC 8002EACC 21280000 */  addu       $a1, $zero, $zero
/* 1F2D0 8002EAD0 0800C38C */  lw         $v1, 0x8($a2)
/* 1F2D4 8002EAD4 4400C28C */  lw         $v0, 0x44($a2)
/* 1F2D8 8002EAD8 00000000 */  nop
/* 1F2DC 8002EADC 5400508C */  lw         $s0, 0x54($v0)
/* 1F2E0 8002EAE0 2E006018 */  blez       $v1, .L8002EB9C
/* 1F2E4 8002EAE4 21206000 */   addu      $a0, $v1, $zero
/* 1F2E8 8002EAE8 28001224 */  addiu      $s2, $zero, 0x28
.L8002EAEC:
/* 1F2EC 8002EAEC 00002286 */  lh         $v0, 0x0($s1)
/* 1F2F0 8002EAF0 00000000 */  nop
/* 1F2F4 8002EAF4 26004014 */  bnez       $v0, .L8002EB90
/* 1F2F8 8002EAF8 0100A524 */   addiu     $a1, $a1, 0x1
/* 1F2FC 8002EAFC 05000424 */  addiu      $a0, $zero, 0x5
/* 1F300 8002EB00 01000224 */  addiu      $v0, $zero, 0x1
/* 1F304 8002EB04 D140010C */  jal        u32Random
/* 1F308 8002EB08 000022A6 */   sh        $v0, 0x0($s1)
/* 1F30C 8002EB0C 21200002 */  addu       $a0, $s0, $zero
/* 1F310 8002EB10 14004224 */  addiu      $v0, $v0, 0x14
/* 1F314 8002EB14 020022A6 */  sh         $v0, 0x2($s1)
/* 1F318 8002EB18 0A000224 */  addiu      $v0, $zero, 0xA
/* 1F31C 8002EB1C 100020AE */  sw         $zero, 0x10($s1)
/* 1F320 8002EB20 140022AE */  sw         $v0, 0x14($s1)
/* 1F324 8002EB24 7BEB010C */  jal        rcos
/* 1F328 8002EB28 180020AE */   sw        $zero, 0x18($s1)
/* 1F32C 8002EB2C 21200002 */  addu       $a0, $s0, $zero
/* 1F330 8002EB30 47EB010C */  jal        rsin
/* 1F334 8002EB34 21804000 */   addu      $s0, $v0, $zero
/* 1F338 8002EB38 18005200 */  mult       $v0, $s2
/* 1F33C 8002EB3C 0400638E */  lw         $v1, 0x4($s3)
/* 1F340 8002EB40 12100000 */  mflo       $v0
/* 1F344 8002EB44 001A0300 */  sll        $v1, $v1, 8
/* 1F348 8002EB48 00000000 */  nop
/* 1F34C 8002EB4C 18001202 */  mult       $s0, $s2
/* 1F350 8002EB50 03110200 */  sra        $v0, $v0, 4
/* 1F354 8002EB54 21186200 */  addu       $v1, $v1, $v0
/* 1F358 8002EB58 040023AE */  sw         $v1, 0x4($s1)
/* 1F35C 8002EB5C 0800628E */  lw         $v0, 0x8($s3)
/* 1F360 8002EB60 00000000 */  nop
/* 1F364 8002EB64 80FF4224 */  addiu      $v0, $v0, -0x80
/* 1F368 8002EB68 00120200 */  sll        $v0, $v0, 8
/* 1F36C 8002EB6C 080022AE */  sw         $v0, 0x8($s1)
/* 1F370 8002EB70 0C00638E */  lw         $v1, 0xC($s3)
/* 1F374 8002EB74 01000224 */  addiu      $v0, $zero, 0x1
/* 1F378 8002EB78 001A0300 */  sll        $v1, $v1, 8
/* 1F37C 8002EB7C 12800000 */  mflo       $s0
/* 1F380 8002EB80 03811000 */  sra        $s0, $s0, 4
/* 1F384 8002EB84 21187000 */  addu       $v1, $v1, $s0
/* 1F388 8002EB88 E7BA0008 */  j          .L8002EB9C
/* 1F38C 8002EB8C 0C0023AE */   sw        $v1, 0xC($s1)
.L8002EB90:
/* 1F390 8002EB90 2A10A400 */  slt        $v0, $a1, $a0
/* 1F394 8002EB94 D5FF4014 */  bnez       $v0, .L8002EAEC
/* 1F398 8002EB98 74003126 */   addiu     $s1, $s1, 0x74
.L8002EB9C:
/* 1F39C 8002EB9C 2000BF8F */  lw         $ra, 0x20($sp)
/* 1F3A0 8002EBA0 1C00B38F */  lw         $s3, 0x1C($sp)
/* 1F3A4 8002EBA4 1800B28F */  lw         $s2, 0x18($sp)
/* 1F3A8 8002EBA8 1400B18F */  lw         $s1, 0x14($sp)
/* 1F3AC 8002EBAC 1000B08F */  lw         $s0, 0x10($sp)
/* 1F3B0 8002EBB0 0800E003 */  jr         $ra
/* 1F3B4 8002EBB4 2800BD27 */   addiu     $sp, $sp, 0x28
.size ParticlePickupFairyDustBrain, . - ParticlePickupFairyDustBrain
