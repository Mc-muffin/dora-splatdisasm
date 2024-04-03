.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleBrainService
/* 204B4 8002FCB4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 204B8 8002FCB8 0980033C */  lui        $v1, %hi(gWorld)
/* 204BC 8002FCBC 3C56638C */  lw         $v1, %lo(gWorld)($v1)
/* 204C0 8002FCC0 06000224 */  addiu      $v0, $zero, 0x6
/* 204C4 8002FCC4 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 204C8 8002FCC8 2800B6AF */  sw         $s6, 0x28($sp)
/* 204CC 8002FCCC 2400B5AF */  sw         $s5, 0x24($sp)
/* 204D0 8002FCD0 2000B4AF */  sw         $s4, 0x20($sp)
/* 204D4 8002FCD4 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 204D8 8002FCD8 1800B2AF */  sw         $s2, 0x18($sp)
/* 204DC 8002FCDC 1400B1AF */  sw         $s1, 0x14($sp)
/* 204E0 8002FCE0 08006214 */  bne        $v1, $v0, .L8002FD04
/* 204E4 8002FCE4 1000B0AF */   sw        $s0, 0x10($sp)
/* 204E8 8002FCE8 0980023C */  lui        $v0, %hi(gLevel)
/* 204EC 8002FCEC 3456428C */  lw         $v0, %lo(gLevel)($v0)
/* 204F0 8002FCF0 00000000 */  nop
/* 204F4 8002FCF4 04004014 */  bnez       $v0, .L8002FD08
/* 204F8 8002FCF8 21280000 */   addu      $a1, $zero, $zero
/* 204FC 8002FCFC 3DBE000C */  jal        MakeRain
/* 20500 8002FD00 00000000 */   nop
.L8002FD04:
/* 20504 8002FD04 21280000 */  addu       $a1, $zero, $zero
.L8002FD08:
/* 20508 8002FD08 0A80023C */  lui        $v0, %hi(ParticleTypeTable)
/* 2050C 8002FD0C D0845424 */  addiu      $s4, $v0, %lo(ParticleTypeTable)
/* 20510 8002FD10 04009626 */  addiu      $s6, $s4, 0x4
/* 20514 8002FD14 10009526 */  addiu      $s5, $s4, 0x10
.L8002FD18:
/* 20518 8002FD18 80100500 */  sll        $v0, $a1, 2
/* 2051C 8002FD1C 21104500 */  addu       $v0, $v0, $a1
/* 20520 8002FD20 80200200 */  sll        $a0, $v0, 2
/* 20524 8002FD24 21189600 */  addu       $v1, $a0, $s6
/* 20528 8002FD28 21109400 */  addu       $v0, $a0, $s4
/* 2052C 8002FD2C 0000428C */  lw         $v0, 0x0($v0)
/* 20530 8002FD30 0000708C */  lw         $s0, 0x0($v1)
/* 20534 8002FD34 14004018 */  blez       $v0, .L8002FD88
/* 20538 8002FD38 0100B324 */   addiu     $s3, $a1, 0x1
/* 2053C 8002FD3C 21909500 */  addu       $s2, $a0, $s5
/* 20540 8002FD40 21884000 */  addu       $s1, $v0, $zero
.L8002FD44:
/* 20544 8002FD44 0000028E */  lw         $v0, 0x0($s0)
/* 20548 8002FD48 00000000 */  nop
/* 2054C 8002FD4C 0B004010 */  beqz       $v0, .L8002FD7C
/* 20550 8002FD50 00000000 */   nop
/* 20554 8002FD54 0400028E */  lw         $v0, 0x4($s0)
/* 20558 8002FD58 00000000 */  nop
/* 2055C 8002FD5C 07004010 */  beqz       $v0, .L8002FD7C
/* 20560 8002FD60 00000000 */   nop
/* 20564 8002FD64 0000428E */  lw         $v0, 0x0($s2)
/* 20568 8002FD68 00000000 */  nop
/* 2056C 8002FD6C 09F84000 */  jalr       $v0
/* 20570 8002FD70 21200002 */   addu      $a0, $s0, $zero
/* 20574 8002FD74 73A5000C */  jal        DrawParticle
/* 20578 8002FD78 21200002 */   addu      $a0, $s0, $zero
.L8002FD7C:
/* 2057C 8002FD7C FFFF3126 */  addiu      $s1, $s1, -0x1
/* 20580 8002FD80 F0FF2016 */  bnez       $s1, .L8002FD44
/* 20584 8002FD84 50001026 */   addiu     $s0, $s0, 0x50
.L8002FD88:
/* 20588 8002FD88 21286002 */  addu       $a1, $s3, $zero
/* 2058C 8002FD8C 1700A228 */  slti       $v0, $a1, 0x17
/* 20590 8002FD90 E1FF4014 */  bnez       $v0, .L8002FD18
/* 20594 8002FD94 00000000 */   nop
/* 20598 8002FD98 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 2059C 8002FD9C 2800B68F */  lw         $s6, 0x28($sp)
/* 205A0 8002FDA0 2400B58F */  lw         $s5, 0x24($sp)
/* 205A4 8002FDA4 2000B48F */  lw         $s4, 0x20($sp)
/* 205A8 8002FDA8 1C00B38F */  lw         $s3, 0x1C($sp)
/* 205AC 8002FDAC 1800B28F */  lw         $s2, 0x18($sp)
/* 205B0 8002FDB0 1400B18F */  lw         $s1, 0x14($sp)
/* 205B4 8002FDB4 1000B08F */  lw         $s0, 0x10($sp)
/* 205B8 8002FDB8 0800E003 */  jr         $ra
/* 205BC 8002FDBC 3000BD27 */   addiu     $sp, $sp, 0x30
.size ParticleBrainService, . - ParticleBrainService
