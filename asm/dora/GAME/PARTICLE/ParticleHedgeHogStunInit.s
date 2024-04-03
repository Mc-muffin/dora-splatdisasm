.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleHedgeHogStunInit
/* 1A6C0 80029EC0 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 1A6C4 80029EC4 5C00B7AF */  sw         $s7, 0x5C($sp)
/* 1A6C8 80029EC8 21B88000 */  addu       $s7, $a0, $zero
/* 1A6CC 80029ECC 6400BFAF */  sw         $ra, 0x64($sp)
/* 1A6D0 80029ED0 6000BEAF */  sw         $fp, 0x60($sp)
/* 1A6D4 80029ED4 5800B6AF */  sw         $s6, 0x58($sp)
/* 1A6D8 80029ED8 5400B5AF */  sw         $s5, 0x54($sp)
/* 1A6DC 80029EDC 5000B4AF */  sw         $s4, 0x50($sp)
/* 1A6E0 80029EE0 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 1A6E4 80029EE4 4800B2AF */  sw         $s2, 0x48($sp)
/* 1A6E8 80029EE8 4400B1AF */  sw         $s1, 0x44($sp)
/* 1A6EC 80029EEC 4000B0AF */  sw         $s0, 0x40($sp)
/* 1A6F0 80029EF0 1000A5AF */  sw         $a1, 0x10($sp)
/* 1A6F4 80029EF4 1400A6AF */  sw         $a2, 0x14($sp)
/* 1A6F8 80029EF8 1800A7AF */  sw         $a3, 0x18($sp)
/* 1A6FC 80029EFC 4000F68E */  lw         $s6, 0x40($s7)
/* 1A700 80029F00 10000224 */  addiu      $v0, $zero, 0x10
/* 1A704 80029F04 C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 1A708 80029F08 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1A70C 80029F0C C01380AF */  sw         $zero, %gp_rel(TEMPG)($gp)
/* 1A710 80029F10 BC1380AF */  sw         $zero, %gp_rel(TEMPB)($gp)
/* 1A714 80029F14 3400E2AE */  sw         $v0, 0x34($s7)
/* 1A718 80029F18 3C00E2AE */  sw         $v0, 0x3C($s7)
/* 1A71C 80029F1C 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1A720 80029F20 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1A724 80029F24 3000E0AE */  sw         $zero, 0x30($s7)
/* 1A728 80029F28 3800E0AE */  sw         $zero, 0x38($s7)
/* 1A72C 80029F2C 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1A730 80029F30 1E000224 */  addiu      $v0, $zero, 0x1E
/* 1A734 80029F34 2000A3AF */  sw         $v1, 0x20($sp)
/* 1A738 80029F38 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1A73C 80029F3C 1000A38F */  lw         $v1, 0x10($sp)
/* 1A740 80029F40 00000000 */  nop
/* 1A744 80029F44 2400E3AE */  sw         $v1, 0x24($s7)
/* 1A748 80029F48 1400A28F */  lw         $v0, 0x14($sp)
/* 1A74C 80029F4C 00000000 */  nop
/* 1A750 80029F50 2800E2AE */  sw         $v0, 0x28($s7)
/* 1A754 80029F54 1800A38F */  lw         $v1, 0x18($sp)
/* 1A758 80029F58 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1A75C 80029F5C 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1A760 80029F60 0400E28E */  lw         $v0, 0x4($s7)
/* 1A764 80029F64 00000000 */  nop
/* 1A768 80029F68 04004014 */  bnez       $v0, .L80029F7C
/* 1A76C 80029F6C 2C00E3AE */   sw        $v1, 0x2C($s7)
/* 1A770 80029F70 1000A0AF */  sw         $zero, 0x10($sp)
/* 1A774 80029F74 1400A0AF */  sw         $zero, 0x14($sp)
/* 1A778 80029F78 1800A0AF */  sw         $zero, 0x18($sp)
.L80029F7C:
/* 1A77C 80029F7C 0800E28E */  lw         $v0, 0x8($s7)
/* 1A780 80029F80 00000000 */  nop
/* 1A784 80029F84 A8004018 */  blez       $v0, .L8002A228
/* 1A788 80029F88 21880000 */   addu      $s1, $zero, $zero
.L80029F8C:
/* 1A78C 80029F8C D140010C */  jal        u32Random
/* 1A790 80029F90 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A794 80029F94 21804000 */  addu       $s0, $v0, $zero
/* 1A798 80029F98 D140010C */  jal        u32Random
/* 1A79C 80029F9C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A7A0 80029FA0 21984000 */  addu       $s3, $v0, $zero
/* 1A7A4 80029FA4 21100000 */  addu       $v0, $zero, $zero
/* 1A7A8 80029FA8 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1A7AC 80029FAC 20004310 */  beq        $v0, $v1, .L8002A030
/* 1A7B0 80029FB0 00000000 */   nop
/* 1A7B4 80029FB4 1000A28F */  lw         $v0, 0x10($sp)
/* 1A7B8 80029FB8 1400A38F */  lw         $v1, 0x14($sp)
/* 1A7BC 80029FBC 01003126 */  addiu      $s1, $s1, 0x1
/* 1A7C0 80029FC0 2800B1AF */  sw         $s1, 0x28($sp)
/* 1A7C4 80029FC4 00F20200 */  sll        $fp, $v0, 8
/* 1A7C8 80029FC8 1800A28F */  lw         $v0, 0x18($sp)
/* 1A7CC 80029FCC 001A0300 */  sll        $v1, $v1, 8
/* 1A7D0 80029FD0 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1A7D4 80029FD4 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1A7D8 80029FD8 3400A3AF */  sw         $v1, 0x34($sp)
/* 1A7DC 80029FDC 7400C326 */  addiu      $v1, $s6, 0x74
/* 1A7E0 80029FE0 3800A3AF */  sw         $v1, 0x38($sp)
/* 1A7E4 80029FE4 00120200 */  sll        $v0, $v0, 8
/* 1A7E8 80029FE8 3000A2AF */  sw         $v0, 0x30($sp)
/* 1A7EC 80029FEC 4400C226 */  addiu      $v0, $s6, 0x44
/* 1A7F0 80029FF0 05000006 */  bltz       $s0, .L8002A008
/* 1A7F4 80029FF4 2400A2AF */   sw        $v0, 0x24($sp)
/* 1A7F8 80029FF8 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1A7FC 80029FFC 2A107000 */  slt        $v0, $v1, $s0
/* 1A800 8002A000 1E004010 */  beqz       $v0, .L8002A07C
/* 1A804 8002A004 21100000 */   addu      $v0, $zero, $zero
.L8002A008:
/* 1A808 8002A008 D140010C */  jal        u32Random
/* 1A80C 8002A00C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A810 8002A010 21804000 */  addu       $s0, $v0, $zero
/* 1A814 8002A014 FCFF0006 */  bltz       $s0, .L8002A008
/* 1A818 8002A018 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1A81C 8002A01C 2A107000 */  slt        $v0, $v1, $s0
/* 1A820 8002A020 F9FF4014 */  bnez       $v0, .L8002A008
/* 1A824 8002A024 21100000 */   addu      $v0, $zero, $zero
/* 1A828 8002A028 1FA80008 */  j          .L8002A07C
/* 1A82C 8002A02C 00000000 */   nop
.L8002A030:
/* 1A830 8002A030 21800000 */  addu       $s0, $zero, $zero
/* 1A834 8002A034 1000A28F */  lw         $v0, 0x10($sp)
/* 1A838 8002A038 1400A38F */  lw         $v1, 0x14($sp)
/* 1A83C 8002A03C 01003126 */  addiu      $s1, $s1, 0x1
/* 1A840 8002A040 2800B1AF */  sw         $s1, 0x28($sp)
/* 1A844 8002A044 00F20200 */  sll        $fp, $v0, 8
/* 1A848 8002A048 1800A28F */  lw         $v0, 0x18($sp)
/* 1A84C 8002A04C 001A0300 */  sll        $v1, $v1, 8
/* 1A850 8002A050 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1A854 8002A054 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1A858 8002A058 3400A3AF */  sw         $v1, 0x34($sp)
/* 1A85C 8002A05C 7400C326 */  addiu      $v1, $s6, 0x74
/* 1A860 8002A060 3800A3AF */  sw         $v1, 0x38($sp)
/* 1A864 8002A064 00120200 */  sll        $v0, $v0, 8
/* 1A868 8002A068 3000A2AF */  sw         $v0, 0x30($sp)
/* 1A86C 8002A06C 4400C226 */  addiu      $v0, $s6, 0x44
/* 1A870 8002A070 2400A2AF */  sw         $v0, 0x24($sp)
/* 1A874 8002A074 21100000 */  addu       $v0, $zero, $zero
/* 1A878 8002A078 FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002A07C:
/* 1A87C 8002A07C 0F004310 */  beq        $v0, $v1, .L8002A0BC
/* 1A880 8002A080 00000000 */   nop
/* 1A884 8002A084 03006006 */  bltz       $s3, .L8002A094
/* 1A888 8002A088 2A107300 */   slt       $v0, $v1, $s3
/* 1A88C 8002A08C 0C004010 */  beqz       $v0, .L8002A0C0
/* 1A890 8002A090 00000000 */   nop
.L8002A094:
/* 1A894 8002A094 D140010C */  jal        u32Random
/* 1A898 8002A098 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A89C 8002A09C 21984000 */  addu       $s3, $v0, $zero
/* 1A8A0 8002A0A0 FCFF6006 */  bltz       $s3, .L8002A094
/* 1A8A4 8002A0A4 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1A8A8 8002A0A8 2A107300 */  slt        $v0, $v1, $s3
/* 1A8AC 8002A0AC F9FF4014 */  bnez       $v0, .L8002A094
/* 1A8B0 8002A0B0 00000000 */   nop
/* 1A8B4 8002A0B4 30A80008 */  j          .L8002A0C0
/* 1A8B8 8002A0B8 00000000 */   nop
.L8002A0BC:
/* 1A8BC 8002A0BC 21980000 */  addu       $s3, $zero, $zero
.L8002A0C0:
/* 1A8C0 8002A0C0 7BEB010C */  jal        rcos
/* 1A8C4 8002A0C4 21200002 */   addu      $a0, $s0, $zero
/* 1A8C8 8002A0C8 21200002 */  addu       $a0, $s0, $zero
/* 1A8CC 8002A0CC 47EB010C */  jal        rsin
/* 1A8D0 8002A0D0 21904000 */   addu      $s2, $v0, $zero
/* 1A8D4 8002A0D4 21206002 */  addu       $a0, $s3, $zero
/* 1A8D8 8002A0D8 7BEB010C */  jal        rcos
/* 1A8DC 8002A0DC 21884000 */   addu      $s1, $v0, $zero
/* 1A8E0 8002A0E0 21206002 */  addu       $a0, $s3, $zero
/* 1A8E4 8002A0E4 47EB010C */  jal        rsin
/* 1A8E8 8002A0E8 21804000 */   addu      $s0, $v0, $zero
/* 1A8EC 8002A0EC 18003002 */  mult       $s1, $s0
/* 1A8F0 8002A0F0 12880000 */  mflo       $s1
/* 1A8F4 8002A0F4 00000000 */  nop
/* 1A8F8 8002A0F8 00000000 */  nop
/* 1A8FC 8002A0FC 18005002 */  mult       $s2, $s0
/* 1A900 8002A100 12900000 */  mflo       $s2
/* 1A904 8002A104 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1A908 8002A108 038B1100 */  sra        $s1, $s1, 12
/* 1A90C 8002A10C 18002302 */  mult       $s1, $v1
/* 1A910 8002A110 12A80000 */  mflo       $s5
/* 1A914 8002A114 21A04000 */  addu       $s4, $v0, $zero
/* 1A918 8002A118 00000000 */  nop
/* 1A91C 8002A11C 18008302 */  mult       $s4, $v1
/* 1A920 8002A120 12980000 */  mflo       $s3
/* 1A924 8002A124 03931200 */  sra        $s2, $s2, 12
/* 1A928 8002A128 00000000 */  nop
/* 1A92C 8002A12C 18004302 */  mult       $s2, $v1
/* 1A930 8002A130 12800000 */  mflo       $s0
/* 1A934 8002A134 2000A28F */  lw         $v0, 0x20($sp)
/* 1A938 8002A138 00000000 */  nop
/* 1A93C 8002A13C 18002202 */  mult       $s1, $v0
/* 1A940 8002A140 12880000 */  mflo       $s1
/* 1A944 8002A144 00000000 */  nop
/* 1A948 8002A148 00000000 */  nop
/* 1A94C 8002A14C 18008202 */  mult       $s4, $v0
/* 1A950 8002A150 12A00000 */  mflo       $s4
/* 1A954 8002A154 00000000 */  nop
/* 1A958 8002A158 00000000 */  nop
/* 1A95C 8002A15C 18004202 */  mult       $s2, $v0
/* 1A960 8002A160 04000424 */  addiu      $a0, $zero, 0x4
/* 1A964 8002A164 03A91500 */  sra        $s5, $s5, 4
/* 1A968 8002A168 21A8D503 */  addu       $s5, $fp, $s5
/* 1A96C 8002A16C 03991300 */  sra        $s3, $s3, 4
/* 1A970 8002A170 3000A38F */  lw         $v1, 0x30($sp)
/* 1A974 8002A174 03811000 */  sra        $s0, $s0, 4
/* 1A978 8002A178 21807000 */  addu       $s0, $v1, $s0
/* 1A97C 8002A17C 03891100 */  sra        $s1, $s1, 4
/* 1A980 8002A180 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1A984 8002A184 03A11400 */  sra        $s4, $s4, 4
/* 1A988 8002A188 21985300 */  addu       $s3, $v0, $s3
/* 1A98C 8002A18C 12900000 */  mflo       $s2
/* 1A990 8002A190 D140010C */  jal        u32Random
/* 1A994 8002A194 03911200 */   sra       $s2, $s2, 4
/* 1A998 8002A198 01000324 */  addiu      $v1, $zero, 0x1
/* 1A99C 8002A19C 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1A9A0 8002A1A0 1E000324 */  addiu      $v1, $zero, 0x1E
/* 1A9A4 8002A1A4 23106200 */  subu       $v0, $v1, $v0
/* 1A9A8 8002A1A8 0400D5AE */  sw         $s5, 0x4($s6)
/* 1A9AC 8002A1AC 0800D3AE */  sw         $s3, 0x8($s6)
/* 1A9B0 8002A1B0 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1A9B4 8002A1B4 1000D1AE */  sw         $s1, 0x10($s6)
/* 1A9B8 8002A1B8 1400D4AE */  sw         $s4, 0x14($s6)
/* 1A9BC 8002A1BC 1800D2AE */  sw         $s2, 0x18($s6)
/* 1A9C0 8002A1C0 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1A9C4 8002A1C4 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1A9C8 8002A1C8 3400A58F */  lw         $a1, 0x34($sp)
/* 1A9CC 8002A1CC 00000000 */  nop
/* 1A9D0 8002A1D0 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1A9D4 8002A1D4 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1A9D8 8002A1D8 00000000 */  nop
/* 1A9DC 8002A1DC 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1A9E0 8002A1E0 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1A9E4 8002A1E4 00000000 */  nop
/* 1A9E8 8002A1E8 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1A9EC 8002A1EC 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1A9F0 8002A1F0 2400A58F */  lw         $a1, 0x24($sp)
/* 1A9F4 8002A1F4 00000000 */  nop
/* 1A9F8 8002A1F8 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1A9FC 8002A1FC 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1AA00 8002A200 00000000 */  nop
/* 1AA04 8002A204 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1AA08 8002A208 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1AA0C 8002A20C 2800B18F */  lw         $s1, 0x28($sp)
/* 1AA10 8002A210 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1AA14 8002A214 0800E28E */  lw         $v0, 0x8($s7)
/* 1AA18 8002A218 3800B68F */  lw         $s6, 0x38($sp)
/* 1AA1C 8002A21C 2A102202 */  slt        $v0, $s1, $v0
/* 1AA20 8002A220 5AFF4014 */  bnez       $v0, .L80029F8C
/* 1AA24 8002A224 00000000 */   nop
.L8002A228:
/* 1AA28 8002A228 6400BF8F */  lw         $ra, 0x64($sp)
/* 1AA2C 8002A22C 6000BE8F */  lw         $fp, 0x60($sp)
/* 1AA30 8002A230 0000E0AE */  sw         $zero, 0x0($s7)
/* 1AA34 8002A234 5C00B78F */  lw         $s7, 0x5C($sp)
/* 1AA38 8002A238 5800B68F */  lw         $s6, 0x58($sp)
/* 1AA3C 8002A23C 5400B58F */  lw         $s5, 0x54($sp)
/* 1AA40 8002A240 5000B48F */  lw         $s4, 0x50($sp)
/* 1AA44 8002A244 4C00B38F */  lw         $s3, 0x4C($sp)
/* 1AA48 8002A248 4800B28F */  lw         $s2, 0x48($sp)
/* 1AA4C 8002A24C 4400B18F */  lw         $s1, 0x44($sp)
/* 1AA50 8002A250 4000B08F */  lw         $s0, 0x40($sp)
/* 1AA54 8002A254 0800E003 */  jr         $ra
/* 1AA58 8002A258 6800BD27 */   addiu     $sp, $sp, 0x68
.size ParticleHedgeHogStunInit, . - ParticleHedgeHogStunInit
