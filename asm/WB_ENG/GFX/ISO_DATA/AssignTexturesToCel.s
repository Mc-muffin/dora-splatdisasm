.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AssignTexturesToCel
/* 3D704 8004CF04 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 3D708 8004CF08 2800B2AF */  sw         $s2, 0x28($sp)
/* 3D70C 8004CF0C 21900000 */  addu       $s2, $zero, $zero
/* 3D710 8004CF10 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 3D714 8004CF14 21988000 */  addu       $s3, $a0, $zero
/* 3D718 8004CF18 3800B6AF */  sw         $s6, 0x38($sp)
/* 3D71C 8004CF1C 21B0A000 */  addu       $s6, $a1, $zero
/* 3D720 8004CF20 0C80023C */  lui        $v0, %hi(VRAMItems)
/* 3D724 8004CF24 38AD4524 */  addiu      $a1, $v0, %lo(VRAMItems)
/* 3D728 8004CF28 80181600 */  sll        $v1, $s6, 2
/* 3D72C 8004CF2C 21187600 */  addu       $v1, $v1, $s6
/* 3D730 8004CF30 80180300 */  sll        $v1, $v1, 2
/* 3D734 8004CF34 4400BFAF */  sw         $ra, 0x44($sp)
/* 3D738 8004CF38 4000BEAF */  sw         $fp, 0x40($sp)
/* 3D73C 8004CF3C 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 3D740 8004CF40 3400B5AF */  sw         $s5, 0x34($sp)
/* 3D744 8004CF44 3000B4AF */  sw         $s4, 0x30($sp)
/* 3D748 8004CF48 2400B1AF */  sw         $s1, 0x24($sp)
/* 3D74C 8004CF4C 2000B0AF */  sw         $s0, 0x20($sp)
/* 3D750 8004CF50 2400708E */  lw         $s0, 0x24($s3)
/* 3D754 8004CF54 21206500 */  addu       $a0, $v1, $a1
/* 3D758 8004CF58 03008288 */  lwl        $v0, 0x3($a0)
/* 3D75C 8004CF5C 00008298 */  lwr        $v0, 0x0($a0)
/* 3D760 8004CF60 07008888 */  lwl        $t0, 0x7($a0)
/* 3D764 8004CF64 04008898 */  lwr        $t0, 0x4($a0)
/* 3D768 8004CF68 1300A2AB */  swl        $v0, 0x13($sp)
/* 3D76C 8004CF6C 1000A2BB */  swr        $v0, 0x10($sp)
/* 3D770 8004CF70 1700A8AB */  swl        $t0, 0x17($sp)
/* 3D774 8004CF74 1400A8BB */  swr        $t0, 0x14($sp)
/* 3D778 8004CF78 5800BE8F */  lw         $fp, 0x58($sp)
/* 3D77C 8004CF7C FFFFF430 */  andi       $s4, $a3, 0xFFFF
/* 3D780 8004CF80 5000A6AF */  sw         $a2, 0x50($sp)
/* 3D784 8004CF84 5400628E */  lw         $v0, 0x54($s3)
/* 3D788 8004CF88 FFFFC627 */  addiu      $a2, $fp, -0x1
/* 3D78C 8004CF8C 42004018 */  blez       $v0, .L8004D098
/* 3D790 8004CF90 1800A6AF */   sw        $a2, 0x18($sp)
/* 3D794 8004CF94 0800A224 */  addiu      $v0, $a1, 0x8
/* 3D798 8004CF98 21B86200 */  addu       $s7, $v1, $v0
/* 3D79C 8004CF9C 21888000 */  addu       $s1, $a0, $zero
/* 3D7A0 8004CFA0 0300C230 */  andi       $v0, $a2, 0x3
/* 3D7A4 8004CFA4 40A90200 */  sll        $s5, $v0, 5
.L8004CFA8:
/* 3D7A8 8004CFA8 3C000296 */  lhu        $v0, 0x3C($s0)
/* 3D7AC 8004CFAC 5000A88F */  lw         $t0, 0x50($sp)
/* 3D7B0 8004CFB0 00000000 */  nop
/* 3D7B4 8004CFB4 32004814 */  bne        $v0, $t0, .L8004D080
/* 3D7B8 8004CFB8 21200002 */   addu      $a0, $s0, $zero
/* 3D7BC 8004CFBC 0000E396 */  lhu        $v1, 0x0($s7)
/* 3D7C0 8004CFC0 0C000292 */  lbu        $v0, 0xC($s0)
/* 3D7C4 8004CFC4 0E0014A6 */  sh         $s4, 0xE($s0)
/* 3D7C8 8004CFC8 1A0003A6 */  sh         $v1, 0x1A($s0)
/* 3D7CC 8004CFCC 0E002392 */  lbu        $v1, 0xE($s1)
/* 3D7D0 8004CFD0 00000000 */  nop
/* 3D7D4 8004CFD4 21104300 */  addu       $v0, $v0, $v1
/* 3D7D8 8004CFD8 0D000392 */  lbu        $v1, 0xD($s0)
/* 3D7DC 8004CFDC 0C0002A2 */  sb         $v0, 0xC($s0)
/* 3D7E0 8004CFE0 0F002292 */  lbu        $v0, 0xF($s1)
/* 3D7E4 8004CFE4 00000000 */  nop
/* 3D7E8 8004CFE8 21186200 */  addu       $v1, $v1, $v0
/* 3D7EC 8004CFEC 18000292 */  lbu        $v0, 0x18($s0)
/* 3D7F0 8004CFF0 0D0003A2 */  sb         $v1, 0xD($s0)
/* 3D7F4 8004CFF4 0E002392 */  lbu        $v1, 0xE($s1)
/* 3D7F8 8004CFF8 00000000 */  nop
/* 3D7FC 8004CFFC 21104300 */  addu       $v0, $v0, $v1
/* 3D800 8004D000 19000392 */  lbu        $v1, 0x19($s0)
/* 3D804 8004D004 180002A2 */  sb         $v0, 0x18($s0)
/* 3D808 8004D008 0F002292 */  lbu        $v0, 0xF($s1)
/* 3D80C 8004D00C 00000000 */  nop
/* 3D810 8004D010 21186200 */  addu       $v1, $v1, $v0
/* 3D814 8004D014 24000292 */  lbu        $v0, 0x24($s0)
/* 3D818 8004D018 190003A2 */  sb         $v1, 0x19($s0)
/* 3D81C 8004D01C 0E002392 */  lbu        $v1, 0xE($s1)
/* 3D820 8004D020 00000000 */  nop
/* 3D824 8004D024 21104300 */  addu       $v0, $v0, $v1
/* 3D828 8004D028 25000392 */  lbu        $v1, 0x25($s0)
/* 3D82C 8004D02C 240002A2 */  sb         $v0, 0x24($s0)
/* 3D830 8004D030 0F002292 */  lbu        $v0, 0xF($s1)
/* 3D834 8004D034 00000000 */  nop
/* 3D838 8004D038 21186200 */  addu       $v1, $v1, $v0
/* 3D83C 8004D03C 30000292 */  lbu        $v0, 0x30($s0)
/* 3D840 8004D040 250003A2 */  sb         $v1, 0x25($s0)
/* 3D844 8004D044 0E002392 */  lbu        $v1, 0xE($s1)
/* 3D848 8004D048 00000000 */  nop
/* 3D84C 8004D04C 21104300 */  addu       $v0, $v0, $v1
/* 3D850 8004D050 31000392 */  lbu        $v1, 0x31($s0)
/* 3D854 8004D054 300002A2 */  sb         $v0, 0x30($s0)
/* 3D858 8004D058 0F002292 */  lbu        $v0, 0xF($s1)
/* 3D85C 8004D05C 2128C003 */  addu       $a1, $fp, $zero
/* 3D860 8004D060 21186200 */  addu       $v1, $v1, $v0
/* 3D864 8004D064 BBE6010C */  jal        SetSemiTrans
/* 3D868 8004D068 310003A2 */   sb        $v1, 0x31($s0)
/* 3D86C 8004D06C 1A000296 */  lhu        $v0, 0x1A($s0)
/* 3D870 8004D070 00000000 */  nop
/* 3D874 8004D074 9FFF4230 */  andi       $v0, $v0, 0xFF9F
/* 3D878 8004D078 25105500 */  or         $v0, $v0, $s5
/* 3D87C 8004D07C 1A0002A6 */  sh         $v0, 0x1A($s0)
.L8004D080:
/* 3D880 8004D080 01005226 */  addiu      $s2, $s2, 0x1
/* 3D884 8004D084 5400628E */  lw         $v0, 0x54($s3)
/* 3D888 8004D088 00000000 */  nop
/* 3D88C 8004D08C 2A104202 */  slt        $v0, $s2, $v0
/* 3D890 8004D090 C5FF4014 */  bnez       $v0, .L8004CFA8
/* 3D894 8004D094 40001026 */   addiu     $s0, $s0, 0x40
.L8004D098:
/* 3D898 8004D098 5000628E */  lw         $v0, 0x50($s3)
/* 3D89C 8004D09C 2000708E */  lw         $s0, 0x20($s3)
/* 3D8A0 8004D0A0 3E004018 */  blez       $v0, .L8004D19C
/* 3D8A4 8004D0A4 21900000 */   addu      $s2, $zero, $zero
/* 3D8A8 8004D0A8 0C80043C */  lui        $a0, %hi(VRAMItems)
/* 3D8AC 8004D0AC 38AD8424 */  addiu      $a0, $a0, %lo(VRAMItems)
/* 3D8B0 8004D0B0 80101600 */  sll        $v0, $s6, 2
/* 3D8B4 8004D0B4 21105600 */  addu       $v0, $v0, $s6
/* 3D8B8 8004D0B8 80100200 */  sll        $v0, $v0, 2
/* 3D8BC 8004D0BC 08008324 */  addiu      $v1, $a0, 0x8
/* 3D8C0 8004D0C0 21B84300 */  addu       $s7, $v0, $v1
/* 3D8C4 8004D0C4 1800A98F */  lw         $t1, 0x18($sp)
/* 3D8C8 8004D0C8 21884400 */  addu       $s1, $v0, $a0
/* 3D8CC 8004D0CC 03002331 */  andi       $v1, $t1, 0x3
/* 3D8D0 8004D0D0 40A90300 */  sll        $s5, $v1, 5
.L8004D0D4:
/* 3D8D4 8004D0D4 2E000296 */  lhu        $v0, 0x2E($s0)
/* 3D8D8 8004D0D8 5000AA8F */  lw         $t2, 0x50($sp)
/* 3D8DC 8004D0DC 00000000 */  nop
/* 3D8E0 8004D0E0 28004A14 */  bne        $v0, $t2, .L8004D184
/* 3D8E4 8004D0E4 21200002 */   addu      $a0, $s0, $zero
/* 3D8E8 8004D0E8 0000E396 */  lhu        $v1, 0x0($s7)
/* 3D8EC 8004D0EC 0C000292 */  lbu        $v0, 0xC($s0)
/* 3D8F0 8004D0F0 0E0014A6 */  sh         $s4, 0xE($s0)
/* 3D8F4 8004D0F4 1A0003A6 */  sh         $v1, 0x1A($s0)
/* 3D8F8 8004D0F8 0E002392 */  lbu        $v1, 0xE($s1)
/* 3D8FC 8004D0FC 00000000 */  nop
/* 3D900 8004D100 21104300 */  addu       $v0, $v0, $v1
/* 3D904 8004D104 0D000392 */  lbu        $v1, 0xD($s0)
/* 3D908 8004D108 0C0002A2 */  sb         $v0, 0xC($s0)
/* 3D90C 8004D10C 0F002292 */  lbu        $v0, 0xF($s1)
/* 3D910 8004D110 00000000 */  nop
/* 3D914 8004D114 21186200 */  addu       $v1, $v1, $v0
/* 3D918 8004D118 18000292 */  lbu        $v0, 0x18($s0)
/* 3D91C 8004D11C 0D0003A2 */  sb         $v1, 0xD($s0)
/* 3D920 8004D120 0E002392 */  lbu        $v1, 0xE($s1)
/* 3D924 8004D124 00000000 */  nop
/* 3D928 8004D128 21104300 */  addu       $v0, $v0, $v1
/* 3D92C 8004D12C 19000392 */  lbu        $v1, 0x19($s0)
/* 3D930 8004D130 180002A2 */  sb         $v0, 0x18($s0)
/* 3D934 8004D134 0F002292 */  lbu        $v0, 0xF($s1)
/* 3D938 8004D138 00000000 */  nop
/* 3D93C 8004D13C 21186200 */  addu       $v1, $v1, $v0
/* 3D940 8004D140 24000292 */  lbu        $v0, 0x24($s0)
/* 3D944 8004D144 190003A2 */  sb         $v1, 0x19($s0)
/* 3D948 8004D148 0E002392 */  lbu        $v1, 0xE($s1)
/* 3D94C 8004D14C 00000000 */  nop
/* 3D950 8004D150 21104300 */  addu       $v0, $v0, $v1
/* 3D954 8004D154 25000392 */  lbu        $v1, 0x25($s0)
/* 3D958 8004D158 240002A2 */  sb         $v0, 0x24($s0)
/* 3D95C 8004D15C 0F002292 */  lbu        $v0, 0xF($s1)
/* 3D960 8004D160 2128C003 */  addu       $a1, $fp, $zero
/* 3D964 8004D164 21186200 */  addu       $v1, $v1, $v0
/* 3D968 8004D168 BBE6010C */  jal        SetSemiTrans
/* 3D96C 8004D16C 250003A2 */   sb        $v1, 0x25($s0)
/* 3D970 8004D170 1A000296 */  lhu        $v0, 0x1A($s0)
/* 3D974 8004D174 00000000 */  nop
/* 3D978 8004D178 9FFF4230 */  andi       $v0, $v0, 0xFF9F
/* 3D97C 8004D17C 25105500 */  or         $v0, $v0, $s5
/* 3D980 8004D180 1A0002A6 */  sh         $v0, 0x1A($s0)
.L8004D184:
/* 3D984 8004D184 01005226 */  addiu      $s2, $s2, 0x1
/* 3D988 8004D188 5000628E */  lw         $v0, 0x50($s3)
/* 3D98C 8004D18C 00000000 */  nop
/* 3D990 8004D190 2A104202 */  slt        $v0, $s2, $v0
/* 3D994 8004D194 CFFF4014 */  bnez       $v0, .L8004D0D4
/* 3D998 8004D198 30001026 */   addiu     $s0, $s0, 0x30
.L8004D19C:
/* 3D99C 8004D19C 4C00628E */  lw         $v0, 0x4C($s3)
/* 3D9A0 8004D1A0 1C00708E */  lw         $s0, 0x1C($s3)
/* 3D9A4 8004D1A4 49004018 */  blez       $v0, .L8004D2CC
/* 3D9A8 8004D1A8 21900000 */   addu      $s2, $zero, $zero
/* 3D9AC 8004D1AC 0C80043C */  lui        $a0, %hi(VRAMItems)
/* 3D9B0 8004D1B0 38AD8424 */  addiu      $a0, $a0, %lo(VRAMItems)
/* 3D9B4 8004D1B4 80101600 */  sll        $v0, $s6, 2
/* 3D9B8 8004D1B8 21105600 */  addu       $v0, $v0, $s6
/* 3D9BC 8004D1BC 80100200 */  sll        $v0, $v0, 2
/* 3D9C0 8004D1C0 08008324 */  addiu      $v1, $a0, 0x8
/* 3D9C4 8004D1C4 21B84300 */  addu       $s7, $v0, $v1
/* 3D9C8 8004D1C8 21884400 */  addu       $s1, $v0, $a0
/* 3D9CC 8004D1CC 1800A28F */  lw         $v0, 0x18($sp)
/* 3D9D0 8004D1D0 00000000 */  nop
/* 3D9D4 8004D1D4 03004330 */  andi       $v1, $v0, 0x3
/* 3D9D8 8004D1D8 40A90300 */  sll        $s5, $v1, 5
.L8004D1DC:
/* 3D9DC 8004D1DC 30000296 */  lhu        $v0, 0x30($s0)
/* 3D9E0 8004D1E0 5000A38F */  lw         $v1, 0x50($sp)
/* 3D9E4 8004D1E4 00000000 */  nop
/* 3D9E8 8004D1E8 32004314 */  bne        $v0, $v1, .L8004D2B4
/* 3D9EC 8004D1EC 21200002 */   addu      $a0, $s0, $zero
/* 3D9F0 8004D1F0 0000E396 */  lhu        $v1, 0x0($s7)
/* 3D9F4 8004D1F4 0C000292 */  lbu        $v0, 0xC($s0)
/* 3D9F8 8004D1F8 0E0014A6 */  sh         $s4, 0xE($s0)
/* 3D9FC 8004D1FC 160003A6 */  sh         $v1, 0x16($s0)
/* 3DA00 8004D200 0E002392 */  lbu        $v1, 0xE($s1)
/* 3DA04 8004D204 00000000 */  nop
/* 3DA08 8004D208 21104300 */  addu       $v0, $v0, $v1
/* 3DA0C 8004D20C 0D000392 */  lbu        $v1, 0xD($s0)
/* 3DA10 8004D210 0C0002A2 */  sb         $v0, 0xC($s0)
/* 3DA14 8004D214 0F002292 */  lbu        $v0, 0xF($s1)
/* 3DA18 8004D218 00000000 */  nop
/* 3DA1C 8004D21C 21186200 */  addu       $v1, $v1, $v0
/* 3DA20 8004D220 14000292 */  lbu        $v0, 0x14($s0)
/* 3DA24 8004D224 0D0003A2 */  sb         $v1, 0xD($s0)
/* 3DA28 8004D228 0E002392 */  lbu        $v1, 0xE($s1)
/* 3DA2C 8004D22C 00000000 */  nop
/* 3DA30 8004D230 21104300 */  addu       $v0, $v0, $v1
/* 3DA34 8004D234 15000392 */  lbu        $v1, 0x15($s0)
/* 3DA38 8004D238 140002A2 */  sb         $v0, 0x14($s0)
/* 3DA3C 8004D23C 0F002292 */  lbu        $v0, 0xF($s1)
/* 3DA40 8004D240 00000000 */  nop
/* 3DA44 8004D244 21186200 */  addu       $v1, $v1, $v0
/* 3DA48 8004D248 1C000292 */  lbu        $v0, 0x1C($s0)
/* 3DA4C 8004D24C 150003A2 */  sb         $v1, 0x15($s0)
/* 3DA50 8004D250 0E002392 */  lbu        $v1, 0xE($s1)
/* 3DA54 8004D254 00000000 */  nop
/* 3DA58 8004D258 21104300 */  addu       $v0, $v0, $v1
/* 3DA5C 8004D25C 1D000392 */  lbu        $v1, 0x1D($s0)
/* 3DA60 8004D260 1C0002A2 */  sb         $v0, 0x1C($s0)
/* 3DA64 8004D264 0F002292 */  lbu        $v0, 0xF($s1)
/* 3DA68 8004D268 00000000 */  nop
/* 3DA6C 8004D26C 21186200 */  addu       $v1, $v1, $v0
/* 3DA70 8004D270 24000292 */  lbu        $v0, 0x24($s0)
/* 3DA74 8004D274 1D0003A2 */  sb         $v1, 0x1D($s0)
/* 3DA78 8004D278 0E002392 */  lbu        $v1, 0xE($s1)
/* 3DA7C 8004D27C 00000000 */  nop
/* 3DA80 8004D280 21104300 */  addu       $v0, $v0, $v1
/* 3DA84 8004D284 25000392 */  lbu        $v1, 0x25($s0)
/* 3DA88 8004D288 240002A2 */  sb         $v0, 0x24($s0)
/* 3DA8C 8004D28C 0F002292 */  lbu        $v0, 0xF($s1)
/* 3DA90 8004D290 2128C003 */  addu       $a1, $fp, $zero
/* 3DA94 8004D294 21186200 */  addu       $v1, $v1, $v0
/* 3DA98 8004D298 BBE6010C */  jal        SetSemiTrans
/* 3DA9C 8004D29C 250003A2 */   sb        $v1, 0x25($s0)
/* 3DAA0 8004D2A0 16000296 */  lhu        $v0, 0x16($s0)
/* 3DAA4 8004D2A4 00000000 */  nop
/* 3DAA8 8004D2A8 9FFF4230 */  andi       $v0, $v0, 0xFF9F
/* 3DAAC 8004D2AC 25105500 */  or         $v0, $v0, $s5
/* 3DAB0 8004D2B0 160002A6 */  sh         $v0, 0x16($s0)
.L8004D2B4:
/* 3DAB4 8004D2B4 01005226 */  addiu      $s2, $s2, 0x1
/* 3DAB8 8004D2B8 4C00628E */  lw         $v0, 0x4C($s3)
/* 3DABC 8004D2BC 00000000 */  nop
/* 3DAC0 8004D2C0 2A104202 */  slt        $v0, $s2, $v0
/* 3DAC4 8004D2C4 C5FF4014 */  bnez       $v0, .L8004D1DC
/* 3DAC8 8004D2C8 34001026 */   addiu     $s0, $s0, 0x34
.L8004D2CC:
/* 3DACC 8004D2CC 4800628E */  lw         $v0, 0x48($s3)
/* 3DAD0 8004D2D0 1800708E */  lw         $s0, 0x18($s3)
/* 3DAD4 8004D2D4 3E004018 */  blez       $v0, .L8004D3D0
/* 3DAD8 8004D2D8 21900000 */   addu      $s2, $zero, $zero
/* 3DADC 8004D2DC 0C80043C */  lui        $a0, %hi(VRAMItems)
/* 3DAE0 8004D2E0 38AD8424 */  addiu      $a0, $a0, %lo(VRAMItems)
/* 3DAE4 8004D2E4 80101600 */  sll        $v0, $s6, 2
/* 3DAE8 8004D2E8 21105600 */  addu       $v0, $v0, $s6
/* 3DAEC 8004D2EC 80100200 */  sll        $v0, $v0, 2
/* 3DAF0 8004D2F0 08008324 */  addiu      $v1, $a0, 0x8
/* 3DAF4 8004D2F4 21B04300 */  addu       $s6, $v0, $v1
/* 3DAF8 8004D2F8 1800A68F */  lw         $a2, 0x18($sp)
/* 3DAFC 8004D2FC 21884400 */  addu       $s1, $v0, $a0
/* 3DB00 8004D300 0300C330 */  andi       $v1, $a2, 0x3
/* 3DB04 8004D304 40A90300 */  sll        $s5, $v1, 5
.L8004D308:
/* 3DB08 8004D308 26000296 */  lhu        $v0, 0x26($s0)
/* 3DB0C 8004D30C 5000A88F */  lw         $t0, 0x50($sp)
/* 3DB10 8004D310 00000000 */  nop
/* 3DB14 8004D314 28004814 */  bne        $v0, $t0, .L8004D3B8
/* 3DB18 8004D318 21200002 */   addu      $a0, $s0, $zero
/* 3DB1C 8004D31C 0000C396 */  lhu        $v1, 0x0($s6)
/* 3DB20 8004D320 0C000292 */  lbu        $v0, 0xC($s0)
/* 3DB24 8004D324 0E0014A6 */  sh         $s4, 0xE($s0)
/* 3DB28 8004D328 160003A6 */  sh         $v1, 0x16($s0)
/* 3DB2C 8004D32C 0E002392 */  lbu        $v1, 0xE($s1)
/* 3DB30 8004D330 00000000 */  nop
/* 3DB34 8004D334 21104300 */  addu       $v0, $v0, $v1
/* 3DB38 8004D338 0D000392 */  lbu        $v1, 0xD($s0)
/* 3DB3C 8004D33C 0C0002A2 */  sb         $v0, 0xC($s0)
/* 3DB40 8004D340 0F002292 */  lbu        $v0, 0xF($s1)
/* 3DB44 8004D344 00000000 */  nop
/* 3DB48 8004D348 21186200 */  addu       $v1, $v1, $v0
/* 3DB4C 8004D34C 14000292 */  lbu        $v0, 0x14($s0)
/* 3DB50 8004D350 0D0003A2 */  sb         $v1, 0xD($s0)
/* 3DB54 8004D354 0E002392 */  lbu        $v1, 0xE($s1)
/* 3DB58 8004D358 00000000 */  nop
/* 3DB5C 8004D35C 21104300 */  addu       $v0, $v0, $v1
/* 3DB60 8004D360 15000392 */  lbu        $v1, 0x15($s0)
/* 3DB64 8004D364 140002A2 */  sb         $v0, 0x14($s0)
/* 3DB68 8004D368 0F002292 */  lbu        $v0, 0xF($s1)
/* 3DB6C 8004D36C 00000000 */  nop
/* 3DB70 8004D370 21186200 */  addu       $v1, $v1, $v0
/* 3DB74 8004D374 1C000292 */  lbu        $v0, 0x1C($s0)
/* 3DB78 8004D378 150003A2 */  sb         $v1, 0x15($s0)
/* 3DB7C 8004D37C 0E002392 */  lbu        $v1, 0xE($s1)
/* 3DB80 8004D380 00000000 */  nop
/* 3DB84 8004D384 21104300 */  addu       $v0, $v0, $v1
/* 3DB88 8004D388 1D000392 */  lbu        $v1, 0x1D($s0)
/* 3DB8C 8004D38C 1C0002A2 */  sb         $v0, 0x1C($s0)
/* 3DB90 8004D390 0F002292 */  lbu        $v0, 0xF($s1)
/* 3DB94 8004D394 2128C003 */  addu       $a1, $fp, $zero
/* 3DB98 8004D398 21186200 */  addu       $v1, $v1, $v0
/* 3DB9C 8004D39C BBE6010C */  jal        SetSemiTrans
/* 3DBA0 8004D3A0 1D0003A2 */   sb        $v1, 0x1D($s0)
/* 3DBA4 8004D3A4 16000296 */  lhu        $v0, 0x16($s0)
/* 3DBA8 8004D3A8 00000000 */  nop
/* 3DBAC 8004D3AC 9FFF4230 */  andi       $v0, $v0, 0xFF9F
/* 3DBB0 8004D3B0 25105500 */  or         $v0, $v0, $s5
/* 3DBB4 8004D3B4 160002A6 */  sh         $v0, 0x16($s0)
.L8004D3B8:
/* 3DBB8 8004D3B8 01005226 */  addiu      $s2, $s2, 0x1
/* 3DBBC 8004D3BC 4800628E */  lw         $v0, 0x48($s3)
/* 3DBC0 8004D3C0 00000000 */  nop
/* 3DBC4 8004D3C4 2A104202 */  slt        $v0, $s2, $v0
/* 3DBC8 8004D3C8 CFFF4014 */  bnez       $v0, .L8004D308
/* 3DBCC 8004D3CC 28001026 */   addiu     $s0, $s0, 0x28
.L8004D3D0:
/* 3DBD0 8004D3D0 4400BF8F */  lw         $ra, 0x44($sp)
/* 3DBD4 8004D3D4 4000BE8F */  lw         $fp, 0x40($sp)
/* 3DBD8 8004D3D8 3C00B78F */  lw         $s7, 0x3C($sp)
/* 3DBDC 8004D3DC 3800B68F */  lw         $s6, 0x38($sp)
/* 3DBE0 8004D3E0 3400B58F */  lw         $s5, 0x34($sp)
/* 3DBE4 8004D3E4 3000B48F */  lw         $s4, 0x30($sp)
/* 3DBE8 8004D3E8 2C00B38F */  lw         $s3, 0x2C($sp)
/* 3DBEC 8004D3EC 2800B28F */  lw         $s2, 0x28($sp)
/* 3DBF0 8004D3F0 2400B18F */  lw         $s1, 0x24($sp)
/* 3DBF4 8004D3F4 2000B08F */  lw         $s0, 0x20($sp)
/* 3DBF8 8004D3F8 0800E003 */  jr         $ra
/* 3DBFC 8004D3FC 4800BD27 */   addiu     $sp, $sp, 0x48
.size AssignTexturesToCel, . - AssignTexturesToCel
