.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckElectricFence
/* 2E334 8003DB34 05000524 */  addiu      $a1, $zero, 0x5
/* 2E338 8003DB38 0800838C */  lw         $v1, 0x8($a0)
/* 2E33C 8003DB3C 8400828C */  lw         $v0, 0x84($a0)
/* 2E340 8003DB40 04008E8C */  lw         $t6, 0x4($a0)
/* 2E344 8003DB44 01006924 */  addiu      $t1, $v1, 0x1
/* 2E348 8003DB48 43100200 */  sra        $v0, $v0, 1
/* 2E34C 8003DB4C FFFF4C24 */  addiu      $t4, $v0, -0x1
/* 2E350 8003DB50 0980033C */  lui        $v1, %hi(ETActor + 0x140)
/* 2E354 8003DB54 F05B628C */  lw         $v0, %lo(ETActor + 0x140)($v1)
/* 2E358 8003DB58 0C008D8C */  lw         $t5, 0xC($a0)
/* 2E35C 8003DB5C 06004510 */  beq        $v0, $a1, .L8003DB78
/* 2E360 8003DB60 08000224 */   addiu     $v0, $zero, 0x8
/* 2E364 8003DB64 0980033C */  lui        $v1, %hi(gGameState)
/* 2E368 8003DB68 8456638C */  lw         $v1, %lo(gGameState)($v1)
/* 2E36C 8003DB6C 00000000 */  nop
/* 2E370 8003DB70 03006214 */  bne        $v1, $v0, .L8003DB80
/* 2E374 8003DB74 00000000 */   nop
.L8003DB78:
/* 2E378 8003DB78 0800E003 */  jr         $ra
/* 2E37C 8003DB7C 21100000 */   addu      $v0, $zero, $zero
.L8003DB80:
/* 2E380 8003DB80 02002105 */  bgez       $t1, .L8003DB8C
/* 2E384 8003DB84 2350AC01 */   subu      $t2, $t5, $t4
/* 2E388 8003DB88 21480000 */  addu       $t1, $zero, $zero
.L8003DB8C:
/* 2E38C 8003DB8C 0880073C */  lui        $a3, %hi(TestWorld)
/* 2E390 8003DB90 8C65E48C */  lw         $a0, %lo(TestWorld)($a3)
/* 2E394 8003DB94 C3110A00 */  sra        $v0, $t2, 7
/* 2E398 8003DB98 18004400 */  mult       $v0, $a0
/* 2E39C 8003DB9C 12100000 */  mflo       $v0
/* 2E3A0 8003DBA0 C3490900 */  sra        $t1, $t1, 7
/* 2E3A4 8003DBA4 00000000 */  nop
/* 2E3A8 8003DBA8 18002401 */  mult       $t1, $a0
/* 2E3AC 8003DBAC 8C65E624 */  addiu      $a2, $a3, %lo(TestWorld)
/* 2E3B0 8003DBB0 12200000 */  mflo       $a0
/* 2E3B4 8003DBB4 0400C38C */  lw         $v1, 0x4($a2)
/* 2E3B8 8003DBB8 00000000 */  nop
/* 2E3BC 8003DBBC 18004300 */  mult       $v0, $v1
/* 2E3C0 8003DBC0 2140CC01 */  addu       $t0, $t6, $t4
/* 2E3C4 8003DBC4 1400C58C */  lw         $a1, 0x14($a2)
/* 2E3C8 8003DBC8 C3190800 */  sra        $v1, $t0, 7
/* 2E3CC 8003DBCC 40180300 */  sll        $v1, $v1, 1
/* 2E3D0 8003DBD0 40200400 */  sll        $a0, $a0, 1
/* 2E3D4 8003DBD4 12100000 */  mflo       $v0
/* 2E3D8 8003DBD8 40100200 */  sll        $v0, $v0, 1
/* 2E3DC 8003DBDC 21104500 */  addu       $v0, $v0, $a1
/* 2E3E0 8003DBE0 21208200 */  addu       $a0, $a0, $v0
/* 2E3E4 8003DBE4 21186400 */  addu       $v1, $v1, $a0
/* 2E3E8 8003DBE8 00006284 */  lh         $v0, 0x0($v1)
/* 2E3EC 8003DBEC FF030324 */  addiu      $v1, $zero, 0x3FF
/* 2E3F0 8003DBF0 FF034430 */  andi       $a0, $v0, 0x3FF
/* 2E3F4 8003DBF4 03008314 */  bne        $a0, $v1, .L8003DC04
/* 2E3F8 8003DBF8 2158E000 */   addu      $t3, $a3, $zero
/* 2E3FC 8003DBFC 08F70008 */  j          .L8003DC20
/* 2E400 8003DC00 21180000 */   addu      $v1, $zero, $zero
.L8003DC04:
/* 2E404 8003DC04 80100400 */  sll        $v0, $a0, 2
/* 2E408 8003DC08 21104400 */  addu       $v0, $v0, $a0
/* 2E40C 8003DC0C 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2E410 8003DC10 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2E414 8003DC14 C0100200 */  sll        $v0, $v0, 3
/* 2E418 8003DC18 21104300 */  addu       $v0, $v0, $v1
/* 2E41C 8003DC1C 0800438C */  lw         $v1, 0x8($v0)
.L8003DC20:
/* 2E420 8003DC20 0200023C */  lui        $v0, (0x20000 >> 16)
/* 2E424 8003DC24 24106200 */  and        $v0, $v1, $v0
/* 2E428 8003DC28 03004010 */  beqz       $v0, .L8003DC38
/* 2E42C 8003DC2C 2138AC01 */   addu      $a3, $t5, $t4
.L8003DC30:
/* 2E430 8003DC30 0800E003 */  jr         $ra
/* 2E434 8003DC34 01000224 */   addiu     $v0, $zero, 0x1
.L8003DC38:
/* 2E438 8003DC38 8C65648D */  lw         $a0, %lo(TestWorld)($t3)
/* 2E43C 8003DC3C C3110700 */  sra        $v0, $a3, 7
/* 2E440 8003DC40 18004400 */  mult       $v0, $a0
/* 2E444 8003DC44 12100000 */  mflo       $v0
/* 2E448 8003DC48 00000000 */  nop
/* 2E44C 8003DC4C 00000000 */  nop
/* 2E450 8003DC50 18002401 */  mult       $t1, $a0
/* 2E454 8003DC54 8C656625 */  addiu      $a2, $t3, %lo(TestWorld)
/* 2E458 8003DC58 12200000 */  mflo       $a0
/* 2E45C 8003DC5C 0400C38C */  lw         $v1, 0x4($a2)
/* 2E460 8003DC60 00000000 */  nop
/* 2E464 8003DC64 18004300 */  mult       $v0, $v1
/* 2E468 8003DC68 C3290800 */  sra        $a1, $t0, 7
/* 2E46C 8003DC6C 40280500 */  sll        $a1, $a1, 1
/* 2E470 8003DC70 40200400 */  sll        $a0, $a0, 1
/* 2E474 8003DC74 1400C38C */  lw         $v1, 0x14($a2)
/* 2E478 8003DC78 12100000 */  mflo       $v0
/* 2E47C 8003DC7C 40100200 */  sll        $v0, $v0, 1
/* 2E480 8003DC80 21104300 */  addu       $v0, $v0, $v1
/* 2E484 8003DC84 21208200 */  addu       $a0, $a0, $v0
/* 2E488 8003DC88 2128A400 */  addu       $a1, $a1, $a0
/* 2E48C 8003DC8C 0000A284 */  lh         $v0, 0x0($a1)
/* 2E490 8003DC90 FF030324 */  addiu      $v1, $zero, 0x3FF
/* 2E494 8003DC94 FF034530 */  andi       $a1, $v0, 0x3FF
/* 2E498 8003DC98 0300A314 */  bne        $a1, $v1, .L8003DCA8
/* 2E49C 8003DC9C 80100500 */   sll       $v0, $a1, 2
/* 2E4A0 8003DCA0 30F70008 */  j          .L8003DCC0
/* 2E4A4 8003DCA4 21280000 */   addu      $a1, $zero, $zero
.L8003DCA8:
/* 2E4A8 8003DCA8 21104500 */  addu       $v0, $v0, $a1
/* 2E4AC 8003DCAC 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2E4B0 8003DCB0 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2E4B4 8003DCB4 C0100200 */  sll        $v0, $v0, 3
/* 2E4B8 8003DCB8 21104300 */  addu       $v0, $v0, $v1
/* 2E4BC 8003DCBC 0800458C */  lw         $a1, 0x8($v0)
.L8003DCC0:
/* 2E4C0 8003DCC0 0200023C */  lui        $v0, (0x20000 >> 16)
/* 2E4C4 8003DCC4 2410A200 */  and        $v0, $a1, $v0
/* 2E4C8 8003DCC8 D9FF4014 */  bnez       $v0, .L8003DC30
/* 2E4CC 8003DCCC C3110700 */   sra       $v0, $a3, 7
/* 2E4D0 8003DCD0 8C65648D */  lw         $a0, %lo(TestWorld)($t3)
/* 2E4D4 8003DCD4 00000000 */  nop
/* 2E4D8 8003DCD8 18004400 */  mult       $v0, $a0
/* 2E4DC 8003DCDC 12100000 */  mflo       $v0
/* 2E4E0 8003DCE0 00000000 */  nop
/* 2E4E4 8003DCE4 00000000 */  nop
/* 2E4E8 8003DCE8 18002401 */  mult       $t1, $a0
/* 2E4EC 8003DCEC 8C656625 */  addiu      $a2, $t3, %lo(TestWorld)
/* 2E4F0 8003DCF0 12200000 */  mflo       $a0
/* 2E4F4 8003DCF4 0400C38C */  lw         $v1, 0x4($a2)
/* 2E4F8 8003DCF8 00000000 */  nop
/* 2E4FC 8003DCFC 18004300 */  mult       $v0, $v1
/* 2E500 8003DD00 2338CC01 */  subu       $a3, $t6, $t4
/* 2E504 8003DD04 1400C58C */  lw         $a1, 0x14($a2)
/* 2E508 8003DD08 C3190700 */  sra        $v1, $a3, 7
/* 2E50C 8003DD0C 40180300 */  sll        $v1, $v1, 1
/* 2E510 8003DD10 40200400 */  sll        $a0, $a0, 1
/* 2E514 8003DD14 12100000 */  mflo       $v0
/* 2E518 8003DD18 40100200 */  sll        $v0, $v0, 1
/* 2E51C 8003DD1C 21104500 */  addu       $v0, $v0, $a1
/* 2E520 8003DD20 21208200 */  addu       $a0, $a0, $v0
/* 2E524 8003DD24 21186400 */  addu       $v1, $v1, $a0
/* 2E528 8003DD28 00006284 */  lh         $v0, 0x0($v1)
/* 2E52C 8003DD2C FF030324 */  addiu      $v1, $zero, 0x3FF
/* 2E530 8003DD30 FF034430 */  andi       $a0, $v0, 0x3FF
/* 2E534 8003DD34 03008314 */  bne        $a0, $v1, .L8003DD44
/* 2E538 8003DD38 2128E000 */   addu      $a1, $a3, $zero
/* 2E53C 8003DD3C 58F70008 */  j          .L8003DD60
/* 2E540 8003DD40 21380000 */   addu      $a3, $zero, $zero
.L8003DD44:
/* 2E544 8003DD44 80100400 */  sll        $v0, $a0, 2
/* 2E548 8003DD48 21104400 */  addu       $v0, $v0, $a0
/* 2E54C 8003DD4C 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2E550 8003DD50 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2E554 8003DD54 C0100200 */  sll        $v0, $v0, 3
/* 2E558 8003DD58 21104300 */  addu       $v0, $v0, $v1
/* 2E55C 8003DD5C 0800478C */  lw         $a3, 0x8($v0)
.L8003DD60:
/* 2E560 8003DD60 0200023C */  lui        $v0, (0x20000 >> 16)
/* 2E564 8003DD64 2410E200 */  and        $v0, $a3, $v0
/* 2E568 8003DD68 B1FF4014 */  bnez       $v0, .L8003DC30
/* 2E56C 8003DD6C C3110A00 */   sra       $v0, $t2, 7
/* 2E570 8003DD70 8C65648D */  lw         $a0, %lo(TestWorld)($t3)
/* 2E574 8003DD74 00000000 */  nop
/* 2E578 8003DD78 18004400 */  mult       $v0, $a0
/* 2E57C 8003DD7C 12100000 */  mflo       $v0
/* 2E580 8003DD80 00000000 */  nop
/* 2E584 8003DD84 00000000 */  nop
/* 2E588 8003DD88 18002401 */  mult       $t1, $a0
/* 2E58C 8003DD8C 8C656625 */  addiu      $a2, $t3, %lo(TestWorld)
/* 2E590 8003DD90 12200000 */  mflo       $a0
/* 2E594 8003DD94 0400C38C */  lw         $v1, 0x4($a2)
/* 2E598 8003DD98 00000000 */  nop
/* 2E59C 8003DD9C 18004300 */  mult       $v0, $v1
/* 2E5A0 8003DDA0 C3290500 */  sra        $a1, $a1, 7
/* 2E5A4 8003DDA4 40280500 */  sll        $a1, $a1, 1
/* 2E5A8 8003DDA8 40200400 */  sll        $a0, $a0, 1
/* 2E5AC 8003DDAC 1400C38C */  lw         $v1, 0x14($a2)
/* 2E5B0 8003DDB0 12100000 */  mflo       $v0
/* 2E5B4 8003DDB4 40100200 */  sll        $v0, $v0, 1
/* 2E5B8 8003DDB8 21104300 */  addu       $v0, $v0, $v1
/* 2E5BC 8003DDBC 21208200 */  addu       $a0, $a0, $v0
/* 2E5C0 8003DDC0 2128A400 */  addu       $a1, $a1, $a0
/* 2E5C4 8003DDC4 0000A284 */  lh         $v0, 0x0($a1)
/* 2E5C8 8003DDC8 FF030324 */  addiu      $v1, $zero, 0x3FF
/* 2E5CC 8003DDCC FF034530 */  andi       $a1, $v0, 0x3FF
/* 2E5D0 8003DDD0 0300A314 */  bne        $a1, $v1, .L8003DDE0
/* 2E5D4 8003DDD4 80100500 */   sll       $v0, $a1, 2
/* 2E5D8 8003DDD8 7EF70008 */  j          .L8003DDF8
/* 2E5DC 8003DDDC 21280000 */   addu      $a1, $zero, $zero
.L8003DDE0:
/* 2E5E0 8003DDE0 21104500 */  addu       $v0, $v0, $a1
/* 2E5E4 8003DDE4 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2E5E8 8003DDE8 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2E5EC 8003DDEC C0100200 */  sll        $v0, $v0, 3
/* 2E5F0 8003DDF0 21104300 */  addu       $v0, $v0, $v1
/* 2E5F4 8003DDF4 0800458C */  lw         $a1, 0x8($v0)
.L8003DDF8:
/* 2E5F8 8003DDF8 0200023C */  lui        $v0, (0x20000 >> 16)
/* 2E5FC 8003DDFC 2410A200 */  and        $v0, $a1, $v0
/* 2E600 8003DE00 8BFF4014 */  bnez       $v0, .L8003DC30
/* 2E604 8003DE04 C3110D00 */   sra       $v0, $t5, 7
/* 2E608 8003DE08 8C65648D */  lw         $a0, %lo(TestWorld)($t3)
/* 2E60C 8003DE0C 00000000 */  nop
/* 2E610 8003DE10 18004400 */  mult       $v0, $a0
/* 2E614 8003DE14 12100000 */  mflo       $v0
/* 2E618 8003DE18 00000000 */  nop
/* 2E61C 8003DE1C 00000000 */  nop
/* 2E620 8003DE20 18002401 */  mult       $t1, $a0
/* 2E624 8003DE24 8C656625 */  addiu      $a2, $t3, %lo(TestWorld)
/* 2E628 8003DE28 12200000 */  mflo       $a0
/* 2E62C 8003DE2C 0400C38C */  lw         $v1, 0x4($a2)
/* 2E630 8003DE30 00000000 */  nop
/* 2E634 8003DE34 18004300 */  mult       $v0, $v1
/* 2E638 8003DE38 C3290E00 */  sra        $a1, $t6, 7
/* 2E63C 8003DE3C 40280500 */  sll        $a1, $a1, 1
/* 2E640 8003DE40 40200400 */  sll        $a0, $a0, 1
/* 2E644 8003DE44 1400C38C */  lw         $v1, 0x14($a2)
/* 2E648 8003DE48 12100000 */  mflo       $v0
/* 2E64C 8003DE4C 40100200 */  sll        $v0, $v0, 1
/* 2E650 8003DE50 21104300 */  addu       $v0, $v0, $v1
/* 2E654 8003DE54 21208200 */  addu       $a0, $a0, $v0
/* 2E658 8003DE58 2128A400 */  addu       $a1, $a1, $a0
/* 2E65C 8003DE5C 0000A284 */  lh         $v0, 0x0($a1)
/* 2E660 8003DE60 FF030324 */  addiu      $v1, $zero, 0x3FF
/* 2E664 8003DE64 FF034430 */  andi       $a0, $v0, 0x3FF
/* 2E668 8003DE68 08008310 */  beq        $a0, $v1, .L8003DE8C
/* 2E66C 8003DE6C 21180000 */   addu      $v1, $zero, $zero
/* 2E670 8003DE70 80100400 */  sll        $v0, $a0, 2
/* 2E674 8003DE74 21104400 */  addu       $v0, $v0, $a0
/* 2E678 8003DE78 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2E67C 8003DE7C 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2E680 8003DE80 C0100200 */  sll        $v0, $v0, 3
/* 2E684 8003DE84 21104300 */  addu       $v0, $v0, $v1
/* 2E688 8003DE88 0800438C */  lw         $v1, 0x8($v0)
.L8003DE8C:
/* 2E68C 8003DE8C 0200023C */  lui        $v0, (0x20000 >> 16)
/* 2E690 8003DE90 24106200 */  and        $v0, $v1, $v0
/* 2E694 8003DE94 0800E003 */  jr         $ra
/* 2E698 8003DE98 2B100200 */   sltu      $v0, $zero, $v0
.size CheckElectricFence, . - CheckElectricFence
