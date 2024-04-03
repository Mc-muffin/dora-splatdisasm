.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel CalcCellVertices
/* 55F8C 8006578C 801F0D3C */  lui        $t5, (0x1F800010 >> 16)
/* 55F90 80065790 1000AD35 */  ori        $t5, $t5, (0x1F800010 & 0xFFFF)
/* 55F94 80065794 801F0B3C */  lui        $t3, (0x1F80006C >> 16)
/* 55F98 80065798 6C006B35 */  ori        $t3, $t3, (0x1F80006C & 0xFFFF)
/* 55F9C 8006579C 801F0A3C */  lui        $t2, (0x1F80006C >> 16)
/* 55FA0 800657A0 6C004A35 */  ori        $t2, $t2, (0x1F80006C & 0xFFFF)
/* 55FA4 800657A4 801F083C */  lui        $t0, (0x1F80006C >> 16)
/* 55FA8 800657A8 6C000835 */  ori        $t0, $t0, (0x1F80006C & 0xFFFF)
/* 55FAC 800657AC 3000E28C */  lw         $v0, 0x30($a3)
/* 55FB0 800657B0 0000E98C */  lw         $t1, 0x0($a3)
/* 55FB4 800657B4 21004018 */  blez       $v0, .L8006583C
/* 55FB8 800657B8 21788000 */   addu      $t7, $a0, $zero
/* 55FBC 800657BC FFFF0E3C */  lui        $t6, (0xFFFF0000 >> 16)
/* 55FC0 800657C0 002C0500 */  sll        $a1, $a1, 16
/* 55FC4 800657C4 21384000 */  addu       $a3, $v0, $zero
.L800657C8:
/* 55FC8 800657C8 0000228D */  lw         $v0, 0x0($t1)
/* 55FCC 800657CC 04002925 */  addiu      $t1, $t1, 0x4
/* 55FD0 800657D0 0000248D */  lw         $a0, 0x0($t1)
/* 55FD4 800657D4 04002925 */  addiu      $t1, $t1, 0x4
/* 55FD8 800657D8 24184E00 */  and        $v1, $v0, $t6
/* 55FDC 800657DC 21186500 */  addu       $v1, $v1, $a1
/* 55FE0 800657E0 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 55FE4 800657E4 21104F00 */  addu       $v0, $v0, $t7
/* 55FE8 800657E8 25186200 */  or         $v1, $v1, $v0
/* 55FEC 800657EC FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 55FF0 800657F0 21108600 */  addu       $v0, $a0, $a2
/* 55FF4 800657F4 000003AD */  sw         $v1, 0x0($t0)
/* 55FF8 800657F8 04000825 */  addiu      $t0, $t0, 0x4
/* 55FFC 800657FC 000002AD */  sw         $v0, 0x0($t0)
/* 56000 80065800 04000825 */  addiu      $t0, $t0, 0x4
/* 56004 80065804 000040C9 */  lwc2       $0, 0x0($t2)
/* 56008 80065808 040041C9 */  lwc2       $1, 0x4($t2)
/* 5600C 8006580C 00000000 */  nop
/* 56010 80065810 00000000 */  nop
/* 56014 80065814 0100184A */  RTPS
/* 56018 80065818 00006EE9 */  swc2       $14, 0x0($t3)
/* 5601C 8006581C 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 56020 80065820 00000000 */  nop
/* 56024 80065824 C3600C00 */  sra        $t4, $t4, 3
/* 56028 80065828 0000ACAD */  sw         $t4, 0x0($t5)
/* 5602C 8006582C FFFFE724 */  addiu      $a3, $a3, -0x1
/* 56030 80065830 04006B25 */  addiu      $t3, $t3, 0x4
/* 56034 80065834 E4FFE014 */  bnez       $a3, .L800657C8
/* 56038 80065838 08004A25 */   addiu     $t2, $t2, 0x8
.L8006583C:
/* 5603C 8006583C 0800E003 */  jr         $ra
/* 56040 80065840 01000224 */   addiu     $v0, $zero, 0x1
.size CalcCellVertices, . - CalcCellVertices
