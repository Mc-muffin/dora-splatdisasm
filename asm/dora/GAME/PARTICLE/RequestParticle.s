.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RequestParticle
/* 201A4 8002F9A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 201A8 8002F9A8 2158A000 */  addu       $t3, $a1, $zero
/* 201AC 8002F9AC 0A80083C */  lui        $t0, %hi(ParticleTypeTable)
/* 201B0 8002F9B0 D0840525 */  addiu      $a1, $t0, %lo(ParticleTypeTable)
/* 201B4 8002F9B4 80100B00 */  sll        $v0, $t3, 2
/* 201B8 8002F9B8 21104B00 */  addu       $v0, $v0, $t3
/* 201BC 8002F9BC 80100200 */  sll        $v0, $v0, 2
/* 201C0 8002F9C0 2118A200 */  addu       $v1, $a1, $v0
/* 201C4 8002F9C4 1400B1AF */  sw         $s1, 0x14($sp)
/* 201C8 8002F9C8 21888000 */  addu       $s1, $a0, $zero
/* 201CC 8002F9CC 21104500 */  addu       $v0, $v0, $a1
/* 201D0 8002F9D0 1800BFAF */  sw         $ra, 0x18($sp)
/* 201D4 8002F9D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 201D8 8002F9D8 0000448C */  lw         $a0, 0x0($v0)
/* 201DC 8002F9DC 0400698C */  lw         $t1, 0x4($v1)
/* 201E0 8002F9E0 09008018 */  blez       $a0, .L8002FA08
/* 201E4 8002F9E4 21500000 */   addu      $t2, $zero, $zero
.L8002F9E8:
/* 201E8 8002F9E8 0000228D */  lw         $v0, 0x0($t1)
/* 201EC 8002F9EC 00000000 */  nop
/* 201F0 8002F9F0 06004010 */  beqz       $v0, .L8002FA0C
/* 201F4 8002F9F4 21802001 */   addu      $s0, $t1, $zero
/* 201F8 8002F9F8 01004A25 */  addiu      $t2, $t2, 0x1
/* 201FC 8002F9FC 2A104401 */  slt        $v0, $t2, $a0
/* 20200 8002FA00 F9FF4014 */  bnez       $v0, .L8002F9E8
/* 20204 8002FA04 50002925 */   addiu     $t1, $t1, 0x50
.L8002FA08:
/* 20208 8002FA08 21800000 */  addu       $s0, $zero, $zero
.L8002FA0C:
/* 2020C 8002FA0C 0C000012 */  beqz       $s0, .L8002FA40
/* 20210 8002FA10 D0840325 */   addiu     $v1, $t0, %lo(ParticleTypeTable)
/* 20214 8002FA14 80100B00 */  sll        $v0, $t3, 2
/* 20218 8002FA18 21104B00 */  addu       $v0, $v0, $t3
/* 2021C 8002FA1C 80100200 */  sll        $v0, $v0, 2
/* 20220 8002FA20 21186200 */  addu       $v1, $v1, $v0
/* 20224 8002FA24 2128C000 */  addu       $a1, $a2, $zero
/* 20228 8002FA28 2130E000 */  addu       $a2, $a3, $zero
/* 2022C 8002FA2C 0C00628C */  lw         $v0, 0xC($v1)
/* 20230 8002FA30 3000A78F */  lw         $a3, 0x30($sp)
/* 20234 8002FA34 09F84000 */  jalr       $v0
/* 20238 8002FA38 21200002 */   addu      $a0, $s0, $zero
/* 2023C 8002FA3C 440011AE */  sw         $s1, 0x44($s0)
.L8002FA40:
/* 20240 8002FA40 1800BF8F */  lw         $ra, 0x18($sp)
/* 20244 8002FA44 1400B18F */  lw         $s1, 0x14($sp)
/* 20248 8002FA48 1000B08F */  lw         $s0, 0x10($sp)
/* 2024C 8002FA4C 0800E003 */  jr         $ra
/* 20250 8002FA50 2000BD27 */   addiu     $sp, $sp, 0x20
.size RequestParticle, . - RequestParticle
