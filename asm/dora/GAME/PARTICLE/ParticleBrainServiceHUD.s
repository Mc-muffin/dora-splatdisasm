.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleBrainServiceHUD
/* 205C0 8002FDC0 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 205C4 8002FDC4 21280000 */  addu       $a1, $zero, $zero
/* 205C8 8002FDC8 0A80023C */  lui        $v0, %hi(ParticleTypeTable)
/* 205CC 8002FDCC 2000B4AF */  sw         $s4, 0x20($sp)
/* 205D0 8002FDD0 D0845424 */  addiu      $s4, $v0, %lo(ParticleTypeTable)
/* 205D4 8002FDD4 2800B6AF */  sw         $s6, 0x28($sp)
/* 205D8 8002FDD8 04009626 */  addiu      $s6, $s4, 0x4
/* 205DC 8002FDDC 2400B5AF */  sw         $s5, 0x24($sp)
/* 205E0 8002FDE0 10009526 */  addiu      $s5, $s4, 0x10
/* 205E4 8002FDE4 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 205E8 8002FDE8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 205EC 8002FDEC 1800B2AF */  sw         $s2, 0x18($sp)
/* 205F0 8002FDF0 1400B1AF */  sw         $s1, 0x14($sp)
/* 205F4 8002FDF4 1000B0AF */  sw         $s0, 0x10($sp)
.L8002FDF8:
/* 205F8 8002FDF8 80100500 */  sll        $v0, $a1, 2
/* 205FC 8002FDFC 21104500 */  addu       $v0, $v0, $a1
/* 20600 8002FE00 80200200 */  sll        $a0, $v0, 2
/* 20604 8002FE04 21189600 */  addu       $v1, $a0, $s6
/* 20608 8002FE08 21109400 */  addu       $v0, $a0, $s4
/* 2060C 8002FE0C 0000428C */  lw         $v0, 0x0($v0)
/* 20610 8002FE10 0000708C */  lw         $s0, 0x0($v1)
/* 20614 8002FE14 24004018 */  blez       $v0, .L8002FEA8
/* 20618 8002FE18 0100B324 */   addiu     $s3, $a1, 0x1
/* 2061C 8002FE1C 21909500 */  addu       $s2, $a0, $s5
/* 20620 8002FE20 21884000 */  addu       $s1, $v0, $zero
.L8002FE24:
/* 20624 8002FE24 0000028E */  lw         $v0, 0x0($s0)
/* 20628 8002FE28 00000000 */  nop
/* 2062C 8002FE2C 1B004010 */  beqz       $v0, .L8002FE9C
/* 20630 8002FE30 00000000 */   nop
/* 20634 8002FE34 0400028E */  lw         $v0, 0x4($s0)
/* 20638 8002FE38 00000000 */  nop
/* 2063C 8002FE3C 17004014 */  bnez       $v0, .L8002FE9C
/* 20640 8002FE40 00000000 */   nop
/* 20644 8002FE44 EFEC010C */  jal        PushMatrix
/* 20648 8002FE48 00000000 */   nop
/* 2064C 8002FE4C 4400048E */  lw         $a0, 0x44($s0)
/* 20650 8002FE50 2400058E */  lw         $a1, 0x24($s0)
/* 20654 8002FE54 2800068E */  lw         $a2, 0x28($s0)
/* 20658 8002FE58 2C00078E */  lw         $a3, 0x2C($s0)
/* 2065C 8002FE5C BD79000C */  jal        SetupHUDCamera
/* 20660 8002FE60 00000000 */   nop
/* 20664 8002FE64 0000428E */  lw         $v0, 0x0($s2)
/* 20668 8002FE68 00000000 */  nop
/* 2066C 8002FE6C 09F84000 */  jalr       $v0
/* 20670 8002FE70 21200002 */   addu      $a0, $s0, $zero
/* 20674 8002FE74 73A5000C */  jal        DrawParticle
/* 20678 8002FE78 21200002 */   addu      $a0, $s0, $zero
/* 2067C 8002FE7C 18ED010C */  jal        PopMatrix
/* 20680 8002FE80 00000000 */   nop
/* 20684 8002FE84 0980013C */  lui        $at, %hi(MoveVec)
/* 20688 8002FE88 E44D20A4 */  sh         $zero, %lo(MoveVec)($at)
/* 2068C 8002FE8C 0980013C */  lui        $at, %hi(MoveVec + 0x2)
/* 20690 8002FE90 E64D20A4 */  sh         $zero, %lo(MoveVec + 0x2)($at)
/* 20694 8002FE94 0980013C */  lui        $at, %hi(MoveVec + 0x4)
/* 20698 8002FE98 E84D20A4 */  sh         $zero, %lo(MoveVec + 0x4)($at)
.L8002FE9C:
/* 2069C 8002FE9C FFFF3126 */  addiu      $s1, $s1, -0x1
/* 206A0 8002FEA0 E0FF2016 */  bnez       $s1, .L8002FE24
/* 206A4 8002FEA4 50001026 */   addiu     $s0, $s0, 0x50
.L8002FEA8:
/* 206A8 8002FEA8 21286002 */  addu       $a1, $s3, $zero
/* 206AC 8002FEAC 1700A228 */  slti       $v0, $a1, 0x17
/* 206B0 8002FEB0 D1FF4014 */  bnez       $v0, .L8002FDF8
/* 206B4 8002FEB4 00000000 */   nop
/* 206B8 8002FEB8 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 206BC 8002FEBC 2800B68F */  lw         $s6, 0x28($sp)
/* 206C0 8002FEC0 2400B58F */  lw         $s5, 0x24($sp)
/* 206C4 8002FEC4 2000B48F */  lw         $s4, 0x20($sp)
/* 206C8 8002FEC8 1C00B38F */  lw         $s3, 0x1C($sp)
/* 206CC 8002FECC 1800B28F */  lw         $s2, 0x18($sp)
/* 206D0 8002FED0 1400B18F */  lw         $s1, 0x14($sp)
/* 206D4 8002FED4 1000B08F */  lw         $s0, 0x10($sp)
/* 206D8 8002FED8 0800E003 */  jr         $ra
/* 206DC 8002FEDC 3000BD27 */   addiu     $sp, $sp, 0x30
.size ParticleBrainServiceHUD, . - ParticleBrainServiceHUD
