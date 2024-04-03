.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleHayInit
/* 1D9C4 8002D1C4 A0FFBD27 */  addiu      $sp, $sp, -0x60
/* 1D9C8 8002D1C8 5400B7AF */  sw         $s7, 0x54($sp)
/* 1D9CC 8002D1CC 21B88000 */  addu       $s7, $a0, $zero
/* 1D9D0 8002D1D0 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1D9D4 8002D1D4 5C00BFAF */  sw         $ra, 0x5C($sp)
/* 1D9D8 8002D1D8 5800BEAF */  sw         $fp, 0x58($sp)
/* 1D9DC 8002D1DC 5000B6AF */  sw         $s6, 0x50($sp)
/* 1D9E0 8002D1E0 4C00B5AF */  sw         $s5, 0x4C($sp)
/* 1D9E4 8002D1E4 4800B4AF */  sw         $s4, 0x48($sp)
/* 1D9E8 8002D1E8 4400B3AF */  sw         $s3, 0x44($sp)
/* 1D9EC 8002D1EC 4000B2AF */  sw         $s2, 0x40($sp)
/* 1D9F0 8002D1F0 3C00B1AF */  sw         $s1, 0x3C($sp)
/* 1D9F4 8002D1F4 3800B0AF */  sw         $s0, 0x38($sp)
/* 1D9F8 8002D1F8 1000A5AF */  sw         $a1, 0x10($sp)
/* 1D9FC 8002D1FC 1400A6AF */  sw         $a2, 0x14($sp)
/* 1DA00 8002D200 4000F68E */  lw         $s6, 0x40($s7)
/* 1DA04 8002D204 000C0224 */  addiu      $v0, $zero, 0xC00
/* 1DA08 8002D208 1800A7AF */  sw         $a3, 0x18($sp)
/* 1DA0C 8002D20C 3800E2AE */  sw         $v0, 0x38($s7)
/* 1DA10 8002D210 80000224 */  addiu      $v0, $zero, 0x80
/* 1DA14 8002D214 3000E0AE */  sw         $zero, 0x30($s7)
/* 1DA18 8002D218 3400E3AE */  sw         $v1, 0x34($s7)
/* 1DA1C 8002D21C 3C00E3AE */  sw         $v1, 0x3C($s7)
/* 1DA20 8002D220 C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 1DA24 8002D224 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 1DA28 8002D228 BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1DA2C 8002D22C 3A000224 */  addiu      $v0, $zero, 0x3A
/* 1DA30 8002D230 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1DA34 8002D234 1000A38F */  lw         $v1, 0x10($sp)
/* 1DA38 8002D238 00000000 */  nop
/* 1DA3C 8002D23C 2400E3AE */  sw         $v1, 0x24($s7)
/* 1DA40 8002D240 1400A28F */  lw         $v0, 0x14($sp)
/* 1DA44 8002D244 00000000 */  nop
/* 1DA48 8002D248 2800E2AE */  sw         $v0, 0x28($s7)
/* 1DA4C 8002D24C 1800A38F */  lw         $v1, 0x18($sp)
/* 1DA50 8002D250 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1DA54 8002D254 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1DA58 8002D258 0400E28E */  lw         $v0, 0x4($s7)
/* 1DA5C 8002D25C 00000000 */  nop
/* 1DA60 8002D260 04004014 */  bnez       $v0, .L8002D274
/* 1DA64 8002D264 2C00E3AE */   sw        $v1, 0x2C($s7)
/* 1DA68 8002D268 1000A0AF */  sw         $zero, 0x10($sp)
/* 1DA6C 8002D26C 1400A0AF */  sw         $zero, 0x14($sp)
/* 1DA70 8002D270 1800A0AF */  sw         $zero, 0x18($sp)
.L8002D274:
/* 1DA74 8002D274 0800E28E */  lw         $v0, 0x8($s7)
/* 1DA78 8002D278 00000000 */  nop
/* 1DA7C 8002D27C A9004018 */  blez       $v0, .L8002D524
/* 1DA80 8002D280 21880000 */   addu      $s1, $zero, $zero
.L8002D284:
/* 1DA84 8002D284 D140010C */  jal        u32Random
/* 1DA88 8002D288 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1DA8C 8002D28C 21804000 */  addu       $s0, $v0, $zero
/* 1DA90 8002D290 D140010C */  jal        u32Random
/* 1DA94 8002D294 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1DA98 8002D298 21984000 */  addu       $s3, $v0, $zero
/* 1DA9C 8002D29C 21100000 */  addu       $v0, $zero, $zero
/* 1DAA0 8002D2A0 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1DAA4 8002D2A4 20004310 */  beq        $v0, $v1, .L8002D328
/* 1DAA8 8002D2A8 00000000 */   nop
/* 1DAAC 8002D2AC 1000A28F */  lw         $v0, 0x10($sp)
/* 1DAB0 8002D2B0 1400A38F */  lw         $v1, 0x14($sp)
/* 1DAB4 8002D2B4 01003126 */  addiu      $s1, $s1, 0x1
/* 1DAB8 8002D2B8 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1DABC 8002D2BC 00F20200 */  sll        $fp, $v0, 8
/* 1DAC0 8002D2C0 1800A28F */  lw         $v0, 0x18($sp)
/* 1DAC4 8002D2C4 001A0300 */  sll        $v1, $v1, 8
/* 1DAC8 8002D2C8 2000A3AF */  sw         $v1, 0x20($sp)
/* 1DACC 8002D2CC 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1DAD0 8002D2D0 2800A3AF */  sw         $v1, 0x28($sp)
/* 1DAD4 8002D2D4 7400C326 */  addiu      $v1, $s6, 0x74
/* 1DAD8 8002D2D8 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1DADC 8002D2DC 00120200 */  sll        $v0, $v0, 8
/* 1DAE0 8002D2E0 2400A2AF */  sw         $v0, 0x24($sp)
/* 1DAE4 8002D2E4 4400C226 */  addiu      $v0, $s6, 0x44
/* 1DAE8 8002D2E8 05000006 */  bltz       $s0, .L8002D300
/* 1DAEC 8002D2EC 3000A2AF */   sw        $v0, 0x30($sp)
/* 1DAF0 8002D2F0 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1DAF4 8002D2F4 2A107000 */  slt        $v0, $v1, $s0
/* 1DAF8 8002D2F8 1E004010 */  beqz       $v0, .L8002D374
/* 1DAFC 8002D2FC 000C0224 */   addiu     $v0, $zero, 0xC00
.L8002D300:
/* 1DB00 8002D300 D140010C */  jal        u32Random
/* 1DB04 8002D304 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1DB08 8002D308 21804000 */  addu       $s0, $v0, $zero
/* 1DB0C 8002D30C FCFF0006 */  bltz       $s0, .L8002D300
/* 1DB10 8002D310 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1DB14 8002D314 2A107000 */  slt        $v0, $v1, $s0
/* 1DB18 8002D318 F9FF4014 */  bnez       $v0, .L8002D300
/* 1DB1C 8002D31C 000C0224 */   addiu     $v0, $zero, 0xC00
/* 1DB20 8002D320 DDB40008 */  j          .L8002D374
/* 1DB24 8002D324 00000000 */   nop
.L8002D328:
/* 1DB28 8002D328 21800000 */  addu       $s0, $zero, $zero
/* 1DB2C 8002D32C 1000A28F */  lw         $v0, 0x10($sp)
/* 1DB30 8002D330 1400A38F */  lw         $v1, 0x14($sp)
/* 1DB34 8002D334 01003126 */  addiu      $s1, $s1, 0x1
/* 1DB38 8002D338 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1DB3C 8002D33C 00F20200 */  sll        $fp, $v0, 8
/* 1DB40 8002D340 1800A28F */  lw         $v0, 0x18($sp)
/* 1DB44 8002D344 001A0300 */  sll        $v1, $v1, 8
/* 1DB48 8002D348 2000A3AF */  sw         $v1, 0x20($sp)
/* 1DB4C 8002D34C 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1DB50 8002D350 2800A3AF */  sw         $v1, 0x28($sp)
/* 1DB54 8002D354 7400C326 */  addiu      $v1, $s6, 0x74
/* 1DB58 8002D358 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1DB5C 8002D35C 00120200 */  sll        $v0, $v0, 8
/* 1DB60 8002D360 2400A2AF */  sw         $v0, 0x24($sp)
/* 1DB64 8002D364 4400C226 */  addiu      $v0, $s6, 0x44
/* 1DB68 8002D368 3000A2AF */  sw         $v0, 0x30($sp)
/* 1DB6C 8002D36C 000C0224 */  addiu      $v0, $zero, 0xC00
/* 1DB70 8002D370 FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002D374:
/* 1DB74 8002D374 10004310 */  beq        $v0, $v1, .L8002D3B8
/* 1DB78 8002D378 000C622A */   slti      $v0, $s3, 0xC00
/* 1DB7C 8002D37C 03004014 */  bnez       $v0, .L8002D38C
/* 1DB80 8002D380 2A107300 */   slt       $v0, $v1, $s3
/* 1DB84 8002D384 0D004010 */  beqz       $v0, .L8002D3BC
/* 1DB88 8002D388 00000000 */   nop
.L8002D38C:
/* 1DB8C 8002D38C D140010C */  jal        u32Random
/* 1DB90 8002D390 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1DB94 8002D394 21984000 */  addu       $s3, $v0, $zero
/* 1DB98 8002D398 000C622A */  slti       $v0, $s3, 0xC00
/* 1DB9C 8002D39C FBFF4014 */  bnez       $v0, .L8002D38C
/* 1DBA0 8002D3A0 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1DBA4 8002D3A4 2A107300 */  slt        $v0, $v1, $s3
/* 1DBA8 8002D3A8 F8FF4014 */  bnez       $v0, .L8002D38C
/* 1DBAC 8002D3AC 00000000 */   nop
/* 1DBB0 8002D3B0 EFB40008 */  j          .L8002D3BC
/* 1DBB4 8002D3B4 00000000 */   nop
.L8002D3B8:
/* 1DBB8 8002D3B8 000C1324 */  addiu      $s3, $zero, 0xC00
.L8002D3BC:
/* 1DBBC 8002D3BC 7BEB010C */  jal        rcos
/* 1DBC0 8002D3C0 21200002 */   addu      $a0, $s0, $zero
/* 1DBC4 8002D3C4 21200002 */  addu       $a0, $s0, $zero
/* 1DBC8 8002D3C8 47EB010C */  jal        rsin
/* 1DBCC 8002D3CC 21904000 */   addu      $s2, $v0, $zero
/* 1DBD0 8002D3D0 21206002 */  addu       $a0, $s3, $zero
/* 1DBD4 8002D3D4 7BEB010C */  jal        rcos
/* 1DBD8 8002D3D8 21884000 */   addu      $s1, $v0, $zero
/* 1DBDC 8002D3DC 21206002 */  addu       $a0, $s3, $zero
/* 1DBE0 8002D3E0 47EB010C */  jal        rsin
/* 1DBE4 8002D3E4 21804000 */   addu      $s0, $v0, $zero
/* 1DBE8 8002D3E8 18003002 */  mult       $s1, $s0
/* 1DBEC 8002D3EC 12880000 */  mflo       $s1
/* 1DBF0 8002D3F0 00000000 */  nop
/* 1DBF4 8002D3F4 00000000 */  nop
/* 1DBF8 8002D3F8 18005002 */  mult       $s2, $s0
/* 1DBFC 8002D3FC 12900000 */  mflo       $s2
/* 1DC00 8002D400 64000324 */  addiu      $v1, $zero, 0x64
/* 1DC04 8002D404 038B1100 */  sra        $s1, $s1, 12
/* 1DC08 8002D408 18002302 */  mult       $s1, $v1
/* 1DC0C 8002D40C 12A80000 */  mflo       $s5
/* 1DC10 8002D410 21A04000 */  addu       $s4, $v0, $zero
/* 1DC14 8002D414 00000000 */  nop
/* 1DC18 8002D418 18008302 */  mult       $s4, $v1
/* 1DC1C 8002D41C 12980000 */  mflo       $s3
/* 1DC20 8002D420 03931200 */  sra        $s2, $s2, 12
/* 1DC24 8002D424 00000000 */  nop
/* 1DC28 8002D428 18004302 */  mult       $s2, $v1
/* 1DC2C 8002D42C 12800000 */  mflo       $s0
/* 1DC30 8002D430 05000224 */  addiu      $v0, $zero, 0x5
/* 1DC34 8002D434 00000000 */  nop
/* 1DC38 8002D438 18002202 */  mult       $s1, $v0
/* 1DC3C 8002D43C 12880000 */  mflo       $s1
/* 1DC40 8002D440 00000000 */  nop
/* 1DC44 8002D444 00000000 */  nop
/* 1DC48 8002D448 18008202 */  mult       $s4, $v0
/* 1DC4C 8002D44C 12A00000 */  mflo       $s4
/* 1DC50 8002D450 00000000 */  nop
/* 1DC54 8002D454 00000000 */  nop
/* 1DC58 8002D458 18004202 */  mult       $s2, $v0
/* 1DC5C 8002D45C 06000424 */  addiu      $a0, $zero, 0x6
/* 1DC60 8002D460 03A91500 */  sra        $s5, $s5, 4
/* 1DC64 8002D464 21A8D503 */  addu       $s5, $fp, $s5
/* 1DC68 8002D468 03991300 */  sra        $s3, $s3, 4
/* 1DC6C 8002D46C 2400A38F */  lw         $v1, 0x24($sp)
/* 1DC70 8002D470 03811000 */  sra        $s0, $s0, 4
/* 1DC74 8002D474 21807000 */  addu       $s0, $v1, $s0
/* 1DC78 8002D478 03891100 */  sra        $s1, $s1, 4
/* 1DC7C 8002D47C 2000A28F */  lw         $v0, 0x20($sp)
/* 1DC80 8002D480 03A11400 */  sra        $s4, $s4, 4
/* 1DC84 8002D484 21985300 */  addu       $s3, $v0, $s3
/* 1DC88 8002D488 12900000 */  mflo       $s2
/* 1DC8C 8002D48C D140010C */  jal        u32Random
/* 1DC90 8002D490 03911200 */   sra       $s2, $s2, 4
/* 1DC94 8002D494 01000324 */  addiu      $v1, $zero, 0x1
/* 1DC98 8002D498 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1DC9C 8002D49C 3A000324 */  addiu      $v1, $zero, 0x3A
/* 1DCA0 8002D4A0 23106200 */  subu       $v0, $v1, $v0
/* 1DCA4 8002D4A4 0400D5AE */  sw         $s5, 0x4($s6)
/* 1DCA8 8002D4A8 0800D3AE */  sw         $s3, 0x8($s6)
/* 1DCAC 8002D4AC 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1DCB0 8002D4B0 1000D1AE */  sw         $s1, 0x10($s6)
/* 1DCB4 8002D4B4 1400D4AE */  sw         $s4, 0x14($s6)
/* 1DCB8 8002D4B8 1800D2AE */  sw         $s2, 0x18($s6)
/* 1DCBC 8002D4BC 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1DCC0 8002D4C0 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1DCC4 8002D4C4 2800A58F */  lw         $a1, 0x28($sp)
/* 1DCC8 8002D4C8 00000000 */  nop
/* 1DCCC 8002D4CC 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1DCD0 8002D4D0 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1DCD4 8002D4D4 00000000 */  nop
/* 1DCD8 8002D4D8 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1DCDC 8002D4DC 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1DCE0 8002D4E0 00000000 */  nop
/* 1DCE4 8002D4E4 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1DCE8 8002D4E8 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1DCEC 8002D4EC 3000A58F */  lw         $a1, 0x30($sp)
/* 1DCF0 8002D4F0 00000000 */  nop
/* 1DCF4 8002D4F4 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1DCF8 8002D4F8 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1DCFC 8002D4FC 00000000 */  nop
/* 1DD00 8002D500 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1DD04 8002D504 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1DD08 8002D508 1C00B18F */  lw         $s1, 0x1C($sp)
/* 1DD0C 8002D50C 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1DD10 8002D510 0800E28E */  lw         $v0, 0x8($s7)
/* 1DD14 8002D514 2C00B68F */  lw         $s6, 0x2C($sp)
/* 1DD18 8002D518 2A102202 */  slt        $v0, $s1, $v0
/* 1DD1C 8002D51C 59FF4014 */  bnez       $v0, .L8002D284
/* 1DD20 8002D520 00000000 */   nop
.L8002D524:
/* 1DD24 8002D524 D140010C */  jal        u32Random
/* 1DD28 8002D528 08000424 */   addiu     $a0, $zero, 0x8
/* 1DD2C 8002D52C 5C00BF8F */  lw         $ra, 0x5C($sp)
/* 1DD30 8002D530 5800BE8F */  lw         $fp, 0x58($sp)
/* 1DD34 8002D534 E6004224 */  addiu      $v0, $v0, 0xE6
/* 1DD38 8002D538 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1DD3C 8002D53C 0000E0AE */  sw         $zero, 0x0($s7)
/* 1DD40 8002D540 5400B78F */  lw         $s7, 0x54($sp)
/* 1DD44 8002D544 5000B68F */  lw         $s6, 0x50($sp)
/* 1DD48 8002D548 4C00B58F */  lw         $s5, 0x4C($sp)
/* 1DD4C 8002D54C 4800B48F */  lw         $s4, 0x48($sp)
/* 1DD50 8002D550 4400B38F */  lw         $s3, 0x44($sp)
/* 1DD54 8002D554 4000B28F */  lw         $s2, 0x40($sp)
/* 1DD58 8002D558 3C00B18F */  lw         $s1, 0x3C($sp)
/* 1DD5C 8002D55C 3800B08F */  lw         $s0, 0x38($sp)
/* 1DD60 8002D560 0800E003 */  jr         $ra
/* 1DD64 8002D564 6000BD27 */   addiu     $sp, $sp, 0x60
.size ParticleHayInit, . - ParticleHayInit
