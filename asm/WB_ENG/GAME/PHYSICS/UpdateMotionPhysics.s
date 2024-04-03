.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateMotionPhysics
/* 2E69C 8003DE9C 88FFBD27 */  addiu      $sp, $sp, -0x78
/* 2E6A0 8003DEA0 6800B6AF */  sw         $s6, 0x68($sp)
/* 2E6A4 8003DEA4 21B08000 */  addu       $s6, $a0, $zero
/* 2E6A8 8003DEA8 0880023C */  lui        $v0, %hi(TestWorld)
/* 2E6AC 8003DEAC 8C654324 */  addiu      $v1, $v0, %lo(TestWorld)
/* 2E6B0 8003DEB0 7400BFAF */  sw         $ra, 0x74($sp)
/* 2E6B4 8003DEB4 7000BEAF */  sw         $fp, 0x70($sp)
/* 2E6B8 8003DEB8 6C00B7AF */  sw         $s7, 0x6C($sp)
/* 2E6BC 8003DEBC 6400B5AF */  sw         $s5, 0x64($sp)
/* 2E6C0 8003DEC0 6000B4AF */  sw         $s4, 0x60($sp)
/* 2E6C4 8003DEC4 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 2E6C8 8003DEC8 5800B2AF */  sw         $s2, 0x58($sp)
/* 2E6CC 8003DECC 5400B1AF */  sw         $s1, 0x54($sp)
/* 2E6D0 8003DED0 5000B0AF */  sw         $s0, 0x50($sp)
/* 2E6D4 8003DED4 3C00A0AF */  sw         $zero, 0x3C($sp)
/* 2E6D8 8003DED8 4000A0AF */  sw         $zero, 0x40($sp)
/* 2E6DC 8003DEDC 3400A0AF */  sw         $zero, 0x34($sp)
/* 2E6E0 8003DEE0 0400668C */  lw         $a2, 0x4($v1)
/* 2E6E4 8003DEE4 0800678C */  lw         $a3, 0x8($v1)
/* 2E6E8 8003DEE8 FF030324 */  addiu      $v1, $zero, 0x3FF
/* 2E6EC 8003DEEC 8400C48E */  lw         $a0, 0x84($s6)
/* 2E6F0 8003DEF0 8C65458C */  lw         $a1, %lo(TestWorld)($v0)
/* 2E6F4 8003DEF4 0400C88E */  lw         $t0, 0x4($s6)
/* 2E6F8 8003DEF8 0800C28E */  lw         $v0, 0x8($s6)
/* 2E6FC 8003DEFC 0C00D28E */  lw         $s2, 0xC($s6)
/* 2E700 8003DF00 21F04000 */  addu       $fp, $v0, $zero
/* 2E704 8003DF04 43200400 */  sra        $a0, $a0, 1
/* 2E708 8003DF08 FFFF9324 */  addiu      $s3, $a0, -0x1
/* 2E70C 8003DF0C C0290500 */  sll        $a1, $a1, 7
/* 2E710 8003DF10 2328B300 */  subu       $a1, $a1, $s3
/* 2E714 8003DF14 C0310600 */  sll        $a2, $a2, 7
/* 2E718 8003DF18 C0390700 */  sll        $a3, $a3, 7
/* 2E71C 8003DF1C 2338F300 */  subu       $a3, $a3, $s3
/* 2E720 8003DF20 1400C2AE */  sw         $v0, 0x14($s6)
/* 2E724 8003DF24 0980023C */  lui        $v0, %hi(ETActor + 0x6C)
/* 2E728 8003DF28 1C5B4224 */  addiu      $v0, $v0, %lo(ETActor + 0x6C)
/* 2E72C 8003DF2C 2610C202 */  xor        $v0, $s6, $v0
/* 2E730 8003DF30 0100422C */  sltiu      $v0, $v0, 0x1
/* 2E734 8003DF34 1000C8AE */  sw         $t0, 0x10($s6)
/* 2E738 8003DF38 1800D2AE */  sw         $s2, 0x18($s6)
/* 2E73C 8003DF3C 4400A7AF */  sw         $a3, 0x44($sp)
/* 2E740 8003DF40 4800A2AF */  sw         $v0, 0x48($sp)
/* 2E744 8003DF44 2800A8AF */  sw         $t0, 0x28($sp)
/* 2E748 8003DF48 2C00BEAF */  sw         $fp, 0x2C($sp)
/* 2E74C 8003DF4C 8800C28E */  lw         $v0, 0x88($s6)
/* 2E750 8003DF50 2330D300 */  subu       $a2, $a2, $s3
/* 2E754 8003DF54 3000B2AF */  sw         $s2, 0x30($sp)
/* 2E758 8003DF58 9400C48E */  lw         $a0, 0x94($s6)
/* 2E75C 8003DF5C FF034230 */  andi       $v0, $v0, 0x3FF
/* 2E760 8003DF60 04004310 */  beq        $v0, $v1, .L8003DF74
/* 2E764 8003DF64 3800A4AF */   sw        $a0, 0x38($sp)
/* 2E768 8003DF68 8C00C28E */  lw         $v0, 0x8C($s6)
/* 2E76C 8003DF6C 00000000 */  nop
/* 2E770 8003DF70 3400A2AF */  sw         $v0, 0x34($sp)
.L8003DF74:
/* 2E774 8003DF74 0500C107 */  bgez       $fp, .L8003DF8C
/* 2E778 8003DF78 2A10DE00 */   slt       $v0, $a2, $fp
/* 2E77C 8003DF7C 21F00000 */  addu       $fp, $zero, $zero
/* 2E780 8003DF80 02000324 */  addiu      $v1, $zero, 0x2
/* 2E784 8003DF84 E7F70008 */  j          .L8003DF9C
/* 2E788 8003DF88 3C00A3AF */   sw        $v1, 0x3C($sp)
.L8003DF8C:
/* 2E78C 8003DF8C 03004010 */  beqz       $v0, .L8003DF9C
/* 2E790 8003DF90 02000424 */   addiu     $a0, $zero, 0x2
/* 2E794 8003DF94 21F0C000 */  addu       $fp, $a2, $zero
/* 2E798 8003DF98 3C00A4AF */  sw         $a0, 0x3C($sp)
.L8003DF9C:
/* 2E79C 8003DF9C 3000C38E */  lw         $v1, 0x30($s6)
/* 2E7A0 8003DFA0 4000C48E */  lw         $a0, 0x40($s6)
/* 2E7A4 8003DFA4 05006104 */  bgez       $v1, .L8003DFBC
/* 2E7A8 8003DFA8 23100300 */   negu      $v0, $v1
/* 2E7AC 8003DFAC 2A108200 */  slt        $v0, $a0, $v0
/* 2E7B0 8003DFB0 02004010 */  beqz       $v0, .L8003DFBC
/* 2E7B4 8003DFB4 00000000 */   nop
/* 2E7B8 8003DFB8 23180400 */  negu       $v1, $a0
.L8003DFBC:
/* 2E7BC 8003DFBC 04006018 */  blez       $v1, .L8003DFD0
/* 2E7C0 8003DFC0 2A108300 */   slt       $v0, $a0, $v1
/* 2E7C4 8003DFC4 02004010 */  beqz       $v0, .L8003DFD0
/* 2E7C8 8003DFC8 00000000 */   nop
/* 2E7CC 8003DFCC 21188000 */  addu       $v1, $a0, $zero
.L8003DFD0:
/* 2E7D0 8003DFD0 3000C3AE */  sw         $v1, 0x30($s6)
/* 2E7D4 8003DFD4 02006104 */  bgez       $v1, .L8003DFE0
/* 2E7D8 8003DFD8 21106000 */   addu      $v0, $v1, $zero
/* 2E7DC 8003DFDC FF006224 */  addiu      $v0, $v1, 0xFF
.L8003DFE0:
/* 2E7E0 8003DFE0 03120200 */  sra        $v0, $v0, 8
/* 2E7E4 8003DFE4 2000C38E */  lw         $v1, 0x20($s6)
/* 2E7E8 8003DFE8 21B80201 */  addu       $s7, $t0, $v0
/* 2E7EC 8003DFEC 21B8E302 */  addu       $s7, $s7, $v1
/* 2E7F0 8003DFF0 2A107702 */  slt        $v0, $s3, $s7
/* 2E7F4 8003DFF4 06004014 */  bnez       $v0, .L8003E010
/* 2E7F8 8003DFF8 2110F302 */   addu      $v0, $s7, $s3
/* 2E7FC 8003DFFC 21B86002 */  addu       $s7, $s3, $zero
/* 2E800 8003E000 02000224 */  addiu      $v0, $zero, 0x2
/* 2E804 8003E004 3000C0AE */  sw         $zero, 0x30($s6)
/* 2E808 8003E008 0BF80008 */  j          .L8003E02C
/* 2E80C 8003E00C 3C00A2AF */   sw        $v0, 0x3C($sp)
.L8003E010:
/* 2E810 8003E010 2A104500 */  slt        $v0, $v0, $a1
/* 2E814 8003E014 06004014 */  bnez       $v0, .L8003E030
/* 2E818 8003E018 4100622A */   slti      $v0, $s3, 0x41
/* 2E81C 8003E01C 23B8B300 */  subu       $s7, $a1, $s3
/* 2E820 8003E020 02000324 */  addiu      $v1, $zero, 0x2
/* 2E824 8003E024 3000C0AE */  sw         $zero, 0x30($s6)
/* 2E828 8003E028 3C00A3AF */  sw         $v1, 0x3C($sp)
.L8003E02C:
/* 2E82C 8003E02C 4100622A */  slti       $v0, $s3, 0x41
.L8003E030:
/* 2E830 8003E030 02004014 */  bnez       $v0, .L8003E03C
/* 2E834 8003E034 01000424 */   addiu     $a0, $zero, 0x1
/* 2E838 8003E038 4000A4AF */  sw         $a0, 0x40($sp)
.L8003E03C:
/* 2E83C 8003E03C 8000C28E */  lw         $v0, 0x80($s6)
/* 2E840 8003E040 00000000 */  nop
/* 2E844 8003E044 01004230 */  andi       $v0, $v0, 0x1
/* 2E848 8003E048 99004014 */  bnez       $v0, .L8003E2B0
/* 2E84C 8003E04C 00000000 */   nop
/* 2E850 8003E050 3000C38E */  lw         $v1, 0x30($s6)
/* 2E854 8003E054 00000000 */  nop
/* 2E858 8003E058 0500601C */  bgtz       $v1, .L8003E070
/* 2E85C 8003E05C 21A8F302 */   addu      $s5, $s7, $s3
/* 2E860 8003E060 2000C28E */  lw         $v0, 0x20($s6)
/* 2E864 8003E064 00000000 */  nop
/* 2E868 8003E068 47004018 */  blez       $v0, .L8003E188
/* 2E86C 8003E06C 00000000 */   nop
.L8003E070:
/* 2E870 8003E070 2128A002 */  addu       $a1, $s5, $zero
/* 2E874 8003E074 23105302 */  subu       $v0, $s2, $s3
/* 2E878 8003E078 4800A48F */  lw         $a0, 0x48($sp)
/* 2E87C 8003E07C 2800A38F */  lw         $v1, 0x28($sp)
/* 2E880 8003E080 21384000 */  addu       $a3, $v0, $zero
/* 2E884 8003E084 1800A2AF */  sw         $v0, 0x18($sp)
/* 2E888 8003E088 3400A28F */  lw         $v0, 0x34($sp)
/* 2E88C 8003E08C 21887300 */  addu       $s1, $v1, $s3
/* 2E890 8003E090 2C00A38F */  lw         $v1, 0x2C($sp)
/* 2E894 8003E094 2130C003 */  addu       $a2, $fp, $zero
/* 2E898 8003E098 1400A3AF */  sw         $v1, 0x14($sp)
/* 2E89C 8003E09C 3800A38F */  lw         $v1, 0x38($sp)
/* 2E8A0 8003E0A0 08001024 */  addiu      $s0, $zero, 0x8
/* 2E8A4 8003E0A4 1C00B0AF */  sw         $s0, 0x1C($sp)
/* 2E8A8 8003E0A8 1000B1AF */  sw         $s1, 0x10($sp)
/* 2E8AC 8003E0AC 2000A2AF */  sw         $v0, 0x20($sp)
/* 2E8B0 8003E0B0 4BF3000C */  jal        CheckCollisionWall
/* 2E8B4 8003E0B4 2400A3AF */   sw        $v1, 0x24($sp)
/* 2E8B8 8003E0B8 21A04000 */  addu       $s4, $v0, $zero
/* 2E8BC 8003E0BC 21105302 */  addu       $v0, $s2, $s3
/* 2E8C0 8003E0C0 4800A48F */  lw         $a0, 0x48($sp)
/* 2E8C4 8003E0C4 2C00A38F */  lw         $v1, 0x2C($sp)
/* 2E8C8 8003E0C8 21384000 */  addu       $a3, $v0, $zero
/* 2E8CC 8003E0CC 1800A2AF */  sw         $v0, 0x18($sp)
/* 2E8D0 8003E0D0 3400A28F */  lw         $v0, 0x34($sp)
/* 2E8D4 8003E0D4 2128A002 */  addu       $a1, $s5, $zero
/* 2E8D8 8003E0D8 1400A3AF */  sw         $v1, 0x14($sp)
/* 2E8DC 8003E0DC 3800A38F */  lw         $v1, 0x38($sp)
/* 2E8E0 8003E0E0 2130C003 */  addu       $a2, $fp, $zero
/* 2E8E4 8003E0E4 1000B1AF */  sw         $s1, 0x10($sp)
/* 2E8E8 8003E0E8 1C00B0AF */  sw         $s0, 0x1C($sp)
/* 2E8EC 8003E0EC 2000A2AF */  sw         $v0, 0x20($sp)
/* 2E8F0 8003E0F0 4BF3000C */  jal        CheckCollisionWall
/* 2E8F4 8003E0F4 2400A3AF */   sw        $v1, 0x24($sp)
/* 2E8F8 8003E0F8 21804000 */  addu       $s0, $v0, $zero
/* 2E8FC 8003E0FC 4000A48F */  lw         $a0, 0x40($sp)
/* 2E900 8003E100 00000000 */  nop
/* 2E904 8003E104 10008010 */  beqz       $a0, .L8003E148
/* 2E908 8003E108 21100000 */   addu      $v0, $zero, $zero
/* 2E90C 8003E10C 2128A002 */  addu       $a1, $s5, $zero
/* 2E910 8003E110 4800A48F */  lw         $a0, 0x48($sp)
/* 2E914 8003E114 2C00A28F */  lw         $v0, 0x2C($sp)
/* 2E918 8003E118 3400A38F */  lw         $v1, 0x34($sp)
/* 2E91C 8003E11C 2130C003 */  addu       $a2, $fp, $zero
/* 2E920 8003E120 1400A2AF */  sw         $v0, 0x14($sp)
/* 2E924 8003E124 0A000224 */  addiu      $v0, $zero, 0xA
/* 2E928 8003E128 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 2E92C 8003E12C 3800A28F */  lw         $v0, 0x38($sp)
/* 2E930 8003E130 21384002 */  addu       $a3, $s2, $zero
/* 2E934 8003E134 1000B1AF */  sw         $s1, 0x10($sp)
/* 2E938 8003E138 1800B2AF */  sw         $s2, 0x18($sp)
/* 2E93C 8003E13C 2000A3AF */  sw         $v1, 0x20($sp)
/* 2E940 8003E140 4BF3000C */  jal        CheckCollisionWall
/* 2E944 8003E144 2400A2AF */   sw        $v0, 0x24($sp)
.L8003E148:
/* 2E948 8003E148 06008016 */  bnez       $s4, .L8003E164
/* 2E94C 8003E14C 00000000 */   nop
/* 2E950 8003E150 04000016 */  bnez       $s0, .L8003E164
/* 2E954 8003E154 00000000 */   nop
/* 2E958 8003E158 3000C38E */  lw         $v1, 0x30($s6)
/* 2E95C 8003E15C 0A004010 */  beqz       $v0, .L8003E188
/* 2E960 8003E160 00000000 */   nop
.L8003E164:
/* 2E964 8003E164 2800A38F */  lw         $v1, 0x28($sp)
/* 2E968 8003E168 3C00B0AF */  sw         $s0, 0x3C($sp)
/* 2E96C 8003E16C 7F006234 */  ori        $v0, $v1, 0x7F
/* 2E970 8003E170 23B85300 */  subu       $s7, $v0, $s3
/* 2E974 8003E174 2A101402 */  slt        $v0, $s0, $s4
/* 2E978 8003E178 3000C38E */  lw         $v1, 0x30($s6)
/* 2E97C 8003E17C 02004010 */  beqz       $v0, .L8003E188
/* 2E980 8003E180 00000000 */   nop
/* 2E984 8003E184 3C00B4AF */  sw         $s4, 0x3C($sp)
.L8003E188:
/* 2E988 8003E188 05006004 */  bltz       $v1, .L8003E1A0
/* 2E98C 8003E18C 23A8F302 */   subu      $s5, $s7, $s3
/* 2E990 8003E190 2000C28E */  lw         $v0, 0x20($s6)
/* 2E994 8003E194 00000000 */  nop
/* 2E998 8003E198 45004104 */  bgez       $v0, .L8003E2B0
/* 2E99C 8003E19C 00000000 */   nop
.L8003E1A0:
/* 2E9A0 8003E1A0 2128A002 */  addu       $a1, $s5, $zero
/* 2E9A4 8003E1A4 21105302 */  addu       $v0, $s2, $s3
/* 2E9A8 8003E1A8 4800A48F */  lw         $a0, 0x48($sp)
/* 2E9AC 8003E1AC 2800A38F */  lw         $v1, 0x28($sp)
/* 2E9B0 8003E1B0 21384000 */  addu       $a3, $v0, $zero
/* 2E9B4 8003E1B4 1800A2AF */  sw         $v0, 0x18($sp)
/* 2E9B8 8003E1B8 3400A28F */  lw         $v0, 0x34($sp)
/* 2E9BC 8003E1BC 23887300 */  subu       $s1, $v1, $s3
/* 2E9C0 8003E1C0 2C00A38F */  lw         $v1, 0x2C($sp)
/* 2E9C4 8003E1C4 2130C003 */  addu       $a2, $fp, $zero
/* 2E9C8 8003E1C8 1400A3AF */  sw         $v1, 0x14($sp)
/* 2E9CC 8003E1CC 3800A38F */  lw         $v1, 0x38($sp)
/* 2E9D0 8003E1D0 02001024 */  addiu      $s0, $zero, 0x2
/* 2E9D4 8003E1D4 1C00B0AF */  sw         $s0, 0x1C($sp)
/* 2E9D8 8003E1D8 1000B1AF */  sw         $s1, 0x10($sp)
/* 2E9DC 8003E1DC 2000A2AF */  sw         $v0, 0x20($sp)
/* 2E9E0 8003E1E0 4BF3000C */  jal        CheckCollisionWall
/* 2E9E4 8003E1E4 2400A3AF */   sw        $v1, 0x24($sp)
/* 2E9E8 8003E1E8 21A04000 */  addu       $s4, $v0, $zero
/* 2E9EC 8003E1EC 23105302 */  subu       $v0, $s2, $s3
/* 2E9F0 8003E1F0 4800A48F */  lw         $a0, 0x48($sp)
/* 2E9F4 8003E1F4 2C00A38F */  lw         $v1, 0x2C($sp)
/* 2E9F8 8003E1F8 21384000 */  addu       $a3, $v0, $zero
/* 2E9FC 8003E1FC 1800A2AF */  sw         $v0, 0x18($sp)
/* 2EA00 8003E200 3400A28F */  lw         $v0, 0x34($sp)
/* 2EA04 8003E204 2128A002 */  addu       $a1, $s5, $zero
/* 2EA08 8003E208 1400A3AF */  sw         $v1, 0x14($sp)
/* 2EA0C 8003E20C 3800A38F */  lw         $v1, 0x38($sp)
/* 2EA10 8003E210 2130C003 */  addu       $a2, $fp, $zero
/* 2EA14 8003E214 1000B1AF */  sw         $s1, 0x10($sp)
/* 2EA18 8003E218 1C00B0AF */  sw         $s0, 0x1C($sp)
/* 2EA1C 8003E21C 2000A2AF */  sw         $v0, 0x20($sp)
/* 2EA20 8003E220 4BF3000C */  jal        CheckCollisionWall
/* 2EA24 8003E224 2400A3AF */   sw        $v1, 0x24($sp)
/* 2EA28 8003E228 21804000 */  addu       $s0, $v0, $zero
/* 2EA2C 8003E22C 4000A48F */  lw         $a0, 0x40($sp)
/* 2EA30 8003E230 00000000 */  nop
/* 2EA34 8003E234 10008010 */  beqz       $a0, .L8003E278
/* 2EA38 8003E238 21100000 */   addu      $v0, $zero, $zero
/* 2EA3C 8003E23C 2128A002 */  addu       $a1, $s5, $zero
/* 2EA40 8003E240 4800A48F */  lw         $a0, 0x48($sp)
/* 2EA44 8003E244 2C00A28F */  lw         $v0, 0x2C($sp)
/* 2EA48 8003E248 3400A38F */  lw         $v1, 0x34($sp)
/* 2EA4C 8003E24C 2130C003 */  addu       $a2, $fp, $zero
/* 2EA50 8003E250 1400A2AF */  sw         $v0, 0x14($sp)
/* 2EA54 8003E254 0A000224 */  addiu      $v0, $zero, 0xA
/* 2EA58 8003E258 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 2EA5C 8003E25C 3800A28F */  lw         $v0, 0x38($sp)
/* 2EA60 8003E260 21384002 */  addu       $a3, $s2, $zero
/* 2EA64 8003E264 1000B1AF */  sw         $s1, 0x10($sp)
/* 2EA68 8003E268 1800B2AF */  sw         $s2, 0x18($sp)
/* 2EA6C 8003E26C 2000A3AF */  sw         $v1, 0x20($sp)
/* 2EA70 8003E270 4BF3000C */  jal        CheckCollisionWall
/* 2EA74 8003E274 2400A2AF */   sw        $v0, 0x24($sp)
.L8003E278:
/* 2EA78 8003E278 05008016 */  bnez       $s4, .L8003E290
/* 2EA7C 8003E27C 00000000 */   nop
/* 2EA80 8003E280 03000016 */  bnez       $s0, .L8003E290
/* 2EA84 8003E284 00000000 */   nop
/* 2EA88 8003E288 09004010 */  beqz       $v0, .L8003E2B0
/* 2EA8C 8003E28C 00000000 */   nop
.L8003E290:
/* 2EA90 8003E290 2800A38F */  lw         $v1, 0x28($sp)
/* 2EA94 8003E294 3C00B0AF */  sw         $s0, 0x3C($sp)
/* 2EA98 8003E298 C3110300 */  sra        $v0, $v1, 7
/* 2EA9C 8003E29C C0B90200 */  sll        $s7, $v0, 7
/* 2EAA0 8003E2A0 2A101402 */  slt        $v0, $s0, $s4
/* 2EAA4 8003E2A4 02004010 */  beqz       $v0, .L8003E2B0
/* 2EAA8 8003E2A8 21B8F302 */   addu      $s7, $s7, $s3
/* 2EAAC 8003E2AC 3C00B4AF */  sw         $s4, 0x3C($sp)
.L8003E2B0:
/* 2EAB0 8003E2B0 3800C38E */  lw         $v1, 0x38($s6)
/* 2EAB4 8003E2B4 4800C48E */  lw         $a0, 0x48($s6)
/* 2EAB8 8003E2B8 06006104 */  bgez       $v1, .L8003E2D4
/* 2EABC 8003E2BC 2000C0AE */   sw        $zero, 0x20($s6)
/* 2EAC0 8003E2C0 23100300 */  negu       $v0, $v1
/* 2EAC4 8003E2C4 2A108200 */  slt        $v0, $a0, $v0
/* 2EAC8 8003E2C8 02004010 */  beqz       $v0, .L8003E2D4
/* 2EACC 8003E2CC 00000000 */   nop
/* 2EAD0 8003E2D0 23180400 */  negu       $v1, $a0
.L8003E2D4:
/* 2EAD4 8003E2D4 04006018 */  blez       $v1, .L8003E2E8
/* 2EAD8 8003E2D8 2A108300 */   slt       $v0, $a0, $v1
/* 2EADC 8003E2DC 03004010 */  beqz       $v0, .L8003E2EC
/* 2EAE0 8003E2E0 21106000 */   addu      $v0, $v1, $zero
/* 2EAE4 8003E2E4 21188000 */  addu       $v1, $a0, $zero
.L8003E2E8:
/* 2EAE8 8003E2E8 21106000 */  addu       $v0, $v1, $zero
.L8003E2EC:
/* 2EAEC 8003E2EC 02004104 */  bgez       $v0, .L8003E2F8
/* 2EAF0 8003E2F0 3800C3AE */   sw        $v1, 0x38($s6)
/* 2EAF4 8003E2F4 FF004224 */  addiu      $v0, $v0, 0xFF
.L8003E2F8:
/* 2EAF8 8003E2F8 03120200 */  sra        $v0, $v0, 8
/* 2EAFC 8003E2FC 2800C38E */  lw         $v1, 0x28($s6)
/* 2EB00 8003E300 21A84202 */  addu       $s5, $s2, $v0
/* 2EB04 8003E304 21A8A302 */  addu       $s5, $s5, $v1
/* 2EB08 8003E308 2A107502 */  slt        $v0, $s3, $s5
/* 2EB0C 8003E30C 03004014 */  bnez       $v0, .L8003E31C
/* 2EB10 8003E310 2110B302 */   addu      $v0, $s5, $s3
/* 2EB14 8003E314 CDF80008 */  j          .L8003E334
/* 2EB18 8003E318 21A86002 */   addu      $s5, $s3, $zero
.L8003E31C:
/* 2EB1C 8003E31C 4400A38F */  lw         $v1, 0x44($sp)
/* 2EB20 8003E320 00000000 */  nop
/* 2EB24 8003E324 2A104300 */  slt        $v0, $v0, $v1
/* 2EB28 8003E328 05004014 */  bnez       $v0, .L8003E340
/* 2EB2C 8003E32C 00000000 */   nop
/* 2EB30 8003E330 23A87300 */  subu       $s5, $v1, $s3
.L8003E334:
/* 2EB34 8003E334 02000424 */  addiu      $a0, $zero, 0x2
/* 2EB38 8003E338 3800C0AE */  sw         $zero, 0x38($s6)
/* 2EB3C 8003E33C 3C00A4AF */  sw         $a0, 0x3C($sp)
.L8003E340:
/* 2EB40 8003E340 8000C28E */  lw         $v0, 0x80($s6)
/* 2EB44 8003E344 00000000 */  nop
/* 2EB48 8003E348 01004230 */  andi       $v0, $v0, 0x1
/* 2EB4C 8003E34C A3004014 */  bnez       $v0, .L8003E5DC
/* 2EB50 8003E350 00000000 */   nop
/* 2EB54 8003E354 3800C38E */  lw         $v1, 0x38($s6)
/* 2EB58 8003E358 00000000 */  nop
/* 2EB5C 8003E35C 0500601C */  bgtz       $v1, .L8003E374
/* 2EB60 8003E360 2328F302 */   subu      $a1, $s7, $s3
/* 2EB64 8003E364 2800C28E */  lw         $v0, 0x28($s6)
/* 2EB68 8003E368 00000000 */  nop
/* 2EB6C 8003E36C 4A004018 */  blez       $v0, .L8003E498
/* 2EB70 8003E370 00000000 */   nop
.L8003E374:
/* 2EB74 8003E374 2130C003 */  addu       $a2, $fp, $zero
/* 2EB78 8003E378 2190B302 */  addu       $s2, $s5, $s3
/* 2EB7C 8003E37C 2800A38F */  lw         $v1, 0x28($sp)
/* 2EB80 8003E380 4800A48F */  lw         $a0, 0x48($sp)
/* 2EB84 8003E384 23107300 */  subu       $v0, $v1, $s3
/* 2EB88 8003E388 3000A38F */  lw         $v1, 0x30($sp)
/* 2EB8C 8003E38C 21384002 */  addu       $a3, $s2, $zero
/* 2EB90 8003E390 1000A2AF */  sw         $v0, 0x10($sp)
/* 2EB94 8003E394 2C00A28F */  lw         $v0, 0x2C($sp)
/* 2EB98 8003E398 21887300 */  addu       $s1, $v1, $s3
/* 2EB9C 8003E39C 1400A2AF */  sw         $v0, 0x14($sp)
/* 2EBA0 8003E3A0 3400A28F */  lw         $v0, 0x34($sp)
/* 2EBA4 8003E3A4 3800A38F */  lw         $v1, 0x38($sp)
/* 2EBA8 8003E3A8 04001024 */  addiu      $s0, $zero, 0x4
/* 2EBAC 8003E3AC 1C00B0AF */  sw         $s0, 0x1C($sp)
/* 2EBB0 8003E3B0 1800B1AF */  sw         $s1, 0x18($sp)
/* 2EBB4 8003E3B4 2000A2AF */  sw         $v0, 0x20($sp)
/* 2EBB8 8003E3B8 4BF3000C */  jal        CheckCollisionWall
/* 2EBBC 8003E3BC 2400A3AF */   sw        $v1, 0x24($sp)
/* 2EBC0 8003E3C0 21A04000 */  addu       $s4, $v0, $zero
/* 2EBC4 8003E3C4 2128F302 */  addu       $a1, $s7, $s3
/* 2EBC8 8003E3C8 2800A38F */  lw         $v1, 0x28($sp)
/* 2EBCC 8003E3CC 4800A48F */  lw         $a0, 0x48($sp)
/* 2EBD0 8003E3D0 21107300 */  addu       $v0, $v1, $s3
/* 2EBD4 8003E3D4 1000A2AF */  sw         $v0, 0x10($sp)
/* 2EBD8 8003E3D8 2C00A28F */  lw         $v0, 0x2C($sp)
/* 2EBDC 8003E3DC 3400A38F */  lw         $v1, 0x34($sp)
/* 2EBE0 8003E3E0 2130C003 */  addu       $a2, $fp, $zero
/* 2EBE4 8003E3E4 1400A2AF */  sw         $v0, 0x14($sp)
/* 2EBE8 8003E3E8 3800A28F */  lw         $v0, 0x38($sp)
/* 2EBEC 8003E3EC 21384002 */  addu       $a3, $s2, $zero
/* 2EBF0 8003E3F0 1800B1AF */  sw         $s1, 0x18($sp)
/* 2EBF4 8003E3F4 1C00B0AF */  sw         $s0, 0x1C($sp)
/* 2EBF8 8003E3F8 2000A3AF */  sw         $v1, 0x20($sp)
/* 2EBFC 8003E3FC 4BF3000C */  jal        CheckCollisionWall
/* 2EC00 8003E400 2400A2AF */   sw        $v0, 0x24($sp)
/* 2EC04 8003E404 21804000 */  addu       $s0, $v0, $zero
/* 2EC08 8003E408 4000A38F */  lw         $v1, 0x40($sp)
/* 2EC0C 8003E40C 00000000 */  nop
/* 2EC10 8003E410 11006010 */  beqz       $v1, .L8003E458
/* 2EC14 8003E414 21100000 */   addu      $v0, $zero, $zero
/* 2EC18 8003E418 4800A48F */  lw         $a0, 0x48($sp)
/* 2EC1C 8003E41C 2800A28F */  lw         $v0, 0x28($sp)
/* 2EC20 8003E420 2C00A38F */  lw         $v1, 0x2C($sp)
/* 2EC24 8003E424 2128E002 */  addu       $a1, $s7, $zero
/* 2EC28 8003E428 1000A2AF */  sw         $v0, 0x10($sp)
/* 2EC2C 8003E42C 05000224 */  addiu      $v0, $zero, 0x5
/* 2EC30 8003E430 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 2EC34 8003E434 3400A28F */  lw         $v0, 0x34($sp)
/* 2EC38 8003E438 2130C003 */  addu       $a2, $fp, $zero
/* 2EC3C 8003E43C 1400A3AF */  sw         $v1, 0x14($sp)
/* 2EC40 8003E440 3800A38F */  lw         $v1, 0x38($sp)
/* 2EC44 8003E444 21384002 */  addu       $a3, $s2, $zero
/* 2EC48 8003E448 1800B1AF */  sw         $s1, 0x18($sp)
/* 2EC4C 8003E44C 2000A2AF */  sw         $v0, 0x20($sp)
/* 2EC50 8003E450 4BF3000C */  jal        CheckCollisionWall
/* 2EC54 8003E454 2400A3AF */   sw        $v1, 0x24($sp)
.L8003E458:
/* 2EC58 8003E458 06008016 */  bnez       $s4, .L8003E474
/* 2EC5C 8003E45C 00000000 */   nop
/* 2EC60 8003E460 04000016 */  bnez       $s0, .L8003E474
/* 2EC64 8003E464 00000000 */   nop
/* 2EC68 8003E468 3800C38E */  lw         $v1, 0x38($s6)
/* 2EC6C 8003E46C 0A004010 */  beqz       $v0, .L8003E498
/* 2EC70 8003E470 00000000 */   nop
.L8003E474:
/* 2EC74 8003E474 3000A48F */  lw         $a0, 0x30($sp)
/* 2EC78 8003E478 3C00B0AF */  sw         $s0, 0x3C($sp)
/* 2EC7C 8003E47C 3800C38E */  lw         $v1, 0x38($s6)
/* 2EC80 8003E480 7F008234 */  ori        $v0, $a0, 0x7F
/* 2EC84 8003E484 23A85300 */  subu       $s5, $v0, $s3
/* 2EC88 8003E488 2A101402 */  slt        $v0, $s0, $s4
/* 2EC8C 8003E48C 02004010 */  beqz       $v0, .L8003E498
/* 2EC90 8003E490 00000000 */   nop
/* 2EC94 8003E494 3C00B4AF */  sw         $s4, 0x3C($sp)
.L8003E498:
/* 2EC98 8003E498 05006004 */  bltz       $v1, .L8003E4B0
/* 2EC9C 8003E49C 2328F302 */   subu      $a1, $s7, $s3
/* 2ECA0 8003E4A0 2800C28E */  lw         $v0, 0x28($s6)
/* 2ECA4 8003E4A4 00000000 */  nop
/* 2ECA8 8003E4A8 4C004104 */  bgez       $v0, .L8003E5DC
/* 2ECAC 8003E4AC 00000000 */   nop
.L8003E4B0:
/* 2ECB0 8003E4B0 2130C003 */  addu       $a2, $fp, $zero
/* 2ECB4 8003E4B4 2390B302 */  subu       $s2, $s5, $s3
/* 2ECB8 8003E4B8 2800A38F */  lw         $v1, 0x28($sp)
/* 2ECBC 8003E4BC 4800A48F */  lw         $a0, 0x48($sp)
/* 2ECC0 8003E4C0 23107300 */  subu       $v0, $v1, $s3
/* 2ECC4 8003E4C4 3000A38F */  lw         $v1, 0x30($sp)
/* 2ECC8 8003E4C8 21384002 */  addu       $a3, $s2, $zero
/* 2ECCC 8003E4CC 1000A2AF */  sw         $v0, 0x10($sp)
/* 2ECD0 8003E4D0 2C00A28F */  lw         $v0, 0x2C($sp)
/* 2ECD4 8003E4D4 23887300 */  subu       $s1, $v1, $s3
/* 2ECD8 8003E4D8 1400A2AF */  sw         $v0, 0x14($sp)
/* 2ECDC 8003E4DC 3400A28F */  lw         $v0, 0x34($sp)
/* 2ECE0 8003E4E0 3800A38F */  lw         $v1, 0x38($sp)
/* 2ECE4 8003E4E4 01001024 */  addiu      $s0, $zero, 0x1
/* 2ECE8 8003E4E8 1C00B0AF */  sw         $s0, 0x1C($sp)
/* 2ECEC 8003E4EC 1800B1AF */  sw         $s1, 0x18($sp)
/* 2ECF0 8003E4F0 2000A2AF */  sw         $v0, 0x20($sp)
/* 2ECF4 8003E4F4 4BF3000C */  jal        CheckCollisionWall
/* 2ECF8 8003E4F8 2400A3AF */   sw        $v1, 0x24($sp)
/* 2ECFC 8003E4FC 21A04000 */  addu       $s4, $v0, $zero
/* 2ED00 8003E500 2128F302 */  addu       $a1, $s7, $s3
/* 2ED04 8003E504 2800A38F */  lw         $v1, 0x28($sp)
/* 2ED08 8003E508 4800A48F */  lw         $a0, 0x48($sp)
/* 2ED0C 8003E50C 21107300 */  addu       $v0, $v1, $s3
/* 2ED10 8003E510 1000A2AF */  sw         $v0, 0x10($sp)
/* 2ED14 8003E514 2C00A28F */  lw         $v0, 0x2C($sp)
/* 2ED18 8003E518 3400A38F */  lw         $v1, 0x34($sp)
/* 2ED1C 8003E51C 2130C003 */  addu       $a2, $fp, $zero
/* 2ED20 8003E520 1400A2AF */  sw         $v0, 0x14($sp)
/* 2ED24 8003E524 3800A28F */  lw         $v0, 0x38($sp)
/* 2ED28 8003E528 21384002 */  addu       $a3, $s2, $zero
/* 2ED2C 8003E52C 1800B1AF */  sw         $s1, 0x18($sp)
/* 2ED30 8003E530 1C00B0AF */  sw         $s0, 0x1C($sp)
/* 2ED34 8003E534 2000A3AF */  sw         $v1, 0x20($sp)
/* 2ED38 8003E538 4BF3000C */  jal        CheckCollisionWall
/* 2ED3C 8003E53C 2400A2AF */   sw        $v0, 0x24($sp)
/* 2ED40 8003E540 21804000 */  addu       $s0, $v0, $zero
/* 2ED44 8003E544 4000A38F */  lw         $v1, 0x40($sp)
/* 2ED48 8003E548 00000000 */  nop
/* 2ED4C 8003E54C 15006010 */  beqz       $v1, .L8003E5A4
/* 2ED50 8003E550 21100000 */   addu      $v0, $zero, $zero
/* 2ED54 8003E554 2128E002 */  addu       $a1, $s7, $zero
/* 2ED58 8003E558 4800A48F */  lw         $a0, 0x48($sp)
/* 2ED5C 8003E55C 2800A28F */  lw         $v0, 0x28($sp)
/* 2ED60 8003E560 2C00A38F */  lw         $v1, 0x2C($sp)
/* 2ED64 8003E564 2130C003 */  addu       $a2, $fp, $zero
/* 2ED68 8003E568 1400A3AF */  sw         $v1, 0x14($sp)
/* 2ED6C 8003E56C 3000A38F */  lw         $v1, 0x30($sp)
/* 2ED70 8003E570 0100A726 */  addiu      $a3, $s5, 0x1
/* 2ED74 8003E574 1000A2AF */  sw         $v0, 0x10($sp)
/* 2ED78 8003E578 01006224 */  addiu      $v0, $v1, 0x1
/* 2ED7C 8003E57C 23105300 */  subu       $v0, $v0, $s3
/* 2ED80 8003E580 1800A2AF */  sw         $v0, 0x18($sp)
/* 2ED84 8003E584 3400A28F */  lw         $v0, 0x34($sp)
/* 2ED88 8003E588 05000324 */  addiu      $v1, $zero, 0x5
/* 2ED8C 8003E58C 1C00A3AF */  sw         $v1, 0x1C($sp)
/* 2ED90 8003E590 3800A38F */  lw         $v1, 0x38($sp)
/* 2ED94 8003E594 2338F300 */  subu       $a3, $a3, $s3
/* 2ED98 8003E598 2000A2AF */  sw         $v0, 0x20($sp)
/* 2ED9C 8003E59C 4BF3000C */  jal        CheckCollisionWall
/* 2EDA0 8003E5A0 2400A3AF */   sw        $v1, 0x24($sp)
.L8003E5A4:
/* 2EDA4 8003E5A4 05008016 */  bnez       $s4, .L8003E5BC
/* 2EDA8 8003E5A8 00000000 */   nop
/* 2EDAC 8003E5AC 03000016 */  bnez       $s0, .L8003E5BC
/* 2EDB0 8003E5B0 00000000 */   nop
/* 2EDB4 8003E5B4 09004010 */  beqz       $v0, .L8003E5DC
/* 2EDB8 8003E5B8 00000000 */   nop
.L8003E5BC:
/* 2EDBC 8003E5BC 3000A48F */  lw         $a0, 0x30($sp)
/* 2EDC0 8003E5C0 3C00B0AF */  sw         $s0, 0x3C($sp)
/* 2EDC4 8003E5C4 C3110400 */  sra        $v0, $a0, 7
/* 2EDC8 8003E5C8 C0A90200 */  sll        $s5, $v0, 7
/* 2EDCC 8003E5CC 2A101402 */  slt        $v0, $s0, $s4
/* 2EDD0 8003E5D0 02004010 */  beqz       $v0, .L8003E5DC
/* 2EDD4 8003E5D4 21A8B302 */   addu      $s5, $s5, $s3
/* 2EDD8 8003E5D8 3C00B4AF */  sw         $s4, 0x3C($sp)
.L8003E5DC:
/* 2EDDC 8003E5DC 3C00A28F */  lw         $v0, 0x3C($sp)
/* 2EDE0 8003E5E0 7400BF8F */  lw         $ra, 0x74($sp)
/* 2EDE4 8003E5E4 0800DEAE */  sw         $fp, 0x8($s6)
/* 2EDE8 8003E5E8 7000BE8F */  lw         $fp, 0x70($sp)
/* 2EDEC 8003E5EC 0400D7AE */  sw         $s7, 0x4($s6)
/* 2EDF0 8003E5F0 6C00B78F */  lw         $s7, 0x6C($sp)
/* 2EDF4 8003E5F4 2800C0AE */  sw         $zero, 0x28($s6)
/* 2EDF8 8003E5F8 0C00D5AE */  sw         $s5, 0xC($s6)
/* 2EDFC 8003E5FC 6800B68F */  lw         $s6, 0x68($sp)
/* 2EE00 8003E600 6400B58F */  lw         $s5, 0x64($sp)
/* 2EE04 8003E604 6000B48F */  lw         $s4, 0x60($sp)
/* 2EE08 8003E608 5C00B38F */  lw         $s3, 0x5C($sp)
/* 2EE0C 8003E60C 5800B28F */  lw         $s2, 0x58($sp)
/* 2EE10 8003E610 5400B18F */  lw         $s1, 0x54($sp)
/* 2EE14 8003E614 5000B08F */  lw         $s0, 0x50($sp)
/* 2EE18 8003E618 0800E003 */  jr         $ra
/* 2EE1C 8003E61C 7800BD27 */   addiu     $sp, $sp, 0x78
.size UpdateMotionPhysics, . - UpdateMotionPhysics
