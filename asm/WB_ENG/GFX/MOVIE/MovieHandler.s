.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MovieHandler
/* 3F5F0 8004EDF0 240F828F */  lw         $v0, %gp_rel(MovieOnFlag)($gp)
/* 3F5F4 8004EDF4 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 3F5F8 8004EDF8 8400BFAF */  sw         $ra, 0x84($sp)
/* 3F5FC 8004EDFC 8000B2AF */  sw         $s2, 0x80($sp)
/* 3F600 8004EE00 7C00B1AF */  sw         $s1, 0x7C($sp)
/* 3F604 8004EE04 99004010 */  beqz       $v0, .L8004F06C
/* 3F608 8004EE08 7800B0AF */   sw        $s0, 0x78($sp)
/* 3F60C 8004EE0C A015828F */  lw         $v0, %gp_rel(this_movie)($gp)
/* 3F610 8004EE10 00000000 */  nop
/* 3F614 8004EE14 0800448C */  lw         $a0, 0x8($v0)
/* 3F618 8004EE18 9815838F */  lw         $v1, %gp_rel(CurrentMovieFrame)($gp)
/* 3F61C 8004EE1C D3FF8224 */  addiu      $v0, $a0, -0x2D
/* 3F620 8004EE20 2A106200 */  slt        $v0, $v1, $v0
/* 3F624 8004EE24 17004014 */  bnez       $v0, .L8004EE84
/* 3F628 8004EE28 23208300 */   subu      $a0, $a0, $v1
/* 3F62C 8004EE2C 0F008228 */  slti       $v0, $a0, 0xF
/* 3F630 8004EE30 02004010 */  beqz       $v0, .L8004EE3C
/* 3F634 8004EE34 F1FF8424 */   addiu     $a0, $a0, -0xF
/* 3F638 8004EE38 21200000 */  addu       $a0, $zero, $zero
.L8004EE3C:
/* 3F63C 8004EE3C 8888023C */  lui        $v0, (0x88888889 >> 16)
/* 3F640 8004EE40 89884234 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 3F644 8004EE44 801B0400 */  sll        $v1, $a0, 14
/* 3F648 8004EE48 23186400 */  subu       $v1, $v1, $a0
/* 3F64C 8004EE4C 18006200 */  mult       $v1, $v0
/* 3F650 8004EE50 5000A427 */  addiu      $a0, $sp, 0x50
/* 3F654 8004EE54 03000524 */  addiu      $a1, $zero, 0x3
/* 3F658 8004EE58 5000A5AF */  sw         $a1, 0x50($sp)
/* 3F65C 8004EE5C 10100000 */  mfhi       $v0
/* 3F660 8004EE60 21104300 */  addu       $v0, $v0, $v1
/* 3F664 8004EE64 03110200 */  sra        $v0, $v0, 4
/* 3F668 8004EE68 C31F0300 */  sra        $v1, $v1, 31
/* 3F66C 8004EE6C 23104300 */  subu       $v0, $v0, $v1
/* 3F670 8004EE70 00140200 */  sll        $v0, $v0, 16
/* 3F674 8004EE74 03140200 */  sra        $v0, $v0, 16
/* 3F678 8004EE78 5400A2A7 */  sh         $v0, 0x54($sp)
/* 3F67C 8004EE7C 2708020C */  jal        SpuSetCommonAttr
/* 3F680 8004EE80 5600A2A7 */   sh        $v0, 0x56($sp)
.L8004EE84:
/* 3F684 8004EE84 640F828F */  lw         $v0, %gp_rel(MovieNoSkip)($gp)
/* 3F688 8004EE88 9815858F */  lw         $a1, %gp_rel(CurrentMovieFrame)($gp)
/* 3F68C 8004EE8C 20004014 */  bnez       $v0, .L8004EF10
/* 3F690 8004EE90 00000000 */   nop
/* 3F694 8004EE94 0980023C */  lui        $v0, %hi(Trg0)
/* 3F698 8004EE98 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 3F69C 8004EE9C 00000000 */  nop
/* 3F6A0 8004EEA0 00104230 */  andi       $v0, $v0, 0x1000
/* 3F6A4 8004EEA4 13004014 */  bnez       $v0, .L8004EEF4
/* 3F6A8 8004EEA8 00000000 */   nop
/* 3F6AC 8004EEAC 0980023C */  lui        $v0, %hi(Trg1)
/* 3F6B0 8004EEB0 32594294 */  lhu        $v0, %lo(Trg1)($v0)
/* 3F6B4 8004EEB4 00000000 */  nop
/* 3F6B8 8004EEB8 00104230 */  andi       $v0, $v0, 0x1000
/* 3F6BC 8004EEBC 0D004014 */  bnez       $v0, .L8004EEF4
/* 3F6C0 8004EEC0 00000000 */   nop
/* 3F6C4 8004EEC4 0980023C */  lui        $v0, %hi(Pad0)
/* 3F6C8 8004EEC8 2C594294 */  lhu        $v0, %lo(Pad0)($v0)
/* 3F6CC 8004EECC 00000000 */  nop
/* 3F6D0 8004EED0 08004230 */  andi       $v0, $v0, 0x8
/* 3F6D4 8004EED4 07004014 */  bnez       $v0, .L8004EEF4
/* 3F6D8 8004EED8 00000000 */   nop
/* 3F6DC 8004EEDC 0980023C */  lui        $v0, %hi(Pad1)
/* 3F6E0 8004EEE0 2E594294 */  lhu        $v0, %lo(Pad1)($v0)
/* 3F6E4 8004EEE4 00000000 */  nop
/* 3F6E8 8004EEE8 08004230 */  andi       $v0, $v0, 0x8
/* 3F6EC 8004EEEC 08004010 */  beqz       $v0, .L8004EF10
/* 3F6F0 8004EEF0 00000000 */   nop
.L8004EEF4:
/* 3F6F4 8004EEF4 A015828F */  lw         $v0, %gp_rel(this_movie)($gp)
/* 3F6F8 8004EEF8 9815848F */  lw         $a0, %gp_rel(CurrentMovieFrame)($gp)
/* 3F6FC 8004EEFC 0C00438C */  lw         $v1, 0xC($v0)
/* 3F700 8004EF00 00000000 */  nop
/* 3F704 8004EF04 2A186400 */  slt        $v1, $v1, $a0
/* 3F708 8004EF08 2D006014 */  bnez       $v1, .L8004EFC0
/* 3F70C 8004EF0C 21288000 */   addu      $a1, $a0, $zero
.L8004EF10:
/* 3F710 8004EF10 A015828F */  lw         $v0, %gp_rel(this_movie)($gp)
/* 3F714 8004EF14 00000000 */  nop
/* 3F718 8004EF18 0800448C */  lw         $a0, 0x8($v0)
/* 3F71C 8004EF1C 0100A324 */  addiu      $v1, $a1, 0x1
/* 3F720 8004EF20 981583AF */  sw         $v1, %gp_rel(CurrentMovieFrame)($gp)
/* 3F724 8004EF24 2A186400 */  slt        $v1, $v1, $a0
/* 3F728 8004EF28 25006010 */  beqz       $v1, .L8004EFC0
/* 3F72C 8004EF2C 00000000 */   nop
/* 3F730 8004EF30 380F828F */  lw         $v0, %gp_rel(AfterCount)($gp)
/* 3F734 8004EF34 00000000 */  nop
/* 3F738 8004EF38 21004014 */  bnez       $v0, .L8004EFC0
/* 3F73C 8004EF3C 0A80023C */   lui       $v0, %hi(TheMovie)
/* 3F740 8004EF40 F0745224 */  addiu      $s2, $v0, %lo(TheMovie)
/* 3F744 8004EF44 1C00438E */  lw         $v1, 0x1C($s2)
/* 3F748 8004EF48 02000224 */  addiu      $v0, $zero, 0x2
/* 3F74C 8004EF4C 17006210 */  beq        $v1, $v0, .L8004EFAC
/* 3F750 8004EF50 0A80113C */   lui       $s1, %hi(dec)
/* 3F754 8004EF54 606B3026 */  addiu      $s0, $s1, %lo(dec)
/* 3F758 8004EF58 0800028E */  lw         $v0, 0x8($s0)
/* 3F75C 8004EF5C 00000000 */  nop
/* 3F760 8004EF60 80100200 */  sll        $v0, $v0, 2
/* 3F764 8004EF64 21105000 */  addu       $v0, $v0, $s0
/* 3F768 8004EF68 0000448C */  lw         $a0, 0x0($v0)
/* 3F76C 8004EF6C 25FE010C */  jal        DecDCTin
/* 3F770 8004EF70 02000524 */   addiu     $a1, $zero, 0x2
/* 3F774 8004EF74 30000586 */  lh         $a1, 0x30($s0)
/* 3F778 8004EF78 32000286 */  lh         $v0, 0x32($s0)
/* 3F77C 8004EF7C 00000000 */  nop
/* 3F780 8004EF80 1800A200 */  mult       $a1, $v0
/* 3F784 8004EF84 1400028E */  lw         $v0, 0x14($s0)
/* 3F788 8004EF88 00000000 */  nop
/* 3F78C 8004EF8C 80100200 */  sll        $v0, $v0, 2
/* 3F790 8004EF90 21800202 */  addu       $s0, $s0, $v0
/* 3F794 8004EF94 0C00048E */  lw         $a0, 0xC($s0)
/* 3F798 8004EF98 12280000 */  mflo       $a1
/* 3F79C 8004EF9C C2170500 */  srl        $v0, $a1, 31
/* 3F7A0 8004EFA0 2128A200 */  addu       $a1, $a1, $v0
/* 3F7A4 8004EFA4 44FE010C */  jal        DecDCTout
/* 3F7A8 8004EFA8 43280500 */   sra       $a1, $a1, 1
.L8004EFAC:
/* 3F7AC 8004EFAC 606B3026 */  addiu      $s0, $s1, %lo(dec)
/* 3F7B0 8004EFB0 AD3D010C */  jal        strNextVlc
/* 3F7B4 8004EFB4 21200002 */   addu      $a0, $s0, $zero
/* 3F7B8 8004EFB8 0A004014 */  bnez       $v0, .L8004EFE4
/* 3F7BC 8004EFBC 00000000 */   nop
.L8004EFC0:
/* 3F7C0 8004EFC0 240F828F */  lw         $v0, %gp_rel(MovieOnFlag)($gp)
/* 3F7C4 8004EFC4 00000000 */  nop
/* 3F7C8 8004EFC8 03004010 */  beqz       $v0, .L8004EFD8
/* 3F7CC 8004EFCC 00000000 */   nop
/* 3F7D0 8004EFD0 533E010C */  jal        prepareExit
/* 3F7D4 8004EFD4 00000000 */   nop
.L8004EFD8:
/* 3F7D8 8004EFD8 240F80AF */  sw         $zero, %gp_rel(MovieOnFlag)($gp)
/* 3F7DC 8004EFDC 1C3C0108 */  j          .L8004F070
/* 3F7E0 8004EFE0 00000000 */   nop
.L8004EFE4:
/* 3F7E4 8004EFE4 21200002 */  addu       $a0, $s0, $zero
/* 3F7E8 8004EFE8 C93D010C */  jal        strSync
/* 3F7EC 8004EFEC 21280000 */   addu      $a1, $zero, $zero
/* 3F7F0 8004EFF0 1C00438E */  lw         $v1, 0x1C($s2)
/* 3F7F4 8004EFF4 01000224 */  addiu      $v0, $zero, 0x1
/* 3F7F8 8004EFF8 1D006214 */  bne        $v1, $v0, .L8004F070
/* 3F7FC 8004EFFC 21100000 */   addu      $v0, $zero, $zero
/* 3F800 8004F000 EBD6010C */  jal        VSync
/* 3F804 8004F004 21200000 */   addu      $a0, $zero, $zero
/* 3F808 8004F008 0B80103C */  lui        $s0, %hi(gDoubleBuffer + 0x5C)
/* 3F80C 8004F00C 0980043C */  lui        $a0, %hi(ot_ndx)
/* 3F810 8004F010 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 3F814 8004F014 D4B91026 */  addiu      $s0, $s0, %lo(gDoubleBuffer + 0x5C)
/* 3F818 8004F018 01008438 */  xori       $a0, $a0, 0x1
/* 3F81C 8004F01C C0210400 */  sll        $a0, $a0, 7
/* 3F820 8004F020 42DD010C */  jal        PutDispEnv
/* 3F824 8004F024 21209000 */   addu      $a0, $a0, $s0
/* 3F828 8004F028 0980043C */  lui        $a0, %hi(ot_ndx)
/* 3F82C 8004F02C 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 3F830 8004F030 A4FF1026 */  addiu      $s0, $s0, -0x5C
/* 3F834 8004F034 01008438 */  xori       $a0, $a0, 0x1
/* 3F838 8004F038 C0210400 */  sll        $a0, $a0, 7
/* 3F83C 8004F03C CFDC010C */  jal        PutDrawEnv
/* 3F840 8004F040 21209000 */   addu      $a0, $a0, $s0
/* 3F844 8004F044 0980033C */  lui        $v1, %hi(ot_ndx)
/* 3F848 8004F048 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* 3F84C 8004F04C 00000000 */  nop
/* 3F850 8004F050 01006338 */  xori       $v1, $v1, 0x1
/* 3F854 8004F054 0980013C */  lui        $at, %hi(ot_ndx)
/* 3F858 8004F058 485323AC */  sw         $v1, %lo(ot_ndx)($at)
/* 3F85C 8004F05C C0190300 */  sll        $v1, $v1, 7
/* 3F860 8004F060 21187000 */  addu       $v1, $v1, $s0
/* 3F864 8004F064 0980013C */  lui        $at, %hi(cdb)
/* 3F868 8004F068 4C5923AC */  sw         $v1, %lo(cdb)($at)
.L8004F06C:
/* 3F86C 8004F06C 21100000 */  addu       $v0, $zero, $zero
.L8004F070:
/* 3F870 8004F070 8400BF8F */  lw         $ra, 0x84($sp)
/* 3F874 8004F074 8000B28F */  lw         $s2, 0x80($sp)
/* 3F878 8004F078 7C00B18F */  lw         $s1, 0x7C($sp)
/* 3F87C 8004F07C 7800B08F */  lw         $s0, 0x78($sp)
/* 3F880 8004F080 0800E003 */  jr         $ra
/* 3F884 8004F084 8800BD27 */   addiu     $sp, $sp, 0x88
.size MovieHandler, . - MovieHandler
