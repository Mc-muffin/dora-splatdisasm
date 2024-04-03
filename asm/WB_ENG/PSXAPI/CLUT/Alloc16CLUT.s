.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Alloc16CLUT
/* 4D838 8005D038 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 4D83C 8005D03C 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 4D840 8005D040 21A88000 */  addu       $s5, $a0, $zero
/* 4D844 8005D044 2000B2AF */  sw         $s2, 0x20($sp)
/* 4D848 8005D048 21900000 */  addu       $s2, $zero, $zero
/* 4D84C 8005D04C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 4D850 8005D050 FFFF1124 */  addiu      $s1, $zero, -0x1
/* 4D854 8005D054 1800B0AF */  sw         $s0, 0x18($sp)
/* 4D858 8005D058 21800000 */  addu       $s0, $zero, $zero
/* 4D85C 8005D05C 00F00A34 */  ori        $t2, $zero, 0xF000
/* 4D860 8005D060 FF7F0924 */  addiu      $t1, $zero, 0x7FFF
/* 4D864 8005D064 0100073C */  lui        $a3, (0x10000 >> 16)
/* 4D868 8005D068 3400B7AF */  sw         $s7, 0x34($sp)
/* 4D86C 8005D06C 0C80173C */  lui        $s7, %hi(gCLUTUseTable)
/* 4D870 8005D070 A8C4E626 */  addiu      $a2, $s7, %lo(gCLUTUseTable)
/* 4D874 8005D074 0100083C */  lui        $t0, (0x10000 >> 16)
/* 4D878 8005D078 3800BFAF */  sw         $ra, 0x38($sp)
/* 4D87C 8005D07C 3000B6AF */  sw         $s6, 0x30($sp)
/* 4D880 8005D080 2800B4AF */  sw         $s4, 0x28($sp)
/* 4D884 8005D084 2400B3AF */  sw         $s3, 0x24($sp)
.L8005D088:
/* 4D888 8005D088 0000C494 */  lhu        $a0, 0x0($a2)
/* 4D88C 8005D08C 00000000 */  nop
/* 4D890 8005D090 13008010 */  beqz       $a0, .L8005D0E0
/* 4D894 8005D094 2118E000 */   addu      $v1, $a3, $zero
/* 4D898 8005D098 11008A10 */  beq        $a0, $t2, .L8005D0E0
/* 4D89C 8005D09C FF7F8230 */   andi      $v0, $a0, 0x7FFF
/* 4D8A0 8005D0A0 0E004910 */  beq        $v0, $t1, .L8005D0DC
/* 4D8A4 8005D0A4 21180000 */   addu      $v1, $zero, $zero
/* 4D8A8 8005D0A8 01000524 */  addiu      $a1, $zero, 0x1
/* 4D8AC 8005D0AC 07106400 */  srav       $v0, $a0, $v1
.L8005D0B0:
/* 4D8B0 8005D0B0 01004230 */  andi       $v0, $v0, 0x1
/* 4D8B4 8005D0B4 05004014 */  bnez       $v0, .L8005D0CC
/* 4D8B8 8005D0B8 00140300 */   sll       $v0, $v1, 16
/* 4D8BC 8005D0BC 038C0200 */  sra        $s1, $v0, 16
/* 4D8C0 8005D0C0 04186500 */  sllv       $v1, $a1, $v1
/* 4D8C4 8005D0C4 55740108 */  j          .L8005D154
/* 4D8C8 8005D0C8 FFFF7230 */   andi      $s2, $v1, 0xFFFF
.L8005D0CC:
/* 4D8CC 8005D0CC 01006324 */  addiu      $v1, $v1, 0x1
/* 4D8D0 8005D0D0 0F006228 */  slti       $v0, $v1, 0xF
/* 4D8D4 8005D0D4 F6FF4014 */  bnez       $v0, .L8005D0B0
/* 4D8D8 8005D0D8 07106400 */   srav      $v0, $a0, $v1
.L8005D0DC:
/* 4D8DC 8005D0DC 2118E000 */  addu       $v1, $a3, $zero
.L8005D0E0:
/* 4D8E0 8005D0E0 2138E800 */  addu       $a3, $a3, $t0
/* 4D8E4 8005D0E4 03840300 */  sra        $s0, $v1, 16
/* 4D8E8 8005D0E8 4000022A */  slti       $v0, $s0, 0x40
/* 4D8EC 8005D0EC E6FF4014 */  bnez       $v0, .L8005D088
/* 4D8F0 8005D0F0 8200C624 */   addiu     $a2, $a2, 0x82
/* 4D8F4 8005D0F4 21800000 */  addu       $s0, $zero, $zero
/* 4D8F8 8005D0F8 0100053C */  lui        $a1, (0x10000 >> 16)
/* 4D8FC 8005D0FC 0C80023C */  lui        $v0, %hi(gCLUTUseTable)
/* 4D900 8005D100 A8C44324 */  addiu      $v1, $v0, %lo(gCLUTUseTable)
/* 4D904 8005D104 46740108 */  j          .L8005D118
/* 4D908 8005D108 0100063C */   lui       $a2, (0x10000 >> 16)
.L8005D10C:
/* 4D90C 8005D10C 2128A600 */  addu       $a1, $a1, $a2
/* 4D910 8005D110 82006324 */  addiu      $v1, $v1, 0x82
/* 4D914 8005D114 03840200 */  sra        $s0, $v0, 16
.L8005D118:
/* 4D918 8005D118 4000022A */  slti       $v0, $s0, 0x40
/* 4D91C 8005D11C 0E004010 */  beqz       $v0, .L8005D158
/* 4D920 8005D120 80211000 */   sll       $a0, $s0, 6
/* 4D924 8005D124 00006494 */  lhu        $a0, 0x0($v1)
/* 4D928 8005D128 00000000 */  nop
/* 4D92C 8005D12C F7FF8014 */  bnez       $a0, .L8005D10C
/* 4D930 8005D130 2110A000 */   addu      $v0, $a1, $zero
/* 4D934 8005D134 01001224 */  addiu      $s2, $zero, 0x1
/* 4D938 8005D138 2120A002 */  addu       $a0, $s5, $zero
/* 4D93C 8005D13C 3479010C */  jal        TagHSVPaletteforSave
/* 4D940 8005D140 21280002 */   addu      $a1, $s0, $zero
/* 4D944 8005D144 5411838F */  lw         $v1, %gp_rel(CLUTCOUNT)($gp)
/* 4D948 8005D148 21880000 */  addu       $s1, $zero, $zero
/* 4D94C 8005D14C 01006324 */  addiu      $v1, $v1, 0x1
/* 4D950 8005D150 541183AF */  sw         $v1, %gp_rel(CLUTCOUNT)($gp)
.L8005D154:
/* 4D954 8005D154 80211000 */  sll        $a0, $s0, 6
.L8005D158:
/* 4D958 8005D158 21B08000 */  addu       $s6, $a0, $zero
/* 4D95C 8005D15C 40181100 */  sll        $v1, $s1, 1
/* 4D960 8005D160 21A06000 */  addu       $s4, $v1, $zero
/* 4D964 8005D164 A8C4E626 */  addiu      $a2, $s7, %lo(gCLUTUseTable)
/* 4D968 8005D168 21209000 */  addu       $a0, $a0, $s0
/* 4D96C 8005D16C 40200400 */  sll        $a0, $a0, 1
/* 4D970 8005D170 21388600 */  addu       $a3, $a0, $a2
/* 4D974 8005D174 00291100 */  sll        $a1, $s1, 4
/* 4D978 8005D178 2198A000 */  addu       $s3, $a1, $zero
/* 4D97C 8005D17C 21187100 */  addu       $v1, $v1, $s1
/* 4D980 8005D180 40180300 */  sll        $v1, $v1, 1
/* 4D984 8005D184 21186400 */  addu       $v1, $v1, $a0
/* 4D988 8005D188 0000E294 */  lhu        $v0, 0x0($a3)
/* 4D98C 8005D18C 0200A524 */  addiu      $a1, $a1, 0x2
/* 4D990 8005D190 25104202 */  or         $v0, $s2, $v0
/* 4D994 8005D194 0000E2A4 */  sh         $v0, 0x0($a3)
/* 4D998 8005D198 2110C300 */  addu       $v0, $a2, $v1
/* 4D99C 8005D19C 21304000 */  addu       $a2, $v0, $zero
/* 4D9A0 8005D1A0 220045A4 */  sh         $a1, 0x22($v0)
/* 4D9A4 8005D1A4 C0030226 */  addiu      $v0, $s0, 0x3C0
/* 4D9A8 8005D1A8 2400C2A4 */  sh         $v0, 0x24($a2)
.L8005D1AC:
/* 4D9AC 8005D1AC 36DB010C */  jal        DrawSync
/* 4D9B0 8005D1B0 01000424 */   addiu     $a0, $zero, 0x1
/* 4D9B4 8005D1B4 FDFF4014 */  bnez       $v0, .L8005D1AC
/* 4D9B8 8005D1B8 00000000 */   nop
/* 4D9BC 8005D1BC 02000106 */  bgez       $s0, .L8005D1C8
/* 4D9C0 8005D1C0 21300002 */   addu      $a2, $s0, $zero
/* 4D9C4 8005D1C4 3F000626 */  addiu      $a2, $s0, 0x3F
.L8005D1C8:
/* 4D9C8 8005D1C8 2120A002 */  addu       $a0, $s5, $zero
/* 4D9CC 8005D1CC 83310600 */  sra        $a2, $a2, 6
/* 4D9D0 8005D1D0 002C0600 */  sll        $a1, $a2, 16
/* 4D9D4 8005D1D4 032A0500 */  sra        $a1, $a1, 8
/* 4D9D8 8005D1D8 0002A524 */  addiu      $a1, $a1, 0x200
/* 4D9DC 8005D1DC 2128B300 */  addu       $a1, $a1, $s3
/* 4D9E0 8005D1E0 80310600 */  sll        $a2, $a2, 6
/* 4D9E4 8005D1E4 23300602 */  subu       $a2, $s0, $a2
/* 4D9E8 8005D1E8 00340600 */  sll        $a2, $a2, 16
/* 4D9EC 8005D1EC 03340600 */  sra        $a2, $a2, 16
/* 4D9F0 8005D1F0 37E6010C */  jal        LoadClut2
/* 4D9F4 8005D1F4 C003C624 */   addiu     $a2, $a2, 0x3C0
/* 4D9F8 8005D1F8 21304000 */  addu       $a2, $v0, $zero
/* 4D9FC 8005D1FC A8C4E426 */  addiu      $a0, $s7, %lo(gCLUTUseTable)
/* 4DA00 8005D200 21289102 */  addu       $a1, $s4, $s1
/* 4DA04 8005D204 2118D002 */  addu       $v1, $s6, $s0
/* 4DA08 8005D208 21186500 */  addu       $v1, $v1, $a1
/* 4DA0C 8005D20C 40180300 */  sll        $v1, $v1, 1
/* 4DA10 8005D210 3800BF8F */  lw         $ra, 0x38($sp)
/* 4DA14 8005D214 3400B78F */  lw         $s7, 0x34($sp)
/* 4DA18 8005D218 3000B68F */  lw         $s6, 0x30($sp)
/* 4DA1C 8005D21C 2C00B58F */  lw         $s5, 0x2C($sp)
/* 4DA20 8005D220 2800B48F */  lw         $s4, 0x28($sp)
/* 4DA24 8005D224 2400B38F */  lw         $s3, 0x24($sp)
/* 4DA28 8005D228 2000B28F */  lw         $s2, 0x20($sp)
/* 4DA2C 8005D22C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4DA30 8005D230 21208300 */  addu       $a0, $a0, $v1
/* 4DA34 8005D234 260086A4 */  sh         $a2, 0x26($a0)
/* 4DA38 8005D238 321790A7 */  sh         $s0, %gp_rel(TheClutRow)($gp)
/* 4DA3C 8005D23C 1800B08F */  lw         $s0, 0x18($sp)
/* 4DA40 8005D240 0800E003 */  jr         $ra
/* 4DA44 8005D244 4000BD27 */   addiu     $sp, $sp, 0x40
.size Alloc16CLUT, . - Alloc16CLUT
