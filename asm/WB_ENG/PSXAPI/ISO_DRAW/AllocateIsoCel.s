.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocateIsoCel
/* 54418 80063C18 801F023C */  lui        $v0, (0x1F800010 >> 16)
/* 5441C 80063C1C 21508000 */  addu       $t2, $a0, $zero
/* 54420 80063C20 0000438D */  lw         $v1, 0x0($t2)
/* 54424 80063C24 10004234 */  ori        $v0, $v0, (0x1F800010 & 0xFFFF)
/* 54428 80063C28 000043AC */  sw         $v1, 0x0($v0)
/* 5442C 80063C2C 3000448D */  lw         $a0, 0x30($t2)
/* 54430 80063C30 380040AC */  sw         $zero, 0x38($v0)
/* 54434 80063C34 3C0040AC */  sw         $zero, 0x3C($v0)
/* 54438 80063C38 300044AC */  sw         $a0, 0x30($v0)
/* 5443C 80063C3C 4000438D */  lw         $v1, 0x40($t2)
/* 54440 80063C40 00000000 */  nop
/* 54444 80063C44 3B006018 */  blez       $v1, .L80063D34
/* 54448 80063C48 C0100300 */   sll       $v0, $v1, 3
/* 5444C 80063C4C 21104300 */  addu       $v0, $v0, $v1
/* 54450 80063C50 80600200 */  sll        $t4, $v0, 2
/* 54454 80063C54 21488001 */  addu       $t1, $t4, $zero
/* 54458 80063C58 09800B3C */  lui        $t3, %hi(MEM_PolyPoolCurrent)
/* 5445C 80063C5C EC576B8D */  lw         $t3, %lo(MEM_PolyPoolCurrent)($t3)
/* 54460 80063C60 04000224 */  addiu      $v0, $zero, 0x4
/* 54464 80063C64 801F013C */  lui        $at, (0x1F800050 >> 16)
/* 54468 80063C68 500023AC */  sw         $v1, (0x1F800050 & 0xFFFF)($at)
/* 5446C 80063C6C 1000468D */  lw         $a2, 0x10($t2)
/* 54470 80063C70 00000000 */  nop
/* 54474 80063C74 0300C430 */  andi       $a0, $a2, 0x3
/* 54478 80063C78 23384400 */  subu       $a3, $v0, $a0
/* 5447C 80063C7C 0400E32C */  sltiu      $v1, $a3, 0x4
/* 54480 80063C80 0B006010 */  beqz       $v1, .L80063CB0
/* 54484 80063C84 21406001 */   addu      $t0, $t3, $zero
/* 54488 80063C88 0900E010 */  beqz       $a3, .L80063CB0
/* 5448C 80063C8C 21180000 */   addu      $v1, $zero, $zero
.L80063C90:
/* 54490 80063C90 0000C290 */  lbu        $v0, 0x0($a2)
/* 54494 80063C94 0100C624 */  addiu      $a2, $a2, 0x1
/* 54498 80063C98 FFFF2925 */  addiu      $t1, $t1, -0x1
/* 5449C 80063C9C 01006324 */  addiu      $v1, $v1, 0x1
/* 544A0 80063CA0 000002A1 */  sb         $v0, 0x0($t0)
/* 544A4 80063CA4 2B106700 */  sltu       $v0, $v1, $a3
/* 544A8 80063CA8 F9FF4014 */  bnez       $v0, .L80063C90
/* 544AC 80063CAC 01000825 */   addiu     $t0, $t0, 0x1
.L80063CB0:
/* 544B0 80063CB0 82380900 */  srl        $a3, $t1, 2
/* 544B4 80063CB4 2128C000 */  addu       $a1, $a2, $zero
/* 544B8 80063CB8 21200001 */  addu       $a0, $t0, $zero
/* 544BC 80063CBC 0900E010 */  beqz       $a3, .L80063CE4
/* 544C0 80063CC0 21180000 */   addu      $v1, $zero, $zero
.L80063CC4:
/* 544C4 80063CC4 0000A28C */  lw         $v0, 0x0($a1)
/* 544C8 80063CC8 0400A524 */  addiu      $a1, $a1, 0x4
/* 544CC 80063CCC FCFF2925 */  addiu      $t1, $t1, -0x4
/* 544D0 80063CD0 01006324 */  addiu      $v1, $v1, 0x1
/* 544D4 80063CD4 000082AC */  sw         $v0, 0x0($a0)
/* 544D8 80063CD8 2B106700 */  sltu       $v0, $v1, $a3
/* 544DC 80063CDC F9FF4014 */  bnez       $v0, .L80063CC4
/* 544E0 80063CE0 04008424 */   addiu     $a0, $a0, 0x4
.L80063CE4:
/* 544E4 80063CE4 0A002011 */  beqz       $t1, .L80063D10
/* 544E8 80063CE8 21382001 */   addu      $a3, $t1, $zero
/* 544EC 80063CEC 0800E010 */  beqz       $a3, .L80063D10
/* 544F0 80063CF0 21180000 */   addu      $v1, $zero, $zero
.L80063CF4:
/* 544F4 80063CF4 0000C290 */  lbu        $v0, 0x0($a2)
/* 544F8 80063CF8 0100C624 */  addiu      $a2, $a2, 0x1
/* 544FC 80063CFC 01006324 */  addiu      $v1, $v1, 0x1
/* 54500 80063D00 000002A1 */  sb         $v0, 0x0($t0)
/* 54504 80063D04 2B106700 */  sltu       $v0, $v1, $a3
/* 54508 80063D08 FAFF4014 */  bnez       $v0, .L80063CF4
/* 5450C 80063D0C 01000825 */   addiu     $t0, $t0, 0x1
.L80063D10:
/* 54510 80063D10 0980023C */  lui        $v0, %hi(MEM_PolyPoolCurrent)
/* 54514 80063D14 EC57428C */  lw         $v0, %lo(MEM_PolyPoolCurrent)($v0)
/* 54518 80063D18 801F013C */  lui        $at, (0x1F800020 >> 16)
/* 5451C 80063D1C 20002BAC */  sw         $t3, (0x1F800020 & 0xFFFF)($at)
/* 54520 80063D20 21104C00 */  addu       $v0, $v0, $t4
/* 54524 80063D24 0980013C */  lui        $at, %hi(MEM_PolyPoolCurrent)
/* 54528 80063D28 EC5722AC */  sw         $v0, %lo(MEM_PolyPoolCurrent)($at)
/* 5452C 80063D2C 4F8F0108 */  j          .L80063D3C
/* 54530 80063D30 00000000 */   nop
.L80063D34:
/* 54534 80063D34 801F013C */  lui        $at, (0x1F800050 >> 16)
/* 54538 80063D38 500020AC */  sw         $zero, (0x1F800050 & 0xFFFF)($at)
.L80063D3C:
/* 5453C 80063D3C 4400438D */  lw         $v1, 0x44($t2)
/* 54540 80063D40 00000000 */  nop
/* 54544 80063D44 3D006018 */  blez       $v1, .L80063E3C
/* 54548 80063D48 40100300 */   sll       $v0, $v1, 1
/* 5454C 80063D4C 21104300 */  addu       $v0, $v0, $v1
/* 54550 80063D50 80100200 */  sll        $v0, $v0, 2
/* 54554 80063D54 23104300 */  subu       $v0, $v0, $v1
/* 54558 80063D58 80600200 */  sll        $t4, $v0, 2
/* 5455C 80063D5C 21488001 */  addu       $t1, $t4, $zero
/* 54560 80063D60 09800B3C */  lui        $t3, %hi(MEM_PolyPoolCurrent)
/* 54564 80063D64 EC576B8D */  lw         $t3, %lo(MEM_PolyPoolCurrent)($t3)
/* 54568 80063D68 04000224 */  addiu      $v0, $zero, 0x4
/* 5456C 80063D6C 801F013C */  lui        $at, (0x1F800054 >> 16)
/* 54570 80063D70 540023AC */  sw         $v1, (0x1F800054 & 0xFFFF)($at)
/* 54574 80063D74 1400468D */  lw         $a2, 0x14($t2)
/* 54578 80063D78 00000000 */  nop
/* 5457C 80063D7C 0300C430 */  andi       $a0, $a2, 0x3
/* 54580 80063D80 23384400 */  subu       $a3, $v0, $a0
/* 54584 80063D84 0400E32C */  sltiu      $v1, $a3, 0x4
/* 54588 80063D88 0B006010 */  beqz       $v1, .L80063DB8
/* 5458C 80063D8C 21406001 */   addu      $t0, $t3, $zero
/* 54590 80063D90 0900E010 */  beqz       $a3, .L80063DB8
/* 54594 80063D94 21180000 */   addu      $v1, $zero, $zero
.L80063D98:
/* 54598 80063D98 0000C290 */  lbu        $v0, 0x0($a2)
/* 5459C 80063D9C 0100C624 */  addiu      $a2, $a2, 0x1
/* 545A0 80063DA0 FFFF2925 */  addiu      $t1, $t1, -0x1
/* 545A4 80063DA4 01006324 */  addiu      $v1, $v1, 0x1
/* 545A8 80063DA8 000002A1 */  sb         $v0, 0x0($t0)
/* 545AC 80063DAC 2B106700 */  sltu       $v0, $v1, $a3
/* 545B0 80063DB0 F9FF4014 */  bnez       $v0, .L80063D98
/* 545B4 80063DB4 01000825 */   addiu     $t0, $t0, 0x1
.L80063DB8:
/* 545B8 80063DB8 82380900 */  srl        $a3, $t1, 2
/* 545BC 80063DBC 2128C000 */  addu       $a1, $a2, $zero
/* 545C0 80063DC0 21200001 */  addu       $a0, $t0, $zero
/* 545C4 80063DC4 0900E010 */  beqz       $a3, .L80063DEC
/* 545C8 80063DC8 21180000 */   addu      $v1, $zero, $zero
.L80063DCC:
/* 545CC 80063DCC 0000A28C */  lw         $v0, 0x0($a1)
/* 545D0 80063DD0 0400A524 */  addiu      $a1, $a1, 0x4
/* 545D4 80063DD4 FCFF2925 */  addiu      $t1, $t1, -0x4
/* 545D8 80063DD8 01006324 */  addiu      $v1, $v1, 0x1
/* 545DC 80063DDC 000082AC */  sw         $v0, 0x0($a0)
/* 545E0 80063DE0 2B106700 */  sltu       $v0, $v1, $a3
/* 545E4 80063DE4 F9FF4014 */  bnez       $v0, .L80063DCC
/* 545E8 80063DE8 04008424 */   addiu     $a0, $a0, 0x4
.L80063DEC:
/* 545EC 80063DEC 0A002011 */  beqz       $t1, .L80063E18
/* 545F0 80063DF0 21382001 */   addu      $a3, $t1, $zero
/* 545F4 80063DF4 0800E010 */  beqz       $a3, .L80063E18
/* 545F8 80063DF8 21180000 */   addu      $v1, $zero, $zero
.L80063DFC:
/* 545FC 80063DFC 0000C290 */  lbu        $v0, 0x0($a2)
/* 54600 80063E00 0100C624 */  addiu      $a2, $a2, 0x1
/* 54604 80063E04 01006324 */  addiu      $v1, $v1, 0x1
/* 54608 80063E08 000002A1 */  sb         $v0, 0x0($t0)
/* 5460C 80063E0C 2B106700 */  sltu       $v0, $v1, $a3
/* 54610 80063E10 FAFF4014 */  bnez       $v0, .L80063DFC
/* 54614 80063E14 01000825 */   addiu     $t0, $t0, 0x1
.L80063E18:
/* 54618 80063E18 0980023C */  lui        $v0, %hi(MEM_PolyPoolCurrent)
/* 5461C 80063E1C EC57428C */  lw         $v0, %lo(MEM_PolyPoolCurrent)($v0)
/* 54620 80063E20 801F013C */  lui        $at, (0x1F800024 >> 16)
/* 54624 80063E24 24002BAC */  sw         $t3, (0x1F800024 & 0xFFFF)($at)
/* 54628 80063E28 21104C00 */  addu       $v0, $v0, $t4
/* 5462C 80063E2C 0980013C */  lui        $at, %hi(MEM_PolyPoolCurrent)
/* 54630 80063E30 EC5722AC */  sw         $v0, %lo(MEM_PolyPoolCurrent)($at)
/* 54634 80063E34 918F0108 */  j          .L80063E44
/* 54638 80063E38 00000000 */   nop
.L80063E3C:
/* 5463C 80063E3C 801F013C */  lui        $at, (0x1F800054 >> 16)
/* 54640 80063E40 540020AC */  sw         $zero, (0x1F800054 & 0xFFFF)($at)
.L80063E44:
/* 54644 80063E44 4800438D */  lw         $v1, 0x48($t2)
/* 54648 80063E48 00000000 */  nop
/* 5464C 80063E4C 3B006018 */  blez       $v1, .L80063F3C
/* 54650 80063E50 80100300 */   sll       $v0, $v1, 2
/* 54654 80063E54 21104300 */  addu       $v0, $v0, $v1
/* 54658 80063E58 C0600200 */  sll        $t4, $v0, 3
/* 5465C 80063E5C 21488001 */  addu       $t1, $t4, $zero
/* 54660 80063E60 09800B3C */  lui        $t3, %hi(MEM_PolyPoolCurrent)
/* 54664 80063E64 EC576B8D */  lw         $t3, %lo(MEM_PolyPoolCurrent)($t3)
/* 54668 80063E68 04000224 */  addiu      $v0, $zero, 0x4
/* 5466C 80063E6C 801F013C */  lui        $at, (0x1F800058 >> 16)
/* 54670 80063E70 580023AC */  sw         $v1, (0x1F800058 & 0xFFFF)($at)
/* 54674 80063E74 1800468D */  lw         $a2, 0x18($t2)
/* 54678 80063E78 00000000 */  nop
/* 5467C 80063E7C 0300C430 */  andi       $a0, $a2, 0x3
/* 54680 80063E80 23384400 */  subu       $a3, $v0, $a0
/* 54684 80063E84 0400E32C */  sltiu      $v1, $a3, 0x4
/* 54688 80063E88 0B006010 */  beqz       $v1, .L80063EB8
/* 5468C 80063E8C 21406001 */   addu      $t0, $t3, $zero
/* 54690 80063E90 0900E010 */  beqz       $a3, .L80063EB8
/* 54694 80063E94 21180000 */   addu      $v1, $zero, $zero
.L80063E98:
/* 54698 80063E98 0000C290 */  lbu        $v0, 0x0($a2)
/* 5469C 80063E9C 0100C624 */  addiu      $a2, $a2, 0x1
/* 546A0 80063EA0 FFFF2925 */  addiu      $t1, $t1, -0x1
/* 546A4 80063EA4 01006324 */  addiu      $v1, $v1, 0x1
/* 546A8 80063EA8 000002A1 */  sb         $v0, 0x0($t0)
/* 546AC 80063EAC 2B106700 */  sltu       $v0, $v1, $a3
/* 546B0 80063EB0 F9FF4014 */  bnez       $v0, .L80063E98
/* 546B4 80063EB4 01000825 */   addiu     $t0, $t0, 0x1
.L80063EB8:
/* 546B8 80063EB8 82380900 */  srl        $a3, $t1, 2
/* 546BC 80063EBC 2128C000 */  addu       $a1, $a2, $zero
/* 546C0 80063EC0 21200001 */  addu       $a0, $t0, $zero
/* 546C4 80063EC4 0900E010 */  beqz       $a3, .L80063EEC
/* 546C8 80063EC8 21180000 */   addu      $v1, $zero, $zero
.L80063ECC:
/* 546CC 80063ECC 0000A28C */  lw         $v0, 0x0($a1)
/* 546D0 80063ED0 0400A524 */  addiu      $a1, $a1, 0x4
/* 546D4 80063ED4 FCFF2925 */  addiu      $t1, $t1, -0x4
/* 546D8 80063ED8 01006324 */  addiu      $v1, $v1, 0x1
/* 546DC 80063EDC 000082AC */  sw         $v0, 0x0($a0)
/* 546E0 80063EE0 2B106700 */  sltu       $v0, $v1, $a3
/* 546E4 80063EE4 F9FF4014 */  bnez       $v0, .L80063ECC
/* 546E8 80063EE8 04008424 */   addiu     $a0, $a0, 0x4
.L80063EEC:
/* 546EC 80063EEC 0A002011 */  beqz       $t1, .L80063F18
/* 546F0 80063EF0 21382001 */   addu      $a3, $t1, $zero
/* 546F4 80063EF4 0800E010 */  beqz       $a3, .L80063F18
/* 546F8 80063EF8 21180000 */   addu      $v1, $zero, $zero
.L80063EFC:
/* 546FC 80063EFC 0000C290 */  lbu        $v0, 0x0($a2)
/* 54700 80063F00 0100C624 */  addiu      $a2, $a2, 0x1
/* 54704 80063F04 01006324 */  addiu      $v1, $v1, 0x1
/* 54708 80063F08 000002A1 */  sb         $v0, 0x0($t0)
/* 5470C 80063F0C 2B106700 */  sltu       $v0, $v1, $a3
/* 54710 80063F10 FAFF4014 */  bnez       $v0, .L80063EFC
/* 54714 80063F14 01000825 */   addiu     $t0, $t0, 0x1
.L80063F18:
/* 54718 80063F18 0980023C */  lui        $v0, %hi(MEM_PolyPoolCurrent)
/* 5471C 80063F1C EC57428C */  lw         $v0, %lo(MEM_PolyPoolCurrent)($v0)
/* 54720 80063F20 801F013C */  lui        $at, (0x1F800028 >> 16)
/* 54724 80063F24 28002BAC */  sw         $t3, (0x1F800028 & 0xFFFF)($at)
/* 54728 80063F28 21104C00 */  addu       $v0, $v0, $t4
/* 5472C 80063F2C 0980013C */  lui        $at, %hi(MEM_PolyPoolCurrent)
/* 54730 80063F30 EC5722AC */  sw         $v0, %lo(MEM_PolyPoolCurrent)($at)
/* 54734 80063F34 D18F0108 */  j          .L80063F44
/* 54738 80063F38 00000000 */   nop
.L80063F3C:
/* 5473C 80063F3C 801F013C */  lui        $at, (0x1F800058 >> 16)
/* 54740 80063F40 580020AC */  sw         $zero, (0x1F800058 & 0xFFFF)($at)
.L80063F44:
/* 54744 80063F44 4C00438D */  lw         $v1, 0x4C($t2)
/* 54748 80063F48 00000000 */  nop
/* 5474C 80063F4C 3D006018 */  blez       $v1, .L80064044
/* 54750 80063F50 40100300 */   sll       $v0, $v1, 1
/* 54754 80063F54 21104300 */  addu       $v0, $v0, $v1
/* 54758 80063F58 80100200 */  sll        $v0, $v0, 2
/* 5475C 80063F5C 21104300 */  addu       $v0, $v0, $v1
/* 54760 80063F60 80600200 */  sll        $t4, $v0, 2
/* 54764 80063F64 21488001 */  addu       $t1, $t4, $zero
/* 54768 80063F68 09800B3C */  lui        $t3, %hi(MEM_PolyPoolCurrent)
/* 5476C 80063F6C EC576B8D */  lw         $t3, %lo(MEM_PolyPoolCurrent)($t3)
/* 54770 80063F70 04000224 */  addiu      $v0, $zero, 0x4
/* 54774 80063F74 801F013C */  lui        $at, (0x1F80005C >> 16)
/* 54778 80063F78 5C0023AC */  sw         $v1, (0x1F80005C & 0xFFFF)($at)
/* 5477C 80063F7C 1C00468D */  lw         $a2, 0x1C($t2)
/* 54780 80063F80 00000000 */  nop
/* 54784 80063F84 0300C430 */  andi       $a0, $a2, 0x3
/* 54788 80063F88 23384400 */  subu       $a3, $v0, $a0
/* 5478C 80063F8C 0400E32C */  sltiu      $v1, $a3, 0x4
/* 54790 80063F90 0B006010 */  beqz       $v1, .L80063FC0
/* 54794 80063F94 21406001 */   addu      $t0, $t3, $zero
/* 54798 80063F98 0900E010 */  beqz       $a3, .L80063FC0
/* 5479C 80063F9C 21180000 */   addu      $v1, $zero, $zero
.L80063FA0:
/* 547A0 80063FA0 0000C290 */  lbu        $v0, 0x0($a2)
/* 547A4 80063FA4 0100C624 */  addiu      $a2, $a2, 0x1
/* 547A8 80063FA8 FFFF2925 */  addiu      $t1, $t1, -0x1
/* 547AC 80063FAC 01006324 */  addiu      $v1, $v1, 0x1
/* 547B0 80063FB0 000002A1 */  sb         $v0, 0x0($t0)
/* 547B4 80063FB4 2B106700 */  sltu       $v0, $v1, $a3
/* 547B8 80063FB8 F9FF4014 */  bnez       $v0, .L80063FA0
/* 547BC 80063FBC 01000825 */   addiu     $t0, $t0, 0x1
.L80063FC0:
/* 547C0 80063FC0 82380900 */  srl        $a3, $t1, 2
/* 547C4 80063FC4 2128C000 */  addu       $a1, $a2, $zero
/* 547C8 80063FC8 21200001 */  addu       $a0, $t0, $zero
/* 547CC 80063FCC 0900E010 */  beqz       $a3, .L80063FF4
/* 547D0 80063FD0 21180000 */   addu      $v1, $zero, $zero
.L80063FD4:
/* 547D4 80063FD4 0000A28C */  lw         $v0, 0x0($a1)
/* 547D8 80063FD8 0400A524 */  addiu      $a1, $a1, 0x4
/* 547DC 80063FDC FCFF2925 */  addiu      $t1, $t1, -0x4
/* 547E0 80063FE0 01006324 */  addiu      $v1, $v1, 0x1
/* 547E4 80063FE4 000082AC */  sw         $v0, 0x0($a0)
/* 547E8 80063FE8 2B106700 */  sltu       $v0, $v1, $a3
/* 547EC 80063FEC F9FF4014 */  bnez       $v0, .L80063FD4
/* 547F0 80063FF0 04008424 */   addiu     $a0, $a0, 0x4
.L80063FF4:
/* 547F4 80063FF4 0A002011 */  beqz       $t1, .L80064020
/* 547F8 80063FF8 21382001 */   addu      $a3, $t1, $zero
/* 547FC 80063FFC 0800E010 */  beqz       $a3, .L80064020
/* 54800 80064000 21180000 */   addu      $v1, $zero, $zero
.L80064004:
/* 54804 80064004 0000C290 */  lbu        $v0, 0x0($a2)
/* 54808 80064008 0100C624 */  addiu      $a2, $a2, 0x1
/* 5480C 8006400C 01006324 */  addiu      $v1, $v1, 0x1
/* 54810 80064010 000002A1 */  sb         $v0, 0x0($t0)
/* 54814 80064014 2B106700 */  sltu       $v0, $v1, $a3
/* 54818 80064018 FAFF4014 */  bnez       $v0, .L80064004
/* 5481C 8006401C 01000825 */   addiu     $t0, $t0, 0x1
.L80064020:
/* 54820 80064020 0980023C */  lui        $v0, %hi(MEM_PolyPoolCurrent)
/* 54824 80064024 EC57428C */  lw         $v0, %lo(MEM_PolyPoolCurrent)($v0)
/* 54828 80064028 801F013C */  lui        $at, (0x1F80002C >> 16)
/* 5482C 8006402C 2C002BAC */  sw         $t3, (0x1F80002C & 0xFFFF)($at)
/* 54830 80064030 21104C00 */  addu       $v0, $v0, $t4
/* 54834 80064034 0980013C */  lui        $at, %hi(MEM_PolyPoolCurrent)
/* 54838 80064038 EC5722AC */  sw         $v0, %lo(MEM_PolyPoolCurrent)($at)
/* 5483C 8006403C 13900108 */  j          .L8006404C
/* 54840 80064040 00000000 */   nop
.L80064044:
/* 54844 80064044 801F013C */  lui        $at, (0x1F80005C >> 16)
/* 54848 80064048 5C0020AC */  sw         $zero, (0x1F80005C & 0xFFFF)($at)
.L8006404C:
/* 5484C 8006404C 5000438D */  lw         $v1, 0x50($t2)
/* 54850 80064050 00000000 */  nop
/* 54854 80064054 3B006018 */  blez       $v1, .L80064144
/* 54858 80064058 40100300 */   sll       $v0, $v1, 1
/* 5485C 8006405C 21104300 */  addu       $v0, $v0, $v1
/* 54860 80064060 00610200 */  sll        $t4, $v0, 4
/* 54864 80064064 21488001 */  addu       $t1, $t4, $zero
/* 54868 80064068 09800B3C */  lui        $t3, %hi(MEM_PolyPoolCurrent)
/* 5486C 8006406C EC576B8D */  lw         $t3, %lo(MEM_PolyPoolCurrent)($t3)
/* 54870 80064070 04000224 */  addiu      $v0, $zero, 0x4
/* 54874 80064074 801F013C */  lui        $at, (0x1F800060 >> 16)
/* 54878 80064078 600023AC */  sw         $v1, (0x1F800060 & 0xFFFF)($at)
/* 5487C 8006407C 2000468D */  lw         $a2, 0x20($t2)
/* 54880 80064080 00000000 */  nop
/* 54884 80064084 0300C430 */  andi       $a0, $a2, 0x3
/* 54888 80064088 23384400 */  subu       $a3, $v0, $a0
/* 5488C 8006408C 0400E32C */  sltiu      $v1, $a3, 0x4
/* 54890 80064090 0B006010 */  beqz       $v1, .L800640C0
/* 54894 80064094 21406001 */   addu      $t0, $t3, $zero
/* 54898 80064098 0900E010 */  beqz       $a3, .L800640C0
/* 5489C 8006409C 21180000 */   addu      $v1, $zero, $zero
.L800640A0:
/* 548A0 800640A0 0000C290 */  lbu        $v0, 0x0($a2)
/* 548A4 800640A4 0100C624 */  addiu      $a2, $a2, 0x1
/* 548A8 800640A8 FFFF2925 */  addiu      $t1, $t1, -0x1
/* 548AC 800640AC 01006324 */  addiu      $v1, $v1, 0x1
/* 548B0 800640B0 000002A1 */  sb         $v0, 0x0($t0)
/* 548B4 800640B4 2B106700 */  sltu       $v0, $v1, $a3
/* 548B8 800640B8 F9FF4014 */  bnez       $v0, .L800640A0
/* 548BC 800640BC 01000825 */   addiu     $t0, $t0, 0x1
.L800640C0:
/* 548C0 800640C0 82380900 */  srl        $a3, $t1, 2
/* 548C4 800640C4 2128C000 */  addu       $a1, $a2, $zero
/* 548C8 800640C8 21200001 */  addu       $a0, $t0, $zero
/* 548CC 800640CC 0900E010 */  beqz       $a3, .L800640F4
/* 548D0 800640D0 21180000 */   addu      $v1, $zero, $zero
.L800640D4:
/* 548D4 800640D4 0000A28C */  lw         $v0, 0x0($a1)
/* 548D8 800640D8 0400A524 */  addiu      $a1, $a1, 0x4
/* 548DC 800640DC FCFF2925 */  addiu      $t1, $t1, -0x4
/* 548E0 800640E0 01006324 */  addiu      $v1, $v1, 0x1
/* 548E4 800640E4 000082AC */  sw         $v0, 0x0($a0)
/* 548E8 800640E8 2B106700 */  sltu       $v0, $v1, $a3
/* 548EC 800640EC F9FF4014 */  bnez       $v0, .L800640D4
/* 548F0 800640F0 04008424 */   addiu     $a0, $a0, 0x4
.L800640F4:
/* 548F4 800640F4 0A002011 */  beqz       $t1, .L80064120
/* 548F8 800640F8 21382001 */   addu      $a3, $t1, $zero
/* 548FC 800640FC 0800E010 */  beqz       $a3, .L80064120
/* 54900 80064100 21180000 */   addu      $v1, $zero, $zero
.L80064104:
/* 54904 80064104 0000C290 */  lbu        $v0, 0x0($a2)
/* 54908 80064108 0100C624 */  addiu      $a2, $a2, 0x1
/* 5490C 8006410C 01006324 */  addiu      $v1, $v1, 0x1
/* 54910 80064110 000002A1 */  sb         $v0, 0x0($t0)
/* 54914 80064114 2B106700 */  sltu       $v0, $v1, $a3
/* 54918 80064118 FAFF4014 */  bnez       $v0, .L80064104
/* 5491C 8006411C 01000825 */   addiu     $t0, $t0, 0x1
.L80064120:
/* 54920 80064120 0980023C */  lui        $v0, %hi(MEM_PolyPoolCurrent)
/* 54924 80064124 EC57428C */  lw         $v0, %lo(MEM_PolyPoolCurrent)($v0)
/* 54928 80064128 801F013C */  lui        $at, (0x1F800030 >> 16)
/* 5492C 8006412C 30002BAC */  sw         $t3, (0x1F800030 & 0xFFFF)($at)
/* 54930 80064130 21104C00 */  addu       $v0, $v0, $t4
/* 54934 80064134 0980013C */  lui        $at, %hi(MEM_PolyPoolCurrent)
/* 54938 80064138 EC5722AC */  sw         $v0, %lo(MEM_PolyPoolCurrent)($at)
/* 5493C 8006413C 53900108 */  j          .L8006414C
/* 54940 80064140 00000000 */   nop
.L80064144:
/* 54944 80064144 801F013C */  lui        $at, (0x1F800060 >> 16)
/* 54948 80064148 600020AC */  sw         $zero, (0x1F800060 & 0xFFFF)($at)
.L8006414C:
/* 5494C 8006414C 5400438D */  lw         $v1, 0x54($t2)
/* 54950 80064150 00000000 */  nop
/* 54954 80064154 39006018 */  blez       $v1, .L8006423C
/* 54958 80064158 80610300 */   sll       $t4, $v1, 6
/* 5495C 8006415C 21408001 */  addu       $t0, $t4, $zero
/* 54960 80064160 801F013C */  lui        $at, (0x1F800064 >> 16)
/* 54964 80064164 640023AC */  sw         $v1, (0x1F800064 & 0xFFFF)($at)
/* 54968 80064168 04000324 */  addiu      $v1, $zero, 0x4
/* 5496C 8006416C 09800B3C */  lui        $t3, %hi(MEM_PolyPoolCurrent)
/* 54970 80064170 EC576B8D */  lw         $t3, %lo(MEM_PolyPoolCurrent)($t3)
/* 54974 80064174 2400478D */  lw         $a3, 0x24($t2)
/* 54978 80064178 00000000 */  nop
/* 5497C 8006417C 0300E230 */  andi       $v0, $a3, 0x3
/* 54980 80064180 23186200 */  subu       $v1, $v1, $v0
/* 54984 80064184 0400642C */  sltiu      $a0, $v1, 0x4
/* 54988 80064188 0B008010 */  beqz       $a0, .L800641B8
/* 5498C 8006418C 21486001 */   addu      $t1, $t3, $zero
/* 54990 80064190 09006010 */  beqz       $v1, .L800641B8
/* 54994 80064194 21200000 */   addu      $a0, $zero, $zero
.L80064198:
/* 54998 80064198 0000E290 */  lbu        $v0, 0x0($a3)
/* 5499C 8006419C 0100E724 */  addiu      $a3, $a3, 0x1
/* 549A0 800641A0 FFFF0825 */  addiu      $t0, $t0, -0x1
/* 549A4 800641A4 01008424 */  addiu      $a0, $a0, 0x1
/* 549A8 800641A8 000022A1 */  sb         $v0, 0x0($t1)
/* 549AC 800641AC 2B108300 */  sltu       $v0, $a0, $v1
/* 549B0 800641B0 F9FF4014 */  bnez       $v0, .L80064198
/* 549B4 800641B4 01002925 */   addiu     $t1, $t1, 0x1
.L800641B8:
/* 549B8 800641B8 82180800 */  srl        $v1, $t0, 2
/* 549BC 800641BC 2130E000 */  addu       $a2, $a3, $zero
/* 549C0 800641C0 21282001 */  addu       $a1, $t1, $zero
/* 549C4 800641C4 09006010 */  beqz       $v1, .L800641EC
/* 549C8 800641C8 21200000 */   addu      $a0, $zero, $zero
.L800641CC:
/* 549CC 800641CC 0000C28C */  lw         $v0, 0x0($a2)
/* 549D0 800641D0 0400C624 */  addiu      $a2, $a2, 0x4
/* 549D4 800641D4 FCFF0825 */  addiu      $t0, $t0, -0x4
/* 549D8 800641D8 01008424 */  addiu      $a0, $a0, 0x1
/* 549DC 800641DC 0000A2AC */  sw         $v0, 0x0($a1)
/* 549E0 800641E0 2B108300 */  sltu       $v0, $a0, $v1
/* 549E4 800641E4 F9FF4014 */  bnez       $v0, .L800641CC
/* 549E8 800641E8 0400A524 */   addiu     $a1, $a1, 0x4
.L800641EC:
/* 549EC 800641EC 0A000011 */  beqz       $t0, .L80064218
/* 549F0 800641F0 21180001 */   addu      $v1, $t0, $zero
/* 549F4 800641F4 08000011 */  beqz       $t0, .L80064218
/* 549F8 800641F8 21200000 */   addu      $a0, $zero, $zero
.L800641FC:
/* 549FC 800641FC 0000E290 */  lbu        $v0, 0x0($a3)
/* 54A00 80064200 0100E724 */  addiu      $a3, $a3, 0x1
/* 54A04 80064204 01008424 */  addiu      $a0, $a0, 0x1
/* 54A08 80064208 000022A1 */  sb         $v0, 0x0($t1)
/* 54A0C 8006420C 2B108300 */  sltu       $v0, $a0, $v1
/* 54A10 80064210 FAFF4014 */  bnez       $v0, .L800641FC
/* 54A14 80064214 01002925 */   addiu     $t1, $t1, 0x1
.L80064218:
/* 54A18 80064218 0980023C */  lui        $v0, %hi(MEM_PolyPoolCurrent)
/* 54A1C 8006421C EC57428C */  lw         $v0, %lo(MEM_PolyPoolCurrent)($v0)
/* 54A20 80064220 801F013C */  lui        $at, (0x1F800034 >> 16)
/* 54A24 80064224 34002BAC */  sw         $t3, (0x1F800034 & 0xFFFF)($at)
/* 54A28 80064228 21104C00 */  addu       $v0, $v0, $t4
/* 54A2C 8006422C 0980013C */  lui        $at, %hi(MEM_PolyPoolCurrent)
/* 54A30 80064230 EC5722AC */  sw         $v0, %lo(MEM_PolyPoolCurrent)($at)
/* 54A34 80064234 92900108 */  j          .L80064248
/* 54A38 80064238 801F023C */   lui       $v0, (0x1F800010 >> 16)
.L8006423C:
/* 54A3C 8006423C 801F013C */  lui        $at, (0x1F800064 >> 16)
/* 54A40 80064240 640020AC */  sw         $zero, (0x1F800064 & 0xFFFF)($at)
/* 54A44 80064244 801F023C */  lui        $v0, (0x1F800010 >> 16)
.L80064248:
/* 54A48 80064248 0800E003 */  jr         $ra
/* 54A4C 8006424C 10004234 */   ori       $v0, $v0, (0x1F800010 & 0xFFFF)
.size AllocateIsoCel, . - AllocateIsoCel