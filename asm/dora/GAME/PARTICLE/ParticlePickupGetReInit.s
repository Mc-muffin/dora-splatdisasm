.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticlePickupGetReInit
/* 1E66C 8002DE6C 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1E670 8002DE70 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 1E674 8002DE74 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 1E678 8002DE78 21B88000 */  addu       $s7, $a0, $zero
/* 1E67C 8002DE7C 7400BFAF */  sw         $ra, 0x74($sp)
/* 1E680 8002DE80 7000BEAF */  sw         $fp, 0x70($sp)
/* 1E684 8002DE84 6800B6AF */  sw         $s6, 0x68($sp)
/* 1E688 8002DE88 6400B5AF */  sw         $s5, 0x64($sp)
/* 1E68C 8002DE8C 6000B4AF */  sw         $s4, 0x60($sp)
/* 1E690 8002DE90 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 1E694 8002DE94 5800B2AF */  sw         $s2, 0x58($sp)
/* 1E698 8002DE98 5400B1AF */  sw         $s1, 0x54($sp)
/* 1E69C 8002DE9C 5000B0AF */  sw         $s0, 0x50($sp)
/* 1E6A0 8002DEA0 1000A5AF */  sw         $a1, 0x10($sp)
/* 1E6A4 8002DEA4 1400A6AF */  sw         $a2, 0x14($sp)
/* 1E6A8 8002DEA8 1800A7AF */  sw         $a3, 0x18($sp)
/* 1E6AC 8002DEAC 4000F68E */  lw         $s6, 0x40($s7)
/* 1E6B0 8002DEB0 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1E6B4 8002DEB4 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1E6B8 8002DEB8 1E000224 */  addiu      $v0, $zero, 0x1E
/* 1E6BC 8002DEBC 2000A3AF */  sw         $v1, 0x20($sp)
/* 1E6C0 8002DEC0 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1E6C4 8002DEC4 1000A38F */  lw         $v1, 0x10($sp)
/* 1E6C8 8002DEC8 00000000 */  nop
/* 1E6CC 8002DECC 2400E3AE */  sw         $v1, 0x24($s7)
/* 1E6D0 8002DED0 1400A28F */  lw         $v0, 0x14($sp)
/* 1E6D4 8002DED4 00000000 */  nop
/* 1E6D8 8002DED8 2800E2AE */  sw         $v0, 0x28($s7)
/* 1E6DC 8002DEDC 1800A38F */  lw         $v1, 0x18($sp)
/* 1E6E0 8002DEE0 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1E6E4 8002DEE4 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1E6E8 8002DEE8 3000E28E */  lw         $v0, 0x30($s7)
/* 1E6EC 8002DEEC 2C00E3AE */  sw         $v1, 0x2C($s7)
/* 1E6F0 8002DEF0 2400A2AF */  sw         $v0, 0x24($sp)
/* 1E6F4 8002DEF4 3400E38E */  lw         $v1, 0x34($s7)
/* 1E6F8 8002DEF8 00000000 */  nop
/* 1E6FC 8002DEFC 2800A3AF */  sw         $v1, 0x28($sp)
/* 1E700 8002DF00 3C00E38E */  lw         $v1, 0x3C($s7)
/* 1E704 8002DF04 3800FE8E */  lw         $fp, 0x38($s7)
/* 1E708 8002DF08 0400E28E */  lw         $v0, 0x4($s7)
/* 1E70C 8002DF0C 00000000 */  nop
/* 1E710 8002DF10 04004014 */  bnez       $v0, .L8002DF24
/* 1E714 8002DF14 2C00A3AF */   sw        $v1, 0x2C($sp)
/* 1E718 8002DF18 1000A0AF */  sw         $zero, 0x10($sp)
/* 1E71C 8002DF1C 1400A0AF */  sw         $zero, 0x14($sp)
/* 1E720 8002DF20 1800A0AF */  sw         $zero, 0x18($sp)
.L8002DF24:
/* 1E724 8002DF24 0800E28E */  lw         $v0, 0x8($s7)
/* 1E728 8002DF28 00000000 */  nop
/* 1E72C 8002DF2C B9004018 */  blez       $v0, .L8002E214
/* 1E730 8002DF30 21880000 */   addu      $s1, $zero, $zero
.L8002DF34:
/* 1E734 8002DF34 D140010C */  jal        u32Random
/* 1E738 8002DF38 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1E73C 8002DF3C 21804000 */  addu       $s0, $v0, $zero
/* 1E740 8002DF40 D140010C */  jal        u32Random
/* 1E744 8002DF44 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1E748 8002DF48 21984000 */  addu       $s3, $v0, $zero
/* 1E74C 8002DF4C 2400A28F */  lw         $v0, 0x24($sp)
/* 1E750 8002DF50 2800A38F */  lw         $v1, 0x28($sp)
/* 1E754 8002DF54 00000000 */  nop
/* 1E758 8002DF58 29004310 */  beq        $v0, $v1, .L8002E000
/* 1E75C 8002DF5C 00000000 */   nop
/* 1E760 8002DF60 1000A28F */  lw         $v0, 0x10($sp)
/* 1E764 8002DF64 1400A38F */  lw         $v1, 0x14($sp)
/* 1E768 8002DF68 01003126 */  addiu      $s1, $s1, 0x1
/* 1E76C 8002DF6C 3800B1AF */  sw         $s1, 0x38($sp)
/* 1E770 8002DF70 00120200 */  sll        $v0, $v0, 8
/* 1E774 8002DF74 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1E778 8002DF78 1800A28F */  lw         $v0, 0x18($sp)
/* 1E77C 8002DF7C 001A0300 */  sll        $v1, $v1, 8
/* 1E780 8002DF80 4000A3AF */  sw         $v1, 0x40($sp)
/* 1E784 8002DF84 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1E788 8002DF88 4800A3AF */  sw         $v1, 0x48($sp)
/* 1E78C 8002DF8C 7400C326 */  addiu      $v1, $s6, 0x74
/* 1E790 8002DF90 3000A3AF */  sw         $v1, 0x30($sp)
/* 1E794 8002DF94 2400A38F */  lw         $v1, 0x24($sp)
/* 1E798 8002DF98 00120200 */  sll        $v0, $v0, 8
/* 1E79C 8002DF9C 4400A2AF */  sw         $v0, 0x44($sp)
/* 1E7A0 8002DFA0 4400C226 */  addiu      $v0, $s6, 0x44
/* 1E7A4 8002DFA4 3400A2AF */  sw         $v0, 0x34($sp)
/* 1E7A8 8002DFA8 2A100302 */  slt        $v0, $s0, $v1
/* 1E7AC 8002DFAC 06004014 */  bnez       $v0, .L8002DFC8
/* 1E7B0 8002DFB0 00000000 */   nop
/* 1E7B4 8002DFB4 2800A38F */  lw         $v1, 0x28($sp)
/* 1E7B8 8002DFB8 00000000 */  nop
/* 1E7BC 8002DFBC 2A107000 */  slt        $v0, $v1, $s0
/* 1E7C0 8002DFC0 21004010 */  beqz       $v0, .L8002E048
/* 1E7C4 8002DFC4 00000000 */   nop
.L8002DFC8:
/* 1E7C8 8002DFC8 D140010C */  jal        u32Random
/* 1E7CC 8002DFCC FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1E7D0 8002DFD0 2400A38F */  lw         $v1, 0x24($sp)
/* 1E7D4 8002DFD4 21804000 */  addu       $s0, $v0, $zero
/* 1E7D8 8002DFD8 2A100302 */  slt        $v0, $s0, $v1
/* 1E7DC 8002DFDC FAFF4014 */  bnez       $v0, .L8002DFC8
/* 1E7E0 8002DFE0 00000000 */   nop
/* 1E7E4 8002DFE4 2800A38F */  lw         $v1, 0x28($sp)
/* 1E7E8 8002DFE8 00000000 */  nop
/* 1E7EC 8002DFEC 2A107000 */  slt        $v0, $v1, $s0
/* 1E7F0 8002DFF0 F5FF4014 */  bnez       $v0, .L8002DFC8
/* 1E7F4 8002DFF4 00000000 */   nop
/* 1E7F8 8002DFF8 12B80008 */  j          .L8002E048
/* 1E7FC 8002DFFC 00000000 */   nop
.L8002E000:
/* 1E800 8002E000 2400B08F */  lw         $s0, 0x24($sp)
/* 1E804 8002E004 1000A28F */  lw         $v0, 0x10($sp)
/* 1E808 8002E008 1400A38F */  lw         $v1, 0x14($sp)
/* 1E80C 8002E00C 01003126 */  addiu      $s1, $s1, 0x1
/* 1E810 8002E010 3800B1AF */  sw         $s1, 0x38($sp)
/* 1E814 8002E014 00120200 */  sll        $v0, $v0, 8
/* 1E818 8002E018 3C00A2AF */  sw         $v0, 0x3C($sp)
/* 1E81C 8002E01C 1800A28F */  lw         $v0, 0x18($sp)
/* 1E820 8002E020 001A0300 */  sll        $v1, $v1, 8
/* 1E824 8002E024 4000A3AF */  sw         $v1, 0x40($sp)
/* 1E828 8002E028 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1E82C 8002E02C 4800A3AF */  sw         $v1, 0x48($sp)
/* 1E830 8002E030 7400C326 */  addiu      $v1, $s6, 0x74
/* 1E834 8002E034 3000A3AF */  sw         $v1, 0x30($sp)
/* 1E838 8002E038 00120200 */  sll        $v0, $v0, 8
/* 1E83C 8002E03C 4400A2AF */  sw         $v0, 0x44($sp)
/* 1E840 8002E040 4400C226 */  addiu      $v0, $s6, 0x44
/* 1E844 8002E044 3400A2AF */  sw         $v0, 0x34($sp)
.L8002E048:
/* 1E848 8002E048 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1E84C 8002E04C 00000000 */  nop
/* 1E850 8002E050 1500C213 */  beq        $fp, $v0, .L8002E0A8
/* 1E854 8002E054 2A107E02 */   slt       $v0, $s3, $fp
/* 1E858 8002E058 06004014 */  bnez       $v0, .L8002E074
/* 1E85C 8002E05C 00000000 */   nop
/* 1E860 8002E060 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1E864 8002E064 00000000 */  nop
/* 1E868 8002E068 2A107300 */  slt        $v0, $v1, $s3
/* 1E86C 8002E06C 0F004010 */  beqz       $v0, .L8002E0AC
/* 1E870 8002E070 00000000 */   nop
.L8002E074:
/* 1E874 8002E074 D140010C */  jal        u32Random
/* 1E878 8002E078 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1E87C 8002E07C 21984000 */  addu       $s3, $v0, $zero
/* 1E880 8002E080 2A107E02 */  slt        $v0, $s3, $fp
/* 1E884 8002E084 FBFF4014 */  bnez       $v0, .L8002E074
/* 1E888 8002E088 00000000 */   nop
/* 1E88C 8002E08C 2C00A38F */  lw         $v1, 0x2C($sp)
/* 1E890 8002E090 00000000 */  nop
/* 1E894 8002E094 2A107300 */  slt        $v0, $v1, $s3
/* 1E898 8002E098 F6FF4014 */  bnez       $v0, .L8002E074
/* 1E89C 8002E09C 00000000 */   nop
/* 1E8A0 8002E0A0 2BB80008 */  j          .L8002E0AC
/* 1E8A4 8002E0A4 00000000 */   nop
.L8002E0A8:
/* 1E8A8 8002E0A8 2198C003 */  addu       $s3, $fp, $zero
.L8002E0AC:
/* 1E8AC 8002E0AC 7BEB010C */  jal        rcos
/* 1E8B0 8002E0B0 21200002 */   addu      $a0, $s0, $zero
/* 1E8B4 8002E0B4 21200002 */  addu       $a0, $s0, $zero
/* 1E8B8 8002E0B8 47EB010C */  jal        rsin
/* 1E8BC 8002E0BC 21904000 */   addu      $s2, $v0, $zero
/* 1E8C0 8002E0C0 21206002 */  addu       $a0, $s3, $zero
/* 1E8C4 8002E0C4 7BEB010C */  jal        rcos
/* 1E8C8 8002E0C8 21884000 */   addu      $s1, $v0, $zero
/* 1E8CC 8002E0CC 21206002 */  addu       $a0, $s3, $zero
/* 1E8D0 8002E0D0 47EB010C */  jal        rsin
/* 1E8D4 8002E0D4 21804000 */   addu      $s0, $v0, $zero
/* 1E8D8 8002E0D8 18003002 */  mult       $s1, $s0
/* 1E8DC 8002E0DC 12880000 */  mflo       $s1
/* 1E8E0 8002E0E0 00000000 */  nop
/* 1E8E4 8002E0E4 00000000 */  nop
/* 1E8E8 8002E0E8 18005002 */  mult       $s2, $s0
/* 1E8EC 8002E0EC 12900000 */  mflo       $s2
/* 1E8F0 8002E0F0 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1E8F4 8002E0F4 038B1100 */  sra        $s1, $s1, 12
/* 1E8F8 8002E0F8 18002302 */  mult       $s1, $v1
/* 1E8FC 8002E0FC 12A80000 */  mflo       $s5
/* 1E900 8002E100 21A04000 */  addu       $s4, $v0, $zero
/* 1E904 8002E104 00000000 */  nop
/* 1E908 8002E108 18008302 */  mult       $s4, $v1
/* 1E90C 8002E10C 12980000 */  mflo       $s3
/* 1E910 8002E110 03931200 */  sra        $s2, $s2, 12
/* 1E914 8002E114 00000000 */  nop
/* 1E918 8002E118 18004302 */  mult       $s2, $v1
/* 1E91C 8002E11C 12800000 */  mflo       $s0
/* 1E920 8002E120 2000A28F */  lw         $v0, 0x20($sp)
/* 1E924 8002E124 00000000 */  nop
/* 1E928 8002E128 18002202 */  mult       $s1, $v0
/* 1E92C 8002E12C 12880000 */  mflo       $s1
/* 1E930 8002E130 00000000 */  nop
/* 1E934 8002E134 00000000 */  nop
/* 1E938 8002E138 18008202 */  mult       $s4, $v0
/* 1E93C 8002E13C 12A00000 */  mflo       $s4
/* 1E940 8002E140 04000424 */  addiu      $a0, $zero, 0x4
/* 1E944 8002E144 00000000 */  nop
/* 1E948 8002E148 18004202 */  mult       $s2, $v0
/* 1E94C 8002E14C 03A91500 */  sra        $s5, $s5, 4
/* 1E950 8002E150 4000A38F */  lw         $v1, 0x40($sp)
/* 1E954 8002E154 03991300 */  sra        $s3, $s3, 4
/* 1E958 8002E158 21987300 */  addu       $s3, $v1, $s3
/* 1E95C 8002E15C 03811000 */  sra        $s0, $s0, 4
/* 1E960 8002E160 3C00A28F */  lw         $v0, 0x3C($sp)
/* 1E964 8002E164 03891100 */  sra        $s1, $s1, 4
/* 1E968 8002E168 21A85500 */  addu       $s5, $v0, $s5
/* 1E96C 8002E16C 4400A28F */  lw         $v0, 0x44($sp)
/* 1E970 8002E170 03A11400 */  sra        $s4, $s4, 4
/* 1E974 8002E174 21805000 */  addu       $s0, $v0, $s0
/* 1E978 8002E178 12900000 */  mflo       $s2
/* 1E97C 8002E17C D140010C */  jal        u32Random
/* 1E980 8002E180 03911200 */   sra       $s2, $s2, 4
/* 1E984 8002E184 01000324 */  addiu      $v1, $zero, 0x1
/* 1E988 8002E188 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1E98C 8002E18C 1E000324 */  addiu      $v1, $zero, 0x1E
/* 1E990 8002E190 23106200 */  subu       $v0, $v1, $v0
/* 1E994 8002E194 0400D5AE */  sw         $s5, 0x4($s6)
/* 1E998 8002E198 0800D3AE */  sw         $s3, 0x8($s6)
/* 1E99C 8002E19C 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1E9A0 8002E1A0 1000D1AE */  sw         $s1, 0x10($s6)
/* 1E9A4 8002E1A4 1400D4AE */  sw         $s4, 0x14($s6)
/* 1E9A8 8002E1A8 1800D2AE */  sw         $s2, 0x18($s6)
/* 1E9AC 8002E1AC 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1E9B0 8002E1B0 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1E9B4 8002E1B4 4800A58F */  lw         $a1, 0x48($sp)
/* 1E9B8 8002E1B8 00000000 */  nop
/* 1E9BC 8002E1BC 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1E9C0 8002E1C0 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1E9C4 8002E1C4 00000000 */  nop
/* 1E9C8 8002E1C8 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1E9CC 8002E1CC 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1E9D0 8002E1D0 00000000 */  nop
/* 1E9D4 8002E1D4 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1E9D8 8002E1D8 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1E9DC 8002E1DC 3400A58F */  lw         $a1, 0x34($sp)
/* 1E9E0 8002E1E0 00000000 */  nop
/* 1E9E4 8002E1E4 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1E9E8 8002E1E8 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1E9EC 8002E1EC 00000000 */  nop
/* 1E9F0 8002E1F0 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1E9F4 8002E1F4 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1E9F8 8002E1F8 3800B18F */  lw         $s1, 0x38($sp)
/* 1E9FC 8002E1FC 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1EA00 8002E200 0800E28E */  lw         $v0, 0x8($s7)
/* 1EA04 8002E204 3000B68F */  lw         $s6, 0x30($sp)
/* 1EA08 8002E208 2A102202 */  slt        $v0, $s1, $v0
/* 1EA0C 8002E20C 49FF4014 */  bnez       $v0, .L8002DF34
/* 1EA10 8002E210 00000000 */   nop
.L8002E214:
/* 1EA14 8002E214 7400BF8F */  lw         $ra, 0x74($sp)
/* 1EA18 8002E218 7000BE8F */  lw         $fp, 0x70($sp)
/* 1EA1C 8002E21C 01000224 */  addiu      $v0, $zero, 0x1
/* 1EA20 8002E220 0000E2AE */  sw         $v0, 0x0($s7)
/* 1EA24 8002E224 6C00B78F */  lw         $s7, 0x6C($sp)
/* 1EA28 8002E228 6800B68F */  lw         $s6, 0x68($sp)
/* 1EA2C 8002E22C 6400B58F */  lw         $s5, 0x64($sp)
/* 1EA30 8002E230 6000B48F */  lw         $s4, 0x60($sp)
/* 1EA34 8002E234 5C00B38F */  lw         $s3, 0x5C($sp)
/* 1EA38 8002E238 5800B28F */  lw         $s2, 0x58($sp)
/* 1EA3C 8002E23C 5400B18F */  lw         $s1, 0x54($sp)
/* 1EA40 8002E240 5000B08F */  lw         $s0, 0x50($sp)
/* 1EA44 8002E244 0800E003 */  jr         $ra
/* 1EA48 8002E248 7800BD27 */   addiu     $sp, $sp, 0x78
.size ParticlePickupGetReInit, . - ParticlePickupGetReInit
