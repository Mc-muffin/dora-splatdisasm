.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleHUDInit
/* 1BCEC 8002B4EC 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 1BCF0 8002B4F0 5C00B7AF */  sw         $s7, 0x5C($sp)
/* 1BCF4 8002B4F4 21B88000 */  addu       $s7, $a0, $zero
/* 1BCF8 8002B4F8 6400BFAF */  sw         $ra, 0x64($sp)
/* 1BCFC 8002B4FC 6000BEAF */  sw         $fp, 0x60($sp)
/* 1BD00 8002B500 5800B6AF */  sw         $s6, 0x58($sp)
/* 1BD04 8002B504 5400B5AF */  sw         $s5, 0x54($sp)
/* 1BD08 8002B508 5000B4AF */  sw         $s4, 0x50($sp)
/* 1BD0C 8002B50C 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 1BD10 8002B510 4800B2AF */  sw         $s2, 0x48($sp)
/* 1BD14 8002B514 4400B1AF */  sw         $s1, 0x44($sp)
/* 1BD18 8002B518 4000B0AF */  sw         $s0, 0x40($sp)
/* 1BD1C 8002B51C 1000A5AF */  sw         $a1, 0x10($sp)
/* 1BD20 8002B520 1400A6AF */  sw         $a2, 0x14($sp)
/* 1BD24 8002B524 1800A7AF */  sw         $a3, 0x18($sp)
/* 1BD28 8002B528 4000F68E */  lw         $s6, 0x40($s7)
/* 1BD2C 8002B52C 7F000224 */  addiu      $v0, $zero, 0x7F
/* 1BD30 8002B530 C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 1BD34 8002B534 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 1BD38 8002B538 BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1BD3C 8002B53C FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1BD40 8002B540 3400E2AE */  sw         $v0, 0x34($s7)
/* 1BD44 8002B544 3C00E2AE */  sw         $v0, 0x3C($s7)
/* 1BD48 8002B548 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1BD4C 8002B54C 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1BD50 8002B550 3000E0AE */  sw         $zero, 0x30($s7)
/* 1BD54 8002B554 3800E0AE */  sw         $zero, 0x38($s7)
/* 1BD58 8002B558 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1BD5C 8002B55C 14000224 */  addiu      $v0, $zero, 0x14
/* 1BD60 8002B560 2000A3AF */  sw         $v1, 0x20($sp)
/* 1BD64 8002B564 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1BD68 8002B568 1000A38F */  lw         $v1, 0x10($sp)
/* 1BD6C 8002B56C 00000000 */  nop
/* 1BD70 8002B570 2400E3AE */  sw         $v1, 0x24($s7)
/* 1BD74 8002B574 1400A28F */  lw         $v0, 0x14($sp)
/* 1BD78 8002B578 00000000 */  nop
/* 1BD7C 8002B57C 2800E2AE */  sw         $v0, 0x28($s7)
/* 1BD80 8002B580 1800A38F */  lw         $v1, 0x18($sp)
/* 1BD84 8002B584 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1BD88 8002B588 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1BD8C 8002B58C 0400E28E */  lw         $v0, 0x4($s7)
/* 1BD90 8002B590 00000000 */  nop
/* 1BD94 8002B594 04004014 */  bnez       $v0, .L8002B5A8
/* 1BD98 8002B598 2C00E3AE */   sw        $v1, 0x2C($s7)
/* 1BD9C 8002B59C 1000A0AF */  sw         $zero, 0x10($sp)
/* 1BDA0 8002B5A0 1400A0AF */  sw         $zero, 0x14($sp)
/* 1BDA4 8002B5A4 1800A0AF */  sw         $zero, 0x18($sp)
.L8002B5A8:
/* 1BDA8 8002B5A8 0800E28E */  lw         $v0, 0x8($s7)
/* 1BDAC 8002B5AC 00000000 */  nop
/* 1BDB0 8002B5B0 A8004018 */  blez       $v0, .L8002B854
/* 1BDB4 8002B5B4 21880000 */   addu      $s1, $zero, $zero
.L8002B5B8:
/* 1BDB8 8002B5B8 D140010C */  jal        u32Random
/* 1BDBC 8002B5BC FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1BDC0 8002B5C0 21804000 */  addu       $s0, $v0, $zero
/* 1BDC4 8002B5C4 D140010C */  jal        u32Random
/* 1BDC8 8002B5C8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1BDCC 8002B5CC 21984000 */  addu       $s3, $v0, $zero
/* 1BDD0 8002B5D0 21100000 */  addu       $v0, $zero, $zero
/* 1BDD4 8002B5D4 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1BDD8 8002B5D8 20004310 */  beq        $v0, $v1, .L8002B65C
/* 1BDDC 8002B5DC 00000000 */   nop
/* 1BDE0 8002B5E0 1000A28F */  lw         $v0, 0x10($sp)
/* 1BDE4 8002B5E4 1400A38F */  lw         $v1, 0x14($sp)
/* 1BDE8 8002B5E8 01003126 */  addiu      $s1, $s1, 0x1
/* 1BDEC 8002B5EC 2800B1AF */  sw         $s1, 0x28($sp)
/* 1BDF0 8002B5F0 00F20200 */  sll        $fp, $v0, 8
/* 1BDF4 8002B5F4 1800A28F */  lw         $v0, 0x18($sp)
/* 1BDF8 8002B5F8 001A0300 */  sll        $v1, $v1, 8
/* 1BDFC 8002B5FC 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1BE00 8002B600 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1BE04 8002B604 3400A3AF */  sw         $v1, 0x34($sp)
/* 1BE08 8002B608 7400C326 */  addiu      $v1, $s6, 0x74
/* 1BE0C 8002B60C 3800A3AF */  sw         $v1, 0x38($sp)
/* 1BE10 8002B610 00120200 */  sll        $v0, $v0, 8
/* 1BE14 8002B614 3000A2AF */  sw         $v0, 0x30($sp)
/* 1BE18 8002B618 4400C226 */  addiu      $v0, $s6, 0x44
/* 1BE1C 8002B61C 05000006 */  bltz       $s0, .L8002B634
/* 1BE20 8002B620 2400A2AF */   sw        $v0, 0x24($sp)
/* 1BE24 8002B624 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1BE28 8002B628 2A107000 */  slt        $v0, $v1, $s0
/* 1BE2C 8002B62C 1E004010 */  beqz       $v0, .L8002B6A8
/* 1BE30 8002B630 21100000 */   addu      $v0, $zero, $zero
.L8002B634:
/* 1BE34 8002B634 D140010C */  jal        u32Random
/* 1BE38 8002B638 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1BE3C 8002B63C 21804000 */  addu       $s0, $v0, $zero
/* 1BE40 8002B640 FCFF0006 */  bltz       $s0, .L8002B634
/* 1BE44 8002B644 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1BE48 8002B648 2A107000 */  slt        $v0, $v1, $s0
/* 1BE4C 8002B64C F9FF4014 */  bnez       $v0, .L8002B634
/* 1BE50 8002B650 21100000 */   addu      $v0, $zero, $zero
/* 1BE54 8002B654 AAAD0008 */  j          .L8002B6A8
/* 1BE58 8002B658 00000000 */   nop
.L8002B65C:
/* 1BE5C 8002B65C 21800000 */  addu       $s0, $zero, $zero
/* 1BE60 8002B660 1000A28F */  lw         $v0, 0x10($sp)
/* 1BE64 8002B664 1400A38F */  lw         $v1, 0x14($sp)
/* 1BE68 8002B668 01003126 */  addiu      $s1, $s1, 0x1
/* 1BE6C 8002B66C 2800B1AF */  sw         $s1, 0x28($sp)
/* 1BE70 8002B670 00F20200 */  sll        $fp, $v0, 8
/* 1BE74 8002B674 1800A28F */  lw         $v0, 0x18($sp)
/* 1BE78 8002B678 001A0300 */  sll        $v1, $v1, 8
/* 1BE7C 8002B67C 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1BE80 8002B680 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1BE84 8002B684 3400A3AF */  sw         $v1, 0x34($sp)
/* 1BE88 8002B688 7400C326 */  addiu      $v1, $s6, 0x74
/* 1BE8C 8002B68C 3800A3AF */  sw         $v1, 0x38($sp)
/* 1BE90 8002B690 00120200 */  sll        $v0, $v0, 8
/* 1BE94 8002B694 3000A2AF */  sw         $v0, 0x30($sp)
/* 1BE98 8002B698 4400C226 */  addiu      $v0, $s6, 0x44
/* 1BE9C 8002B69C 2400A2AF */  sw         $v0, 0x24($sp)
/* 1BEA0 8002B6A0 21100000 */  addu       $v0, $zero, $zero
/* 1BEA4 8002B6A4 FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002B6A8:
/* 1BEA8 8002B6A8 0F004310 */  beq        $v0, $v1, .L8002B6E8
/* 1BEAC 8002B6AC 00000000 */   nop
/* 1BEB0 8002B6B0 03006006 */  bltz       $s3, .L8002B6C0
/* 1BEB4 8002B6B4 2A107300 */   slt       $v0, $v1, $s3
/* 1BEB8 8002B6B8 0C004010 */  beqz       $v0, .L8002B6EC
/* 1BEBC 8002B6BC 00000000 */   nop
.L8002B6C0:
/* 1BEC0 8002B6C0 D140010C */  jal        u32Random
/* 1BEC4 8002B6C4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1BEC8 8002B6C8 21984000 */  addu       $s3, $v0, $zero
/* 1BECC 8002B6CC FCFF6006 */  bltz       $s3, .L8002B6C0
/* 1BED0 8002B6D0 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1BED4 8002B6D4 2A107300 */  slt        $v0, $v1, $s3
/* 1BED8 8002B6D8 F9FF4014 */  bnez       $v0, .L8002B6C0
/* 1BEDC 8002B6DC 00000000 */   nop
/* 1BEE0 8002B6E0 BBAD0008 */  j          .L8002B6EC
/* 1BEE4 8002B6E4 00000000 */   nop
.L8002B6E8:
/* 1BEE8 8002B6E8 21980000 */  addu       $s3, $zero, $zero
.L8002B6EC:
/* 1BEEC 8002B6EC 7BEB010C */  jal        rcos
/* 1BEF0 8002B6F0 21200002 */   addu      $a0, $s0, $zero
/* 1BEF4 8002B6F4 21200002 */  addu       $a0, $s0, $zero
/* 1BEF8 8002B6F8 47EB010C */  jal        rsin
/* 1BEFC 8002B6FC 21904000 */   addu      $s2, $v0, $zero
/* 1BF00 8002B700 21206002 */  addu       $a0, $s3, $zero
/* 1BF04 8002B704 7BEB010C */  jal        rcos
/* 1BF08 8002B708 21884000 */   addu      $s1, $v0, $zero
/* 1BF0C 8002B70C 21206002 */  addu       $a0, $s3, $zero
/* 1BF10 8002B710 47EB010C */  jal        rsin
/* 1BF14 8002B714 21804000 */   addu      $s0, $v0, $zero
/* 1BF18 8002B718 18003002 */  mult       $s1, $s0
/* 1BF1C 8002B71C 12880000 */  mflo       $s1
/* 1BF20 8002B720 00000000 */  nop
/* 1BF24 8002B724 00000000 */  nop
/* 1BF28 8002B728 18005002 */  mult       $s2, $s0
/* 1BF2C 8002B72C 12900000 */  mflo       $s2
/* 1BF30 8002B730 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1BF34 8002B734 038B1100 */  sra        $s1, $s1, 12
/* 1BF38 8002B738 18002302 */  mult       $s1, $v1
/* 1BF3C 8002B73C 12A80000 */  mflo       $s5
/* 1BF40 8002B740 21A04000 */  addu       $s4, $v0, $zero
/* 1BF44 8002B744 00000000 */  nop
/* 1BF48 8002B748 18008302 */  mult       $s4, $v1
/* 1BF4C 8002B74C 12980000 */  mflo       $s3
/* 1BF50 8002B750 03931200 */  sra        $s2, $s2, 12
/* 1BF54 8002B754 00000000 */  nop
/* 1BF58 8002B758 18004302 */  mult       $s2, $v1
/* 1BF5C 8002B75C 12800000 */  mflo       $s0
/* 1BF60 8002B760 2000A28F */  lw         $v0, 0x20($sp)
/* 1BF64 8002B764 00000000 */  nop
/* 1BF68 8002B768 18002202 */  mult       $s1, $v0
/* 1BF6C 8002B76C 12880000 */  mflo       $s1
/* 1BF70 8002B770 00000000 */  nop
/* 1BF74 8002B774 00000000 */  nop
/* 1BF78 8002B778 18008202 */  mult       $s4, $v0
/* 1BF7C 8002B77C 12A00000 */  mflo       $s4
/* 1BF80 8002B780 00000000 */  nop
/* 1BF84 8002B784 00000000 */  nop
/* 1BF88 8002B788 18004202 */  mult       $s2, $v0
/* 1BF8C 8002B78C 04000424 */  addiu      $a0, $zero, 0x4
/* 1BF90 8002B790 03A91500 */  sra        $s5, $s5, 4
/* 1BF94 8002B794 21A8D503 */  addu       $s5, $fp, $s5
/* 1BF98 8002B798 03991300 */  sra        $s3, $s3, 4
/* 1BF9C 8002B79C 3000A38F */  lw         $v1, 0x30($sp)
/* 1BFA0 8002B7A0 03811000 */  sra        $s0, $s0, 4
/* 1BFA4 8002B7A4 21807000 */  addu       $s0, $v1, $s0
/* 1BFA8 8002B7A8 03891100 */  sra        $s1, $s1, 4
/* 1BFAC 8002B7AC 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1BFB0 8002B7B0 03A11400 */  sra        $s4, $s4, 4
/* 1BFB4 8002B7B4 21985300 */  addu       $s3, $v0, $s3
/* 1BFB8 8002B7B8 12900000 */  mflo       $s2
/* 1BFBC 8002B7BC D140010C */  jal        u32Random
/* 1BFC0 8002B7C0 03911200 */   sra       $s2, $s2, 4
/* 1BFC4 8002B7C4 01000324 */  addiu      $v1, $zero, 0x1
/* 1BFC8 8002B7C8 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1BFCC 8002B7CC 14000324 */  addiu      $v1, $zero, 0x14
/* 1BFD0 8002B7D0 23106200 */  subu       $v0, $v1, $v0
/* 1BFD4 8002B7D4 0400D5AE */  sw         $s5, 0x4($s6)
/* 1BFD8 8002B7D8 0800D3AE */  sw         $s3, 0x8($s6)
/* 1BFDC 8002B7DC 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1BFE0 8002B7E0 1000D1AE */  sw         $s1, 0x10($s6)
/* 1BFE4 8002B7E4 1400D4AE */  sw         $s4, 0x14($s6)
/* 1BFE8 8002B7E8 1800D2AE */  sw         $s2, 0x18($s6)
/* 1BFEC 8002B7EC 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1BFF0 8002B7F0 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1BFF4 8002B7F4 3400A58F */  lw         $a1, 0x34($sp)
/* 1BFF8 8002B7F8 00000000 */  nop
/* 1BFFC 8002B7FC 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1C000 8002B800 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1C004 8002B804 00000000 */  nop
/* 1C008 8002B808 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1C00C 8002B80C 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1C010 8002B810 00000000 */  nop
/* 1C014 8002B814 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1C018 8002B818 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1C01C 8002B81C 2400A58F */  lw         $a1, 0x24($sp)
/* 1C020 8002B820 00000000 */  nop
/* 1C024 8002B824 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1C028 8002B828 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1C02C 8002B82C 00000000 */  nop
/* 1C030 8002B830 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1C034 8002B834 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1C038 8002B838 2800B18F */  lw         $s1, 0x28($sp)
/* 1C03C 8002B83C 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1C040 8002B840 0800E28E */  lw         $v0, 0x8($s7)
/* 1C044 8002B844 3800B68F */  lw         $s6, 0x38($sp)
/* 1C048 8002B848 2A102202 */  slt        $v0, $s1, $v0
/* 1C04C 8002B84C 5AFF4014 */  bnez       $v0, .L8002B5B8
/* 1C050 8002B850 00000000 */   nop
.L8002B854:
/* 1C054 8002B854 6400BF8F */  lw         $ra, 0x64($sp)
/* 1C058 8002B858 6000BE8F */  lw         $fp, 0x60($sp)
/* 1C05C 8002B85C 0000E0AE */  sw         $zero, 0x0($s7)
/* 1C060 8002B860 5C00B78F */  lw         $s7, 0x5C($sp)
/* 1C064 8002B864 5800B68F */  lw         $s6, 0x58($sp)
/* 1C068 8002B868 5400B58F */  lw         $s5, 0x54($sp)
/* 1C06C 8002B86C 5000B48F */  lw         $s4, 0x50($sp)
/* 1C070 8002B870 4C00B38F */  lw         $s3, 0x4C($sp)
/* 1C074 8002B874 4800B28F */  lw         $s2, 0x48($sp)
/* 1C078 8002B878 4400B18F */  lw         $s1, 0x44($sp)
/* 1C07C 8002B87C 4000B08F */  lw         $s0, 0x40($sp)
/* 1C080 8002B880 0800E003 */  jr         $ra
/* 1C084 8002B884 6800BD27 */   addiu     $sp, $sp, 0x68
.size ParticleHUDInit, . - ParticleHUDInit
