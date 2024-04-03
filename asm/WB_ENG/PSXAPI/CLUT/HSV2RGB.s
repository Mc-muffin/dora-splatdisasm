.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HSV2RGB
/* 4DB58 8005D358 21408000 */  addu       $t0, $a0, $zero
/* 4DB5C 8005D35C 2150A000 */  addu       $t2, $a1, $zero
/* 4DB60 8005D360 2148C000 */  addu       $t1, $a2, $zero
/* 4DB64 8005D364 68010229 */  slti       $v0, $t0, 0x168
/* 4DB68 8005D368 1000AD8F */  lw         $t5, 0x10($sp)
/* 4DB6C 8005D36C 1400AE8F */  lw         $t6, 0x14($sp)
/* 4DB70 8005D370 06004014 */  bnez       $v0, .L8005D38C
/* 4DB74 8005D374 2160E000 */   addu      $t4, $a3, $zero
/* 4DB78 8005D378 98FE0825 */  addiu      $t0, $t0, -0x168
.L8005D37C:
/* 4DB7C 8005D37C 68010229 */  slti       $v0, $t0, 0x168
/* 4DB80 8005D380 FEFF4010 */  beqz       $v0, .L8005D37C
/* 4DB84 8005D384 98FE0825 */   addiu     $t0, $t0, -0x168
/* 4DB88 8005D388 68010825 */  addiu      $t0, $t0, 0x168
.L8005D38C:
/* 4DB8C 8005D38C 00014229 */  slti       $v0, $t2, 0x100
/* 4DB90 8005D390 05000105 */  bgez       $t0, .L8005D3A8
/* 4DB94 8005D394 00012329 */   slti      $v1, $t1, 0x100
/* 4DB98 8005D398 68010825 */  addiu      $t0, $t0, 0x168
.L8005D39C:
/* 4DB9C 8005D39C FFFF0005 */  bltz       $t0, .L8005D39C
/* 4DBA0 8005D3A0 68010825 */   addiu     $t0, $t0, 0x168
/* 4DBA4 8005D3A4 98FE0825 */  addiu      $t0, $t0, -0x168
.L8005D3A8:
/* 4DBA8 8005D3A8 02004014 */  bnez       $v0, .L8005D3B4
/* 4DBAC 8005D3AC 00000000 */   nop
/* 4DBB0 8005D3B0 FF000A24 */  addiu      $t2, $zero, 0xFF
.L8005D3B4:
/* 4DBB4 8005D3B4 02004105 */  bgez       $t2, .L8005D3C0
/* 4DBB8 8005D3B8 00000000 */   nop
/* 4DBBC 8005D3BC 21500000 */  addu       $t2, $zero, $zero
.L8005D3C0:
/* 4DBC0 8005D3C0 02006014 */  bnez       $v1, .L8005D3CC
/* 4DBC4 8005D3C4 00000000 */   nop
/* 4DBC8 8005D3C8 FF000924 */  addiu      $t1, $zero, 0xFF
.L8005D3CC:
/* 4DBCC 8005D3CC 02002105 */  bgez       $t1, .L8005D3D8
/* 4DBD0 8005D3D0 00000000 */   nop
/* 4DBD4 8005D3D4 21480000 */  addu       $t1, $zero, $zero
.L8005D3D8:
/* 4DBD8 8005D3D8 05004015 */  bnez       $t2, .L8005D3F0
/* 4DBDC 8005D3DC 8888033C */   lui       $v1, (0x88888889 >> 16)
/* 4DBE0 8005D3E0 000089AD */  sw         $t1, 0x0($t4)
/* 4DBE4 8005D3E4 0000A9AD */  sw         $t1, 0x0($t5)
/* 4DBE8 8005D3E8 0800E003 */  jr         $ra
/* 4DBEC 8005D3EC 0000C9AD */   sw        $t1, 0x0($t6)
.L8005D3F0:
/* 4DBF0 8005D3F0 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
/* 4DBF4 8005D3F4 18000301 */  mult       $t0, $v1
/* 4DBF8 8005D3F8 10180000 */  mfhi       $v1
/* 4DBFC 8005D3FC 00010624 */  addiu      $a2, $zero, 0x100
/* 4DC00 8005D400 2338CA00 */  subu       $a3, $a2, $t2
/* 4DC04 8005D404 18002701 */  mult       $t1, $a3
/* 4DC08 8005D408 C3270800 */  sra        $a0, $t0, 31
/* 4DC0C 8005D40C 21186800 */  addu       $v1, $v1, $t0
/* 4DC10 8005D410 43190300 */  sra        $v1, $v1, 5
/* 4DC14 8005D414 23586400 */  subu       $t3, $v1, $a0
/* 4DC18 8005D418 00110B00 */  sll        $v0, $t3, 4
/* 4DC1C 8005D41C 23104B00 */  subu       $v0, $v0, $t3
/* 4DC20 8005D420 12380000 */  mflo       $a3
/* 4DC24 8005D424 80100200 */  sll        $v0, $v0, 2
/* 4DC28 8005D428 23100201 */  subu       $v0, $t0, $v0
/* 4DC2C 8005D42C 18004201 */  mult       $t2, $v0
/* 4DC30 8005D430 12280000 */  mflo       $a1
/* 4DC34 8005D434 3B000424 */  addiu      $a0, $zero, 0x3B
/* 4DC38 8005D438 23208200 */  subu       $a0, $a0, $v0
/* 4DC3C 8005D43C 18004401 */  mult       $t2, $a0
/* 4DC40 8005D440 12200000 */  mflo       $a0
/* 4DC44 8005D444 B622023C */  lui        $v0, (0x22B63CBF >> 16)
/* 4DC48 8005D448 BF3C4234 */  ori        $v0, $v0, (0x22B63CBF & 0xFFFF)
/* 4DC4C 8005D44C 1800A200 */  mult       $a1, $v0
/* 4DC50 8005D450 10180000 */  mfhi       $v1
/* 4DC54 8005D454 00000000 */  nop
/* 4DC58 8005D458 00000000 */  nop
/* 4DC5C 8005D45C 18008200 */  mult       $a0, $v0
/* 4DC60 8005D460 C32F0500 */  sra        $a1, $a1, 31
/* 4DC64 8005D464 C3180300 */  sra        $v1, $v1, 3
/* 4DC68 8005D468 10100000 */  mfhi       $v0
/* 4DC6C 8005D46C 23186500 */  subu       $v1, $v1, $a1
/* 4DC70 8005D470 2318C300 */  subu       $v1, $a2, $v1
/* 4DC74 8005D474 18002301 */  mult       $t1, $v1
/* 4DC78 8005D478 C3270400 */  sra        $a0, $a0, 31
/* 4DC7C 8005D47C C3100200 */  sra        $v0, $v0, 3
/* 4DC80 8005D480 12180000 */  mflo       $v1
/* 4DC84 8005D484 23104400 */  subu       $v0, $v0, $a0
/* 4DC88 8005D488 2330C200 */  subu       $a2, $a2, $v0
/* 4DC8C 8005D48C 18002601 */  mult       $t1, $a2
/* 4DC90 8005D490 033A0700 */  sra        $a3, $a3, 8
/* 4DC94 8005D494 0101E228 */  slti       $v0, $a3, 0x101
/* 4DC98 8005D498 03420300 */  sra        $t0, $v1, 8
/* 4DC9C 8005D49C 12300000 */  mflo       $a2
/* 4DCA0 8005D4A0 03004014 */  bnez       $v0, .L8005D4B0
/* 4DCA4 8005D4A4 032A0600 */   sra       $a1, $a2, 8
/* 4DCA8 8005D4A8 2F750108 */  j          .L8005D4BC
/* 4DCAC 8005D4AC 00010724 */   addiu     $a3, $zero, 0x100
.L8005D4B0:
/* 4DCB0 8005D4B0 0300E104 */  bgez       $a3, .L8005D4C0
/* 4DCB4 8005D4B4 01010229 */   slti      $v0, $t0, 0x101
/* 4DCB8 8005D4B8 21380000 */  addu       $a3, $zero, $zero
.L8005D4BC:
/* 4DCBC 8005D4BC 01010229 */  slti       $v0, $t0, 0x101
.L8005D4C0:
/* 4DCC0 8005D4C0 03004014 */  bnez       $v0, .L8005D4D0
/* 4DCC4 8005D4C4 00000000 */   nop
/* 4DCC8 8005D4C8 37750108 */  j          .L8005D4DC
/* 4DCCC 8005D4CC 00010824 */   addiu     $t0, $zero, 0x100
.L8005D4D0:
/* 4DCD0 8005D4D0 03000105 */  bgez       $t0, .L8005D4E0
/* 4DCD4 8005D4D4 0101A228 */   slti      $v0, $a1, 0x101
/* 4DCD8 8005D4D8 21400000 */  addu       $t0, $zero, $zero
.L8005D4DC:
/* 4DCDC 8005D4DC 0101A228 */  slti       $v0, $a1, 0x101
.L8005D4E0:
/* 4DCE0 8005D4E0 03004014 */  bnez       $v0, .L8005D4F0
/* 4DCE4 8005D4E4 00000000 */   nop
/* 4DCE8 8005D4E8 3F750108 */  j          .L8005D4FC
/* 4DCEC 8005D4EC 00010524 */   addiu     $a1, $zero, 0x100
.L8005D4F0:
/* 4DCF0 8005D4F0 0300A104 */  bgez       $a1, .L8005D500
/* 4DCF4 8005D4F4 0600622D */   sltiu     $v0, $t3, 0x6
/* 4DCF8 8005D4F8 21280000 */  addu       $a1, $zero, $zero
.L8005D4FC:
/* 4DCFC 8005D4FC 0600622D */  sltiu      $v0, $t3, 0x6
.L8005D500:
/* 4DD00 8005D500 1F004010 */  beqz       $v0, .L8005D580
/* 4DD04 8005D504 0180023C */   lui       $v0, %hi(jtbl_80013320)
/* 4DD08 8005D508 20334224 */  addiu      $v0, $v0, %lo(jtbl_80013320)
/* 4DD0C 8005D50C 80180B00 */  sll        $v1, $t3, 2
/* 4DD10 8005D510 21186200 */  addu       $v1, $v1, $v0
/* 4DD14 8005D514 0000648C */  lw         $a0, 0x0($v1)
/* 4DD18 8005D518 00000000 */  nop
/* 4DD1C 8005D51C 08008000 */  jr         $a0
/* 4DD20 8005D520 00000000 */   nop
jlabel .L8005D524
/* 4DD24 8005D524 000089AD */  sw         $t1, 0x0($t4)
/* 4DD28 8005D528 0000A5AD */  sw         $a1, 0x0($t5)
/* 4DD2C 8005D52C 0800E003 */  jr         $ra
/* 4DD30 8005D530 0000C7AD */   sw        $a3, 0x0($t6)
jlabel .L8005D534
/* 4DD34 8005D534 000088AD */  sw         $t0, 0x0($t4)
/* 4DD38 8005D538 0000A9AD */  sw         $t1, 0x0($t5)
/* 4DD3C 8005D53C 0800E003 */  jr         $ra
/* 4DD40 8005D540 0000C7AD */   sw        $a3, 0x0($t6)
jlabel .L8005D544
/* 4DD44 8005D544 000087AD */  sw         $a3, 0x0($t4)
/* 4DD48 8005D548 0000A9AD */  sw         $t1, 0x0($t5)
/* 4DD4C 8005D54C 0800E003 */  jr         $ra
/* 4DD50 8005D550 0000C5AD */   sw        $a1, 0x0($t6)
jlabel .L8005D554
/* 4DD54 8005D554 000087AD */  sw         $a3, 0x0($t4)
/* 4DD58 8005D558 0000A8AD */  sw         $t0, 0x0($t5)
/* 4DD5C 8005D55C 0800E003 */  jr         $ra
/* 4DD60 8005D560 0000C9AD */   sw        $t1, 0x0($t6)
jlabel .L8005D564
/* 4DD64 8005D564 000085AD */  sw         $a1, 0x0($t4)
/* 4DD68 8005D568 0000A7AD */  sw         $a3, 0x0($t5)
/* 4DD6C 8005D56C 0800E003 */  jr         $ra
/* 4DD70 8005D570 0000C9AD */   sw        $t1, 0x0($t6)
jlabel .L8005D574
/* 4DD74 8005D574 000089AD */  sw         $t1, 0x0($t4)
/* 4DD78 8005D578 0000A7AD */  sw         $a3, 0x0($t5)
/* 4DD7C 8005D57C 0000C8AD */  sw         $t0, 0x0($t6)
.L8005D580:
/* 4DD80 8005D580 0800E003 */  jr         $ra
/* 4DD84 8005D584 00000000 */   nop
.size HSV2RGB, . - HSV2RGB
