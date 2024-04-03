.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MakeActorSemiTrans
/* DB30 8001D330 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* DB34 8001D334 2C00BFAF */  sw         $ra, 0x2C($sp)
/* DB38 8001D338 2800B4AF */  sw         $s4, 0x28($sp)
/* DB3C 8001D33C 2400B3AF */  sw         $s3, 0x24($sp)
/* DB40 8001D340 2000B2AF */  sw         $s2, 0x20($sp)
/* DB44 8001D344 1C00B1AF */  sw         $s1, 0x1C($sp)
/* DB48 8001D348 1800B0AF */  sw         $s0, 0x18($sp)
/* DB4C 8001D34C 2001928C */  lw         $s2, 0x120($a0)
/* DB50 8001D350 00000000 */  nop
/* DB54 8001D354 48004296 */  lhu        $v0, 0x48($s2)
/* DB58 8001D358 2800448E */  lw         $a0, 0x28($s2)
/* DB5C 8001D35C 40180200 */  sll        $v1, $v0, 1
/* DB60 8001D360 21186200 */  addu       $v1, $v1, $v0
/* DB64 8001D364 00190300 */  sll        $v1, $v1, 4
/* DB68 8001D368 21A08300 */  addu       $s4, $a0, $v1
/* DB6C 8001D36C 2B109400 */  sltu       $v0, $a0, $s4
/* DB70 8001D370 0C004010 */  beqz       $v0, .L8001D3A4
/* DB74 8001D374 30009324 */   addiu     $s3, $a0, 0x30
.L8001D378:
/* DB78 8001D378 21808000 */  addu       $s0, $a0, $zero
/* DB7C 8001D37C 01001124 */  addiu      $s1, $zero, 0x1
.L8001D380:
/* DB80 8001D380 D3E6010C */  jal        SetPolyF3
/* DB84 8001D384 21200002 */   addu      $a0, $s0, $zero
/* DB88 8001D388 FFFF3126 */  addiu      $s1, $s1, -0x1
/* DB8C 8001D38C FCFF2106 */  bgez       $s1, .L8001D380
/* DB90 8001D390 14001026 */   addiu     $s0, $s0, 0x14
/* DB94 8001D394 21206002 */  addu       $a0, $s3, $zero
/* DB98 8001D398 2B109400 */  sltu       $v0, $a0, $s4
/* DB9C 8001D39C F6FF4014 */  bnez       $v0, .L8001D378
/* DBA0 8001D3A0 30009324 */   addiu     $s3, $a0, 0x30
.L8001D3A4:
/* DBA4 8001D3A4 4A004296 */  lhu        $v0, 0x4A($s2)
/* DBA8 8001D3A8 2C00448E */  lw         $a0, 0x2C($s2)
/* DBAC 8001D3AC C0180200 */  sll        $v1, $v0, 3
/* DBB0 8001D3B0 23186200 */  subu       $v1, $v1, $v0
/* DBB4 8001D3B4 C0180300 */  sll        $v1, $v1, 3
/* DBB8 8001D3B8 21A08300 */  addu       $s4, $a0, $v1
/* DBBC 8001D3BC 2B109400 */  sltu       $v0, $a0, $s4
/* DBC0 8001D3C0 0C004010 */  beqz       $v0, .L8001D3F4
/* DBC4 8001D3C4 38009324 */   addiu     $s3, $a0, 0x38
.L8001D3C8:
/* DBC8 8001D3C8 21808000 */  addu       $s0, $a0, $zero
/* DBCC 8001D3CC 01001124 */  addiu      $s1, $zero, 0x1
.L8001D3D0:
/* DBD0 8001D3D0 F3E6010C */  jal        SetPolyF4
/* DBD4 8001D3D4 21200002 */   addu      $a0, $s0, $zero
/* DBD8 8001D3D8 FFFF3126 */  addiu      $s1, $s1, -0x1
/* DBDC 8001D3DC FCFF2106 */  bgez       $s1, .L8001D3D0
/* DBE0 8001D3E0 18001026 */   addiu     $s0, $s0, 0x18
/* DBE4 8001D3E4 21206002 */  addu       $a0, $s3, $zero
/* DBE8 8001D3E8 2B109400 */  sltu       $v0, $a0, $s4
/* DBEC 8001D3EC F6FF4014 */  bnez       $v0, .L8001D3C8
/* DBF0 8001D3F0 38009324 */   addiu     $s3, $a0, 0x38
.L8001D3F4:
/* DBF4 8001D3F4 50004296 */  lhu        $v0, 0x50($s2)
/* DBF8 8001D3F8 3800448E */  lw         $a0, 0x38($s2)
/* DBFC 8001D3FC C0180200 */  sll        $v1, $v0, 3
/* DC00 8001D400 21186200 */  addu       $v1, $v1, $v0
/* DC04 8001D404 C0180300 */  sll        $v1, $v1, 3
/* DC08 8001D408 21A08300 */  addu       $s4, $a0, $v1
/* DC0C 8001D40C 2B109400 */  sltu       $v0, $a0, $s4
/* DC10 8001D410 0C004010 */  beqz       $v0, .L8001D444
/* DC14 8001D414 48009324 */   addiu     $s3, $a0, 0x48
.L8001D418:
/* DC18 8001D418 21808000 */  addu       $s0, $a0, $zero
/* DC1C 8001D41C 01001124 */  addiu      $s1, $zero, 0x1
.L8001D420:
/* DC20 8001D420 DBE6010C */  jal        SetPolyFT3
/* DC24 8001D424 21200002 */   addu      $a0, $s0, $zero
/* DC28 8001D428 FFFF3126 */  addiu      $s1, $s1, -0x1
/* DC2C 8001D42C FCFF2106 */  bgez       $s1, .L8001D420
/* DC30 8001D430 20001026 */   addiu     $s0, $s0, 0x20
/* DC34 8001D434 21206002 */  addu       $a0, $s3, $zero
/* DC38 8001D438 2B109400 */  sltu       $v0, $a0, $s4
/* DC3C 8001D43C F6FF4014 */  bnez       $v0, .L8001D418
/* DC40 8001D440 48009324 */   addiu     $s3, $a0, 0x48
.L8001D444:
/* DC44 8001D444 52004296 */  lhu        $v0, 0x52($s2)
/* DC48 8001D448 3C00448E */  lw         $a0, 0x3C($s2)
/* DC4C 8001D44C 40180200 */  sll        $v1, $v0, 1
/* DC50 8001D450 21186200 */  addu       $v1, $v1, $v0
/* DC54 8001D454 C0180300 */  sll        $v1, $v1, 3
/* DC58 8001D458 23186200 */  subu       $v1, $v1, $v0
/* DC5C 8001D45C 80180300 */  sll        $v1, $v1, 2
/* DC60 8001D460 21A08300 */  addu       $s4, $a0, $v1
/* DC64 8001D464 2B109400 */  sltu       $v0, $a0, $s4
/* DC68 8001D468 0C004010 */  beqz       $v0, .L8001D49C
/* DC6C 8001D46C 5C009324 */   addiu     $s3, $a0, 0x5C
.L8001D470:
/* DC70 8001D470 21808000 */  addu       $s0, $a0, $zero
/* DC74 8001D474 01001124 */  addiu      $s1, $zero, 0x1
.L8001D478:
/* DC78 8001D478 FBE6010C */  jal        SetPolyFT4
/* DC7C 8001D47C 21200002 */   addu      $a0, $s0, $zero
/* DC80 8001D480 FFFF3126 */  addiu      $s1, $s1, -0x1
/* DC84 8001D484 FCFF2106 */  bgez       $s1, .L8001D478
/* DC88 8001D488 28001026 */   addiu     $s0, $s0, 0x28
/* DC8C 8001D48C 21206002 */  addu       $a0, $s3, $zero
/* DC90 8001D490 2B109400 */  sltu       $v0, $a0, $s4
/* DC94 8001D494 F6FF4014 */  bnez       $v0, .L8001D470
/* DC98 8001D498 5C009324 */   addiu     $s3, $a0, 0x5C
.L8001D49C:
/* DC9C 8001D49C 4C004296 */  lhu        $v0, 0x4C($s2)
/* DCA0 8001D4A0 3000448E */  lw         $a0, 0x30($s2)
/* DCA4 8001D4A4 80110200 */  sll        $v0, $v0, 6
/* DCA8 8001D4A8 21A08200 */  addu       $s4, $a0, $v0
/* DCAC 8001D4AC 2B189400 */  sltu       $v1, $a0, $s4
/* DCB0 8001D4B0 0C006010 */  beqz       $v1, .L8001D4E4
/* DCB4 8001D4B4 40009324 */   addiu     $s3, $a0, 0x40
.L8001D4B8:
/* DCB8 8001D4B8 21808000 */  addu       $s0, $a0, $zero
/* DCBC 8001D4BC 01001124 */  addiu      $s1, $zero, 0x1
.L8001D4C0:
/* DCC0 8001D4C0 E3E6010C */  jal        SetPolyG3
/* DCC4 8001D4C4 21200002 */   addu      $a0, $s0, $zero
/* DCC8 8001D4C8 FFFF3126 */  addiu      $s1, $s1, -0x1
/* DCCC 8001D4CC FCFF2106 */  bgez       $s1, .L8001D4C0
/* DCD0 8001D4D0 1C001026 */   addiu     $s0, $s0, 0x1C
/* DCD4 8001D4D4 21206002 */  addu       $a0, $s3, $zero
/* DCD8 8001D4D8 2B109400 */  sltu       $v0, $a0, $s4
/* DCDC 8001D4DC F6FF4014 */  bnez       $v0, .L8001D4B8
/* DCE0 8001D4E0 40009324 */   addiu     $s3, $a0, 0x40
.L8001D4E4:
/* DCE4 8001D4E4 4E004296 */  lhu        $v0, 0x4E($s2)
/* DCE8 8001D4E8 3400448E */  lw         $a0, 0x34($s2)
/* DCEC 8001D4EC 80180200 */  sll        $v1, $v0, 2
/* DCF0 8001D4F0 21186200 */  addu       $v1, $v1, $v0
/* DCF4 8001D4F4 00190300 */  sll        $v1, $v1, 4
/* DCF8 8001D4F8 21A08300 */  addu       $s4, $a0, $v1
/* DCFC 8001D4FC 2B109400 */  sltu       $v0, $a0, $s4
/* DD00 8001D500 0C004010 */  beqz       $v0, .L8001D534
/* DD04 8001D504 50009324 */   addiu     $s3, $a0, 0x50
.L8001D508:
/* DD08 8001D508 21808000 */  addu       $s0, $a0, $zero
/* DD0C 8001D50C 01001124 */  addiu      $s1, $zero, 0x1
.L8001D510:
/* DD10 8001D510 03E7010C */  jal        SetPolyG4
/* DD14 8001D514 21200002 */   addu      $a0, $s0, $zero
/* DD18 8001D518 FFFF3126 */  addiu      $s1, $s1, -0x1
/* DD1C 8001D51C FCFF2106 */  bgez       $s1, .L8001D510
/* DD20 8001D520 24001026 */   addiu     $s0, $s0, 0x24
/* DD24 8001D524 21206002 */  addu       $a0, $s3, $zero
/* DD28 8001D528 2B109400 */  sltu       $v0, $a0, $s4
/* DD2C 8001D52C F6FF4014 */  bnez       $v0, .L8001D508
/* DD30 8001D530 50009324 */   addiu     $s3, $a0, 0x50
.L8001D534:
/* DD34 8001D534 54004296 */  lhu        $v0, 0x54($s2)
/* DD38 8001D538 4000448E */  lw         $a0, 0x40($s2)
/* DD3C 8001D53C 40180200 */  sll        $v1, $v0, 1
/* DD40 8001D540 21186200 */  addu       $v1, $v1, $v0
/* DD44 8001D544 80180300 */  sll        $v1, $v1, 2
/* DD48 8001D548 23186200 */  subu       $v1, $v1, $v0
/* DD4C 8001D54C C0180300 */  sll        $v1, $v1, 3
/* DD50 8001D550 21A08300 */  addu       $s4, $a0, $v1
/* DD54 8001D554 2B109400 */  sltu       $v0, $a0, $s4
/* DD58 8001D558 0C004010 */  beqz       $v0, .L8001D58C
/* DD5C 8001D55C 58009324 */   addiu     $s3, $a0, 0x58
.L8001D560:
/* DD60 8001D560 21808000 */  addu       $s0, $a0, $zero
/* DD64 8001D564 01001124 */  addiu      $s1, $zero, 0x1
.L8001D568:
/* DD68 8001D568 EBE6010C */  jal        SetPolyGT3
/* DD6C 8001D56C 21200002 */   addu      $a0, $s0, $zero
/* DD70 8001D570 FFFF3126 */  addiu      $s1, $s1, -0x1
/* DD74 8001D574 FCFF2106 */  bgez       $s1, .L8001D568
/* DD78 8001D578 28001026 */   addiu     $s0, $s0, 0x28
/* DD7C 8001D57C 21206002 */  addu       $a0, $s3, $zero
/* DD80 8001D580 2B109400 */  sltu       $v0, $a0, $s4
/* DD84 8001D584 F6FF4014 */  bnez       $v0, .L8001D560
/* DD88 8001D588 58009324 */   addiu     $s3, $a0, 0x58
.L8001D58C:
/* DD8C 8001D58C 56004296 */  lhu        $v0, 0x56($s2)
/* DD90 8001D590 4400448E */  lw         $a0, 0x44($s2)
/* DD94 8001D594 C0180200 */  sll        $v1, $v0, 3
/* DD98 8001D598 23186200 */  subu       $v1, $v1, $v0
/* DD9C 8001D59C 80180300 */  sll        $v1, $v1, 2
/* DDA0 8001D5A0 21186200 */  addu       $v1, $v1, $v0
/* DDA4 8001D5A4 80180300 */  sll        $v1, $v1, 2
/* DDA8 8001D5A8 21A08300 */  addu       $s4, $a0, $v1
/* DDAC 8001D5AC 2B109400 */  sltu       $v0, $a0, $s4
/* DDB0 8001D5B0 0C004010 */  beqz       $v0, .L8001D5E4
/* DDB4 8001D5B4 74009324 */   addiu     $s3, $a0, 0x74
.L8001D5B8:
/* DDB8 8001D5B8 21808000 */  addu       $s0, $a0, $zero
/* DDBC 8001D5BC 01001124 */  addiu      $s1, $zero, 0x1
.L8001D5C0:
/* DDC0 8001D5C0 0BE7010C */  jal        SetPolyGT4
/* DDC4 8001D5C4 21200002 */   addu      $a0, $s0, $zero
/* DDC8 8001D5C8 FFFF3126 */  addiu      $s1, $s1, -0x1
/* DDCC 8001D5CC FCFF2106 */  bgez       $s1, .L8001D5C0
/* DDD0 8001D5D0 34001026 */   addiu     $s0, $s0, 0x34
/* DDD4 8001D5D4 21206002 */  addu       $a0, $s3, $zero
/* DDD8 8001D5D8 2B109400 */  sltu       $v0, $a0, $s4
/* DDDC 8001D5DC F6FF4014 */  bnez       $v0, .L8001D5B8
/* DDE0 8001D5E0 74009324 */   addiu     $s3, $a0, 0x74
.L8001D5E4:
/* DDE4 8001D5E4 48004296 */  lhu        $v0, 0x48($s2)
/* DDE8 8001D5E8 00000000 */  nop
/* DDEC 8001D5EC 18004010 */  beqz       $v0, .L8001D650
/* DDF0 8001D5F0 00000000 */   nop
/* DDF4 8001D5F4 16004010 */  beqz       $v0, .L8001D650
/* DDF8 8001D5F8 21880000 */   addu      $s1, $zero, $zero
/* DDFC 8001D5FC 21280000 */  addu       $a1, $zero, $zero
.L8001D600:
/* DE00 8001D600 2800438E */  lw         $v1, 0x28($s2)
/* DE04 8001D604 00000000 */  nop
/* DE08 8001D608 2118A300 */  addu       $v1, $a1, $v1
/* DE0C 8001D60C 07006290 */  lbu        $v0, 0x7($v1)
/* DE10 8001D610 00000000 */  nop
/* DE14 8001D614 02004234 */  ori        $v0, $v0, 0x2
/* DE18 8001D618 070062A0 */  sb         $v0, 0x7($v1)
/* DE1C 8001D61C 2800448E */  lw         $a0, 0x28($s2)
/* DE20 8001D620 00000000 */  nop
/* DE24 8001D624 2120A400 */  addu       $a0, $a1, $a0
/* DE28 8001D628 14008424 */  addiu      $a0, $a0, 0x14
/* DE2C 8001D62C 07008290 */  lbu        $v0, 0x7($a0)
/* DE30 8001D630 01003126 */  addiu      $s1, $s1, 0x1
/* DE34 8001D634 02004234 */  ori        $v0, $v0, 0x2
/* DE38 8001D638 070082A0 */  sb         $v0, 0x7($a0)
/* DE3C 8001D63C 48004396 */  lhu        $v1, 0x48($s2)
/* DE40 8001D640 00000000 */  nop
/* DE44 8001D644 2A182302 */  slt        $v1, $s1, $v1
/* DE48 8001D648 EDFF6014 */  bnez       $v1, .L8001D600
/* DE4C 8001D64C 3000A524 */   addiu     $a1, $a1, 0x30
.L8001D650:
/* DE50 8001D650 4A004296 */  lhu        $v0, 0x4A($s2)
/* DE54 8001D654 00000000 */  nop
/* DE58 8001D658 18004010 */  beqz       $v0, .L8001D6BC
/* DE5C 8001D65C 00000000 */   nop
/* DE60 8001D660 16004010 */  beqz       $v0, .L8001D6BC
/* DE64 8001D664 21880000 */   addu      $s1, $zero, $zero
/* DE68 8001D668 21280000 */  addu       $a1, $zero, $zero
.L8001D66C:
/* DE6C 8001D66C 2C00438E */  lw         $v1, 0x2C($s2)
/* DE70 8001D670 00000000 */  nop
/* DE74 8001D674 2118A300 */  addu       $v1, $a1, $v1
/* DE78 8001D678 07006290 */  lbu        $v0, 0x7($v1)
/* DE7C 8001D67C 00000000 */  nop
/* DE80 8001D680 02004234 */  ori        $v0, $v0, 0x2
/* DE84 8001D684 070062A0 */  sb         $v0, 0x7($v1)
/* DE88 8001D688 2C00448E */  lw         $a0, 0x2C($s2)
/* DE8C 8001D68C 00000000 */  nop
/* DE90 8001D690 2120A400 */  addu       $a0, $a1, $a0
/* DE94 8001D694 18008424 */  addiu      $a0, $a0, 0x18
/* DE98 8001D698 07008290 */  lbu        $v0, 0x7($a0)
/* DE9C 8001D69C 01003126 */  addiu      $s1, $s1, 0x1
/* DEA0 8001D6A0 02004234 */  ori        $v0, $v0, 0x2
/* DEA4 8001D6A4 070082A0 */  sb         $v0, 0x7($a0)
/* DEA8 8001D6A8 4A004396 */  lhu        $v1, 0x4A($s2)
/* DEAC 8001D6AC 00000000 */  nop
/* DEB0 8001D6B0 2A182302 */  slt        $v1, $s1, $v1
/* DEB4 8001D6B4 EDFF6014 */  bnez       $v1, .L8001D66C
/* DEB8 8001D6B8 3800A524 */   addiu     $a1, $a1, 0x38
.L8001D6BC:
/* DEBC 8001D6BC 4C004296 */  lhu        $v0, 0x4C($s2)
/* DEC0 8001D6C0 00000000 */  nop
/* DEC4 8001D6C4 17004010 */  beqz       $v0, .L8001D724
/* DEC8 8001D6C8 00000000 */   nop
/* DECC 8001D6CC 15004010 */  beqz       $v0, .L8001D724
/* DED0 8001D6D0 21880000 */   addu      $s1, $zero, $zero
.L8001D6D4:
/* DED4 8001D6D4 3000458E */  lw         $a1, 0x30($s2)
/* DED8 8001D6D8 80211100 */  sll        $a0, $s1, 6
/* DEDC 8001D6DC 21288500 */  addu       $a1, $a0, $a1
/* DEE0 8001D6E0 0700A290 */  lbu        $v0, 0x7($a1)
/* DEE4 8001D6E4 00000000 */  nop
/* DEE8 8001D6E8 02004234 */  ori        $v0, $v0, 0x2
/* DEEC 8001D6EC 0700A2A0 */  sb         $v0, 0x7($a1)
/* DEF0 8001D6F0 3000438E */  lw         $v1, 0x30($s2)
/* DEF4 8001D6F4 00000000 */  nop
/* DEF8 8001D6F8 21208300 */  addu       $a0, $a0, $v1
/* DEFC 8001D6FC 1C008424 */  addiu      $a0, $a0, 0x1C
/* DF00 8001D700 07008290 */  lbu        $v0, 0x7($a0)
/* DF04 8001D704 00000000 */  nop
/* DF08 8001D708 02004234 */  ori        $v0, $v0, 0x2
/* DF0C 8001D70C 070082A0 */  sb         $v0, 0x7($a0)
/* DF10 8001D710 4C004396 */  lhu        $v1, 0x4C($s2)
/* DF14 8001D714 01003126 */  addiu      $s1, $s1, 0x1
/* DF18 8001D718 2A182302 */  slt        $v1, $s1, $v1
/* DF1C 8001D71C EDFF6014 */  bnez       $v1, .L8001D6D4
/* DF20 8001D720 00000000 */   nop
.L8001D724:
/* DF24 8001D724 4E004296 */  lhu        $v0, 0x4E($s2)
/* DF28 8001D728 00000000 */  nop
/* DF2C 8001D72C 18004010 */  beqz       $v0, .L8001D790
/* DF30 8001D730 00000000 */   nop
/* DF34 8001D734 16004010 */  beqz       $v0, .L8001D790
/* DF38 8001D738 21880000 */   addu      $s1, $zero, $zero
/* DF3C 8001D73C 21280000 */  addu       $a1, $zero, $zero
.L8001D740:
/* DF40 8001D740 3400438E */  lw         $v1, 0x34($s2)
/* DF44 8001D744 00000000 */  nop
/* DF48 8001D748 2118A300 */  addu       $v1, $a1, $v1
/* DF4C 8001D74C 07006290 */  lbu        $v0, 0x7($v1)
/* DF50 8001D750 00000000 */  nop
/* DF54 8001D754 02004234 */  ori        $v0, $v0, 0x2
/* DF58 8001D758 070062A0 */  sb         $v0, 0x7($v1)
/* DF5C 8001D75C 3400448E */  lw         $a0, 0x34($s2)
/* DF60 8001D760 00000000 */  nop
/* DF64 8001D764 2120A400 */  addu       $a0, $a1, $a0
/* DF68 8001D768 24008424 */  addiu      $a0, $a0, 0x24
/* DF6C 8001D76C 07008290 */  lbu        $v0, 0x7($a0)
/* DF70 8001D770 01003126 */  addiu      $s1, $s1, 0x1
/* DF74 8001D774 02004234 */  ori        $v0, $v0, 0x2
/* DF78 8001D778 070082A0 */  sb         $v0, 0x7($a0)
/* DF7C 8001D77C 4E004396 */  lhu        $v1, 0x4E($s2)
/* DF80 8001D780 00000000 */  nop
/* DF84 8001D784 2A182302 */  slt        $v1, $s1, $v1
/* DF88 8001D788 EDFF6014 */  bnez       $v1, .L8001D740
/* DF8C 8001D78C 5000A524 */   addiu     $a1, $a1, 0x50
.L8001D790:
/* DF90 8001D790 50004296 */  lhu        $v0, 0x50($s2)
/* DF94 8001D794 00000000 */  nop
/* DF98 8001D798 18004010 */  beqz       $v0, .L8001D7FC
/* DF9C 8001D79C 00000000 */   nop
/* DFA0 8001D7A0 16004010 */  beqz       $v0, .L8001D7FC
/* DFA4 8001D7A4 21880000 */   addu      $s1, $zero, $zero
/* DFA8 8001D7A8 21280000 */  addu       $a1, $zero, $zero
.L8001D7AC:
/* DFAC 8001D7AC 3800438E */  lw         $v1, 0x38($s2)
/* DFB0 8001D7B0 00000000 */  nop
/* DFB4 8001D7B4 2118A300 */  addu       $v1, $a1, $v1
/* DFB8 8001D7B8 07006290 */  lbu        $v0, 0x7($v1)
/* DFBC 8001D7BC 00000000 */  nop
/* DFC0 8001D7C0 02004234 */  ori        $v0, $v0, 0x2
/* DFC4 8001D7C4 070062A0 */  sb         $v0, 0x7($v1)
/* DFC8 8001D7C8 3800448E */  lw         $a0, 0x38($s2)
/* DFCC 8001D7CC 00000000 */  nop
/* DFD0 8001D7D0 2120A400 */  addu       $a0, $a1, $a0
/* DFD4 8001D7D4 20008424 */  addiu      $a0, $a0, 0x20
/* DFD8 8001D7D8 07008290 */  lbu        $v0, 0x7($a0)
/* DFDC 8001D7DC 01003126 */  addiu      $s1, $s1, 0x1
/* DFE0 8001D7E0 02004234 */  ori        $v0, $v0, 0x2
/* DFE4 8001D7E4 070082A0 */  sb         $v0, 0x7($a0)
/* DFE8 8001D7E8 50004396 */  lhu        $v1, 0x50($s2)
/* DFEC 8001D7EC 00000000 */  nop
/* DFF0 8001D7F0 2A182302 */  slt        $v1, $s1, $v1
/* DFF4 8001D7F4 EDFF6014 */  bnez       $v1, .L8001D7AC
/* DFF8 8001D7F8 4800A524 */   addiu     $a1, $a1, 0x48
.L8001D7FC:
/* DFFC 8001D7FC 52004296 */  lhu        $v0, 0x52($s2)
/* E000 8001D800 00000000 */  nop
/* E004 8001D804 18004010 */  beqz       $v0, .L8001D868
/* E008 8001D808 00000000 */   nop
/* E00C 8001D80C 16004010 */  beqz       $v0, .L8001D868
/* E010 8001D810 21880000 */   addu      $s1, $zero, $zero
/* E014 8001D814 21280000 */  addu       $a1, $zero, $zero
.L8001D818:
/* E018 8001D818 3C00438E */  lw         $v1, 0x3C($s2)
/* E01C 8001D81C 00000000 */  nop
/* E020 8001D820 2118A300 */  addu       $v1, $a1, $v1
/* E024 8001D824 07006290 */  lbu        $v0, 0x7($v1)
/* E028 8001D828 00000000 */  nop
/* E02C 8001D82C 02004234 */  ori        $v0, $v0, 0x2
/* E030 8001D830 070062A0 */  sb         $v0, 0x7($v1)
/* E034 8001D834 3C00448E */  lw         $a0, 0x3C($s2)
/* E038 8001D838 00000000 */  nop
/* E03C 8001D83C 2120A400 */  addu       $a0, $a1, $a0
/* E040 8001D840 28008424 */  addiu      $a0, $a0, 0x28
/* E044 8001D844 07008290 */  lbu        $v0, 0x7($a0)
/* E048 8001D848 01003126 */  addiu      $s1, $s1, 0x1
/* E04C 8001D84C 02004234 */  ori        $v0, $v0, 0x2
/* E050 8001D850 070082A0 */  sb         $v0, 0x7($a0)
/* E054 8001D854 52004396 */  lhu        $v1, 0x52($s2)
/* E058 8001D858 00000000 */  nop
/* E05C 8001D85C 2A182302 */  slt        $v1, $s1, $v1
/* E060 8001D860 EDFF6014 */  bnez       $v1, .L8001D818
/* E064 8001D864 5C00A524 */   addiu     $a1, $a1, 0x5C
.L8001D868:
/* E068 8001D868 54004296 */  lhu        $v0, 0x54($s2)
/* E06C 8001D86C 00000000 */  nop
/* E070 8001D870 18004010 */  beqz       $v0, .L8001D8D4
/* E074 8001D874 00000000 */   nop
/* E078 8001D878 16004010 */  beqz       $v0, .L8001D8D4
/* E07C 8001D87C 21880000 */   addu      $s1, $zero, $zero
/* E080 8001D880 21280000 */  addu       $a1, $zero, $zero
.L8001D884:
/* E084 8001D884 4000438E */  lw         $v1, 0x40($s2)
/* E088 8001D888 00000000 */  nop
/* E08C 8001D88C 2118A300 */  addu       $v1, $a1, $v1
/* E090 8001D890 07006290 */  lbu        $v0, 0x7($v1)
/* E094 8001D894 00000000 */  nop
/* E098 8001D898 02004234 */  ori        $v0, $v0, 0x2
/* E09C 8001D89C 070062A0 */  sb         $v0, 0x7($v1)
/* E0A0 8001D8A0 4000448E */  lw         $a0, 0x40($s2)
/* E0A4 8001D8A4 00000000 */  nop
/* E0A8 8001D8A8 2120A400 */  addu       $a0, $a1, $a0
/* E0AC 8001D8AC 28008424 */  addiu      $a0, $a0, 0x28
/* E0B0 8001D8B0 07008290 */  lbu        $v0, 0x7($a0)
/* E0B4 8001D8B4 01003126 */  addiu      $s1, $s1, 0x1
/* E0B8 8001D8B8 02004234 */  ori        $v0, $v0, 0x2
/* E0BC 8001D8BC 070082A0 */  sb         $v0, 0x7($a0)
/* E0C0 8001D8C0 54004396 */  lhu        $v1, 0x54($s2)
/* E0C4 8001D8C4 00000000 */  nop
/* E0C8 8001D8C8 2A182302 */  slt        $v1, $s1, $v1
/* E0CC 8001D8CC EDFF6014 */  bnez       $v1, .L8001D884
/* E0D0 8001D8D0 5800A524 */   addiu     $a1, $a1, 0x58
.L8001D8D4:
/* E0D4 8001D8D4 56004296 */  lhu        $v0, 0x56($s2)
/* E0D8 8001D8D8 00000000 */  nop
/* E0DC 8001D8DC 18004010 */  beqz       $v0, .L8001D940
/* E0E0 8001D8E0 00000000 */   nop
/* E0E4 8001D8E4 16004010 */  beqz       $v0, .L8001D940
/* E0E8 8001D8E8 21880000 */   addu      $s1, $zero, $zero
/* E0EC 8001D8EC 21280000 */  addu       $a1, $zero, $zero
.L8001D8F0:
/* E0F0 8001D8F0 4400438E */  lw         $v1, 0x44($s2)
/* E0F4 8001D8F4 00000000 */  nop
/* E0F8 8001D8F8 2118A300 */  addu       $v1, $a1, $v1
/* E0FC 8001D8FC 07006290 */  lbu        $v0, 0x7($v1)
/* E100 8001D900 00000000 */  nop
/* E104 8001D904 02004234 */  ori        $v0, $v0, 0x2
/* E108 8001D908 070062A0 */  sb         $v0, 0x7($v1)
/* E10C 8001D90C 4400448E */  lw         $a0, 0x44($s2)
/* E110 8001D910 00000000 */  nop
/* E114 8001D914 2120A400 */  addu       $a0, $a1, $a0
/* E118 8001D918 34008424 */  addiu      $a0, $a0, 0x34
/* E11C 8001D91C 07008290 */  lbu        $v0, 0x7($a0)
/* E120 8001D920 01003126 */  addiu      $s1, $s1, 0x1
/* E124 8001D924 02004234 */  ori        $v0, $v0, 0x2
/* E128 8001D928 070082A0 */  sb         $v0, 0x7($a0)
/* E12C 8001D92C 56004396 */  lhu        $v1, 0x56($s2)
/* E130 8001D930 00000000 */  nop
/* E134 8001D934 2A182302 */  slt        $v1, $s1, $v1
/* E138 8001D938 EDFF6014 */  bnez       $v1, .L8001D8F0
/* E13C 8001D93C 7400A524 */   addiu     $a1, $a1, 0x74
.L8001D940:
/* E140 8001D940 2C00BF8F */  lw         $ra, 0x2C($sp)
/* E144 8001D944 2800B48F */  lw         $s4, 0x28($sp)
/* E148 8001D948 2400B38F */  lw         $s3, 0x24($sp)
/* E14C 8001D94C 2000B28F */  lw         $s2, 0x20($sp)
/* E150 8001D950 1C00B18F */  lw         $s1, 0x1C($sp)
/* E154 8001D954 1800B08F */  lw         $s0, 0x18($sp)
/* E158 8001D958 0800E003 */  jr         $ra
/* E15C 8001D95C 3000BD27 */   addiu     $sp, $sp, 0x30
.size MakeActorSemiTrans, . - MakeActorSemiTrans
