.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitEmitterParticle
/* 19FA4 800297A4 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 19FA8 800297A8 4C00B7AF */  sw         $s7, 0x4C($sp)
/* 19FAC 800297AC 21B88000 */  addu       $s7, $a0, $zero
/* 19FB0 800297B0 5400BFAF */  sw         $ra, 0x54($sp)
/* 19FB4 800297B4 5000BEAF */  sw         $fp, 0x50($sp)
/* 19FB8 800297B8 4800B6AF */  sw         $s6, 0x48($sp)
/* 19FBC 800297BC 4400B5AF */  sw         $s5, 0x44($sp)
/* 19FC0 800297C0 4000B4AF */  sw         $s4, 0x40($sp)
/* 19FC4 800297C4 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 19FC8 800297C8 3800B2AF */  sw         $s2, 0x38($sp)
/* 19FCC 800297CC 3400B1AF */  sw         $s1, 0x34($sp)
/* 19FD0 800297D0 3000B0AF */  sw         $s0, 0x30($sp)
/* 19FD4 800297D4 4000F68E */  lw         $s6, 0x40($s7)
/* 19FD8 800297D8 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 19FDC 800297DC 3400E2AE */  sw         $v0, 0x34($s7)
/* 19FE0 800297E0 3C00E2AE */  sw         $v0, 0x3C($s7)
/* 19FE4 800297E4 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 19FE8 800297E8 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 19FEC 800297EC 3000E0AE */  sw         $zero, 0x30($s7)
/* 19FF0 800297F0 3800E0AE */  sw         $zero, 0x38($s7)
/* 19FF4 800297F4 1000A2AF */  sw         $v0, 0x10($sp)
/* 19FF8 800297F8 1E000224 */  addiu      $v0, $zero, 0x1E
/* 19FFC 800297FC 1400A3AF */  sw         $v1, 0x14($sp)
/* 1A000 80029800 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1A004 80029804 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1A008 80029808 2400E0AE */  sw         $zero, 0x24($s7)
/* 1A00C 8002980C 2800E0AE */  sw         $zero, 0x28($s7)
/* 1A010 80029810 2C00E0AE */  sw         $zero, 0x2C($s7)
/* 1A014 80029814 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1A018 80029818 0800E28E */  lw         $v0, 0x8($s7)
/* 1A01C 8002981C 00000000 */  nop
/* 1A020 80029820 A2004018 */  blez       $v0, .L80029AAC
/* 1A024 80029824 21880000 */   addu      $s1, $zero, $zero
.L80029828:
/* 1A028 80029828 D140010C */  jal        u32Random
/* 1A02C 8002982C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A030 80029830 21804000 */  addu       $s0, $v0, $zero
/* 1A034 80029834 D140010C */  jal        u32Random
/* 1A038 80029838 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A03C 8002983C 21984000 */  addu       $s3, $v0, $zero
/* 1A040 80029840 21180000 */  addu       $v1, $zero, $zero
/* 1A044 80029844 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1A048 80029848 1D006210 */  beq        $v1, $v0, .L800298C0
/* 1A04C 8002984C 00F20300 */   sll       $fp, $v1, 8
/* 1A050 80029850 2118C003 */  addu       $v1, $fp, $zero
/* 1A054 80029854 21100000 */  addu       $v0, $zero, $zero
/* 1A058 80029858 00120200 */  sll        $v0, $v0, 8
/* 1A05C 8002985C 2400A3AF */  sw         $v1, 0x24($sp)
/* 1A060 80029860 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1A064 80029864 2800A2AF */  sw         $v0, 0x28($sp)
/* 1A068 80029868 4400C226 */  addiu      $v0, $s6, 0x44
/* 1A06C 8002986C 01003126 */  addiu      $s1, $s1, 0x1
/* 1A070 80029870 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1A074 80029874 7400C326 */  addiu      $v1, $s6, 0x74
/* 1A078 80029878 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1A07C 8002987C 2000B1AF */  sw         $s1, 0x20($sp)
/* 1A080 80029880 05000006 */  bltz       $s0, .L80029898
/* 1A084 80029884 1800A3AF */   sw        $v1, 0x18($sp)
/* 1A088 80029888 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1A08C 8002988C 2A107000 */  slt        $v0, $v1, $s0
/* 1A090 80029890 1A004010 */  beqz       $v0, .L800298FC
/* 1A094 80029894 21180000 */   addu      $v1, $zero, $zero
.L80029898:
/* 1A098 80029898 D140010C */  jal        u32Random
/* 1A09C 8002989C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A0A0 800298A0 21804000 */  addu       $s0, $v0, $zero
/* 1A0A4 800298A4 FCFF0006 */  bltz       $s0, .L80029898
/* 1A0A8 800298A8 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1A0AC 800298AC 2A107000 */  slt        $v0, $v1, $s0
/* 1A0B0 800298B0 F9FF4014 */  bnez       $v0, .L80029898
/* 1A0B4 800298B4 21180000 */   addu      $v1, $zero, $zero
/* 1A0B8 800298B8 40A60008 */  j          .L80029900
/* 1A0BC 800298BC FF0F0224 */   addiu     $v0, $zero, 0xFFF
.L800298C0:
/* 1A0C0 800298C0 21800000 */  addu       $s0, $zero, $zero
/* 1A0C4 800298C4 00F21000 */  sll        $fp, $s0, 8
/* 1A0C8 800298C8 2110C003 */  addu       $v0, $fp, $zero
/* 1A0CC 800298CC 21184000 */  addu       $v1, $v0, $zero
/* 1A0D0 800298D0 2400A2AF */  sw         $v0, 0x24($sp)
/* 1A0D4 800298D4 1C00C226 */  addiu      $v0, $s6, 0x1C
/* 1A0D8 800298D8 2800A3AF */  sw         $v1, 0x28($sp)
/* 1A0DC 800298DC 4400C326 */  addiu      $v1, $s6, 0x44
/* 1A0E0 800298E0 01003126 */  addiu      $s1, $s1, 0x1
/* 1A0E4 800298E4 2C00A2AF */  sw         $v0, 0x2C($sp)
/* 1A0E8 800298E8 7400C226 */  addiu      $v0, $s6, 0x74
/* 1A0EC 800298EC 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 1A0F0 800298F0 2000B1AF */  sw         $s1, 0x20($sp)
/* 1A0F4 800298F4 1800A2AF */  sw         $v0, 0x18($sp)
/* 1A0F8 800298F8 21180000 */  addu       $v1, $zero, $zero
.L800298FC:
/* 1A0FC 800298FC FF0F0224 */  addiu      $v0, $zero, 0xFFF
.L80029900:
/* 1A100 80029900 0F006210 */  beq        $v1, $v0, .L80029940
/* 1A104 80029904 00000000 */   nop
/* 1A108 80029908 03006006 */  bltz       $s3, .L80029918
/* 1A10C 8002990C 2A105300 */   slt       $v0, $v0, $s3
/* 1A110 80029910 0C004010 */  beqz       $v0, .L80029944
/* 1A114 80029914 00000000 */   nop
.L80029918:
/* 1A118 80029918 D140010C */  jal        u32Random
/* 1A11C 8002991C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1A120 80029920 21984000 */  addu       $s3, $v0, $zero
/* 1A124 80029924 FCFF6006 */  bltz       $s3, .L80029918
/* 1A128 80029928 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1A12C 8002992C 2A107300 */  slt        $v0, $v1, $s3
/* 1A130 80029930 F9FF4014 */  bnez       $v0, .L80029918
/* 1A134 80029934 00000000 */   nop
/* 1A138 80029938 51A60008 */  j          .L80029944
/* 1A13C 8002993C 00000000 */   nop
.L80029940:
/* 1A140 80029940 21980000 */  addu       $s3, $zero, $zero
.L80029944:
/* 1A144 80029944 7BEB010C */  jal        rcos
/* 1A148 80029948 21200002 */   addu      $a0, $s0, $zero
/* 1A14C 8002994C 21200002 */  addu       $a0, $s0, $zero
/* 1A150 80029950 47EB010C */  jal        rsin
/* 1A154 80029954 21904000 */   addu      $s2, $v0, $zero
/* 1A158 80029958 21206002 */  addu       $a0, $s3, $zero
/* 1A15C 8002995C 7BEB010C */  jal        rcos
/* 1A160 80029960 21884000 */   addu      $s1, $v0, $zero
/* 1A164 80029964 21206002 */  addu       $a0, $s3, $zero
/* 1A168 80029968 47EB010C */  jal        rsin
/* 1A16C 8002996C 21804000 */   addu      $s0, $v0, $zero
/* 1A170 80029970 18003002 */  mult       $s1, $s0
/* 1A174 80029974 12880000 */  mflo       $s1
/* 1A178 80029978 00000000 */  nop
/* 1A17C 8002997C 00000000 */  nop
/* 1A180 80029980 18005002 */  mult       $s2, $s0
/* 1A184 80029984 12900000 */  mflo       $s2
/* 1A188 80029988 1000A38F */  lw         $v1, 0x10($sp)
/* 1A18C 8002998C 038B1100 */  sra        $s1, $s1, 12
/* 1A190 80029990 18002302 */  mult       $s1, $v1
/* 1A194 80029994 12A80000 */  mflo       $s5
/* 1A198 80029998 21A04000 */  addu       $s4, $v0, $zero
/* 1A19C 8002999C 00000000 */  nop
/* 1A1A0 800299A0 18008302 */  mult       $s4, $v1
/* 1A1A4 800299A4 12980000 */  mflo       $s3
/* 1A1A8 800299A8 03931200 */  sra        $s2, $s2, 12
/* 1A1AC 800299AC 00000000 */  nop
/* 1A1B0 800299B0 18004302 */  mult       $s2, $v1
/* 1A1B4 800299B4 12800000 */  mflo       $s0
/* 1A1B8 800299B8 1400A28F */  lw         $v0, 0x14($sp)
/* 1A1BC 800299BC 00000000 */  nop
/* 1A1C0 800299C0 18002202 */  mult       $s1, $v0
/* 1A1C4 800299C4 12880000 */  mflo       $s1
/* 1A1C8 800299C8 00000000 */  nop
/* 1A1CC 800299CC 00000000 */  nop
/* 1A1D0 800299D0 18008202 */  mult       $s4, $v0
/* 1A1D4 800299D4 12A00000 */  mflo       $s4
/* 1A1D8 800299D8 00000000 */  nop
/* 1A1DC 800299DC 00000000 */  nop
/* 1A1E0 800299E0 18004202 */  mult       $s2, $v0
/* 1A1E4 800299E4 04000424 */  addiu      $a0, $zero, 0x4
/* 1A1E8 800299E8 03A91500 */  sra        $s5, $s5, 4
/* 1A1EC 800299EC 21A8D503 */  addu       $s5, $fp, $s5
/* 1A1F0 800299F0 03991300 */  sra        $s3, $s3, 4
/* 1A1F4 800299F4 2800A38F */  lw         $v1, 0x28($sp)
/* 1A1F8 800299F8 03811000 */  sra        $s0, $s0, 4
/* 1A1FC 800299FC 21807000 */  addu       $s0, $v1, $s0
/* 1A200 80029A00 03891100 */  sra        $s1, $s1, 4
/* 1A204 80029A04 2400A28F */  lw         $v0, 0x24($sp)
/* 1A208 80029A08 03A11400 */  sra        $s4, $s4, 4
/* 1A20C 80029A0C 21985300 */  addu       $s3, $v0, $s3
/* 1A210 80029A10 12900000 */  mflo       $s2
/* 1A214 80029A14 D140010C */  jal        u32Random
/* 1A218 80029A18 03911200 */   sra       $s2, $s2, 4
/* 1A21C 80029A1C 01000324 */  addiu      $v1, $zero, 0x1
/* 1A220 80029A20 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1A224 80029A24 1E000324 */  addiu      $v1, $zero, 0x1E
/* 1A228 80029A28 23106200 */  subu       $v0, $v1, $v0
/* 1A22C 80029A2C 0400D5AE */  sw         $s5, 0x4($s6)
/* 1A230 80029A30 0800D3AE */  sw         $s3, 0x8($s6)
/* 1A234 80029A34 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1A238 80029A38 1000D1AE */  sw         $s1, 0x10($s6)
/* 1A23C 80029A3C 1400D4AE */  sw         $s4, 0x14($s6)
/* 1A240 80029A40 1800D2AE */  sw         $s2, 0x18($s6)
/* 1A244 80029A44 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1A248 80029A48 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1A24C 80029A4C 2C00A58F */  lw         $a1, 0x2C($sp)
/* 1A250 80029A50 00000000 */  nop
/* 1A254 80029A54 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1A258 80029A58 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1A25C 80029A5C 00000000 */  nop
/* 1A260 80029A60 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1A264 80029A64 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1A268 80029A68 00000000 */  nop
/* 1A26C 80029A6C 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1A270 80029A70 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1A274 80029A74 1C00A58F */  lw         $a1, 0x1C($sp)
/* 1A278 80029A78 00000000 */  nop
/* 1A27C 80029A7C 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1A280 80029A80 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1A284 80029A84 00000000 */  nop
/* 1A288 80029A88 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1A28C 80029A8C 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1A290 80029A90 2000B18F */  lw         $s1, 0x20($sp)
/* 1A294 80029A94 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1A298 80029A98 0800E28E */  lw         $v0, 0x8($s7)
/* 1A29C 80029A9C 1800B68F */  lw         $s6, 0x18($sp)
/* 1A2A0 80029AA0 2A102202 */  slt        $v0, $s1, $v0
/* 1A2A4 80029AA4 60FF4014 */  bnez       $v0, .L80029828
/* 1A2A8 80029AA8 00000000 */   nop
.L80029AAC:
/* 1A2AC 80029AAC 5400BF8F */  lw         $ra, 0x54($sp)
/* 1A2B0 80029AB0 5000BE8F */  lw         $fp, 0x50($sp)
/* 1A2B4 80029AB4 0000E0AE */  sw         $zero, 0x0($s7)
/* 1A2B8 80029AB8 4C00B78F */  lw         $s7, 0x4C($sp)
/* 1A2BC 80029ABC 4800B68F */  lw         $s6, 0x48($sp)
/* 1A2C0 80029AC0 4400B58F */  lw         $s5, 0x44($sp)
/* 1A2C4 80029AC4 4000B48F */  lw         $s4, 0x40($sp)
/* 1A2C8 80029AC8 3C00B38F */  lw         $s3, 0x3C($sp)
/* 1A2CC 80029ACC 3800B28F */  lw         $s2, 0x38($sp)
/* 1A2D0 80029AD0 3400B18F */  lw         $s1, 0x34($sp)
/* 1A2D4 80029AD4 3000B08F */  lw         $s0, 0x30($sp)
/* 1A2D8 80029AD8 0800E003 */  jr         $ra
/* 1A2DC 80029ADC 5800BD27 */   addiu     $sp, $sp, 0x58
.size InitEmitterParticle, . - InitEmitterParticle
