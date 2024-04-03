.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitHUDRGBSprites
/* D668 8001CE68 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* D66C 8001CE6C 3800B4AF */  sw         $s4, 0x38($sp)
/* D670 8001CE70 21A00000 */  addu       $s4, $zero, $zero
/* D674 8001CE74 3C00B5AF */  sw         $s5, 0x3C($sp)
/* D678 8001CE78 80001524 */  addiu      $s5, $zero, 0x80
/* D67C 8001CE7C 3400B3AF */  sw         $s3, 0x34($sp)
/* D680 8001CE80 80001324 */  addiu      $s3, $zero, 0x80
/* D684 8001CE84 4800BEAF */  sw         $fp, 0x48($sp)
/* D688 8001CE88 90001E24 */  addiu      $fp, $zero, 0x90
/* D68C 8001CE8C 4400B7AF */  sw         $s7, 0x44($sp)
/* D690 8001CE90 0F001724 */  addiu      $s7, $zero, 0xF
/* D694 8001CE94 4C00BFAF */  sw         $ra, 0x4C($sp)
/* D698 8001CE98 4000B6AF */  sw         $s6, 0x40($sp)
/* D69C 8001CE9C 3000B2AF */  sw         $s2, 0x30($sp)
/* D6A0 8001CEA0 2C00B1AF */  sw         $s1, 0x2C($sp)
/* D6A4 8001CEA4 2800B0AF */  sw         $s0, 0x28($sp)
/* D6A8 8001CEA8 2000A0AF */  sw         $zero, 0x20($sp)
.L8001CEAC:
/* D6AC 8001CEAC 2000B68F */  lw         $s6, 0x20($sp)
/* D6B0 8001CEB0 21900000 */  addu       $s2, $zero, $zero
/* D6B4 8001CEB4 01001124 */  addiu      $s1, $zero, 0x1
.L8001CEB8:
/* D6B8 8001CEB8 0980023C */  lui        $v0, %hi(HudRGBSprite)
/* D6BC 8001CEBC 105F5024 */  addiu      $s0, $v0, %lo(HudRGBSprite)
/* D6C0 8001CEC0 21805002 */  addu       $s0, $s2, $s0
/* D6C4 8001CEC4 2180D002 */  addu       $s0, $s6, $s0
/* D6C8 8001CEC8 FBE6010C */  jal        SetPolyFT4
/* D6CC 8001CECC 21200002 */   addu      $a0, $s0, $zero
/* D6D0 8001CED0 02000424 */  addiu      $a0, $zero, 0x2
/* D6D4 8001CED4 01000524 */  addiu      $a1, $zero, 0x1
/* D6D8 8001CED8 C0030624 */  addiu      $a2, $zero, 0x3C0
/* D6DC 8001CEDC 21380000 */  addu       $a3, $zero, $zero
/* D6E0 8001CEE0 28005226 */  addiu      $s2, $s2, 0x28
/* D6E4 8001CEE4 07000292 */  lbu        $v0, 0x7($s0)
/* D6E8 8001CEE8 FFFF3126 */  addiu      $s1, $s1, -0x1
/* D6EC 8001CEEC 02004234 */  ori        $v0, $v0, 0x2
/* D6F0 8001CEF0 93E6010C */  jal        GetTPage
/* D6F4 8001CEF4 070002A2 */   sb        $v0, 0x7($s0)
/* D6F8 8001CEF8 A0000324 */  addiu      $v1, $zero, 0xA0
/* D6FC 8001CEFC 20000424 */  addiu      $a0, $zero, 0x20
/* D700 8001CF00 160002A6 */  sh         $v0, 0x16($s0)
/* D704 8001CF04 3F000224 */  addiu      $v0, $zero, 0x3F
/* D708 8001CF08 040015A2 */  sb         $s5, 0x4($s0)
/* D70C 8001CF0C 050015A2 */  sb         $s5, 0x5($s0)
/* D710 8001CF10 060015A2 */  sb         $s5, 0x6($s0)
/* D714 8001CF14 080013A6 */  sh         $s3, 0x8($s0)
/* D718 8001CF18 0A0013A6 */  sh         $s3, 0xA($s0)
/* D71C 8001CF1C 100003A6 */  sh         $v1, 0x10($s0)
/* D720 8001CF20 120013A6 */  sh         $s3, 0x12($s0)
/* D724 8001CF24 180013A6 */  sh         $s3, 0x18($s0)
/* D728 8001CF28 1A001EA6 */  sh         $fp, 0x1A($s0)
/* D72C 8001CF2C 200003A6 */  sh         $v1, 0x20($s0)
/* D730 8001CF30 22001EA6 */  sh         $fp, 0x22($s0)
/* D734 8001CF34 0C0004A2 */  sb         $a0, 0xC($s0)
/* D738 8001CF38 0D0000A2 */  sb         $zero, 0xD($s0)
/* D73C 8001CF3C 140002A2 */  sb         $v0, 0x14($s0)
/* D740 8001CF40 150000A2 */  sb         $zero, 0x15($s0)
/* D744 8001CF44 1C0004A2 */  sb         $a0, 0x1C($s0)
/* D748 8001CF48 1D0017A2 */  sb         $s7, 0x1D($s0)
/* D74C 8001CF4C 240002A2 */  sb         $v0, 0x24($s0)
/* D750 8001CF50 D9FF2106 */  bgez       $s1, .L8001CEB8
/* D754 8001CF54 250017A2 */   sb        $s7, 0x25($s0)
/* D758 8001CF58 01009426 */  addiu      $s4, $s4, 0x1
/* D75C 8001CF5C 2000A38F */  lw         $v1, 0x20($sp)
/* D760 8001CF60 0400822A */  slti       $v0, $s4, 0x4
/* D764 8001CF64 50006324 */  addiu      $v1, $v1, 0x50
/* D768 8001CF68 D0FF4014 */  bnez       $v0, .L8001CEAC
/* D76C 8001CF6C 2000A3AF */   sw        $v1, 0x20($sp)
/* D770 8001CF70 21A00000 */  addu       $s4, $zero, $zero
/* D774 8001CF74 4C13908F */  lw         $s0, %gp_rel(HUDActorPickup)($gp)
/* D778 8001CF78 0980013C */  lui        $at, %hi(MoveVec)
/* D77C 8001CF7C E44D20A4 */  sh         $zero, %lo(MoveVec)($at)
/* D780 8001CF80 0980013C */  lui        $at, %hi(MoveVec + 0x2)
/* D784 8001CF84 E64D20A4 */  sh         $zero, %lo(MoveVec + 0x2)($at)
/* D788 8001CF88 0980013C */  lui        $at, %hi(MoveVec + 0x4)
/* D78C 8001CF8C E84D20A4 */  sh         $zero, %lo(MoveVec + 0x4)($at)
/* D790 8001CF90 C46C010C */  jal        ScreenOn
/* D794 8001CF94 540000AE */   sw        $zero, 0x54($s0)
/* D798 8001CF98 EBD6010C */  jal        VSync
/* D79C 8001CF9C 21200000 */   addu      $a0, $zero, $zero
/* D7A0 8001CFA0 1C04958F */  lw         $s5, %gp_rel(FCX)($gp)
/* D7A4 8001CFA4 2004938F */  lw         $s3, %gp_rel(FCY)($gp)
/* D7A8 8001CFA8 2404928F */  lw         $s2, %gp_rel(FCZ)($gp)
/* D7AC 8001CFAC 9769010C */  jal        updateScreen
/* D7B0 8001CFB0 00000000 */   nop
/* D7B4 8001CFB4 21200002 */  addu       $a0, $s0, $zero
/* D7B8 8001CFB8 2128A002 */  addu       $a1, $s5, $zero
/* D7BC 8001CFBC 21306002 */  addu       $a2, $s3, $zero
/* D7C0 8001CFC0 1478000C */  jal        DrawHUDActorPosition
/* D7C4 8001CFC4 21384002 */   addu      $a3, $s2, $zero
/* D7C8 8001CFC8 9769010C */  jal        updateScreen
/* D7CC 8001CFCC 00000000 */   nop
/* D7D0 8001CFD0 0980033C */  lui        $v1, %hi(RGBMovePrim)
/* D7D4 8001CFD4 E05E7124 */  addiu      $s1, $v1, %lo(RGBMovePrim)
/* D7D8 8001CFD8 0B80023C */  lui        $v0, %hi(g_nt + 0x50)
/* D7DC 8001CFDC B8BB5624 */  addiu      $s6, $v0, %lo(g_nt + 0x50)
/* D7E0 8001CFE0 21200002 */  addu       $a0, $s0, $zero
.L8001CFE4:
/* D7E4 8001CFE4 2128A002 */  addu       $a1, $s5, $zero
/* D7E8 8001CFE8 21306002 */  addu       $a2, $s3, $zero
/* D7EC 8001CFEC 1478000C */  jal        DrawHUDActorPosition
/* D7F0 8001CFF0 21384002 */   addu      $a3, $s2, $zero
/* D7F4 8001CFF4 5400028E */  lw         $v0, 0x54($s0)
/* D7F8 8001CFF8 00000000 */  nop
/* D7FC 8001CFFC 88004224 */  addiu      $v0, $v0, 0x88
/* D800 8001D000 9769010C */  jal        updateScreen
/* D804 8001D004 540002AE */   sw        $v0, 0x54($s0)
/* D808 8001D008 8888083C */  lui        $t0, (0x88888889 >> 16)
/* D80C 8001D00C 89880835 */  ori        $t0, $t0, (0x88888889 & 0xFFFF)
/* D810 8001D010 1000A527 */  addiu      $a1, $sp, 0x10
/* D814 8001D014 90000224 */  addiu      $v0, $zero, 0x90
/* D818 8001D018 0980063C */  lui        $a2, %hi(ot_ndx)
/* D81C 8001D01C 4853C68C */  lw         $a2, %lo(ot_ndx)($a2)
/* D820 8001D020 20000324 */  addiu      $v1, $zero, 0x20
/* D824 8001D024 1400A3A7 */  sh         $v1, 0x14($sp)
/* D828 8001D028 1600A3A7 */  sh         $v1, 0x16($sp)
/* D82C 8001D02C 28048397 */  lhu        $v1, %gp_rel(CCY)($gp)
/* D830 8001D030 18008802 */  mult       $s4, $t0
/* D834 8001D034 1000A2A7 */  sh         $v0, 0x10($sp)
/* D838 8001D038 40200600 */  sll        $a0, $a2, 1
/* D83C 8001D03C 21208600 */  addu       $a0, $a0, $a2
/* D840 8001D040 C0200400 */  sll        $a0, $a0, 3
/* D844 8001D044 21209100 */  addu       $a0, $a0, $s1
/* D848 8001D048 0100C638 */  xori       $a2, $a2, 0x1
/* D84C 8001D04C 00110600 */  sll        $v0, $a2, 4
/* D850 8001D050 23104600 */  subu       $v0, $v0, $a2
/* D854 8001D054 00110200 */  sll        $v0, $v0, 4
/* D858 8001D058 21186200 */  addu       $v1, $v1, $v0
/* D85C 8001D05C C3171400 */  sra        $v0, $s4, 31
/* D860 8001D060 1200A3A7 */  sh         $v1, 0x12($sp)
/* D864 8001D064 10400000 */  mfhi       $t0
/* D868 8001D068 21401401 */  addu       $t0, $t0, $s4
/* D86C 8001D06C C3400800 */  sra        $t0, $t0, 3
/* D870 8001D070 23400201 */  subu       $t0, $t0, $v0
/* D874 8001D074 40310800 */  sll        $a2, $t0, 5
/* D878 8001D078 C003C624 */  addiu      $a2, $a2, 0x3C0
/* D87C 8001D07C 00390800 */  sll        $a3, $t0, 4
/* D880 8001D080 2338E800 */  subu       $a3, $a3, $t0
/* D884 8001D084 23388702 */  subu       $a3, $s4, $a3
/* D888 8001D088 2FE7010C */  jal        SetDrawMove
/* D88C 8001D08C 40390700 */   sll       $a3, $a3, 5
/* D890 8001D090 0B80033C */  lui        $v1, %hi(g_nt + 0x50)
/* D894 8001D094 B8BB628C */  lw         $v0, %lo(g_nt + 0x50)($v1)
/* D898 8001D098 00000000 */  nop
/* D89C 8001D09C 16004010 */  beqz       $v0, .L8001D0F8
/* D8A0 8001D0A0 00000000 */   nop
/* D8A4 8001D0A4 0200C58A */  lwl        $a1, 0x2($s6)
/* D8A8 8001D0A8 0980033C */  lui        $v1, %hi(ot_ndx)
/* D8AC 8001D0AC 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* D8B0 8001D0B0 0B80043C */  lui        $a0, %hi(g_nt + 0x50)
/* D8B4 8001D0B4 40100300 */  sll        $v0, $v1, 1
/* D8B8 8001D0B8 21104300 */  addu       $v0, $v0, $v1
/* D8BC 8001D0BC C0100200 */  sll        $v0, $v0, 3
/* D8C0 8001D0C0 B8BB838C */  lw         $v1, %lo(g_nt + 0x50)($a0)
/* D8C4 8001D0C4 21105100 */  addu       $v0, $v0, $s1
/* D8C8 8001D0C8 001A0300 */  sll        $v1, $v1, 8
/* D8CC 8001D0CC 020043A8 */  swl        $v1, 0x2($v0)
/* D8D0 8001D0D0 0980043C */  lui        $a0, %hi(ot_ndx)
/* D8D4 8001D0D4 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* D8D8 8001D0D8 00000000 */  nop
/* D8DC 8001D0DC 40100400 */  sll        $v0, $a0, 1
/* D8E0 8001D0E0 21104400 */  addu       $v0, $v0, $a0
/* D8E4 8001D0E4 C0100200 */  sll        $v0, $v0, 3
/* D8E8 8001D0E8 21105100 */  addu       $v0, $v0, $s1
/* D8EC 8001D0EC 020045A8 */  swl        $a1, 0x2($v0)
/* D8F0 8001D0F0 46740008 */  j          .L8001D118
/* D8F4 8001D0F4 00000000 */   nop
.L8001D0F8:
/* D8F8 8001D0F8 0980033C */  lui        $v1, %hi(ot_ndx)
/* D8FC 8001D0FC 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* D900 8001D100 00000000 */  nop
/* D904 8001D104 40100300 */  sll        $v0, $v1, 1
/* D908 8001D108 21104300 */  addu       $v0, $v0, $v1
/* D90C 8001D10C C0100200 */  sll        $v0, $v0, 3
/* D910 8001D110 21105100 */  addu       $v0, $v0, $s1
/* D914 8001D114 0400C2AE */  sw         $v0, 0x4($s6)
.L8001D118:
/* D918 8001D118 0980023C */  lui        $v0, %hi(ot_ndx)
/* D91C 8001D11C 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* D920 8001D120 01009426 */  addiu      $s4, $s4, 0x1
/* D924 8001D124 40180200 */  sll        $v1, $v0, 1
/* D928 8001D128 21186200 */  addu       $v1, $v1, $v0
/* D92C 8001D12C C0180300 */  sll        $v1, $v1, 3
/* D930 8001D130 21187100 */  addu       $v1, $v1, $s1
/* D934 8001D134 0B80023C */  lui        $v0, %hi(g_nt + 0x50)
/* D938 8001D138 9769010C */  jal        updateScreen
/* D93C 8001D13C B8BB43AC */   sw        $v1, %lo(g_nt + 0x50)($v0)
/* D940 8001D140 1E00832A */  slti       $v1, $s4, 0x1E
/* D944 8001D144 A7FF6014 */  bnez       $v1, .L8001CFE4
/* D948 8001D148 21200002 */   addu      $a0, $s0, $zero
/* D94C 8001D14C 1C04958F */  lw         $s5, %gp_rel(FCX)($gp)
/* D950 8001D150 2004938F */  lw         $s3, %gp_rel(FCY)($gp)
/* D954 8001D154 2404928F */  lw         $s2, %gp_rel(FCZ)($gp)
/* D958 8001D158 4813908F */  lw         $s0, %gp_rel(HUDActorHealth)($gp)
/* D95C 8001D15C 21A00000 */  addu       $s4, $zero, $zero
/* D960 8001D160 9769010C */  jal        updateScreen
/* D964 8001D164 540000AE */   sw        $zero, 0x54($s0)
/* D968 8001D168 21200002 */  addu       $a0, $s0, $zero
/* D96C 8001D16C 2128A002 */  addu       $a1, $s5, $zero
/* D970 8001D170 21306002 */  addu       $a2, $s3, $zero
/* D974 8001D174 1478000C */  jal        DrawHUDActorPosition
/* D978 8001D178 21384002 */   addu      $a3, $s2, $zero
/* D97C 8001D17C 9769010C */  jal        updateScreen
/* D980 8001D180 00000000 */   nop
/* D984 8001D184 0980033C */  lui        $v1, %hi(RGBMovePrim)
/* D988 8001D188 E05E7124 */  addiu      $s1, $v1, %lo(RGBMovePrim)
/* D98C 8001D18C 0B80023C */  lui        $v0, %hi(g_nt + 0x50)
/* D990 8001D190 B8BB5624 */  addiu      $s6, $v0, %lo(g_nt + 0x50)
/* D994 8001D194 21200002 */  addu       $a0, $s0, $zero
.L8001D198:
/* D998 8001D198 2128A002 */  addu       $a1, $s5, $zero
/* D99C 8001D19C 21306002 */  addu       $a2, $s3, $zero
/* D9A0 8001D1A0 1478000C */  jal        DrawHUDActorPosition
/* D9A4 8001D1A4 21384002 */   addu      $a3, $s2, $zero
/* D9A8 8001D1A8 5400028E */  lw         $v0, 0x54($s0)
/* D9AC 8001D1AC 00000000 */  nop
/* D9B0 8001D1B0 88004224 */  addiu      $v0, $v0, 0x88
/* D9B4 8001D1B4 9769010C */  jal        updateScreen
/* D9B8 8001D1B8 540002AE */   sw        $v0, 0x54($s0)
/* D9BC 8001D1BC 8888083C */  lui        $t0, (0x88888889 >> 16)
/* D9C0 8001D1C0 89880835 */  ori        $t0, $t0, (0x88888889 & 0xFFFF)
/* D9C4 8001D1C4 1000A527 */  addiu      $a1, $sp, 0x10
/* D9C8 8001D1C8 90000224 */  addiu      $v0, $zero, 0x90
/* D9CC 8001D1CC 0980063C */  lui        $a2, %hi(ot_ndx)
/* D9D0 8001D1D0 4853C68C */  lw         $a2, %lo(ot_ndx)($a2)
/* D9D4 8001D1D4 20000324 */  addiu      $v1, $zero, 0x20
/* D9D8 8001D1D8 1400A3A7 */  sh         $v1, 0x14($sp)
/* D9DC 8001D1DC 1600A3A7 */  sh         $v1, 0x16($sp)
/* D9E0 8001D1E0 28048397 */  lhu        $v1, %gp_rel(CCY)($gp)
/* D9E4 8001D1E4 18008802 */  mult       $s4, $t0
/* D9E8 8001D1E8 1000A2A7 */  sh         $v0, 0x10($sp)
/* D9EC 8001D1EC 40200600 */  sll        $a0, $a2, 1
/* D9F0 8001D1F0 21208600 */  addu       $a0, $a0, $a2
/* D9F4 8001D1F4 C0200400 */  sll        $a0, $a0, 3
/* D9F8 8001D1F8 21209100 */  addu       $a0, $a0, $s1
/* D9FC 8001D1FC 0100C638 */  xori       $a2, $a2, 0x1
/* DA00 8001D200 00110600 */  sll        $v0, $a2, 4
/* DA04 8001D204 23104600 */  subu       $v0, $v0, $a2
/* DA08 8001D208 00110200 */  sll        $v0, $v0, 4
/* DA0C 8001D20C 21186200 */  addu       $v1, $v1, $v0
/* DA10 8001D210 C3171400 */  sra        $v0, $s4, 31
/* DA14 8001D214 1200A3A7 */  sh         $v1, 0x12($sp)
/* DA18 8001D218 10400000 */  mfhi       $t0
/* DA1C 8001D21C 21401401 */  addu       $t0, $t0, $s4
/* DA20 8001D220 C3400800 */  sra        $t0, $t0, 3
/* DA24 8001D224 23400201 */  subu       $t0, $t0, $v0
/* DA28 8001D228 40310800 */  sll        $a2, $t0, 5
/* DA2C 8001D22C 8003C624 */  addiu      $a2, $a2, 0x380
/* DA30 8001D230 00390800 */  sll        $a3, $t0, 4
/* DA34 8001D234 2338E800 */  subu       $a3, $a3, $t0
/* DA38 8001D238 23388702 */  subu       $a3, $s4, $a3
/* DA3C 8001D23C 2FE7010C */  jal        SetDrawMove
/* DA40 8001D240 40390700 */   sll       $a3, $a3, 5
/* DA44 8001D244 0B80033C */  lui        $v1, %hi(g_nt + 0x50)
/* DA48 8001D248 B8BB628C */  lw         $v0, %lo(g_nt + 0x50)($v1)
/* DA4C 8001D24C 00000000 */  nop
/* DA50 8001D250 16004010 */  beqz       $v0, .L8001D2AC
/* DA54 8001D254 00000000 */   nop
/* DA58 8001D258 0200C58A */  lwl        $a1, 0x2($s6)
/* DA5C 8001D25C 0980033C */  lui        $v1, %hi(ot_ndx)
/* DA60 8001D260 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* DA64 8001D264 0B80043C */  lui        $a0, %hi(g_nt + 0x50)
/* DA68 8001D268 40100300 */  sll        $v0, $v1, 1
/* DA6C 8001D26C 21104300 */  addu       $v0, $v0, $v1
/* DA70 8001D270 C0100200 */  sll        $v0, $v0, 3
/* DA74 8001D274 B8BB838C */  lw         $v1, %lo(g_nt + 0x50)($a0)
/* DA78 8001D278 21105100 */  addu       $v0, $v0, $s1
/* DA7C 8001D27C 001A0300 */  sll        $v1, $v1, 8
/* DA80 8001D280 020043A8 */  swl        $v1, 0x2($v0)
/* DA84 8001D284 0980043C */  lui        $a0, %hi(ot_ndx)
/* DA88 8001D288 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* DA8C 8001D28C 00000000 */  nop
/* DA90 8001D290 40100400 */  sll        $v0, $a0, 1
/* DA94 8001D294 21104400 */  addu       $v0, $v0, $a0
/* DA98 8001D298 C0100200 */  sll        $v0, $v0, 3
/* DA9C 8001D29C 21105100 */  addu       $v0, $v0, $s1
/* DAA0 8001D2A0 020045A8 */  swl        $a1, 0x2($v0)
/* DAA4 8001D2A4 B3740008 */  j          .L8001D2CC
/* DAA8 8001D2A8 00000000 */   nop
.L8001D2AC:
/* DAAC 8001D2AC 0980033C */  lui        $v1, %hi(ot_ndx)
/* DAB0 8001D2B0 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* DAB4 8001D2B4 00000000 */  nop
/* DAB8 8001D2B8 40100300 */  sll        $v0, $v1, 1
/* DABC 8001D2BC 21104300 */  addu       $v0, $v0, $v1
/* DAC0 8001D2C0 C0100200 */  sll        $v0, $v0, 3
/* DAC4 8001D2C4 21105100 */  addu       $v0, $v0, $s1
/* DAC8 8001D2C8 0400C2AE */  sw         $v0, 0x4($s6)
.L8001D2CC:
/* DACC 8001D2CC 0980023C */  lui        $v0, %hi(ot_ndx)
/* DAD0 8001D2D0 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* DAD4 8001D2D4 01009426 */  addiu      $s4, $s4, 0x1
/* DAD8 8001D2D8 40180200 */  sll        $v1, $v0, 1
/* DADC 8001D2DC 21186200 */  addu       $v1, $v1, $v0
/* DAE0 8001D2E0 C0180300 */  sll        $v1, $v1, 3
/* DAE4 8001D2E4 21187100 */  addu       $v1, $v1, $s1
/* DAE8 8001D2E8 0B80023C */  lui        $v0, %hi(g_nt + 0x50)
/* DAEC 8001D2EC 9769010C */  jal        updateScreen
/* DAF0 8001D2F0 B8BB43AC */   sw        $v1, %lo(g_nt + 0x50)($v0)
/* DAF4 8001D2F4 1E00832A */  slti       $v1, $s4, 0x1E
/* DAF8 8001D2F8 A7FF6014 */  bnez       $v1, .L8001D198
/* DAFC 8001D2FC 21200002 */   addu      $a0, $s0, $zero
/* DB00 8001D300 4C00BF8F */  lw         $ra, 0x4C($sp)
/* DB04 8001D304 4800BE8F */  lw         $fp, 0x48($sp)
/* DB08 8001D308 4400B78F */  lw         $s7, 0x44($sp)
/* DB0C 8001D30C 4000B68F */  lw         $s6, 0x40($sp)
/* DB10 8001D310 3C00B58F */  lw         $s5, 0x3C($sp)
/* DB14 8001D314 3800B48F */  lw         $s4, 0x38($sp)
/* DB18 8001D318 3400B38F */  lw         $s3, 0x34($sp)
/* DB1C 8001D31C 3000B28F */  lw         $s2, 0x30($sp)
/* DB20 8001D320 2C00B18F */  lw         $s1, 0x2C($sp)
/* DB24 8001D324 2800B08F */  lw         $s0, 0x28($sp)
/* DB28 8001D328 0800E003 */  jr         $ra
/* DB2C 8001D32C 5000BD27 */   addiu     $sp, $sp, 0x50
.size InitHUDRGBSprites, . - InitHUDRGBSprites
