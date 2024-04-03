.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleHayReInit
/* 1DD68 8002D568 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 1DD6C 8002D56C 6400B7AF */  sw         $s7, 0x64($sp)
/* 1DD70 8002D570 21B88000 */  addu       $s7, $a0, $zero
/* 1DD74 8002D574 3A000224 */  addiu      $v0, $zero, 0x3A
/* 1DD78 8002D578 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 1DD7C 8002D57C 6800BEAF */  sw         $fp, 0x68($sp)
/* 1DD80 8002D580 6000B6AF */  sw         $s6, 0x60($sp)
/* 1DD84 8002D584 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 1DD88 8002D588 5800B4AF */  sw         $s4, 0x58($sp)
/* 1DD8C 8002D58C 5400B3AF */  sw         $s3, 0x54($sp)
/* 1DD90 8002D590 5000B2AF */  sw         $s2, 0x50($sp)
/* 1DD94 8002D594 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 1DD98 8002D598 4800B0AF */  sw         $s0, 0x48($sp)
/* 1DD9C 8002D59C 1000A5AF */  sw         $a1, 0x10($sp)
/* 1DDA0 8002D5A0 1400A6AF */  sw         $a2, 0x14($sp)
/* 1DDA4 8002D5A4 1800A7AF */  sw         $a3, 0x18($sp)
/* 1DDA8 8002D5A8 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1DDAC 8002D5AC 1000A38F */  lw         $v1, 0x10($sp)
/* 1DDB0 8002D5B0 4000F68E */  lw         $s6, 0x40($s7)
/* 1DDB4 8002D5B4 2400E3AE */  sw         $v1, 0x24($s7)
/* 1DDB8 8002D5B8 1400A28F */  lw         $v0, 0x14($sp)
/* 1DDBC 8002D5BC 00000000 */  nop
/* 1DDC0 8002D5C0 2800E2AE */  sw         $v0, 0x28($s7)
/* 1DDC4 8002D5C4 1800A38F */  lw         $v1, 0x18($sp)
/* 1DDC8 8002D5C8 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1DDCC 8002D5CC 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1DDD0 8002D5D0 3000E28E */  lw         $v0, 0x30($s7)
/* 1DDD4 8002D5D4 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 1DDD8 8002D5D8 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1DDDC 8002D5DC 3400E38E */  lw         $v1, 0x34($s7)
/* 1DDE0 8002D5E0 00000000 */  nop
/* 1DDE4 8002D5E4 2000A3AF */  sw         $v1, 0x20($sp)
/* 1DDE8 8002D5E8 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1DDEC 8002D5EC 3800FE8E */  lw         $fp, 0x38($s7)
/* 1DDF0 8002D5F0 0400E28E */  lw         $v0, 0x4($s7)
/* 1DDF4 8002D5F4 00000000 */  nop
/* 1DDF8 8002D5F8 04004014 */  bnez       $v0, .L8002D60C
/* 1DDFC 8002D5FC 2400A3AF */   sw        $v1, 0x24($sp)
/* 1DE00 8002D600 1000A0AF */  sw         $zero, 0x10($sp)
/* 1DE04 8002D604 1400A0AF */  sw         $zero, 0x14($sp)
/* 1DE08 8002D608 1800A0AF */  sw         $zero, 0x18($sp)
.L8002D60C:
/* 1DE0C 8002D60C 0800E28E */  lw         $v0, 0x8($s7)
/* 1DE10 8002D610 00000000 */  nop
/* 1DE14 8002D614 B9004018 */  blez       $v0, .L8002D8FC
/* 1DE18 8002D618 21880000 */   addu      $s1, $zero, $zero
.L8002D61C:
/* 1DE1C 8002D61C D140010C */  jal        u32Random
/* 1DE20 8002D620 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1DE24 8002D624 21804000 */  addu       $s0, $v0, $zero
/* 1DE28 8002D628 D140010C */  jal        u32Random
/* 1DE2C 8002D62C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1DE30 8002D630 21984000 */  addu       $s3, $v0, $zero
/* 1DE34 8002D634 1C00A28F */  lw         $v0, 0x1C($sp)
/* 1DE38 8002D638 2000A38F */  lw         $v1, 0x20($sp)
/* 1DE3C 8002D63C 00000000 */  nop
/* 1DE40 8002D640 29004310 */  beq        $v0, $v1, .L8002D6E8
/* 1DE44 8002D644 00000000 */   nop
/* 1DE48 8002D648 1000A28F */  lw         $v0, 0x10($sp)
/* 1DE4C 8002D64C 1400A38F */  lw         $v1, 0x14($sp)
/* 1DE50 8002D650 01003126 */  addiu      $s1, $s1, 0x1
/* 1DE54 8002D654 3000B1AF */  sw         $s1, 0x30($sp)
/* 1DE58 8002D658 00120200 */  sll        $v0, $v0, 8
/* 1DE5C 8002D65C 3400A2AF */  sw         $v0, 0x34($sp)
/* 1DE60 8002D660 1800A28F */  lw         $v0, 0x18($sp)
/* 1DE64 8002D664 001A0300 */  sll        $v1, $v1, 8
/* 1DE68 8002D668 3800A3AF */  sw         $v1, 0x38($sp)
/* 1DE6C 8002D66C 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1DE70 8002D670 4000A3AF */  sw         $v1, 0x40($sp)
/* 1DE74 8002D674 7400C326 */  addiu      $v1, $s6, 0x74
/* 1DE78 8002D678 2800A3AF */  sw         $v1, 0x28($sp)
/* 1DE7C 8002D67C 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1DE80 8002D680 00120200 */  sll        $v0, $v0, 8
/* 1DE84 8002D684 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1DE88 8002D688 4400C226 */  addiu      $v0, $s6, 0x44
/* 1DE8C 8002D68C 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 1DE90 8002D690 2A100302 */  slt        $v0, $s0, $v1
/* 1DE94 8002D694 06004014 */  bnez       $v0, .L8002D6B0
/* 1DE98 8002D698 00000000 */   nop
/* 1DE9C 8002D69C 2000A38F */  lw         $v1, 0x20($sp)
/* 1DEA0 8002D6A0 00000000 */  nop
/* 1DEA4 8002D6A4 2A107000 */  slt        $v0, $v1, $s0
/* 1DEA8 8002D6A8 21004010 */  beqz       $v0, .L8002D730
/* 1DEAC 8002D6AC 00000000 */   nop
.L8002D6B0:
/* 1DEB0 8002D6B0 D140010C */  jal        u32Random
/* 1DEB4 8002D6B4 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1DEB8 8002D6B8 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1DEBC 8002D6BC 21804000 */  addu       $s0, $v0, $zero
/* 1DEC0 8002D6C0 2A100302 */  slt        $v0, $s0, $v1
/* 1DEC4 8002D6C4 FAFF4014 */  bnez       $v0, .L8002D6B0
/* 1DEC8 8002D6C8 00000000 */   nop
/* 1DECC 8002D6CC 2000A38F */  lw         $v1, 0x20($sp)
/* 1DED0 8002D6D0 00000000 */  nop
/* 1DED4 8002D6D4 2A107000 */  slt        $v0, $v1, $s0
/* 1DED8 8002D6D8 F5FF4014 */  bnez       $v0, .L8002D6B0
/* 1DEDC 8002D6DC 00000000 */   nop
/* 1DEE0 8002D6E0 CCB50008 */  j          .L8002D730
/* 1DEE4 8002D6E4 00000000 */   nop
.L8002D6E8:
/* 1DEE8 8002D6E8 1C00B08F */  lw         $s0, 0x1C($sp)
/* 1DEEC 8002D6EC 1000A28F */  lw         $v0, 0x10($sp)
/* 1DEF0 8002D6F0 1400A38F */  lw         $v1, 0x14($sp)
/* 1DEF4 8002D6F4 01003126 */  addiu      $s1, $s1, 0x1
/* 1DEF8 8002D6F8 3000B1AF */  sw         $s1, 0x30($sp)
/* 1DEFC 8002D6FC 00120200 */  sll        $v0, $v0, 8
/* 1DF00 8002D700 3400A2AF */  sw         $v0, 0x34($sp)
/* 1DF04 8002D704 1800A28F */  lw         $v0, 0x18($sp)
/* 1DF08 8002D708 001A0300 */  sll        $v1, $v1, 8
/* 1DF0C 8002D70C 3800A3AF */  sw         $v1, 0x38($sp)
/* 1DF10 8002D710 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1DF14 8002D714 4000A3AF */  sw         $v1, 0x40($sp)
/* 1DF18 8002D718 7400C326 */  addiu      $v1, $s6, 0x74
/* 1DF1C 8002D71C 2800A3AF */  sw         $v1, 0x28($sp)
/* 1DF20 8002D720 00120200 */  sll        $v0, $v0, 8
/* 1DF24 8002D724 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1DF28 8002D728 4400C226 */  addiu      $v0, $s6, 0x44
/* 1DF2C 8002D72C 2C00A2AF */  sw         $v0, 0x2C($sp)
.L8002D730:
/* 1DF30 8002D730 2400A28F */  lw         $v0, 0x24($sp)
/* 1DF34 8002D734 00000000 */  nop
/* 1DF38 8002D738 1500C213 */  beq        $fp, $v0, .L8002D790
/* 1DF3C 8002D73C 2A107E02 */   slt       $v0, $s3, $fp
/* 1DF40 8002D740 06004014 */  bnez       $v0, .L8002D75C
/* 1DF44 8002D744 00000000 */   nop
/* 1DF48 8002D748 2400A38F */  lw         $v1, 0x24($sp)
/* 1DF4C 8002D74C 00000000 */  nop
/* 1DF50 8002D750 2A107300 */  slt        $v0, $v1, $s3
/* 1DF54 8002D754 0F004010 */  beqz       $v0, .L8002D794
/* 1DF58 8002D758 00000000 */   nop
.L8002D75C:
/* 1DF5C 8002D75C D140010C */  jal        u32Random
/* 1DF60 8002D760 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1DF64 8002D764 21984000 */  addu       $s3, $v0, $zero
/* 1DF68 8002D768 2A107E02 */  slt        $v0, $s3, $fp
/* 1DF6C 8002D76C FBFF4014 */  bnez       $v0, .L8002D75C
/* 1DF70 8002D770 00000000 */   nop
/* 1DF74 8002D774 2400A38F */  lw         $v1, 0x24($sp)
/* 1DF78 8002D778 00000000 */  nop
/* 1DF7C 8002D77C 2A107300 */  slt        $v0, $v1, $s3
/* 1DF80 8002D780 F6FF4014 */  bnez       $v0, .L8002D75C
/* 1DF84 8002D784 00000000 */   nop
/* 1DF88 8002D788 E5B50008 */  j          .L8002D794
/* 1DF8C 8002D78C 00000000 */   nop
.L8002D790:
/* 1DF90 8002D790 2198C003 */  addu       $s3, $fp, $zero
.L8002D794:
/* 1DF94 8002D794 7BEB010C */  jal        rcos
/* 1DF98 8002D798 21200002 */   addu      $a0, $s0, $zero
/* 1DF9C 8002D79C 21200002 */  addu       $a0, $s0, $zero
/* 1DFA0 8002D7A0 47EB010C */  jal        rsin
/* 1DFA4 8002D7A4 21904000 */   addu      $s2, $v0, $zero
/* 1DFA8 8002D7A8 21206002 */  addu       $a0, $s3, $zero
/* 1DFAC 8002D7AC 7BEB010C */  jal        rcos
/* 1DFB0 8002D7B0 21884000 */   addu      $s1, $v0, $zero
/* 1DFB4 8002D7B4 21206002 */  addu       $a0, $s3, $zero
/* 1DFB8 8002D7B8 47EB010C */  jal        rsin
/* 1DFBC 8002D7BC 21804000 */   addu      $s0, $v0, $zero
/* 1DFC0 8002D7C0 18003002 */  mult       $s1, $s0
/* 1DFC4 8002D7C4 12880000 */  mflo       $s1
/* 1DFC8 8002D7C8 00000000 */  nop
/* 1DFCC 8002D7CC 00000000 */  nop
/* 1DFD0 8002D7D0 18005002 */  mult       $s2, $s0
/* 1DFD4 8002D7D4 12900000 */  mflo       $s2
/* 1DFD8 8002D7D8 64000324 */  addiu      $v1, $zero, 0x64
/* 1DFDC 8002D7DC 038B1100 */  sra        $s1, $s1, 12
/* 1DFE0 8002D7E0 18002302 */  mult       $s1, $v1
/* 1DFE4 8002D7E4 12A80000 */  mflo       $s5
/* 1DFE8 8002D7E8 21A04000 */  addu       $s4, $v0, $zero
/* 1DFEC 8002D7EC 00000000 */  nop
/* 1DFF0 8002D7F0 18008302 */  mult       $s4, $v1
/* 1DFF4 8002D7F4 12980000 */  mflo       $s3
/* 1DFF8 8002D7F8 03931200 */  sra        $s2, $s2, 12
/* 1DFFC 8002D7FC 00000000 */  nop
/* 1E000 8002D800 18004302 */  mult       $s2, $v1
/* 1E004 8002D804 12800000 */  mflo       $s0
/* 1E008 8002D808 05000224 */  addiu      $v0, $zero, 0x5
/* 1E00C 8002D80C 00000000 */  nop
/* 1E010 8002D810 18002202 */  mult       $s1, $v0
/* 1E014 8002D814 12880000 */  mflo       $s1
/* 1E018 8002D818 00000000 */  nop
/* 1E01C 8002D81C 00000000 */  nop
/* 1E020 8002D820 18008202 */  mult       $s4, $v0
/* 1E024 8002D824 12A00000 */  mflo       $s4
/* 1E028 8002D828 06000424 */  addiu      $a0, $zero, 0x6
/* 1E02C 8002D82C 00000000 */  nop
/* 1E030 8002D830 18004202 */  mult       $s2, $v0
/* 1E034 8002D834 03A91500 */  sra        $s5, $s5, 4
/* 1E038 8002D838 3800A38F */  lw         $v1, 0x38($sp)
/* 1E03C 8002D83C 03991300 */  sra        $s3, $s3, 4
/* 1E040 8002D840 21987300 */  addu       $s3, $v1, $s3
/* 1E044 8002D844 03811000 */  sra        $s0, $s0, 4
/* 1E048 8002D848 3400A28F */  lw         $v0, 0x34($sp)
/* 1E04C 8002D84C 03891100 */  sra        $s1, $s1, 4
/* 1E050 8002D850 21A85500 */  addu       $s5, $v0, $s5
/* 1E054 8002D854 3C00A28F */  lw         $v0, 0x3C($sp)
/* 1E058 8002D858 03A11400 */  sra        $s4, $s4, 4
/* 1E05C 8002D85C 21805000 */  addu       $s0, $v0, $s0
/* 1E060 8002D860 12900000 */  mflo       $s2
/* 1E064 8002D864 D140010C */  jal        u32Random
/* 1E068 8002D868 03911200 */   sra       $s2, $s2, 4
/* 1E06C 8002D86C 01000324 */  addiu      $v1, $zero, 0x1
/* 1E070 8002D870 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1E074 8002D874 3A000324 */  addiu      $v1, $zero, 0x3A
/* 1E078 8002D878 23106200 */  subu       $v0, $v1, $v0
/* 1E07C 8002D87C 0400D5AE */  sw         $s5, 0x4($s6)
/* 1E080 8002D880 0800D3AE */  sw         $s3, 0x8($s6)
/* 1E084 8002D884 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1E088 8002D888 1000D1AE */  sw         $s1, 0x10($s6)
/* 1E08C 8002D88C 1400D4AE */  sw         $s4, 0x14($s6)
/* 1E090 8002D890 1800D2AE */  sw         $s2, 0x18($s6)
/* 1E094 8002D894 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1E098 8002D898 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1E09C 8002D89C 4000A58F */  lw         $a1, 0x40($sp)
/* 1E0A0 8002D8A0 00000000 */  nop
/* 1E0A4 8002D8A4 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1E0A8 8002D8A8 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1E0AC 8002D8AC 00000000 */  nop
/* 1E0B0 8002D8B0 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1E0B4 8002D8B4 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1E0B8 8002D8B8 00000000 */  nop
/* 1E0BC 8002D8BC 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1E0C0 8002D8C0 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1E0C4 8002D8C4 2C00A58F */  lw         $a1, 0x2C($sp)
/* 1E0C8 8002D8C8 00000000 */  nop
/* 1E0CC 8002D8CC 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1E0D0 8002D8D0 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1E0D4 8002D8D4 00000000 */  nop
/* 1E0D8 8002D8D8 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1E0DC 8002D8DC 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1E0E0 8002D8E0 3000B18F */  lw         $s1, 0x30($sp)
/* 1E0E4 8002D8E4 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1E0E8 8002D8E8 0800E28E */  lw         $v0, 0x8($s7)
/* 1E0EC 8002D8EC 2800B68F */  lw         $s6, 0x28($sp)
/* 1E0F0 8002D8F0 2A102202 */  slt        $v0, $s1, $v0
/* 1E0F4 8002D8F4 49FF4014 */  bnez       $v0, .L8002D61C
/* 1E0F8 8002D8F8 00000000 */   nop
.L8002D8FC:
/* 1E0FC 8002D8FC D140010C */  jal        u32Random
/* 1E100 8002D900 08000424 */   addiu     $a0, $zero, 0x8
/* 1E104 8002D904 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 1E108 8002D908 6800BE8F */  lw         $fp, 0x68($sp)
/* 1E10C 8002D90C E6004224 */  addiu      $v0, $v0, 0xE6
/* 1E110 8002D910 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1E114 8002D914 01000224 */  addiu      $v0, $zero, 0x1
/* 1E118 8002D918 0000E2AE */  sw         $v0, 0x0($s7)
/* 1E11C 8002D91C 6400B78F */  lw         $s7, 0x64($sp)
/* 1E120 8002D920 6000B68F */  lw         $s6, 0x60($sp)
/* 1E124 8002D924 5C00B58F */  lw         $s5, 0x5C($sp)
/* 1E128 8002D928 5800B48F */  lw         $s4, 0x58($sp)
/* 1E12C 8002D92C 5400B38F */  lw         $s3, 0x54($sp)
/* 1E130 8002D930 5000B28F */  lw         $s2, 0x50($sp)
/* 1E134 8002D934 4C00B18F */  lw         $s1, 0x4C($sp)
/* 1E138 8002D938 4800B08F */  lw         $s0, 0x48($sp)
/* 1E13C 8002D93C 0800E003 */  jr         $ra
/* 1E140 8002D940 7000BD27 */   addiu     $sp, $sp, 0x70
.size ParticleHayReInit, . - ParticleHayReInit
