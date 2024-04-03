.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DrawActor
/* 572C4 80066AC4 10FFBD27 */  addiu      $sp, $sp, -0xF0
/* 572C8 80066AC8 801F023C */  lui        $v0, (0x1F800020 >> 16)
/* 572CC 80066ACC 20004234 */  ori        $v0, $v0, (0x1F800020 & 0xFFFF)
/* 572D0 80066AD0 801F033C */  lui        $v1, (0x1F800040 >> 16)
/* 572D4 80066AD4 40006334 */  ori        $v1, $v1, (0x1F800040 & 0xFFFF)
/* 572D8 80066AD8 C800B0AF */  sw         $s0, 0xC8($sp)
/* 572DC 80066ADC 801F103C */  lui        $s0, (0x1F800080 >> 16)
/* 572E0 80066AE0 80001036 */  ori        $s0, $s0, (0x1F800080 & 0xFFFF)
/* 572E4 80066AE4 E800BEAF */  sw         $fp, 0xE8($sp)
/* 572E8 80066AE8 801F1E3C */  lui        $fp, (0x1F8000A0 >> 16)
/* 572EC 80066AEC 9800A2AF */  sw         $v0, 0x98($sp)
/* 572F0 80066AF0 2110C003 */  addu       $v0, $fp, $zero
/* 572F4 80066AF4 A0004234 */  ori        $v0, $v0, (0x1F8000A0 & 0xFFFF)
/* 572F8 80066AF8 9C00A3AF */  sw         $v1, 0x9C($sp)
/* 572FC 80066AFC 801F033C */  lui        $v1, (0x1F8000C8 >> 16)
/* 57300 80066B00 C8006334 */  ori        $v1, $v1, (0x1F8000C8 & 0xFFFF)
/* 57304 80066B04 E400B7AF */  sw         $s7, 0xE4($sp)
/* 57308 80066B08 21B88000 */  addu       $s7, $a0, $zero
/* 5730C 80066B0C 7800A427 */  addiu      $a0, $sp, 0x78
/* 57310 80066B10 F400A5AF */  sw         $a1, 0xF4($sp)
/* 57314 80066B14 21280000 */  addu       $a1, $zero, $zero
/* 57318 80066B18 08000624 */  addiu      $a2, $zero, 0x8
/* 5731C 80066B1C EC00BFAF */  sw         $ra, 0xEC($sp)
/* 57320 80066B20 E000B6AF */  sw         $s6, 0xE0($sp)
/* 57324 80066B24 DC00B5AF */  sw         $s5, 0xDC($sp)
/* 57328 80066B28 D800B4AF */  sw         $s4, 0xD8($sp)
/* 5732C 80066B2C D400B3AF */  sw         $s3, 0xD4($sp)
/* 57330 80066B30 D000B2AF */  sw         $s2, 0xD0($sp)
/* 57334 80066B34 CC00B1AF */  sw         $s1, 0xCC($sp)
/* 57338 80066B38 A000B0AF */  sw         $s0, 0xA0($sp)
/* 5733C 80066B3C A400A2AF */  sw         $v0, 0xA4($sp)
/* 57340 80066B40 2BC2010C */  jal        memset
/* 57344 80066B44 A800A3AF */   sw        $v1, 0xA8($sp)
/* 57348 80066B48 801F043C */  lui        $a0, (0x1F800000 >> 16)
/* 5734C 80066B4C B400A4AF */  sw         $a0, 0xB4($sp)
/* 57350 80066B50 2001F28E */  lw         $s2, 0x120($s7)
/* 57354 80066B54 0980023C */  lui        $v0, %hi(BootsAndDoraRidingFlag)
/* 57358 80066B58 EC42428C */  lw         $v0, %lo(BootsAndDoraRidingFlag)($v0)
/* 5735C 80066B5C 5A001024 */  addiu      $s0, $zero, 0x5A
/* 57360 80066B60 B000B0AF */  sw         $s0, 0xB0($sp)
/* 57364 80066B64 06005E96 */  lhu        $fp, 0x6($s2)
/* 57368 80066B68 2400518E */  lw         $s1, 0x24($s2)
/* 5736C 80066B6C 39004010 */  beqz       $v0, .L80066C54
/* 57370 80066B70 AC00BEAF */   sw        $fp, 0xAC($sp)
/* 57374 80066B74 0980023C */  lui        $v0, %hi(BoatActorPtr)
/* 57378 80066B78 F442428C */  lw         $v0, %lo(BoatActorPtr)($v0)
/* 5737C 80066B7C 00000000 */  nop
/* 57380 80066B80 34004010 */  beqz       $v0, .L80066C54
/* 57384 80066B84 00000000 */   nop
/* 57388 80066B88 0980023C */  lui        $v0, %hi(BoatParentActorPtr)
/* 5738C 80066B8C F842428C */  lw         $v0, %lo(BoatParentActorPtr)($v0)
/* 57390 80066B90 00000000 */  nop
/* 57394 80066B94 2F004010 */  beqz       $v0, .L80066C54
/* 57398 80066B98 00000000 */   nop
/* 5739C 80066B9C 406E010C */  jal        MAX_OT2Size
/* 573A0 80066BA0 00000000 */   nop
/* 573A4 80066BA4 0980033C */  lui        $v1, %hi(BoatParentActorPtr)
/* 573A8 80066BA8 F842638C */  lw         $v1, %lo(BoatParentActorPtr)($v1)
/* 573AC 80066BAC 00000000 */  nop
/* 573B0 80066BB0 0700E316 */  bne        $s7, $v1, .L80066BD0
/* 573B4 80066BB4 0980023C */   lui       $v0, %hi(ETActor)
/* 573B8 80066BB8 F400A28F */  lw         $v0, 0xF4($sp)
/* 573BC 80066BBC 00000000 */  nop
/* 573C0 80066BC0 6800E2AE */  sw         $v0, 0x68($s7)
/* 573C4 80066BC4 01000224 */  addiu      $v0, $zero, 0x1
/* 573C8 80066BC8 3800E2AE */  sw         $v0, 0x38($s7)
/* 573CC 80066BCC 0980023C */  lui        $v0, %hi(ETActor)
.L80066BD0:
/* 573D0 80066BD0 B05A4224 */  addiu      $v0, $v0, %lo(ETActor)
/* 573D4 80066BD4 0900E212 */  beq        $s7, $v0, .L80066BFC
/* 573D8 80066BD8 0A80023C */   lui       $v0, %hi(BootsActor)
/* 573DC 80066BDC 988D4224 */  addiu      $v0, $v0, %lo(BootsActor)
/* 573E0 80066BE0 0700E212 */  beq        $s7, $v0, .L80066C00
/* 573E4 80066BE4 0B80023C */   lui       $v0, %hi(g_nt2)
/* 573E8 80066BE8 0980023C */  lui        $v0, %hi(BoatActorPtr)
/* 573EC 80066BEC F442428C */  lw         $v0, %lo(BoatActorPtr)($v0)
/* 573F0 80066BF0 00000000 */  nop
/* 573F4 80066BF4 1700E216 */  bne        $s7, $v0, .L80066C54
/* 573F8 80066BF8 00000000 */   nop
.L80066BFC:
/* 573FC 80066BFC 0B80023C */  lui        $v0, %hi(g_nt2)
.L80066C00:
/* 57400 80066C00 A8574224 */  addiu      $v0, $v0, %lo(g_nt2)
/* 57404 80066C04 0980033C */  lui        $v1, %hi(ClearSortNTagFlag)
/* 57408 80066C08 644B638C */  lw         $v1, %lo(ClearSortNTagFlag)($v1)
/* 5740C 80066C0C E8030424 */  addiu      $a0, $zero, 0x3E8
/* 57410 80066C10 B400A2AF */  sw         $v0, 0xB4($sp)
/* 57414 80066C14 04006014 */  bnez       $v1, .L80066C28
/* 57418 80066C18 B000A4AF */   sw        $a0, 0xB0($sp)
/* 5741C 80066C1C 21204000 */  addu       $a0, $v0, $zero
/* 57420 80066C20 DA2A010C */  jal        ClearNTag
/* 57424 80066C24 E8030524 */   addiu     $a1, $zero, 0x3E8
.L80066C28:
/* 57428 80066C28 0980033C */  lui        $v1, %hi(BoatParentActorPtr)
/* 5742C 80066C2C F842638C */  lw         $v1, %lo(BoatParentActorPtr)($v1)
/* 57430 80066C30 0980023C */  lui        $v0, %hi(ClearSortNTagFlag)
/* 57434 80066C34 644B428C */  lw         $v0, %lo(ClearSortNTagFlag)($v0)
/* 57438 80066C38 6800638C */  lw         $v1, 0x68($v1)
/* 5743C 80066C3C 01004224 */  addiu      $v0, $v0, 0x1
/* 57440 80066C40 0980013C */  lui        $at, %hi(ClearSortNTagFlag)
/* 57444 80066C44 644B22AC */  sw         $v0, %lo(ClearSortNTagFlag)($at)
/* 57448 80066C48 F400A3AF */  sw         $v1, 0xF4($sp)
/* 5744C 80066C4C 3800E0AE */  sw         $zero, 0x38($s7)
/* 57450 80066C50 6800E3AE */  sw         $v1, 0x68($s7)
.L80066C54:
/* 57454 80066C54 3800E28E */  lw         $v0, 0x38($s7)
/* 57458 80066C58 F400B08F */  lw         $s0, 0xF4($sp)
/* 5745C 80066C5C 18FC0324 */  addiu      $v1, $zero, -0x3E8
/* 57460 80066C60 EC1783AF */  sw         $v1, %gp_rel(center)($gp)
/* 57464 80066C64 21800202 */  addu       $s0, $s0, $v0
/* 57468 80066C68 F400B0AF */  sw         $s0, 0xF4($sp)
/* 5746C 80066C6C 58005E8E */  lw         $fp, 0x58($s2)
/* 57470 80066C70 8913032E */  sltiu      $v1, $s0, 0x1389
/* 57474 80066C74 07036010 */  beqz       $v1, .L80067894
/* 57478 80066C78 9400BEAF */   sw        $fp, 0x94($sp)
/* 5747C 80066C7C EFEC010C */  jal        PushMatrix
/* 57480 80066C80 00000000 */   nop
/* 57484 80066C84 9400A58F */  lw         $a1, 0x94($sp)
/* 57488 80066C88 299A010C */  jal        SetRootMatrix
/* 5748C 80066C8C 2120E002 */   addu      $a0, $s7, $zero
/* 57490 80066C90 AC00A28F */  lw         $v0, 0xAC($sp)
/* 57494 80066C94 00000000 */  nop
/* 57498 80066C98 97024010 */  beqz       $v0, .L800676F8
/* 5749C 80066C9C 21500000 */   addu      $t2, $zero, $zero
/* 574A0 80066CA0 EB51143C */  lui        $s4, (0x51EB851F >> 16)
/* 574A4 80066CA4 1F859436 */  ori        $s4, $s4, (0x51EB851F & 0xFFFF)
.L80066CA8:
/* 574A8 80066CA8 08002296 */  lhu        $v0, 0x8($s1)
/* 574AC 80066CAC A800A48F */  lw         $a0, 0xA8($sp)
/* 574B0 80066CB0 40190200 */  sll        $v1, $v0, 5
/* 574B4 80066CB4 21188300 */  addu       $v1, $a0, $v1
/* 574B8 80066CB8 01004524 */  addiu      $a1, $v0, 0x1
/* 574BC 80066CBC C000A3AF */  sw         $v1, 0xC0($sp)
/* 574C0 80066CC0 06002386 */  lh         $v1, 0x6($s1)
/* 574C4 80066CC4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 574C8 80066CC8 04006214 */  bne        $v1, $v0, .L80066CDC
/* 574CC 80066CCC 21C86000 */   addu      $t9, $v1, $zero
/* 574D0 80066CD0 04003986 */  lh         $t9, 0x4($s1)
/* 574D4 80066CD4 389B0108 */  j          .L80066CE0
/* 574D8 80066CD8 01000224 */   addiu     $v0, $zero, 0x1
.L80066CDC:
/* 574DC 80066CDC 01000224 */  addiu      $v0, $zero, 0x1
.L80066CE0:
/* 574E0 80066CE0 0C00448E */  lw         $a0, 0xC($s2)
/* 574E4 80066CE4 00191900 */  sll        $v1, $t9, 4
/* 574E8 80066CE8 9C1282AF */  sw         $v0, %gp_rel(CalcPartialFlag)($gp)
/* 574EC 80066CEC 0A002296 */  lhu        $v0, 0xA($s1)
/* 574F0 80066CF0 00000000 */  nop
/* 574F4 80066CF4 53004010 */  beqz       $v0, .L80066E44
/* 574F8 80066CF8 21208300 */   addu      $a0, $a0, $v1
/* 574FC 80066CFC 40101900 */  sll        $v0, $t9, 1
/* 57500 80066D00 21105900 */  addu       $v0, $v0, $t9
/* 57504 80066D04 40100200 */  sll        $v0, $v0, 1
/* 57508 80066D08 9400B08F */  lw         $s0, 0x94($sp)
/* 5750C 80066D0C 0A002396 */  lhu        $v1, 0xA($s1)
/* 57510 80066D10 21100202 */  addu       $v0, $s0, $v0
/* 57514 80066D14 06004624 */  addiu      $a2, $v0, 0x6
/* 57518 80066D18 06004884 */  lh         $t0, 0x6($v0)
/* 5751C 80066D1C 40100300 */  sll        $v0, $v1, 1
/* 57520 80066D20 21104300 */  addu       $v0, $v0, $v1
/* 57524 80066D24 C0100200 */  sll        $v0, $v0, 3
/* 57528 80066D28 21104300 */  addu       $v0, $v0, $v1
/* 5752C 80066D2C 0200C984 */  lh         $t1, 0x2($a2)
/* 57530 80066D30 0400C784 */  lh         $a3, 0x4($a2)
/* 57534 80066D34 00080329 */  slti       $v1, $t0, 0x800
/* 57538 80066D38 0C006014 */  bnez       $v1, .L80066D6C
/* 5753C 80066D3C 822B0200 */   srl       $a1, $v0, 14
/* 57540 80066D40 FF0F1E24 */  addiu      $fp, $zero, 0xFFF
/* 57544 80066D44 2310C803 */  subu       $v0, $fp, $t0
/* 57548 80066D48 18004500 */  mult       $v0, $a1
/* 5754C 80066D4C 12100000 */  mflo       $v0
/* 57550 80066D50 00000000 */  nop
/* 57554 80066D54 00000000 */  nop
/* 57558 80066D58 19005400 */  multu      $v0, $s4
/* 5755C 80066D5C 10100000 */  mfhi       $v0
/* 57560 80066D60 42110200 */  srl        $v0, $v0, 5
/* 57564 80066D64 629B0108 */  j          .L80066D88
/* 57568 80066D68 2340C203 */   subu      $t0, $fp, $v0
.L80066D6C:
/* 5756C 80066D6C 18000501 */  mult       $t0, $a1
/* 57570 80066D70 12100000 */  mflo       $v0
/* 57574 80066D74 00000000 */  nop
/* 57578 80066D78 00000000 */  nop
/* 5757C 80066D7C 19005400 */  multu      $v0, $s4
/* 57580 80066D80 10180000 */  mfhi       $v1
/* 57584 80066D84 42410300 */  srl        $t0, $v1, 5
.L80066D88:
/* 57588 80066D88 00082229 */  slti       $v0, $t1, 0x800
/* 5758C 80066D8C 0C004014 */  bnez       $v0, .L80066DC0
/* 57590 80066D90 18002501 */   mult      $t1, $a1
/* 57594 80066D94 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 57598 80066D98 23106900 */  subu       $v0, $v1, $t1
/* 5759C 80066D9C 18004500 */  mult       $v0, $a1
/* 575A0 80066DA0 12100000 */  mflo       $v0
/* 575A4 80066DA4 00000000 */  nop
/* 575A8 80066DA8 00000000 */  nop
/* 575AC 80066DAC 19005400 */  multu      $v0, $s4
/* 575B0 80066DB0 10100000 */  mfhi       $v0
/* 575B4 80066DB4 42110200 */  srl        $v0, $v0, 5
/* 575B8 80066DB8 769B0108 */  j          .L80066DD8
/* 575BC 80066DBC 23486200 */   subu      $t1, $v1, $v0
.L80066DC0:
/* 575C0 80066DC0 12100000 */  mflo       $v0
/* 575C4 80066DC4 00000000 */  nop
/* 575C8 80066DC8 00000000 */  nop
/* 575CC 80066DCC 19005400 */  multu      $v0, $s4
/* 575D0 80066DD0 10180000 */  mfhi       $v1
/* 575D4 80066DD4 42490300 */  srl        $t1, $v1, 5
.L80066DD8:
/* 575D8 80066DD8 0008E228 */  slti       $v0, $a3, 0x800
/* 575DC 80066DDC 0C004014 */  bnez       $v0, .L80066E10
/* 575E0 80066DE0 1800E500 */   mult      $a3, $a1
/* 575E4 80066DE4 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 575E8 80066DE8 23106700 */  subu       $v0, $v1, $a3
/* 575EC 80066DEC 18004500 */  mult       $v0, $a1
/* 575F0 80066DF0 12100000 */  mflo       $v0
/* 575F4 80066DF4 00000000 */  nop
/* 575F8 80066DF8 00000000 */  nop
/* 575FC 80066DFC 19005400 */  multu      $v0, $s4
/* 57600 80066E00 10100000 */  mfhi       $v0
/* 57604 80066E04 42110200 */  srl        $v0, $v0, 5
/* 57608 80066E08 8A9B0108 */  j          .L80066E28
/* 5760C 80066E0C 23386200 */   subu      $a3, $v1, $v0
.L80066E10:
/* 57610 80066E10 12100000 */  mflo       $v0
/* 57614 80066E14 00000000 */  nop
/* 57618 80066E18 00000000 */  nop
/* 5761C 80066E1C 19005400 */  multu      $v0, $s4
/* 57620 80066E20 10180000 */  mfhi       $v1
/* 57624 80066E24 42390300 */  srl        $a3, $v1, 5
.L80066E28:
/* 57628 80066E28 E4178627 */  addiu      $a2, $gp, %gp_rel(PartialRotation)
/* 5762C 80066E2C 801F183C */  lui        $t8, (0x1F8001C8 >> 16)
/* 57630 80066E30 E41788A7 */  sh         $t0, %gp_rel(PartialRotation)($gp)
/* 57634 80066E34 E61789A7 */  sh         $t1, %gp_rel(PartialRotation + 0x2)($gp)
/* 57638 80066E38 E81787A7 */  sh         $a3, %gp_rel(PartialRotation + 0x4)($gp)
/* 5763C 80066E3C 9A9B0108 */  j          .L80066E68
/* 57640 80066E40 C8011837 */   ori       $t8, $t8, (0x1F8001C8 & 0xFFFF)
.L80066E44:
/* 57644 80066E44 40101900 */  sll        $v0, $t9, 1
/* 57648 80066E48 21105900 */  addu       $v0, $v0, $t9
/* 5764C 80066E4C 40100200 */  sll        $v0, $v0, 1
/* 57650 80066E50 9400A38F */  lw         $v1, 0x94($sp)
/* 57654 80066E54 A800B08F */  lw         $s0, 0xA8($sp)
/* 57658 80066E58 21106200 */  addu       $v0, $v1, $v0
/* 5765C 80066E5C 06004624 */  addiu      $a2, $v0, 0x6
/* 57660 80066E60 40190500 */  sll        $v1, $a1, 5
/* 57664 80066E64 21C00302 */  addu       $t8, $s0, $v1
.L80066E68:
/* 57668 80066E68 801F053C */  lui        $a1, (0x1F800000 >> 16)
/* 5766C 80066E6C 02001527 */  addiu      $s5, $t8, 0x2
/* 57670 80066E70 04001627 */  addiu      $s6, $t8, 0x4
/* 57674 80066E74 14001327 */  addiu      $s3, $t8, 0x14
/* 57678 80066E78 0C003E26 */  addiu      $fp, $s1, 0xC
/* 5767C 80066E7C 01004A25 */  addiu      $t2, $t2, 0x1
/* 57680 80066E80 801F033C */  lui        $v1, (0x1F80001F >> 16)
/* 57684 80066E84 1F006334 */  ori        $v1, $v1, (0x1F80001F & 0xFFFF)
/* 57688 80066E88 B800BEAF */  sw         $fp, 0xB8($sp)
/* 5768C 80066E8C BC00AAAF */  sw         $t2, 0xBC($sp)
.L80066E90:
/* 57690 80066E90 0000A0AC */  sw         $zero, (0x1F800000 & 0xFFFF)($a1)
/* 57694 80066E94 0400A524 */  addiu      $a1, $a1, %lo(D_1F800004)
/* 57698 80066E98 2B106500 */  sltu       $v0, $v1, $a1
/* 5769C 80066E9C FCFF4010 */  beqz       $v0, .L80066E90
/* 576A0 80066EA0 801F1E3C */   lui       $fp, (0x1F80000C >> 16)
/* 576A4 80066EA4 0000828C */  lw         $v0, 0x0($a0)
/* 576A8 80066EA8 801F013C */  lui        $at, (0x1F800014 >> 16)
/* 576AC 80066EAC 140022AC */  sw         $v0, (0x1F800014 & 0xFFFF)($at)
/* 576B0 80066EB0 0400838C */  lw         $v1, 0x4($a0)
/* 576B4 80066EB4 801F013C */  lui        $at, (0x1F800018 >> 16)
/* 576B8 80066EB8 180023AC */  sw         $v1, (0x1F800018 & 0xFFFF)($at)
/* 576BC 80066EBC 0800848C */  lw         $a0, 0x8($a0)
/* 576C0 80066EC0 801F013C */  lui        $at, (0x1F80001C >> 16)
/* 576C4 80066EC4 1C0024AC */  sw         $a0, (0x1F80001C & 0xFFFF)($at)
/* 576C8 80066EC8 0000C294 */  lhu        $v0, 0x0($a2)
/* 576CC 80066ECC 00000000 */  nop
/* 576D0 80066ED0 23100200 */  negu       $v0, $v0
/* 576D4 80066ED4 801F013C */  lui        $at, (0x1F8000A0 >> 16)
/* 576D8 80066ED8 A00022A4 */  sh         $v0, (0x1F8000A0 & 0xFFFF)($at)
/* 576DC 80066EDC 0200C394 */  lhu        $v1, 0x2($a2)
/* 576E0 80066EE0 801F013C */  lui        $at, (0x1F8000A2 >> 16)
/* 576E4 80066EE4 A20023A4 */  sh         $v1, (0x1F8000A2 & 0xFFFF)($at)
/* 576E8 80066EE8 0400D094 */  lhu        $s0, 0x4($a2)
/* 576EC 80066EEC 801F013C */  lui        $at, (0x1F8000A4 >> 16)
/* 576F0 80066EF0 A40030A4 */  sh         $s0, (0x1F8000A4 & 0xFFFF)($at)
/* 576F4 80066EF4 A400B08F */  lw         $s0, 0xA4($sp)
/* 576F8 80066EF8 00000000 */  nop
/* 576FC 80066EFC 21200002 */  addu       $a0, $s0, $zero
/* 57700 80066F00 2128C003 */  addu       $a1, $fp, $zero
/* 57704 80066F04 25100500 */  or         $v0, $zero, $a1
/* 57708 80066F08 04008884 */  lh         $t0, 0x4($a0)
/* 5770C 80066F0C 0880033C */  lui        $v1, (0x8008F194 >> 16)
/* 57710 80066F10 94F16334 */  ori        $v1, $v1, (0x8008F194 & 0xFFFF)
/* 57714 80066F14 00008C8C */  lw         $t4, 0x0($a0)
/* 57718 80066F18 C35F0800 */  sra        $t3, $t0, 31
/* 5771C 80066F1C 20400B01 */  add        $t0, $t0, $t3 /* handwritten instruction */
/* 57720 80066F20 26400B01 */  xor        $t0, $t0, $t3
/* 57724 80066F24 80400800 */  sll        $t0, $t0, 2
/* 57728 80066F28 FC3F0831 */  andi       $t0, $t0, 0x3FFC
/* 5772C 80066F2C 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
/* 57730 80066F30 0000068D */  lw         $a2, 0x0($t0)
/* 57734 80066F34 03440C00 */  sra        $t0, $t4, 16
/* 57738 80066F38 C3570800 */  sra        $t2, $t0, 31
/* 5773C 80066F3C 20400A01 */  add        $t0, $t0, $t2 /* handwritten instruction */
/* 57740 80066F40 26400A01 */  xor        $t0, $t0, $t2
/* 57744 80066F44 80400800 */  sll        $t0, $t0, 2
/* 57748 80066F48 FC3F0831 */  andi       $t0, $t0, 0x3FFC
/* 5774C 80066F4C 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
/* 57750 80066F50 0000058D */  lw         $a1, 0x0($t0)
/* 57754 80066F54 00440C00 */  sll        $t0, $t4, 16
/* 57758 80066F58 03440800 */  sra        $t0, $t0, 16
/* 5775C 80066F5C C34F0800 */  sra        $t1, $t0, 31
/* 57760 80066F60 20400901 */  add        $t0, $t0, $t1 /* handwritten instruction */
/* 57764 80066F64 26400901 */  xor        $t0, $t0, $t1
/* 57768 80066F68 80400800 */  sll        $t0, $t0, 2
/* 5776C 80066F6C FC3F0831 */  andi       $t0, $t0, 0x3FFC
/* 57770 80066F70 20400301 */  add        $t0, $t0, $v1 /* handwritten instruction */
/* 57774 80066F74 0000048D */  lw         $a0, 0x0($t0)
/* 57778 80066F78 000C0600 */  sll        $at, $a2, 16
/* 5777C 80066F7C 03340600 */  sra        $a2, $a2, 16
/* 57780 80066F80 00340600 */  sll        $a2, $a2, 16
/* 57784 80066F84 20082B00 */  add        $at, $at, $t3 /* handwritten instruction */
/* 57788 80066F88 26082B00 */  xor        $at, $at, $t3
/* 5778C 80066F8C 020C0100 */  srl        $at, $at, 16
/* 57790 80066F90 2530C100 */  or         $a2, $a2, $at
/* 57794 80066F94 000C0500 */  sll        $at, $a1, 16
/* 57798 80066F98 032C0500 */  sra        $a1, $a1, 16
/* 5779C 80066F9C 002C0500 */  sll        $a1, $a1, 16
/* 577A0 80066FA0 20082A00 */  add        $at, $at, $t2 /* handwritten instruction */
/* 577A4 80066FA4 26082A00 */  xor        $at, $at, $t2
/* 577A8 80066FA8 020C0100 */  srl        $at, $at, 16
/* 577AC 80066FAC 2528A100 */  or         $a1, $a1, $at
/* 577B0 80066FB0 000C0400 */  sll        $at, $a0, 16
/* 577B4 80066FB4 03240400 */  sra        $a0, $a0, 16
/* 577B8 80066FB8 00240400 */  sll        $a0, $a0, 16
/* 577BC 80066FBC 20082900 */  add        $at, $at, $t1 /* handwritten instruction */
/* 577C0 80066FC0 26082900 */  xor        $at, $at, $t1
/* 577C4 80066FC4 020C0100 */  srl        $at, $at, 16
/* 577C8 80066FC8 25208100 */  or         $a0, $a0, $at
/* 577CC 80066FCC 03440400 */  sra        $t0, $a0, 16
/* 577D0 80066FD0 00408848 */  mtc2       $t0, $8 /* handwritten instruction */
/* 577D4 80066FD4 003C0500 */  sll        $a3, $a1, 16
/* 577D8 80066FD8 033C0700 */  sra        $a3, $a3, 16
/* 577DC 80066FDC 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
/* 577E0 80066FE0 001C0600 */  sll        $v1, $a2, 16
/* 577E4 80066FE4 031C0300 */  sra        $v1, $v1, 16
/* 577E8 80066FE8 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
/* 577EC 80066FEC 030C0600 */  sra        $at, $a2, 16
/* 577F0 80066FF0 00588148 */  mtc2       $at, $11 /* handwritten instruction */
/* 577F4 80066FF4 00000000 */  nop
/* 577F8 80066FF8 00000000 */  nop
/* 577FC 80066FFC 3D00984B */  GPF        1
/* 57800 80067000 030C0500 */  sra        $at, $a1, 16
/* 57804 80067004 18002800 */  mult       $at, $t0
/* 57808 80067008 00480848 */  mfc2       $t0, $9 /* handwritten instruction */
/* 5780C 8006700C 00500948 */  mfc2       $t1, $10 /* handwritten instruction */
/* 57810 80067010 00740400 */  sll        $t6, $a0, 16
/* 57814 80067014 00580A48 */  mfc2       $t2, $11 /* handwritten instruction */
/* 57818 80067018 03740E00 */  sra        $t6, $t6, 16
/* 5781C 8006701C 00408E48 */  mtc2       $t6, $8 /* handwritten instruction */
/* 57820 80067020 00488748 */  mtc2       $a3, $9 /* handwritten instruction */
/* 57824 80067024 00508348 */  mtc2       $v1, $10 /* handwritten instruction */
/* 57828 80067028 030C0600 */  sra        $at, $a2, 16
/* 5782C 8006702C 00588148 */  mtc2       $at, $11 /* handwritten instruction */
/* 57830 80067030 00000000 */  nop
/* 57834 80067034 00000000 */  nop
/* 57838 80067038 3D00984B */  GPF        1
/* 5783C 8006703C 12080000 */  mflo       $at
/* 57840 80067040 030B0100 */  sra        $at, $at, 12
/* 57844 80067044 100041A4 */  sh         $at, (0x1F800010 & 0xFFFF)($v0)
/* 57848 80067048 00480B48 */  mfc2       $t3, $9 /* handwritten instruction */
/* 5784C 8006704C 00500C48 */  mfc2       $t4, $10 /* handwritten instruction */
/* 57850 80067050 00580D48 */  mfc2       $t5, $11 /* handwritten instruction */
/* 57854 80067054 030C0600 */  sra        $at, $a2, 16
/* 57858 80067058 00408148 */  mtc2       $at, $8 /* handwritten instruction */
/* 5785C 8006705C 030C0500 */  sra        $at, $a1, 16
/* 57860 80067060 00488148 */  mtc2       $at, $9 /* handwritten instruction */
/* 57864 80067064 18002E00 */  mult       $at, $t6
/* 57868 80067068 00508B48 */  mtc2       $t3, $10 /* handwritten instruction */
/* 5786C 8006706C 00588848 */  mtc2       $t0, $11 /* handwritten instruction */
/* 57870 80067070 00000000 */  nop
/* 57874 80067074 00000000 */  nop
/* 57878 80067078 3D00984B */  GPF        1
/* 5787C 8006707C 00480448 */  mfc2       $a0, $9 /* handwritten instruction */
/* 57880 80067080 00500548 */  mfc2       $a1, $10 /* handwritten instruction */
/* 57884 80067084 00580648 */  mfc2       $a2, $11 /* handwritten instruction */
/* 57888 80067088 00408348 */  mtc2       $v1, $8 /* handwritten instruction */
/* 5788C 8006708C 00488148 */  mtc2       $at, $9 /* handwritten instruction */
/* 57890 80067090 00508B48 */  mtc2       $t3, $10 /* handwritten instruction */
/* 57894 80067094 00588848 */  mtc2       $t0, $11 /* handwritten instruction */
/* 57898 80067098 00000000 */  nop
/* 5789C 8006709C 00000000 */  nop
/* 578A0 800670A0 3D00984B */  GPF        1
/* 578A4 800670A4 2048A900 */  add        $t1, $a1, $t1 /* handwritten instruction */
/* 578A8 800670A8 004C0900 */  sll        $t1, $t1, 16
/* 578AC 800670AC FFFFE730 */  andi       $a3, $a3, 0xFFFF
/* 578B0 800670B0 25482701 */  or         $t1, $t1, $a3
/* 578B4 800670B4 040049AC */  sw         $t1, (0x1F800004 & 0xFFFF)($v0)
/* 578B8 800670B8 00480148 */  mfc2       $at, $9 /* handwritten instruction */
/* 578BC 800670BC FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 578C0 800670C0 22080100 */  neg        $at, $at /* handwritten instruction */
/* 578C4 800670C4 000C0100 */  sll        $at, $at, 16
/* 578C8 800670C8 25082400 */  or         $at, $at, $a0
/* 578CC 800670CC 000041AC */  sw         $at, (0x1F800000 & 0xFFFF)($v0)
/* 578D0 800670D0 00500E48 */  mfc2       $t6, $10 /* handwritten instruction */
/* 578D4 800670D4 12080000 */  mflo       $at
/* 578D8 800670D8 00580F48 */  mfc2       $t7, $11 /* handwritten instruction */
/* 578DC 800670DC 22504E01 */  sub        $t2, $t2, $t6 /* handwritten instruction */
/* 578E0 800670E0 030B0100 */  sra        $at, $at, 12
/* 578E4 800670E4 22080100 */  neg        $at, $at /* handwritten instruction */
/* 578E8 800670E8 FFFF4A31 */  andi       $t2, $t2, 0xFFFF
/* 578EC 800670EC 000C0100 */  sll        $at, $at, 16
/* 578F0 800670F0 25082A00 */  or         $at, $at, $t2
/* 578F4 800670F4 080041AC */  sw         $at, (0x1F800008 & 0xFFFF)($v0)
/* 578F8 800670F8 22608601 */  sub        $t4, $t4, $a2 /* handwritten instruction */
/* 578FC 800670FC FFFF8C31 */  andi       $t4, $t4, 0xFFFF
/* 57900 80067100 2068AF01 */  add        $t5, $t5, $t7 /* handwritten instruction */
/* 57904 80067104 006C0D00 */  sll        $t5, $t5, 16
/* 57908 80067108 25608D01 */  or         $t4, $t4, $t5
/* 5790C 8006710C 0C004CAC */  sw         $t4, (0x1F80000C & 0xFFFF)($v0)
/* 57910 80067110 00000000 */  nop
/* 57914 80067114 C000A28F */  lw         $v0, 0xC0($sp)
/* 57918 80067118 00000000 */  nop
/* 5791C 8006711C 00004C8C */  lw         $t4, 0x0($v0)
/* 57920 80067120 04004D8C */  lw         $t5, 0x4($v0)
/* 57924 80067124 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 57928 80067128 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 5792C 8006712C 08004C8C */  lw         $t4, 0x8($v0)
/* 57930 80067130 0C004D8C */  lw         $t5, 0xC($v0)
/* 57934 80067134 10004E8C */  lw         $t6, 0x10($v0)
/* 57938 80067138 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 5793C 8006713C 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 57940 80067140 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 57944 80067144 0000CC97 */  lhu        $t4, (0x1F800000 & 0xFFFF)($fp)
/* 57948 80067148 0600CD97 */  lhu        $t5, (0x1F800006 & 0xFFFF)($fp)
/* 5794C 8006714C 0C00CE97 */  lhu        $t6, (0x1F80000C & 0xFFFF)($fp)
/* 57950 80067150 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 57954 80067154 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 57958 80067158 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 5795C 8006715C 00000000 */  nop
/* 57960 80067160 00000000 */  nop
/* 57964 80067164 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 57968 80067168 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 5796C 8006716C 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 57970 80067170 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 57974 80067174 00000CA7 */  sh         $t4, 0x0($t8)
/* 57978 80067178 06000DA7 */  sh         $t5, 0x6($t8)
/* 5797C 8006717C 0C000EA7 */  sh         $t6, 0xC($t8)
/* 57980 80067180 801F023C */  lui        $v0, (0x1F800002 >> 16)
/* 57984 80067184 02004234 */  ori        $v0, $v0, (0x1F800002 & 0xFFFF)
/* 57988 80067188 00004C94 */  lhu        $t4, 0x0($v0)
/* 5798C 8006718C 06004D94 */  lhu        $t5, 0x6($v0)
/* 57990 80067190 0C004E94 */  lhu        $t6, 0xC($v0)
/* 57994 80067194 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 57998 80067198 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 5799C 8006719C 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 579A0 800671A0 00000000 */  nop
/* 579A4 800671A4 00000000 */  nop
/* 579A8 800671A8 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 579AC 800671AC 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 579B0 800671B0 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 579B4 800671B4 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 579B8 800671B8 0000ACA6 */  sh         $t4, 0x0($s5)
/* 579BC 800671BC 0600ADA6 */  sh         $t5, 0x6($s5)
/* 579C0 800671C0 0C00AEA6 */  sh         $t6, 0xC($s5)
/* 579C4 800671C4 801F023C */  lui        $v0, (0x1F800004 >> 16)
/* 579C8 800671C8 04004234 */  ori        $v0, $v0, (0x1F800004 & 0xFFFF)
/* 579CC 800671CC 00004C94 */  lhu        $t4, 0x0($v0)
/* 579D0 800671D0 06004D94 */  lhu        $t5, 0x6($v0)
/* 579D4 800671D4 0C004E94 */  lhu        $t6, 0xC($v0)
/* 579D8 800671D8 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 579DC 800671DC 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 579E0 800671E0 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 579E4 800671E4 00000000 */  nop
/* 579E8 800671E8 00000000 */  nop
/* 579EC 800671EC 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 579F0 800671F0 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 579F4 800671F4 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 579F8 800671F8 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 579FC 800671FC 0000CCA6 */  sh         $t4, 0x0($s6)
/* 57A00 80067200 0600CDA6 */  sh         $t5, 0x6($s6)
/* 57A04 80067204 0C00CEA6 */  sh         $t6, 0xC($s6)
/* 57A08 80067208 C000A38F */  lw         $v1, 0xC0($sp)
/* 57A0C 8006720C 00000000 */  nop
/* 57A10 80067210 14006C8C */  lw         $t4, 0x14($v1)
/* 57A14 80067214 18006D8C */  lw         $t5, 0x18($v1)
/* 57A18 80067218 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
/* 57A1C 8006721C 1C006E8C */  lw         $t6, 0x1C($v1)
/* 57A20 80067220 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
/* 57A24 80067224 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
/* 57A28 80067228 801F023C */  lui        $v0, (0x1F800014 >> 16)
/* 57A2C 8006722C 14004234 */  ori        $v0, $v0, (0x1F800014 & 0xFFFF)
/* 57A30 80067230 04004D94 */  lhu        $t5, 0x4($v0)
/* 57A34 80067234 00004C94 */  lhu        $t4, 0x0($v0)
/* 57A38 80067238 006C0D00 */  sll        $t5, $t5, 16
/* 57A3C 8006723C 25608D01 */  or         $t4, $t4, $t5
/* 57A40 80067240 00008C48 */  mtc2       $t4, $0 /* handwritten instruction */
/* 57A44 80067244 080041C8 */  lwc2       $1, 0x8($v0)
/* 57A48 80067248 00000000 */  nop
/* 57A4C 8006724C 00000000 */  nop
/* 57A50 80067250 1200484A */  MVMVA      1, 0, 0, 0, 0
/* 57A54 80067254 000079EA */  swc2       $25, 0x0($s3)
/* 57A58 80067258 04007AEA */  swc2       $26, 0x4($s3) /* handwritten instruction */
/* 57A5C 8006725C 08007BEA */  swc2       $27, 0x8($s3) /* handwritten instruction */
/* 57A60 80067260 00000C8F */  lw         $t4, 0x0($t8)
/* 57A64 80067264 04000D8F */  lw         $t5, 0x4($t8)
/* 57A68 80067268 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 57A6C 8006726C 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 57A70 80067270 08000C8F */  lw         $t4, 0x8($t8)
/* 57A74 80067274 0C000D8F */  lw         $t5, 0xC($t8)
/* 57A78 80067278 10000E8F */  lw         $t6, 0x10($t8)
/* 57A7C 8006727C 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 57A80 80067280 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 57A84 80067284 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 57A88 80067288 14000C8F */  lw         $t4, 0x14($t8)
/* 57A8C 8006728C 18000D8F */  lw         $t5, 0x18($t8)
/* 57A90 80067290 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
/* 57A94 80067294 1C000E8F */  lw         $t6, 0x1C($t8)
/* 57A98 80067298 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
/* 57A9C 8006729C 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
/* 57AA0 800672A0 06002386 */  lh         $v1, 0x6($s1)
/* 57AA4 800672A4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 57AA8 800672A8 34006214 */  bne        $v1, $v0, .L8006737C
/* 57AAC 800672AC 00000000 */   nop
/* 57AB0 800672B0 08004296 */  lhu        $v0, 0x8($s2)
/* 57AB4 800672B4 00000000 */  nop
/* 57AB8 800672B8 18004010 */  beqz       $v0, .L8006731C
/* 57ABC 800672BC 21300000 */   addu      $a2, $zero, $zero
.L800672C0:
/* 57AC0 800672C0 2000428E */  lw         $v0, 0x20($s2)
/* 57AC4 800672C4 40190600 */  sll        $v1, $a2, 5
/* 57AC8 800672C8 21286200 */  addu       $a1, $v1, $v0
/* 57ACC 800672CC 0400A494 */  lhu        $a0, 0x4($a1)
/* 57AD0 800672D0 00000000 */  nop
/* 57AD4 800672D4 0C009914 */  bne        $a0, $t9, .L80067308
/* 57AD8 800672D8 21384000 */   addu      $a3, $v0, $zero
/* 57ADC 800672DC 0800A224 */  addiu      $v0, $a1, 0x8
/* 57AE0 800672E0 000040C8 */  lwc2       $0, 0x0($v0)
/* 57AE4 800672E4 040041C8 */  lwc2       $1, 0x4($v0)
/* 57AE8 800672E8 00000000 */  nop
/* 57AEC 800672EC 00000000 */  nop
/* 57AF0 800672F0 1200484A */  MVMVA      1, 0, 0, 0, 0
/* 57AF4 800672F4 2110E300 */  addu       $v0, $a3, $v1
/* 57AF8 800672F8 10004224 */  addiu      $v0, $v0, 0x10
/* 57AFC 800672FC 000059E8 */  swc2       $25, 0x0($v0)
/* 57B00 80067300 04005AE8 */  swc2       $26, 0x4($v0) /* handwritten instruction */
/* 57B04 80067304 08005BE8 */  swc2       $27, 0x8($v0) /* handwritten instruction */
.L80067308:
/* 57B08 80067308 08004296 */  lhu        $v0, 0x8($s2)
/* 57B0C 8006730C 0100C624 */  addiu      $a2, $a2, 0x1
/* 57B10 80067310 2A10C200 */  slt        $v0, $a2, $v0
/* 57B14 80067314 EAFF4014 */  bnez       $v0, .L800672C0
/* 57B18 80067318 00000000 */   nop
.L8006731C:
/* 57B1C 8006731C 17002017 */  bnez       $t9, .L8006737C
/* 57B20 80067320 00000000 */   nop
/* 57B24 80067324 801F013C */  lui        $at, (0x1F8000A0 >> 16)
/* 57B28 80067328 A00020A4 */  sh         $zero, (0x1F8000A0 & 0xFFFF)($at)
/* 57B2C 8006732C 801F013C */  lui        $at, (0x1F8000A2 >> 16)
/* 57B30 80067330 A20020A4 */  sh         $zero, (0x1F8000A2 & 0xFFFF)($at)
/* 57B34 80067334 801F013C */  lui        $at, (0x1F8000A4 >> 16)
/* 57B38 80067338 A40020A4 */  sh         $zero, (0x1F8000A4 & 0xFFFF)($at)
/* 57B3C 8006733C A400A48F */  lw         $a0, 0xA4($sp)
/* 57B40 80067340 00000000 */  nop
/* 57B44 80067344 000080C8 */  lwc2       $0, 0x0($a0)
/* 57B48 80067348 040081C8 */  lwc2       $1, 0x4($a0)
/* 57B4C 8006734C 00000000 */  nop
/* 57B50 80067350 00000000 */  nop
/* 57B54 80067354 1200484A */  MVMVA      1, 0, 0, 0, 0
/* 57B58 80067358 8000A227 */  addiu      $v0, $sp, 0x80
/* 57B5C 8006735C 000059E8 */  swc2       $25, 0x0($v0)
/* 57B60 80067360 04005AE8 */  swc2       $26, 0x4($v0) /* handwritten instruction */
/* 57B64 80067364 08005BE8 */  swc2       $27, 0x8($v0) /* handwritten instruction */
/* 57B68 80067368 8400A38F */  lw         $v1, 0x84($sp)
/* 57B6C 8006736C 0400E28E */  lw         $v0, 0x4($s7)
/* 57B70 80067370 00000000 */  nop
/* 57B74 80067374 23186200 */  subu       $v1, $v1, $v0
/* 57B78 80067378 1800E3AE */  sw         $v1, 0x18($s7)
.L8006737C:
/* 57B7C 8006737C 9800B08F */  lw         $s0, 0x98($sp)
/* 57B80 80067380 00000000 */  nop
/* 57B84 80067384 00000C8E */  lw         $t4, 0x0($s0)
/* 57B88 80067388 04000D8E */  lw         $t5, 0x4($s0)
/* 57B8C 8006738C 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 57B90 80067390 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 57B94 80067394 08000C8E */  lw         $t4, 0x8($s0)
/* 57B98 80067398 0C000D8E */  lw         $t5, 0xC($s0)
/* 57B9C 8006739C 10000E8E */  lw         $t6, 0x10($s0)
/* 57BA0 800673A0 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 57BA4 800673A4 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 57BA8 800673A8 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 57BAC 800673AC 00000C97 */  lhu        $t4, 0x0($t8)
/* 57BB0 800673B0 06000D97 */  lhu        $t5, 0x6($t8)
/* 57BB4 800673B4 0C000E97 */  lhu        $t6, 0xC($t8)
/* 57BB8 800673B8 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 57BBC 800673BC 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 57BC0 800673C0 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 57BC4 800673C4 00000000 */  nop
/* 57BC8 800673C8 00000000 */  nop
/* 57BCC 800673CC 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 57BD0 800673D0 9C00BE8F */  lw         $fp, 0x9C($sp)
/* 57BD4 800673D4 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 57BD8 800673D8 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 57BDC 800673DC 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 57BE0 800673E0 0000CCA7 */  sh         $t4, 0x0($fp)
/* 57BE4 800673E4 0600CDA7 */  sh         $t5, 0x6($fp)
/* 57BE8 800673E8 0C00CEA7 */  sh         $t6, 0xC($fp)
/* 57BEC 800673EC 0000AC96 */  lhu        $t4, 0x0($s5)
/* 57BF0 800673F0 0600AD96 */  lhu        $t5, 0x6($s5)
/* 57BF4 800673F4 0C00AE96 */  lhu        $t6, 0xC($s5)
/* 57BF8 800673F8 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 57BFC 800673FC 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 57C00 80067400 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 57C04 80067404 00000000 */  nop
/* 57C08 80067408 00000000 */  nop
/* 57C0C 8006740C 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 57C10 80067410 801F023C */  lui        $v0, (0x1F800042 >> 16)
/* 57C14 80067414 42004234 */  ori        $v0, $v0, (0x1F800042 & 0xFFFF)
/* 57C18 80067418 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 57C1C 8006741C 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 57C20 80067420 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 57C24 80067424 00004CA4 */  sh         $t4, 0x0($v0)
/* 57C28 80067428 06004DA4 */  sh         $t5, 0x6($v0)
/* 57C2C 8006742C 0C004EA4 */  sh         $t6, 0xC($v0)
/* 57C30 80067430 0000CC96 */  lhu        $t4, 0x0($s6)
/* 57C34 80067434 0600CD96 */  lhu        $t5, 0x6($s6)
/* 57C38 80067438 0C00CE96 */  lhu        $t6, 0xC($s6)
/* 57C3C 8006743C 00488C48 */  mtc2       $t4, $9 /* handwritten instruction */
/* 57C40 80067440 00508D48 */  mtc2       $t5, $10 /* handwritten instruction */
/* 57C44 80067444 00588E48 */  mtc2       $t6, $11 /* handwritten instruction */
/* 57C48 80067448 00000000 */  nop
/* 57C4C 8006744C 00000000 */  nop
/* 57C50 80067450 12E0494A */  MVMVA      1, 0, 3, 3, 0
/* 57C54 80067454 801F023C */  lui        $v0, (0x1F800044 >> 16)
/* 57C58 80067458 44004234 */  ori        $v0, $v0, (0x1F800044 & 0xFFFF)
/* 57C5C 8006745C 00480C48 */  mfc2       $t4, $9 /* handwritten instruction */
/* 57C60 80067460 00500D48 */  mfc2       $t5, $10 /* handwritten instruction */
/* 57C64 80067464 00580E48 */  mfc2       $t6, $11 /* handwritten instruction */
/* 57C68 80067468 00004CA4 */  sh         $t4, 0x0($v0)
/* 57C6C 8006746C 06004DA4 */  sh         $t5, 0x6($v0)
/* 57C70 80067470 0C004EA4 */  sh         $t6, 0xC($v0)
/* 57C74 80067474 14000397 */  lhu        $v1, 0x14($t8)
/* 57C78 80067478 801F023C */  lui        $v0, (0x1F800090 >> 16)
/* 57C7C 8006747C 90004294 */  lhu        $v0, (0x1F800090 & 0xFFFF)($v0)
/* 57C80 80067480 00000000 */  nop
/* 57C84 80067484 23186200 */  subu       $v1, $v1, $v0
/* 57C88 80067488 801F013C */  lui        $at, (0x1F8000A0 >> 16)
/* 57C8C 8006748C A00023A4 */  sh         $v1, (0x1F8000A0 & 0xFFFF)($at)
/* 57C90 80067490 18000297 */  lhu        $v0, 0x18($t8)
/* 57C94 80067494 801F033C */  lui        $v1, (0x1F800094 >> 16)
/* 57C98 80067498 94006394 */  lhu        $v1, (0x1F800094 & 0xFFFF)($v1)
/* 57C9C 8006749C 00000000 */  nop
/* 57CA0 800674A0 23104300 */  subu       $v0, $v0, $v1
/* 57CA4 800674A4 801F013C */  lui        $at, (0x1F8000A2 >> 16)
/* 57CA8 800674A8 A20022A4 */  sh         $v0, (0x1F8000A2 & 0xFFFF)($at)
/* 57CAC 800674AC 1C000397 */  lhu        $v1, 0x1C($t8)
/* 57CB0 800674B0 801F023C */  lui        $v0, (0x1F800098 >> 16)
/* 57CB4 800674B4 98004294 */  lhu        $v0, (0x1F800098 & 0xFFFF)($v0)
/* 57CB8 800674B8 00000000 */  nop
/* 57CBC 800674BC 23186200 */  subu       $v1, $v1, $v0
/* 57CC0 800674C0 801F013C */  lui        $at, (0x1F8000A4 >> 16)
/* 57CC4 800674C4 A40023A4 */  sh         $v1, (0x1F8000A4 & 0xFFFF)($at)
/* 57CC8 800674C8 00000C8E */  lw         $t4, 0x0($s0)
/* 57CCC 800674CC 04000D8E */  lw         $t5, 0x4($s0)
/* 57CD0 800674D0 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 57CD4 800674D4 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 57CD8 800674D8 08000C8E */  lw         $t4, 0x8($s0)
/* 57CDC 800674DC 0C000D8E */  lw         $t5, 0xC($s0)
/* 57CE0 800674E0 10000E8E */  lw         $t6, 0x10($s0)
/* 57CE4 800674E4 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 57CE8 800674E8 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 57CEC 800674EC 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 57CF0 800674F0 A400A28F */  lw         $v0, 0xA4($sp)
/* 57CF4 800674F4 00000000 */  nop
/* 57CF8 800674F8 000040C8 */  lwc2       $0, 0x0($v0)
/* 57CFC 800674FC 040041C8 */  lwc2       $1, 0x4($v0)
/* 57D00 80067500 00000000 */  nop
/* 57D04 80067504 00000000 */  nop
/* 57D08 80067508 1260484A */  MVMVA      1, 0, 0, 3, 0
/* 57D0C 8006750C A000A38F */  lw         $v1, 0xA0($sp)
/* 57D10 80067510 00000000 */  nop
/* 57D14 80067514 000079E8 */  swc2       $25, 0x0($v1)
/* 57D18 80067518 04007AE8 */  swc2       $26, 0x4($v1) /* handwritten instruction */
/* 57D1C 8006751C 08007BE8 */  swc2       $27, 0x8($v1) /* handwritten instruction */
/* 57D20 80067520 00006C8C */  lw         $t4, 0x0($v1)
/* 57D24 80067524 04006D8C */  lw         $t5, 0x4($v1)
/* 57D28 80067528 08006E8C */  lw         $t6, 0x8($v1)
/* 57D2C 8006752C 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
/* 57D30 80067530 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
/* 57D34 80067534 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
/* 57D38 80067538 0000CC8F */  lw         $t4, 0x0($fp)
/* 57D3C 8006753C 0400CD8F */  lw         $t5, 0x4($fp)
/* 57D40 80067540 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 57D44 80067544 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 57D48 80067548 0800CC8F */  lw         $t4, 0x8($fp)
/* 57D4C 8006754C 0C00CD8F */  lw         $t5, 0xC($fp)
/* 57D50 80067550 1000CE8F */  lw         $t6, 0x10($fp)
/* 57D54 80067554 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 57D58 80067558 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 57D5C 8006755C 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 57D60 80067560 EC17838F */  lw         $v1, %gp_rel(center)($gp)
/* 57D64 80067564 18FC0224 */  addiu      $v0, $zero, -0x3E8
/* 57D68 80067568 15006214 */  bne        $v1, $v0, .L800675C0
/* 57D6C 8006756C 5555043C */   lui       $a0, (0x55555556 >> 16)
/* 57D70 80067570 7800A227 */  addiu      $v0, $sp, 0x78
/* 57D74 80067574 000040C8 */  lwc2       $0, 0x0($v0)
/* 57D78 80067578 040041C8 */  lwc2       $1, 0x4($v0)
/* 57D7C 8006757C 00000000 */  nop
/* 57D80 80067580 00000000 */  nop
/* 57D84 80067584 0100184A */  RTPS
/* 57D88 80067588 9000A227 */  addiu      $v0, $sp, 0x90
/* 57D8C 8006758C 00004EE8 */  swc2       $14, 0x0($v0)
/* 57D90 80067590 EC178327 */  addiu      $v1, $gp, %gp_rel(center)
/* 57D94 80067594 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 57D98 80067598 00000000 */  nop
/* 57D9C 8006759C C3600C00 */  sra        $t4, $t4, 3
/* 57DA0 800675A0 00006CAC */  sw         $t4, 0x0($v1)
/* 57DA4 800675A4 B000B08F */  lw         $s0, 0xB0($sp)
/* 57DA8 800675A8 EC17848F */  lw         $a0, %gp_rel(center)($gp)
/* 57DAC 800675AC 42101000 */  srl        $v0, $s0, 1
/* 57DB0 800675B0 23104400 */  subu       $v0, $v0, $a0
/* 57DB4 800675B4 14004224 */  addiu      $v0, $v0, 0x14
/* 57DB8 800675B8 EC1782AF */  sw         $v0, %gp_rel(center)($gp)
/* 57DBC 800675BC 5555043C */  lui        $a0, (0x55555556 >> 16)
.L800675C0:
/* 57DC0 800675C0 02002996 */  lhu        $t1, 0x2($s1)
/* 57DC4 800675C4 56558434 */  ori        $a0, $a0, (0x55555556 & 0xFFFF)
/* 57DC8 800675C8 18002401 */  mult       $t1, $a0
/* 57DCC 800675CC 00002696 */  lhu        $a2, 0x0($s1)
/* 57DD0 800675D0 0980023C */  lui        $v0, %hi(DistBuf)
/* 57DD4 800675D4 9057428C */  lw         $v0, %lo(DistBuf)($v0)
/* 57DD8 800675D8 0980033C */  lui        $v1, %hi(ScreenXY)
/* 57DDC 800675DC 9457638C */  lw         $v1, %lo(ScreenXY)($v1)
/* 57DE0 800675E0 1000458E */  lw         $a1, 0x10($s2)
/* 57DE4 800675E4 80380600 */  sll        $a3, $a2, 2
/* 57DE8 800675E8 21404700 */  addu       $t0, $v0, $a3
/* 57DEC 800675EC 21386700 */  addu       $a3, $v1, $a3
/* 57DF0 800675F0 C0300600 */  sll        $a2, $a2, 3
/* 57DF4 800675F4 2128A600 */  addu       $a1, $a1, $a2
/* 57DF8 800675F8 C3170900 */  sra        $v0, $t1, 31
/* 57DFC 800675FC 10200000 */  mfhi       $a0
/* 57E00 80067600 23208200 */  subu       $a0, $a0, $v0
/* 57E04 80067604 40180400 */  sll        $v1, $a0, 1
/* 57E08 80067608 21306400 */  addu       $a2, $v1, $a0
/* 57E0C 8006760C C0100600 */  sll        $v0, $a2, 3
/* 57E10 80067610 2120A200 */  addu       $a0, $a1, $v0
/* 57E14 80067614 2B18A400 */  sltu       $v1, $a1, $a0
/* 57E18 80067618 1F006010 */  beqz       $v1, .L80067698
/* 57E1C 8006761C 2118C000 */   addu      $v1, $a2, $zero
.L80067620:
/* 57E20 80067620 0000A0C8 */  lwc2       $0, 0x0($a1)
/* 57E24 80067624 0400A1C8 */  lwc2       $1, 0x4($a1)
/* 57E28 80067628 0800A2C8 */  lwc2       $2, 0x8($a1)
/* 57E2C 8006762C 0C00A3C8 */  lwc2       $3, 0xC($a1)
/* 57E30 80067630 1000A4C8 */  lwc2       $4, 0x10($a1)
/* 57E34 80067634 1400A5C8 */  lwc2       $5, 0x14($a1)
/* 57E38 80067638 00000000 */  nop
/* 57E3C 8006763C 00000000 */  nop
/* 57E40 80067640 3000284A */  RTPT
/* 57E44 80067644 0000ECE8 */  swc2       $12, 0x0($a3)
/* 57E48 80067648 0400EDE8 */  swc2       $13, 0x4($a3)
/* 57E4C 8006764C 0800EEE8 */  swc2       $14, 0x8($a3)
/* 57E50 80067650 00880C48 */  mfc2       $t4, $17 /* handwritten instruction */
/* 57E54 80067654 00000000 */  nop
/* 57E58 80067658 C3600C00 */  sra        $t4, $t4, 3
/* 57E5C 8006765C 00000CAD */  sw         $t4, 0x0($t0)
/* 57E60 80067660 00900C48 */  mfc2       $t4, $18 /* handwritten instruction */
/* 57E64 80067664 00000000 */  nop
/* 57E68 80067668 C3600C00 */  sra        $t4, $t4, 3
/* 57E6C 8006766C 04000CAD */  sw         $t4, 0x4($t0)
/* 57E70 80067670 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 57E74 80067674 00000000 */  nop
/* 57E78 80067678 C3600C00 */  sra        $t4, $t4, 3
/* 57E7C 8006767C 08000CAD */  sw         $t4, 0x8($t0)
/* 57E80 80067680 1800A524 */  addiu      $a1, $a1, 0x18
/* 57E84 80067684 0C000825 */  addiu      $t0, $t0, 0xC
/* 57E88 80067688 2B10A400 */  sltu       $v0, $a1, $a0
/* 57E8C 8006768C E4FF4014 */  bnez       $v0, .L80067620
/* 57E90 80067690 0C00E724 */   addiu     $a3, $a3, 0xC
/* 57E94 80067694 2118C000 */  addu       $v1, $a2, $zero
.L80067698:
/* 57E98 80067698 2A106900 */  slt        $v0, $v1, $t1
/* 57E9C 8006769C 10004010 */  beqz       $v0, .L800676E0
/* 57EA0 800676A0 23182301 */   subu      $v1, $t1, $v1
.L800676A4:
/* 57EA4 800676A4 0000A0C8 */  lwc2       $0, 0x0($a1)
/* 57EA8 800676A8 0400A1C8 */  lwc2       $1, 0x4($a1)
/* 57EAC 800676AC 00000000 */  nop
/* 57EB0 800676B0 00000000 */  nop
/* 57EB4 800676B4 0100184A */  RTPS
/* 57EB8 800676B8 0000EEE8 */  swc2       $14, 0x0($a3)
/* 57EBC 800676BC 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 57EC0 800676C0 00000000 */  nop
/* 57EC4 800676C4 C3600C00 */  sra        $t4, $t4, 3
/* 57EC8 800676C8 00000CAD */  sw         $t4, 0x0($t0)
/* 57ECC 800676CC FFFF6324 */  addiu      $v1, $v1, -0x1
/* 57ED0 800676D0 0800A524 */  addiu      $a1, $a1, 0x8
/* 57ED4 800676D4 04000825 */  addiu      $t0, $t0, 0x4
/* 57ED8 800676D8 F2FF6014 */  bnez       $v1, .L800676A4
/* 57EDC 800676DC 0400E724 */   addiu     $a3, $a3, 0x4
.L800676E0:
/* 57EE0 800676E0 BC00AA8F */  lw         $t2, 0xBC($sp)
/* 57EE4 800676E4 AC00A38F */  lw         $v1, 0xAC($sp)
/* 57EE8 800676E8 B800B18F */  lw         $s1, 0xB8($sp)
/* 57EEC 800676EC 2A104301 */  slt        $v0, $t2, $v1
/* 57EF0 800676F0 6DFD4014 */  bnez       $v0, .L80066CA8
/* 57EF4 800676F4 00000000 */   nop
.L800676F8:
/* 57EF8 800676F8 0980043C */  lui        $a0, %hi(BootsAndDoraRidingFlag)
/* 57EFC 800676FC EC42848C */  lw         $a0, %lo(BootsAndDoraRidingFlag)($a0)
/* 57F00 80067700 00000000 */  nop
/* 57F04 80067704 2A008010 */  beqz       $a0, .L800677B0
/* 57F08 80067708 00000000 */   nop
/* 57F0C 8006770C 0980033C */  lui        $v1, %hi(BoatActorPtr)
/* 57F10 80067710 F442638C */  lw         $v1, %lo(BoatActorPtr)($v1)
/* 57F14 80067714 00000000 */  nop
/* 57F18 80067718 25006010 */  beqz       $v1, .L800677B0
/* 57F1C 8006771C 00000000 */   nop
/* 57F20 80067720 0980023C */  lui        $v0, %hi(BoatParentActorPtr)
/* 57F24 80067724 F842428C */  lw         $v0, %lo(BoatParentActorPtr)($v0)
/* 57F28 80067728 00000000 */  nop
/* 57F2C 8006772C 20004010 */  beqz       $v0, .L800677B0
/* 57F30 80067730 0980023C */   lui       $v0, %hi(ETActor)
/* 57F34 80067734 B05A4224 */  addiu      $v0, $v0, %lo(ETActor)
/* 57F38 80067738 0600E212 */  beq        $s7, $v0, .L80067754
/* 57F3C 8006773C 0A80023C */   lui       $v0, %hi(BootsActor)
/* 57F40 80067740 988D4224 */  addiu      $v0, $v0, %lo(BootsActor)
/* 57F44 80067744 0300E212 */  beq        $s7, $v0, .L80067754
/* 57F48 80067748 00000000 */   nop
/* 57F4C 8006774C 1800E316 */  bne        $s7, $v1, .L800677B0
/* 57F50 80067750 00000000 */   nop
.L80067754:
/* 57F54 80067754 21284002 */  addu       $a1, $s2, $zero
/* 57F58 80067758 EC17848F */  lw         $a0, %gp_rel(center)($gp)
/* 57F5C 8006775C B400B08F */  lw         $s0, 0xB4($sp)
/* 57F60 80067760 C0200400 */  sll        $a0, $a0, 3
/* 57F64 80067764 307C010C */  jal        DrawModel
/* 57F68 80067768 21200402 */   addu      $a0, $s0, $a0
/* 57F6C 8006776C 0980033C */  lui        $v1, %hi(ClearSortNTagFlag)
/* 57F70 80067770 644B638C */  lw         $v1, %lo(ClearSortNTagFlag)($v1)
/* 57F74 80067774 03000224 */  addiu      $v0, $zero, 0x3
/* 57F78 80067778 44006214 */  bne        $v1, $v0, .L8006788C
/* 57F7C 8006777C 0B80023C */   lui       $v0, %hi(g_nt)
/* 57F80 80067780 68BB4224 */  addiu      $v0, $v0, %lo(g_nt)
/* 57F84 80067784 B400A48F */  lw         $a0, 0xB4($sp)
/* 57F88 80067788 B000A58F */  lw         $a1, 0xB0($sp)
/* 57F8C 8006778C F400BE8F */  lw         $fp, 0xF4($sp)
/* 57F90 80067790 B812868F */  lw         $a2, %gp_rel(INSERTOFFSET)($gp)
/* 57F94 80067794 C0181E00 */  sll        $v1, $fp, 3
/* 57F98 80067798 C0300600 */  sll        $a2, $a2, 3
/* 57F9C 8006779C 2130C200 */  addu       $a2, $a2, $v0
/* 57FA0 800677A0 1D2B010C */  jal        UnlinkNTagAndInsert
/* 57FA4 800677A4 21306600 */   addu      $a2, $v1, $a2
/* 57FA8 800677A8 239E0108 */  j          .L8006788C
/* 57FAC 800677AC 00000000 */   nop
.L800677B0:
/* 57FB0 800677B0 9812828F */  lw         $v0, %gp_rel(DrawModelFlag)($gp)
/* 57FB4 800677B4 00000000 */  nop
/* 57FB8 800677B8 34004010 */  beqz       $v0, .L8006788C
/* 57FBC 800677BC 03000224 */   addiu     $v0, $zero, 0x3
/* 57FC0 800677C0 0980033C */  lui        $v1, %hi(gWorld)
/* 57FC4 800677C4 3C56638C */  lw         $v1, %lo(gWorld)($v1)
/* 57FC8 800677C8 00000000 */  nop
/* 57FCC 800677CC 1A006214 */  bne        $v1, $v0, .L80067838
/* 57FD0 800677D0 00000000 */   nop
/* 57FD4 800677D4 0980023C */  lui        $v0, %hi(gLevel)
/* 57FD8 800677D8 3456428C */  lw         $v0, %lo(gLevel)($v0)
/* 57FDC 800677DC 00000000 */  nop
/* 57FE0 800677E0 15004014 */  bnez       $v0, .L80067838
/* 57FE4 800677E4 22000224 */   addiu     $v0, $zero, 0x22
/* 57FE8 800677E8 1C00E38E */  lw         $v1, 0x1C($s7)
/* 57FEC 800677EC 00000000 */  nop
/* 57FF0 800677F0 11006214 */  bne        $v1, $v0, .L80067838
/* 57FF4 800677F4 00000000 */   nop
/* 57FF8 800677F8 0F008014 */  bnez       $a0, .L80067838
/* 57FFC 800677FC 00000000 */   nop
/* 58000 80067800 0980023C */  lui        $v0, %hi(BoatActorPtr)
/* 58004 80067804 F442428C */  lw         $v0, %lo(BoatActorPtr)($v0)
/* 58008 80067808 00000000 */  nop
/* 5800C 8006780C 0A00E212 */  beq        $s7, $v0, .L80067838
/* 58010 80067810 00000000 */   nop
/* 58014 80067814 0980023C */  lui        $v0, %hi(BoatParentActorPtr)
/* 58018 80067818 F842428C */  lw         $v0, %lo(BoatParentActorPtr)($v0)
/* 5801C 8006781C 00000000 */  nop
/* 58020 80067820 0500E212 */  beq        $s7, $v0, .L80067838
/* 58024 80067824 00000000 */   nop
/* 58028 80067828 18ED010C */  jal        PopMatrix
/* 5802C 8006782C 00000000 */   nop
/* 58030 80067830 259E0108 */  j          .L80067894
/* 58034 80067834 00000000 */   nop
.L80067838:
/* 58038 80067838 B400A48F */  lw         $a0, 0xB4($sp)
/* 5803C 8006783C B000A58F */  lw         $a1, 0xB0($sp)
/* 58040 80067840 DA2A010C */  jal        ClearNTag
/* 58044 80067844 00000000 */   nop
/* 58048 80067848 21284002 */  addu       $a1, $s2, $zero
/* 5804C 8006784C EC17848F */  lw         $a0, %gp_rel(center)($gp)
/* 58050 80067850 B400A28F */  lw         $v0, 0xB4($sp)
/* 58054 80067854 C0200400 */  sll        $a0, $a0, 3
/* 58058 80067858 307C010C */  jal        DrawModel
/* 5805C 8006785C 21204400 */   addu      $a0, $v0, $a0
/* 58060 80067860 0B80023C */  lui        $v0, %hi(g_nt)
/* 58064 80067864 68BB4224 */  addiu      $v0, $v0, %lo(g_nt)
/* 58068 80067868 B400A48F */  lw         $a0, 0xB4($sp)
/* 5806C 8006786C B000A58F */  lw         $a1, 0xB0($sp)
/* 58070 80067870 F400B08F */  lw         $s0, 0xF4($sp)
/* 58074 80067874 B812868F */  lw         $a2, %gp_rel(INSERTOFFSET)($gp)
/* 58078 80067878 C0181000 */  sll        $v1, $s0, 3
/* 5807C 8006787C C0300600 */  sll        $a2, $a2, 3
/* 58080 80067880 2130C200 */  addu       $a2, $a2, $v0
/* 58084 80067884 1D2B010C */  jal        UnlinkNTagAndInsert
/* 58088 80067888 21306600 */   addu      $a2, $v1, $a2
.L8006788C:
/* 5808C 8006788C 18ED010C */  jal        PopMatrix
/* 58090 80067890 00000000 */   nop
.L80067894:
/* 58094 80067894 EC00BF8F */  lw         $ra, 0xEC($sp)
/* 58098 80067898 E800BE8F */  lw         $fp, 0xE8($sp)
/* 5809C 8006789C E400B78F */  lw         $s7, 0xE4($sp)
/* 580A0 800678A0 E000B68F */  lw         $s6, 0xE0($sp)
/* 580A4 800678A4 DC00B58F */  lw         $s5, 0xDC($sp)
/* 580A8 800678A8 D800B48F */  lw         $s4, 0xD8($sp)
/* 580AC 800678AC D400B38F */  lw         $s3, 0xD4($sp)
/* 580B0 800678B0 D000B28F */  lw         $s2, 0xD0($sp)
/* 580B4 800678B4 CC00B18F */  lw         $s1, 0xCC($sp)
/* 580B8 800678B8 C800B08F */  lw         $s0, 0xC8($sp)
/* 580BC 800678BC 0800E003 */  jr         $ra
/* 580C0 800678C0 F000BD27 */   addiu     $sp, $sp, 0xF0
.size DrawActor, . - DrawActor
