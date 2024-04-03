.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticlePickupGetInit
/* 1E2D0 8002DAD0 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 1E2D4 8002DAD4 5C00B7AF */  sw         $s7, 0x5C($sp)
/* 1E2D8 8002DAD8 21B88000 */  addu       $s7, $a0, $zero
/* 1E2DC 8002DADC 6400BFAF */  sw         $ra, 0x64($sp)
/* 1E2E0 8002DAE0 6000BEAF */  sw         $fp, 0x60($sp)
/* 1E2E4 8002DAE4 5800B6AF */  sw         $s6, 0x58($sp)
/* 1E2E8 8002DAE8 5400B5AF */  sw         $s5, 0x54($sp)
/* 1E2EC 8002DAEC 5000B4AF */  sw         $s4, 0x50($sp)
/* 1E2F0 8002DAF0 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 1E2F4 8002DAF4 4800B2AF */  sw         $s2, 0x48($sp)
/* 1E2F8 8002DAF8 4400B1AF */  sw         $s1, 0x44($sp)
/* 1E2FC 8002DAFC 4000B0AF */  sw         $s0, 0x40($sp)
/* 1E300 8002DB00 1000A5AF */  sw         $a1, 0x10($sp)
/* 1E304 8002DB04 1400A6AF */  sw         $a2, 0x14($sp)
/* 1E308 8002DB08 1800A7AF */  sw         $a3, 0x18($sp)
/* 1E30C 8002DB0C 4000F68E */  lw         $s6, 0x40($s7)
/* 1E310 8002DB10 F0000224 */  addiu      $v0, $zero, 0xF0
/* 1E314 8002DB14 C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 1E318 8002DB18 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 1E31C 8002DB1C BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1E320 8002DB20 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1E324 8002DB24 3400E2AE */  sw         $v0, 0x34($s7)
/* 1E328 8002DB28 3C00E2AE */  sw         $v0, 0x3C($s7)
/* 1E32C 8002DB2C 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1E330 8002DB30 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1E334 8002DB34 3000E0AE */  sw         $zero, 0x30($s7)
/* 1E338 8002DB38 3800E0AE */  sw         $zero, 0x38($s7)
/* 1E33C 8002DB3C 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1E340 8002DB40 1E000224 */  addiu      $v0, $zero, 0x1E
/* 1E344 8002DB44 2000A3AF */  sw         $v1, 0x20($sp)
/* 1E348 8002DB48 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1E34C 8002DB4C 1000A38F */  lw         $v1, 0x10($sp)
/* 1E350 8002DB50 00000000 */  nop
/* 1E354 8002DB54 2400E3AE */  sw         $v1, 0x24($s7)
/* 1E358 8002DB58 1400A28F */  lw         $v0, 0x14($sp)
/* 1E35C 8002DB5C 00000000 */  nop
/* 1E360 8002DB60 2800E2AE */  sw         $v0, 0x28($s7)
/* 1E364 8002DB64 1800A38F */  lw         $v1, 0x18($sp)
/* 1E368 8002DB68 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1E36C 8002DB6C 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1E370 8002DB70 0400E28E */  lw         $v0, 0x4($s7)
/* 1E374 8002DB74 00000000 */  nop
/* 1E378 8002DB78 04004014 */  bnez       $v0, .L8002DB8C
/* 1E37C 8002DB7C 2C00E3AE */   sw        $v1, 0x2C($s7)
/* 1E380 8002DB80 1000A0AF */  sw         $zero, 0x10($sp)
/* 1E384 8002DB84 1400A0AF */  sw         $zero, 0x14($sp)
/* 1E388 8002DB88 1800A0AF */  sw         $zero, 0x18($sp)
.L8002DB8C:
/* 1E38C 8002DB8C 0800E28E */  lw         $v0, 0x8($s7)
/* 1E390 8002DB90 00000000 */  nop
/* 1E394 8002DB94 A8004018 */  blez       $v0, .L8002DE38
/* 1E398 8002DB98 21880000 */   addu      $s1, $zero, $zero
.L8002DB9C:
/* 1E39C 8002DB9C D140010C */  jal        u32Random
/* 1E3A0 8002DBA0 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1E3A4 8002DBA4 21804000 */  addu       $s0, $v0, $zero
/* 1E3A8 8002DBA8 D140010C */  jal        u32Random
/* 1E3AC 8002DBAC FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1E3B0 8002DBB0 21984000 */  addu       $s3, $v0, $zero
/* 1E3B4 8002DBB4 21100000 */  addu       $v0, $zero, $zero
/* 1E3B8 8002DBB8 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1E3BC 8002DBBC 20004310 */  beq        $v0, $v1, .L8002DC40
/* 1E3C0 8002DBC0 00000000 */   nop
/* 1E3C4 8002DBC4 1000A28F */  lw         $v0, 0x10($sp)
/* 1E3C8 8002DBC8 1400A38F */  lw         $v1, 0x14($sp)
/* 1E3CC 8002DBCC 01003126 */  addiu      $s1, $s1, 0x1
/* 1E3D0 8002DBD0 2800B1AF */  sw         $s1, 0x28($sp)
/* 1E3D4 8002DBD4 00F20200 */  sll        $fp, $v0, 8
/* 1E3D8 8002DBD8 1800A28F */  lw         $v0, 0x18($sp)
/* 1E3DC 8002DBDC 001A0300 */  sll        $v1, $v1, 8
/* 1E3E0 8002DBE0 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1E3E4 8002DBE4 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1E3E8 8002DBE8 3400A3AF */  sw         $v1, 0x34($sp)
/* 1E3EC 8002DBEC 7400C326 */  addiu      $v1, $s6, 0x74
/* 1E3F0 8002DBF0 3800A3AF */  sw         $v1, 0x38($sp)
/* 1E3F4 8002DBF4 00120200 */  sll        $v0, $v0, 8
/* 1E3F8 8002DBF8 3000A2AF */  sw         $v0, 0x30($sp)
/* 1E3FC 8002DBFC 4400C226 */  addiu      $v0, $s6, 0x44
/* 1E400 8002DC00 05000006 */  bltz       $s0, .L8002DC18
/* 1E404 8002DC04 2400A2AF */   sw        $v0, 0x24($sp)
/* 1E408 8002DC08 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1E40C 8002DC0C 2A107000 */  slt        $v0, $v1, $s0
/* 1E410 8002DC10 1E004010 */  beqz       $v0, .L8002DC8C
/* 1E414 8002DC14 21100000 */   addu      $v0, $zero, $zero
.L8002DC18:
/* 1E418 8002DC18 D140010C */  jal        u32Random
/* 1E41C 8002DC1C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1E420 8002DC20 21804000 */  addu       $s0, $v0, $zero
/* 1E424 8002DC24 FCFF0006 */  bltz       $s0, .L8002DC18
/* 1E428 8002DC28 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1E42C 8002DC2C 2A107000 */  slt        $v0, $v1, $s0
/* 1E430 8002DC30 F9FF4014 */  bnez       $v0, .L8002DC18
/* 1E434 8002DC34 21100000 */   addu      $v0, $zero, $zero
/* 1E438 8002DC38 23B70008 */  j          .L8002DC8C
/* 1E43C 8002DC3C 00000000 */   nop
.L8002DC40:
/* 1E440 8002DC40 21800000 */  addu       $s0, $zero, $zero
/* 1E444 8002DC44 1000A28F */  lw         $v0, 0x10($sp)
/* 1E448 8002DC48 1400A38F */  lw         $v1, 0x14($sp)
/* 1E44C 8002DC4C 01003126 */  addiu      $s1, $s1, 0x1
/* 1E450 8002DC50 2800B1AF */  sw         $s1, 0x28($sp)
/* 1E454 8002DC54 00F20200 */  sll        $fp, $v0, 8
/* 1E458 8002DC58 1800A28F */  lw         $v0, 0x18($sp)
/* 1E45C 8002DC5C 001A0300 */  sll        $v1, $v1, 8
/* 1E460 8002DC60 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1E464 8002DC64 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1E468 8002DC68 3400A3AF */  sw         $v1, 0x34($sp)
/* 1E46C 8002DC6C 7400C326 */  addiu      $v1, $s6, 0x74
/* 1E470 8002DC70 3800A3AF */  sw         $v1, 0x38($sp)
/* 1E474 8002DC74 00120200 */  sll        $v0, $v0, 8
/* 1E478 8002DC78 3000A2AF */  sw         $v0, 0x30($sp)
/* 1E47C 8002DC7C 4400C226 */  addiu      $v0, $s6, 0x44
/* 1E480 8002DC80 2400A2AF */  sw         $v0, 0x24($sp)
/* 1E484 8002DC84 21100000 */  addu       $v0, $zero, $zero
/* 1E488 8002DC88 FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002DC8C:
/* 1E48C 8002DC8C 0F004310 */  beq        $v0, $v1, .L8002DCCC
/* 1E490 8002DC90 00000000 */   nop
/* 1E494 8002DC94 03006006 */  bltz       $s3, .L8002DCA4
/* 1E498 8002DC98 2A107300 */   slt       $v0, $v1, $s3
/* 1E49C 8002DC9C 0C004010 */  beqz       $v0, .L8002DCD0
/* 1E4A0 8002DCA0 00000000 */   nop
.L8002DCA4:
/* 1E4A4 8002DCA4 D140010C */  jal        u32Random
/* 1E4A8 8002DCA8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1E4AC 8002DCAC 21984000 */  addu       $s3, $v0, $zero
/* 1E4B0 8002DCB0 FCFF6006 */  bltz       $s3, .L8002DCA4
/* 1E4B4 8002DCB4 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1E4B8 8002DCB8 2A107300 */  slt        $v0, $v1, $s3
/* 1E4BC 8002DCBC F9FF4014 */  bnez       $v0, .L8002DCA4
/* 1E4C0 8002DCC0 00000000 */   nop
/* 1E4C4 8002DCC4 34B70008 */  j          .L8002DCD0
/* 1E4C8 8002DCC8 00000000 */   nop
.L8002DCCC:
/* 1E4CC 8002DCCC 21980000 */  addu       $s3, $zero, $zero
.L8002DCD0:
/* 1E4D0 8002DCD0 7BEB010C */  jal        rcos
/* 1E4D4 8002DCD4 21200002 */   addu      $a0, $s0, $zero
/* 1E4D8 8002DCD8 21200002 */  addu       $a0, $s0, $zero
/* 1E4DC 8002DCDC 47EB010C */  jal        rsin
/* 1E4E0 8002DCE0 21904000 */   addu      $s2, $v0, $zero
/* 1E4E4 8002DCE4 21206002 */  addu       $a0, $s3, $zero
/* 1E4E8 8002DCE8 7BEB010C */  jal        rcos
/* 1E4EC 8002DCEC 21884000 */   addu      $s1, $v0, $zero
/* 1E4F0 8002DCF0 21206002 */  addu       $a0, $s3, $zero
/* 1E4F4 8002DCF4 47EB010C */  jal        rsin
/* 1E4F8 8002DCF8 21804000 */   addu      $s0, $v0, $zero
/* 1E4FC 8002DCFC 18003002 */  mult       $s1, $s0
/* 1E500 8002DD00 12880000 */  mflo       $s1
/* 1E504 8002DD04 00000000 */  nop
/* 1E508 8002DD08 00000000 */  nop
/* 1E50C 8002DD0C 18005002 */  mult       $s2, $s0
/* 1E510 8002DD10 12900000 */  mflo       $s2
/* 1E514 8002DD14 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1E518 8002DD18 038B1100 */  sra        $s1, $s1, 12
/* 1E51C 8002DD1C 18002302 */  mult       $s1, $v1
/* 1E520 8002DD20 12A80000 */  mflo       $s5
/* 1E524 8002DD24 21A04000 */  addu       $s4, $v0, $zero
/* 1E528 8002DD28 00000000 */  nop
/* 1E52C 8002DD2C 18008302 */  mult       $s4, $v1
/* 1E530 8002DD30 12980000 */  mflo       $s3
/* 1E534 8002DD34 03931200 */  sra        $s2, $s2, 12
/* 1E538 8002DD38 00000000 */  nop
/* 1E53C 8002DD3C 18004302 */  mult       $s2, $v1
/* 1E540 8002DD40 12800000 */  mflo       $s0
/* 1E544 8002DD44 2000A28F */  lw         $v0, 0x20($sp)
/* 1E548 8002DD48 00000000 */  nop
/* 1E54C 8002DD4C 18002202 */  mult       $s1, $v0
/* 1E550 8002DD50 12880000 */  mflo       $s1
/* 1E554 8002DD54 00000000 */  nop
/* 1E558 8002DD58 00000000 */  nop
/* 1E55C 8002DD5C 18008202 */  mult       $s4, $v0
/* 1E560 8002DD60 12A00000 */  mflo       $s4
/* 1E564 8002DD64 00000000 */  nop
/* 1E568 8002DD68 00000000 */  nop
/* 1E56C 8002DD6C 18004202 */  mult       $s2, $v0
/* 1E570 8002DD70 04000424 */  addiu      $a0, $zero, 0x4
/* 1E574 8002DD74 03A91500 */  sra        $s5, $s5, 4
/* 1E578 8002DD78 21A8D503 */  addu       $s5, $fp, $s5
/* 1E57C 8002DD7C 03991300 */  sra        $s3, $s3, 4
/* 1E580 8002DD80 3000A38F */  lw         $v1, 0x30($sp)
/* 1E584 8002DD84 03811000 */  sra        $s0, $s0, 4
/* 1E588 8002DD88 21807000 */  addu       $s0, $v1, $s0
/* 1E58C 8002DD8C 03891100 */  sra        $s1, $s1, 4
/* 1E590 8002DD90 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1E594 8002DD94 03A11400 */  sra        $s4, $s4, 4
/* 1E598 8002DD98 21985300 */  addu       $s3, $v0, $s3
/* 1E59C 8002DD9C 12900000 */  mflo       $s2
/* 1E5A0 8002DDA0 D140010C */  jal        u32Random
/* 1E5A4 8002DDA4 03911200 */   sra       $s2, $s2, 4
/* 1E5A8 8002DDA8 01000324 */  addiu      $v1, $zero, 0x1
/* 1E5AC 8002DDAC 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1E5B0 8002DDB0 1E000324 */  addiu      $v1, $zero, 0x1E
/* 1E5B4 8002DDB4 23106200 */  subu       $v0, $v1, $v0
/* 1E5B8 8002DDB8 0400D5AE */  sw         $s5, 0x4($s6)
/* 1E5BC 8002DDBC 0800D3AE */  sw         $s3, 0x8($s6)
/* 1E5C0 8002DDC0 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1E5C4 8002DDC4 1000D1AE */  sw         $s1, 0x10($s6)
/* 1E5C8 8002DDC8 1400D4AE */  sw         $s4, 0x14($s6)
/* 1E5CC 8002DDCC 1800D2AE */  sw         $s2, 0x18($s6)
/* 1E5D0 8002DDD0 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1E5D4 8002DDD4 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1E5D8 8002DDD8 3400A58F */  lw         $a1, 0x34($sp)
/* 1E5DC 8002DDDC 00000000 */  nop
/* 1E5E0 8002DDE0 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1E5E4 8002DDE4 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1E5E8 8002DDE8 00000000 */  nop
/* 1E5EC 8002DDEC 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1E5F0 8002DDF0 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1E5F4 8002DDF4 00000000 */  nop
/* 1E5F8 8002DDF8 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1E5FC 8002DDFC 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1E600 8002DE00 2400A58F */  lw         $a1, 0x24($sp)
/* 1E604 8002DE04 00000000 */  nop
/* 1E608 8002DE08 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1E60C 8002DE0C 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1E610 8002DE10 00000000 */  nop
/* 1E614 8002DE14 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1E618 8002DE18 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1E61C 8002DE1C 2800B18F */  lw         $s1, 0x28($sp)
/* 1E620 8002DE20 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1E624 8002DE24 0800E28E */  lw         $v0, 0x8($s7)
/* 1E628 8002DE28 3800B68F */  lw         $s6, 0x38($sp)
/* 1E62C 8002DE2C 2A102202 */  slt        $v0, $s1, $v0
/* 1E630 8002DE30 5AFF4014 */  bnez       $v0, .L8002DB9C
/* 1E634 8002DE34 00000000 */   nop
.L8002DE38:
/* 1E638 8002DE38 6400BF8F */  lw         $ra, 0x64($sp)
/* 1E63C 8002DE3C 6000BE8F */  lw         $fp, 0x60($sp)
/* 1E640 8002DE40 0000E0AE */  sw         $zero, 0x0($s7)
/* 1E644 8002DE44 5C00B78F */  lw         $s7, 0x5C($sp)
/* 1E648 8002DE48 5800B68F */  lw         $s6, 0x58($sp)
/* 1E64C 8002DE4C 5400B58F */  lw         $s5, 0x54($sp)
/* 1E650 8002DE50 5000B48F */  lw         $s4, 0x50($sp)
/* 1E654 8002DE54 4C00B38F */  lw         $s3, 0x4C($sp)
/* 1E658 8002DE58 4800B28F */  lw         $s2, 0x48($sp)
/* 1E65C 8002DE5C 4400B18F */  lw         $s1, 0x44($sp)
/* 1E660 8002DE60 4000B08F */  lw         $s0, 0x40($sp)
/* 1E664 8002DE64 0800E003 */  jr         $ra
/* 1E668 8002DE68 6800BD27 */   addiu     $sp, $sp, 0x68
.size ParticlePickupGetInit, . - ParticlePickupGetInit
