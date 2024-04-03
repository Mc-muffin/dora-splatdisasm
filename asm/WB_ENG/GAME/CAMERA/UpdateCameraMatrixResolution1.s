.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateCameraMatrixResolution1
/* 2AE44 8003A644 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 2AE48 8003A648 6000B0AF */  sw         $s0, 0x60($sp)
/* 2AE4C 8003A64C 0A80103C */  lui        $s0, %hi(GeomEnv)
/* 2AE50 8003A650 40B11026 */  addiu      $s0, $s0, %lo(GeomEnv)
/* 2AE54 8003A654 21200002 */  addu       $a0, $s0, $zero
/* 2AE58 8003A658 0180053C */  lui        $a1, %hi(D_80012C68)
/* 2AE5C 8003A65C 682CA224 */  addiu      $v0, $a1, %lo(D_80012C68)
/* 2AE60 8003A660 0180063C */  lui        $a2, %hi(D_80012C78)
/* 2AE64 8003A664 682CA78C */  lw         $a3, %lo(D_80012C68)($a1)
/* 2AE68 8003A668 782CC324 */  addiu      $v1, $a2, %lo(D_80012C78)
/* 2AE6C 8003A66C 6400B1AF */  sw         $s1, 0x64($sp)
/* 2AE70 8003A670 18001126 */  addiu      $s1, $s0, 0x18
/* 2AE74 8003A674 6800BFAF */  sw         $ra, 0x68($sp)
/* 2AE78 8003A678 0400488C */  lw         $t0, 0x4($v0)
/* 2AE7C 8003A67C 0800498C */  lw         $t1, 0x8($v0)
/* 2AE80 8003A680 0C004A8C */  lw         $t2, 0xC($v0)
/* 2AE84 8003A684 782CCB8C */  lw         $t3, %lo(D_80012C78)($a2)
/* 2AE88 8003A688 0400628C */  lw         $v0, 0x4($v1)
/* 2AE8C 8003A68C 0800668C */  lw         $a2, 0x8($v1)
/* 2AE90 8003A690 0C006C8C */  lw         $t4, 0xC($v1)
/* 2AE94 8003A694 21282002 */  addu       $a1, $s1, $zero
/* 2AE98 8003A698 2000A7AF */  sw         $a3, 0x20($sp)
/* 2AE9C 8003A69C 2400A8AF */  sw         $t0, 0x24($sp)
/* 2AEA0 8003A6A0 2800A9AF */  sw         $t1, 0x28($sp)
/* 2AEA4 8003A6A4 2C00AAAF */  sw         $t2, 0x2C($sp)
/* 2AEA8 8003A6A8 5000ABAF */  sw         $t3, 0x50($sp)
/* 2AEAC 8003A6AC 5400A2AF */  sw         $v0, 0x54($sp)
/* 2AEB0 8003A6B0 5800A6AF */  sw         $a2, 0x58($sp)
/* 2AEB4 8003A6B4 EFED010C */  jal        RotMatrix
/* 2AEB8 8003A6B8 5C00ACAF */   sw        $t4, 0x5C($sp)
/* 2AEBC 8003A6BC 21202002 */  addu       $a0, $s1, $zero
/* 2AEC0 8003A6C0 800B8527 */  addiu      $a1, $gp, %gp_rel(MoveVec)
/* 2AEC4 8003A6C4 43ED010C */  jal        ApplyMatrix
/* 2AEC8 8003A6C8 5000A627 */   addiu     $a2, $sp, 0x50
/* 2AECC 8003A6CC 21202002 */  addu       $a0, $s1, $zero
/* 2AED0 8003A6D0 2000A527 */  addiu      $a1, $sp, 0x20
/* 2AED4 8003A6D4 0800028E */  lw         $v0, 0x8($s0)
/* 2AED8 8003A6D8 5000A68F */  lw         $a2, 0x50($sp)
/* 2AEDC 8003A6DC 1000038E */  lw         $v1, 0x10($s0)
/* 2AEE0 8003A6E0 5800A78F */  lw         $a3, 0x58($sp)
/* 2AEE4 8003A6E4 21104600 */  addu       $v0, $v0, $a2
/* 2AEE8 8003A6E8 23186700 */  subu       $v1, $v1, $a3
/* 2AEEC 8003A6EC 080002AE */  sw         $v0, 0x8($s0)
/* 2AEF0 8003A6F0 63ED010C */  jal        ScaleMatrix
/* 2AEF4 8003A6F4 100003AE */   sw        $v1, 0x10($s0)
/* 2AEF8 8003A6F8 21202002 */  addu       $a0, $s1, $zero
/* 2AEFC 8003A6FC 08000526 */  addiu      $a1, $s0, 0x8
/* 2AF00 8003A700 97EC010C */  jal        ApplyMatrixLV
/* 2AF04 8003A704 1000A627 */   addiu     $a2, $sp, 0x10
/* 2AF08 8003A708 21202002 */  addu       $a0, $s1, $zero
/* 2AF0C 8003A70C 1000A527 */  addiu      $a1, $sp, 0x10
/* 2AF10 8003A710 1000A28F */  lw         $v0, 0x10($sp)
/* 2AF14 8003A714 1400A38F */  lw         $v1, 0x14($sp)
/* 2AF18 8003A718 23100200 */  negu       $v0, $v0
/* 2AF1C 8003A71C 1000A2AF */  sw         $v0, 0x10($sp)
/* 2AF20 8003A720 1800A28F */  lw         $v0, 0x18($sp)
/* 2AF24 8003A724 23180300 */  negu       $v1, $v1
/* 2AF28 8003A728 1400A3AF */  sw         $v1, 0x14($sp)
/* 2AF2C 8003A72C 23100200 */  negu       $v0, $v0
/* 2AF30 8003A730 57ED010C */  jal        TransMatrix
/* 2AF34 8003A734 1800A2AF */   sw        $v0, 0x18($sp)
/* 2AF38 8003A738 B3ED010C */  jal        SetRotMatrix
/* 2AF3C 8003A73C 21202002 */   addu      $a0, $s1, $zero
/* 2AF40 8003A740 CBED010C */  jal        SetTransMatrix
/* 2AF44 8003A744 21202002 */   addu      $a0, $s1, $zero
/* 2AF48 8003A748 6800BF8F */  lw         $ra, 0x68($sp)
/* 2AF4C 8003A74C 6400B18F */  lw         $s1, 0x64($sp)
/* 2AF50 8003A750 6000B08F */  lw         $s0, 0x60($sp)
/* 2AF54 8003A754 21100000 */  addu       $v0, $zero, $zero
/* 2AF58 8003A758 0800E003 */  jr         $ra
/* 2AF5C 8003A75C 7000BD27 */   addiu     $sp, $sp, 0x70
.size UpdateCameraMatrixResolution1, . - UpdateCameraMatrixResolution1
