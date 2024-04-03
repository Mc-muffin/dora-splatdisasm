.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateCameraMatrix
/* 2AD28 8003A528 68FFBD27 */  addiu      $sp, $sp, -0x98
/* 2AD2C 8003A52C 9000B2AF */  sw         $s2, 0x90($sp)
/* 2AD30 8003A530 4000B227 */  addiu      $s2, $sp, 0x40
/* 2AD34 8003A534 21204002 */  addu       $a0, $s2, $zero
/* 2AD38 8003A538 21280000 */  addu       $a1, $zero, $zero
/* 2AD3C 8003A53C 10000624 */  addiu      $a2, $zero, 0x10
/* 2AD40 8003A540 9400BFAF */  sw         $ra, 0x94($sp)
/* 2AD44 8003A544 8C00B1AF */  sw         $s1, 0x8C($sp)
/* 2AD48 8003A548 2BC2010C */  jal        memset
/* 2AD4C 8003A54C 8800B0AF */   sw        $s0, 0x88($sp)
/* 2AD50 8003A550 8000A427 */  addiu      $a0, $sp, 0x80
/* 2AD54 8003A554 21280000 */  addu       $a1, $zero, $zero
/* 2AD58 8003A558 2BC2010C */  jal        memset
/* 2AD5C 8003A55C 08000624 */   addiu     $a2, $zero, 0x8
/* 2AD60 8003A560 0A80103C */  lui        $s0, %hi(GeomEnv)
/* 2AD64 8003A564 40B11026 */  addiu      $s0, $s0, %lo(GeomEnv)
/* 2AD68 8003A568 21200002 */  addu       $a0, $s0, $zero
/* 2AD6C 8003A56C 18001126 */  addiu      $s1, $s0, 0x18
/* 2AD70 8003A570 21282002 */  addu       $a1, $s1, $zero
/* 2AD74 8003A574 00100324 */  addiu      $v1, $zero, 0x1000
/* 2AD78 8003A578 000C0224 */  addiu      $v0, $zero, 0xC00
/* 2AD7C 8003A57C 5000A3AF */  sw         $v1, 0x50($sp)
/* 2AD80 8003A580 5400A2AF */  sw         $v0, 0x54($sp)
/* 2AD84 8003A584 EFED010C */  jal        RotMatrix
/* 2AD88 8003A588 5800A3AF */   sw        $v1, 0x58($sp)
/* 2AD8C 8003A58C 21202002 */  addu       $a0, $s1, $zero
/* 2AD90 8003A590 800B8527 */  addiu      $a1, $gp, %gp_rel(MoveVec)
/* 2AD94 8003A594 43ED010C */  jal        ApplyMatrix
/* 2AD98 8003A598 21304002 */   addu      $a2, $s2, $zero
/* 2AD9C 8003A59C 0800028E */  lw         $v0, 0x8($s0)
/* 2ADA0 8003A5A0 4000A38F */  lw         $v1, 0x40($sp)
/* 2ADA4 8003A5A4 21202002 */  addu       $a0, $s1, $zero
/* 2ADA8 8003A5A8 21104300 */  addu       $v0, $v0, $v1
/* 2ADAC 8003A5AC 0C00038E */  lw         $v1, 0xC($s0)
/* 2ADB0 8003A5B0 5000A527 */  addiu      $a1, $sp, 0x50
/* 2ADB4 8003A5B4 080002AE */  sw         $v0, 0x8($s0)
/* 2ADB8 8003A5B8 4400A68F */  lw         $a2, 0x44($sp)
/* 2ADBC 8003A5BC 1000028E */  lw         $v0, 0x10($s0)
/* 2ADC0 8003A5C0 4800A78F */  lw         $a3, 0x48($sp)
/* 2ADC4 8003A5C4 23186600 */  subu       $v1, $v1, $a2
/* 2ADC8 8003A5C8 23104700 */  subu       $v0, $v0, $a3
/* 2ADCC 8003A5CC 0C0003AE */  sw         $v1, 0xC($s0)
/* 2ADD0 8003A5D0 63ED010C */  jal        ScaleMatrix
/* 2ADD4 8003A5D4 100002AE */   sw        $v0, 0x10($s0)
/* 2ADD8 8003A5D8 21202002 */  addu       $a0, $s1, $zero
/* 2ADDC 8003A5DC 08000526 */  addiu      $a1, $s0, 0x8
/* 2ADE0 8003A5E0 97EC010C */  jal        ApplyMatrixLV
/* 2ADE4 8003A5E4 1000A627 */   addiu     $a2, $sp, 0x10
/* 2ADE8 8003A5E8 21202002 */  addu       $a0, $s1, $zero
/* 2ADEC 8003A5EC 1000A527 */  addiu      $a1, $sp, 0x10
/* 2ADF0 8003A5F0 1000A28F */  lw         $v0, 0x10($sp)
/* 2ADF4 8003A5F4 1400A38F */  lw         $v1, 0x14($sp)
/* 2ADF8 8003A5F8 23100200 */  negu       $v0, $v0
/* 2ADFC 8003A5FC 1000A2AF */  sw         $v0, 0x10($sp)
/* 2AE00 8003A600 1800A28F */  lw         $v0, 0x18($sp)
/* 2AE04 8003A604 23180300 */  negu       $v1, $v1
/* 2AE08 8003A608 1400A3AF */  sw         $v1, 0x14($sp)
/* 2AE0C 8003A60C 23100200 */  negu       $v0, $v0
/* 2AE10 8003A610 57ED010C */  jal        TransMatrix
/* 2AE14 8003A614 1800A2AF */   sw        $v0, 0x18($sp)
/* 2AE18 8003A618 B3ED010C */  jal        SetRotMatrix
/* 2AE1C 8003A61C 21202002 */   addu      $a0, $s1, $zero
/* 2AE20 8003A620 CBED010C */  jal        SetTransMatrix
/* 2AE24 8003A624 21202002 */   addu      $a0, $s1, $zero
/* 2AE28 8003A628 9400BF8F */  lw         $ra, 0x94($sp)
/* 2AE2C 8003A62C 9000B28F */  lw         $s2, 0x90($sp)
/* 2AE30 8003A630 8C00B18F */  lw         $s1, 0x8C($sp)
/* 2AE34 8003A634 8800B08F */  lw         $s0, 0x88($sp)
/* 2AE38 8003A638 21100000 */  addu       $v0, $zero, $zero
/* 2AE3C 8003A63C 0800E003 */  jr         $ra
/* 2AE40 8003A640 9800BD27 */   addiu     $sp, $sp, 0x98
.size UpdateCameraMatrix, . - UpdateCameraMatrix
