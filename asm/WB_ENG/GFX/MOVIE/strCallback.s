.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strCallback
/* 3F888 8004F088 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3F88C 8004F08C 0A80023C */  lui        $v0, %hi(dec)
/* 3F890 8004F090 606B4724 */  addiu      $a3, $v0, %lo(dec)
/* 3F894 8004F094 0C00ED24 */  addiu      $t5, $a3, 0xC
/* 3F898 8004F098 1800EB24 */  addiu      $t3, $a3, 0x18
/* 3F89C 8004F09C 2400BFAF */  sw         $ra, 0x24($sp)
/* 3F8A0 8004F0A0 2000B2AF */  sw         $s2, 0x20($sp)
/* 3F8A4 8004F0A4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3F8A8 8004F0A8 1800B0AF */  sw         $s0, 0x18($sp)
/* 3F8AC 8004F0AC 2F00E288 */  lwl        $v0, 0x2F($a3)
/* 3F8B0 8004F0B0 2C00E298 */  lwr        $v0, 0x2C($a3)
/* 3F8B4 8004F0B4 3300E388 */  lwl        $v1, 0x33($a3)
/* 3F8B8 8004F0B8 3000E398 */  lwr        $v1, 0x30($a3)
/* 3F8BC 8004F0BC 1300A2AB */  swl        $v0, 0x13($sp)
/* 3F8C0 8004F0C0 1000A2BB */  swr        $v0, 0x10($sp)
/* 3F8C4 8004F0C4 1700A3AB */  swl        $v1, 0x17($sp)
/* 3F8C8 8004F0C8 1400A3BB */  swr        $v1, 0x14($sp)
/* 3F8CC 8004F0CC 1400E28C */  lw         $v0, 0x14($a3)
/* 3F8D0 8004F0D0 2C00E494 */  lhu        $a0, 0x2C($a3)
/* 3F8D4 8004F0D4 3000EA94 */  lhu        $t2, 0x30($a3)
/* 3F8D8 8004F0D8 3800E38C */  lw         $v1, 0x38($a3)
/* 3F8DC 8004F0DC 2800E98C */  lw         $t1, 0x28($a3)
/* 3F8E0 8004F0E0 600F918F */  lw         $s1, %gp_rel(MovieIndex)($gp)
/* 3F8E4 8004F0E4 01004C2C */  sltiu      $t4, $v0, 0x1
/* 3F8E8 8004F0E8 21208A00 */  addu       $a0, $a0, $t2
/* 3F8EC 8004F0EC 80100200 */  sll        $v0, $v0, 2
/* 3F8F0 8004F0F0 21104D00 */  addu       $v0, $v0, $t5
/* 3F8F4 8004F0F4 01006824 */  addiu      $t0, $v1, 0x1
/* 3F8F8 8004F0F8 1400ECAC */  sw         $t4, 0x14($a3)
/* 3F8FC 8004F0FC 2C00E4A4 */  sh         $a0, 0x2C($a3)
/* 3F900 8004F100 0000458C */  lw         $a1, 0x0($v0)
/* 3F904 8004F104 00110300 */  sll        $v0, $v1, 4
/* 3F908 8004F108 23104300 */  subu       $v0, $v0, $v1
/* 3F90C 8004F10C 00120200 */  sll        $v0, $v0, 8
/* 3F910 8004F110 00240400 */  sll        $a0, $a0, 16
/* 3F914 8004F114 3800E8AC */  sw         $t0, 0x38($a3)
/* 3F918 8004F118 2180A200 */  addu       $s0, $a1, $v0
/* 3F91C 8004F11C C0100900 */  sll        $v0, $t1, 3
/* 3F920 8004F120 21284B00 */  addu       $a1, $v0, $t3
/* 3F924 8004F124 2110E200 */  addu       $v0, $a3, $v0
/* 3F928 8004F128 0000A384 */  lh         $v1, 0x0($a1)
/* 3F92C 8004F12C 1C004684 */  lh         $a2, 0x1C($v0)
/* 3F930 8004F130 03240400 */  sra        $a0, $a0, 16
/* 3F934 8004F134 21186600 */  addu       $v1, $v1, $a2
/* 3F938 8004F138 2A208300 */  slt        $a0, $a0, $v1
/* 3F93C 8004F13C 18008010 */  beqz       $a0, .L8004F1A0
/* 3F940 8004F140 0A80023C */   lui       $v0, %hi(TheMovie)
/* 3F944 8004F144 21904000 */  addu       $s2, $v0, $zero
/* 3F948 8004F148 F0744224 */  addiu      $v0, $v0, %lo(TheMovie)
/* 3F94C 8004F14C 1C00448C */  lw         $a0, 0x1C($v0)
/* 3F950 8004F150 02000324 */  addiu      $v1, $zero, 0x2
/* 3F954 8004F154 1F008310 */  beq        $a0, $v1, .L8004F1D4
/* 3F958 8004F158 002C0A00 */   sll       $a1, $t2, 16
/* 3F95C 8004F15C 3200E384 */  lh         $v1, 0x32($a3)
/* 3F960 8004F160 032C0500 */  sra        $a1, $a1, 16
/* 3F964 8004F164 1800A300 */  mult       $a1, $v1
/* 3F968 8004F168 80100C00 */  sll        $v0, $t4, 2
/* 3F96C 8004F16C 21104D00 */  addu       $v0, $v0, $t5
/* 3F970 8004F170 00210800 */  sll        $a0, $t0, 4
/* 3F974 8004F174 23208800 */  subu       $a0, $a0, $t0
/* 3F978 8004F178 0000438C */  lw         $v1, 0x0($v0)
/* 3F97C 8004F17C 00220400 */  sll        $a0, $a0, 8
/* 3F980 8004F180 21206400 */  addu       $a0, $v1, $a0
/* 3F984 8004F184 12280000 */  mflo       $a1
/* 3F988 8004F188 C2170500 */  srl        $v0, $a1, 31
/* 3F98C 8004F18C 2128A200 */  addu       $a1, $a1, $v0
/* 3F990 8004F190 44FE010C */  jal        DecDCTout
/* 3F994 8004F194 43280500 */   sra       $a1, $a1, 1
/* 3F998 8004F198 763C0108 */  j          .L8004F1D8
/* 3F99C 8004F19C F0744226 */   addiu     $v0, $s2, %lo(TheMovie)
.L8004F1A0:
/* 3F9A0 8004F1A0 0A80123C */  lui        $s2, %hi(TheMovie)
/* 3F9A4 8004F1A4 01000224 */  addiu      $v0, $zero, 0x1
/* 3F9A8 8004F1A8 3400E2AC */  sw         $v0, 0x34($a3)
/* 3F9AC 8004F1AC 0100222D */  sltiu      $v0, $t1, 0x1
/* 3F9B0 8004F1B0 2800E2AC */  sw         $v0, 0x28($a3)
/* 3F9B4 8004F1B4 C0100200 */  sll        $v0, $v0, 3
/* 3F9B8 8004F1B8 600F838F */  lw         $v1, %gp_rel(MovieIndex)($gp)
/* 3F9BC 8004F1BC 21104B00 */  addu       $v0, $v0, $t3
/* 3F9C0 8004F1C0 3800E0AC */  sw         $zero, 0x38($a3)
/* 3F9C4 8004F1C4 00004494 */  lhu        $a0, 0x0($v0)
/* 3F9C8 8004F1C8 01006338 */  xori       $v1, $v1, 0x1
/* 3F9CC 8004F1CC 600F83AF */  sw         $v1, %gp_rel(MovieIndex)($gp)
/* 3F9D0 8004F1D0 2C00E4A4 */  sh         $a0, 0x2C($a3)
.L8004F1D4:
/* 3F9D4 8004F1D4 F0744226 */  addiu      $v0, $s2, %lo(TheMovie)
.L8004F1D8:
/* 3F9D8 8004F1D8 1C00448C */  lw         $a0, 0x1C($v0)
/* 3F9DC 8004F1DC 01000324 */  addiu      $v1, $zero, 0x1
/* 3F9E0 8004F1E0 07008310 */  beq        $a0, $v1, .L8004F200
/* 3F9E4 8004F1E4 02008228 */   slti      $v0, $a0, 0x2
/* 3F9E8 8004F1E8 1E004010 */  beqz       $v0, .L8004F264
/* 3F9EC 8004F1EC 00000000 */   nop
/* 3F9F0 8004F1F0 14008010 */  beqz       $a0, .L8004F244
/* 3F9F4 8004F1F4 1000A427 */   addiu     $a0, $sp, 0x10
/* 3F9F8 8004F1F8 993C0108 */  j          .L8004F264
/* 3F9FC 8004F1FC 00000000 */   nop
.L8004F200:
/* 3FA00 8004F200 1000A427 */  addiu      $a0, $sp, 0x10
/* 3FA04 8004F204 21280002 */  addu       $a1, $s0, $zero
/* 3FA08 8004F208 0980033C */  lui        $v1, %hi(cdb)
/* 3FA0C 8004F20C 4C59638C */  lw         $v1, %lo(cdb)($v1)
/* 3FA10 8004F210 1000A297 */  lhu        $v0, 0x10($sp)
/* 3FA14 8004F214 580F8797 */  lhu        $a3, %gp_rel(VideoVRAMXPos)($gp)
/* 3FA18 8004F218 680F8897 */  lhu        $t0, %gp_rel(MovieYOffset)($gp)
/* 3FA1C 8004F21C 02006694 */  lhu        $a2, 0x2($v1)
/* 3FA20 8004F220 5C0F8397 */  lhu        $v1, %gp_rel(VideoVRAMYPos)($gp)
/* 3FA24 8004F224 21104700 */  addu       $v0, $v0, $a3
/* 3FA28 8004F228 1000A2A7 */  sh         $v0, 0x10($sp)
/* 3FA2C 8004F22C 21186800 */  addu       $v1, $v1, $t0
/* 3FA30 8004F230 2130C300 */  addu       $a2, $a2, $v1
/* 3FA34 8004F234 E1DB010C */  jal        LoadImage
/* 3FA38 8004F238 1200A6A7 */   sh        $a2, 0x12($sp)
/* 3FA3C 8004F23C 993C0108 */  j          .L8004F264
/* 3FA40 8004F240 00000000 */   nop
.L8004F244:
/* 3FA44 8004F244 21280002 */  addu       $a1, $s0, $zero
/* 3FA48 8004F248 1000A297 */  lhu        $v0, 0x10($sp)
/* 3FA4C 8004F24C 580F8697 */  lhu        $a2, %gp_rel(VideoVRAMXPos)($gp)
/* 3FA50 8004F250 001A1100 */  sll        $v1, $s1, 8
/* 3FA54 8004F254 1200A3A7 */  sh         $v1, 0x12($sp)
/* 3FA58 8004F258 21104600 */  addu       $v0, $v0, $a2
/* 3FA5C 8004F25C E1DB010C */  jal        LoadImage
/* 3FA60 8004F260 1000A2A7 */   sh        $v0, 0x10($sp)
.L8004F264:
/* 3FA64 8004F264 2400BF8F */  lw         $ra, 0x24($sp)
/* 3FA68 8004F268 2000B28F */  lw         $s2, 0x20($sp)
/* 3FA6C 8004F26C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3FA70 8004F270 1800B08F */  lw         $s0, 0x18($sp)
/* 3FA74 8004F274 0800E003 */  jr         $ra
/* 3FA78 8004F278 2800BD27 */   addiu     $sp, $sp, 0x28
.size strCallback, . - strCallback
