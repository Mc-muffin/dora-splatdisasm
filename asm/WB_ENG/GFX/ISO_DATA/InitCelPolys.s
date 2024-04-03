.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCelPolys
/* 3CBF0 8004C3F0 21608000 */  addu       $t4, $a0, $zero
/* 3CBF4 8004C3F4 3800828D */  lw         $v0, 0x38($t4)
/* 3CBF8 8004C3F8 00000000 */  nop
/* 3CBFC 8004C3FC 22004018 */  blez       $v0, .L8004C488
/* 3CC00 8004C400 00000000 */   nop
/* 3CC04 8004C404 0800838D */  lw         $v1, 0x8($t4)
/* 3CC08 8004C408 1F004018 */  blez       $v0, .L8004C488
/* 3CC0C 8004C40C 21580000 */   addu      $t3, $zero, $zero
/* 3CC10 8004C410 04000E24 */  addiu      $t6, $zero, 0x4
/* 3CC14 8004C414 20000D24 */  addiu      $t5, $zero, 0x20
/* 3CC18 8004C418 21500000 */  addu       $t2, $zero, $zero
/* 3CC1C 8004C41C 21486000 */  addu       $t1, $v1, $zero
.L8004C420:
/* 3CC20 8004C420 0000A394 */  lhu        $v1, 0x0($a1)
/* 3CC24 8004C424 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CC28 8004C428 2140CA00 */  addu       $t0, $a2, $t2
/* 3CC2C 8004C42C 140023A5 */  sh         $v1, 0x14($t1)
/* 3CC30 8004C430 0000A294 */  lhu        $v0, 0x0($a1)
/* 3CC34 8004C434 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CC38 8004C438 160022A5 */  sh         $v0, 0x16($t1)
/* 3CC3C 8004C43C 0000A394 */  lhu        $v1, 0x0($a1)
/* 3CC40 8004C440 03004A25 */  addiu      $t2, $t2, 0x3
/* 3CC44 8004C444 03002EA1 */  sb         $t6, 0x3($t1)
/* 3CC48 8004C448 07002DA1 */  sb         $t5, 0x7($t1)
/* 3CC4C 8004C44C 180023A5 */  sh         $v1, 0x18($t1)
/* 3CC50 8004C450 00000291 */  lbu        $v0, 0x0($t0)
/* 3CC54 8004C454 01000825 */  addiu      $t0, $t0, 0x1
/* 3CC58 8004C458 040022A1 */  sb         $v0, 0x4($t1)
/* 3CC5C 8004C45C 00000391 */  lbu        $v1, 0x0($t0)
/* 3CC60 8004C460 01006B25 */  addiu      $t3, $t3, 0x1
/* 3CC64 8004C464 050023A1 */  sb         $v1, 0x5($t1)
/* 3CC68 8004C468 01000491 */  lbu        $a0, 0x1($t0)
/* 3CC6C 8004C46C 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CC70 8004C470 060024A1 */  sb         $a0, 0x6($t1)
/* 3CC74 8004C474 3800828D */  lw         $v0, 0x38($t4)
/* 3CC78 8004C478 00000000 */  nop
/* 3CC7C 8004C47C 2A106201 */  slt        $v0, $t3, $v0
/* 3CC80 8004C480 E7FF4014 */  bnez       $v0, .L8004C420
/* 3CC84 8004C484 1C002925 */   addiu     $t1, $t1, 0x1C
.L8004C488:
/* 3CC88 8004C488 3C00828D */  lw         $v0, 0x3C($t4)
/* 3CC8C 8004C48C 00000000 */  nop
/* 3CC90 8004C490 25004018 */  blez       $v0, .L8004C528
/* 3CC94 8004C494 00000000 */   nop
/* 3CC98 8004C498 0C00838D */  lw         $v1, 0xC($t4)
/* 3CC9C 8004C49C 22004018 */  blez       $v0, .L8004C528
/* 3CCA0 8004C4A0 21580000 */   addu      $t3, $zero, $zero
/* 3CCA4 8004C4A4 05000E24 */  addiu      $t6, $zero, 0x5
/* 3CCA8 8004C4A8 28000D24 */  addiu      $t5, $zero, 0x28
/* 3CCAC 8004C4AC 21500000 */  addu       $t2, $zero, $zero
/* 3CCB0 8004C4B0 21486000 */  addu       $t1, $v1, $zero
.L8004C4B4:
/* 3CCB4 8004C4B4 0000A394 */  lhu        $v1, 0x0($a1)
/* 3CCB8 8004C4B8 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CCBC 8004C4BC 2140CA00 */  addu       $t0, $a2, $t2
/* 3CCC0 8004C4C0 180023A5 */  sh         $v1, 0x18($t1)
/* 3CCC4 8004C4C4 0000A294 */  lhu        $v0, 0x0($a1)
/* 3CCC8 8004C4C8 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CCCC 8004C4CC 1A0022A5 */  sh         $v0, 0x1A($t1)
/* 3CCD0 8004C4D0 0000A394 */  lhu        $v1, 0x0($a1)
/* 3CCD4 8004C4D4 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CCD8 8004C4D8 1C0023A5 */  sh         $v1, 0x1C($t1)
/* 3CCDC 8004C4DC 0000A494 */  lhu        $a0, 0x0($a1)
/* 3CCE0 8004C4E0 03004A25 */  addiu      $t2, $t2, 0x3
/* 3CCE4 8004C4E4 03002EA1 */  sb         $t6, 0x3($t1)
/* 3CCE8 8004C4E8 07002DA1 */  sb         $t5, 0x7($t1)
/* 3CCEC 8004C4EC 1E0024A5 */  sh         $a0, 0x1E($t1)
/* 3CCF0 8004C4F0 00000291 */  lbu        $v0, 0x0($t0)
/* 3CCF4 8004C4F4 01000825 */  addiu      $t0, $t0, 0x1
/* 3CCF8 8004C4F8 040022A1 */  sb         $v0, 0x4($t1)
/* 3CCFC 8004C4FC 00000391 */  lbu        $v1, 0x0($t0)
/* 3CD00 8004C500 01006B25 */  addiu      $t3, $t3, 0x1
/* 3CD04 8004C504 050023A1 */  sb         $v1, 0x5($t1)
/* 3CD08 8004C508 01000491 */  lbu        $a0, 0x1($t0)
/* 3CD0C 8004C50C 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CD10 8004C510 060024A1 */  sb         $a0, 0x6($t1)
/* 3CD14 8004C514 3C00828D */  lw         $v0, 0x3C($t4)
/* 3CD18 8004C518 00000000 */  nop
/* 3CD1C 8004C51C 2A106201 */  slt        $v0, $t3, $v0
/* 3CD20 8004C520 E4FF4014 */  bnez       $v0, .L8004C4B4
/* 3CD24 8004C524 20002925 */   addiu     $t1, $t1, 0x20
.L8004C528:
/* 3CD28 8004C528 4000828D */  lw         $v0, 0x40($t4)
/* 3CD2C 8004C52C 00000000 */  nop
/* 3CD30 8004C530 34004018 */  blez       $v0, .L8004C604
/* 3CD34 8004C534 00000000 */   nop
/* 3CD38 8004C538 1000838D */  lw         $v1, 0x10($t4)
/* 3CD3C 8004C53C 31004018 */  blez       $v0, .L8004C604
/* 3CD40 8004C540 21580000 */   addu      $t3, $zero, $zero
/* 3CD44 8004C544 06000E24 */  addiu      $t6, $zero, 0x6
/* 3CD48 8004C548 30000D24 */  addiu      $t5, $zero, 0x30
/* 3CD4C 8004C54C 21486000 */  addu       $t1, $v1, $zero
/* 3CD50 8004C550 21500000 */  addu       $t2, $zero, $zero
.L8004C554:
/* 3CD54 8004C554 0000A394 */  lhu        $v1, 0x0($a1)
/* 3CD58 8004C558 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CD5C 8004C55C 2140CA00 */  addu       $t0, $a2, $t2
/* 3CD60 8004C560 1C0023A5 */  sh         $v1, 0x1C($t1)
/* 3CD64 8004C564 0000A294 */  lhu        $v0, 0x0($a1)
/* 3CD68 8004C568 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CD6C 8004C56C 1E0022A5 */  sh         $v0, 0x1E($t1)
/* 3CD70 8004C570 0000A394 */  lhu        $v1, 0x0($a1)
/* 3CD74 8004C574 09004A25 */  addiu      $t2, $t2, 0x9
/* 3CD78 8004C578 03002EA1 */  sb         $t6, 0x3($t1)
/* 3CD7C 8004C57C 07002DA1 */  sb         $t5, 0x7($t1)
/* 3CD80 8004C580 200023A5 */  sh         $v1, 0x20($t1)
/* 3CD84 8004C584 00000291 */  lbu        $v0, 0x0($t0)
/* 3CD88 8004C588 01000825 */  addiu      $t0, $t0, 0x1
/* 3CD8C 8004C58C 040022A1 */  sb         $v0, 0x4($t1)
/* 3CD90 8004C590 00000391 */  lbu        $v1, 0x0($t0)
/* 3CD94 8004C594 01000825 */  addiu      $t0, $t0, 0x1
/* 3CD98 8004C598 050023A1 */  sb         $v1, 0x5($t1)
/* 3CD9C 8004C59C 00000291 */  lbu        $v0, 0x0($t0)
/* 3CDA0 8004C5A0 01000825 */  addiu      $t0, $t0, 0x1
/* 3CDA4 8004C5A4 060022A1 */  sb         $v0, 0x6($t1)
/* 3CDA8 8004C5A8 00000391 */  lbu        $v1, 0x0($t0)
/* 3CDAC 8004C5AC 01000825 */  addiu      $t0, $t0, 0x1
/* 3CDB0 8004C5B0 0C0023A1 */  sb         $v1, 0xC($t1)
/* 3CDB4 8004C5B4 00000291 */  lbu        $v0, 0x0($t0)
/* 3CDB8 8004C5B8 01000825 */  addiu      $t0, $t0, 0x1
/* 3CDBC 8004C5BC 0D0022A1 */  sb         $v0, 0xD($t1)
/* 3CDC0 8004C5C0 00000391 */  lbu        $v1, 0x0($t0)
/* 3CDC4 8004C5C4 01000825 */  addiu      $t0, $t0, 0x1
/* 3CDC8 8004C5C8 0E0023A1 */  sb         $v1, 0xE($t1)
/* 3CDCC 8004C5CC 00000291 */  lbu        $v0, 0x0($t0)
/* 3CDD0 8004C5D0 01000825 */  addiu      $t0, $t0, 0x1
/* 3CDD4 8004C5D4 140022A1 */  sb         $v0, 0x14($t1)
/* 3CDD8 8004C5D8 00000391 */  lbu        $v1, 0x0($t0)
/* 3CDDC 8004C5DC 01006B25 */  addiu      $t3, $t3, 0x1
/* 3CDE0 8004C5E0 150023A1 */  sb         $v1, 0x15($t1)
/* 3CDE4 8004C5E4 01000491 */  lbu        $a0, 0x1($t0)
/* 3CDE8 8004C5E8 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CDEC 8004C5EC 160024A1 */  sb         $a0, 0x16($t1)
/* 3CDF0 8004C5F0 4000828D */  lw         $v0, 0x40($t4)
/* 3CDF4 8004C5F4 00000000 */  nop
/* 3CDF8 8004C5F8 2A106201 */  slt        $v0, $t3, $v0
/* 3CDFC 8004C5FC D5FF4014 */  bnez       $v0, .L8004C554
/* 3CE00 8004C600 24002925 */   addiu     $t1, $t1, 0x24
.L8004C604:
/* 3CE04 8004C604 4400838D */  lw         $v1, 0x44($t4)
/* 3CE08 8004C608 00000000 */  nop
/* 3CE0C 8004C60C 44006018 */  blez       $v1, .L8004C720
/* 3CE10 8004C610 00000000 */   nop
/* 3CE14 8004C614 1400828D */  lw         $v0, 0x14($t4)
/* 3CE18 8004C618 41006018 */  blez       $v1, .L8004C720
/* 3CE1C 8004C61C 21580000 */   addu      $t3, $zero, $zero
/* 3CE20 8004C620 21484000 */  addu       $t1, $v0, $zero
/* 3CE24 8004C624 21500000 */  addu       $t2, $zero, $zero
.L8004C628:
/* 3CE28 8004C628 0000A294 */  lhu        $v0, 0x0($a1)
/* 3CE2C 8004C62C 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CE30 8004C630 01006B25 */  addiu      $t3, $t3, 0x1
/* 3CE34 8004C634 240022A5 */  sh         $v0, 0x24($t1)
/* 3CE38 8004C638 0000A394 */  lhu        $v1, 0x0($a1)
/* 3CE3C 8004C63C 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CE40 8004C640 260023A5 */  sh         $v1, 0x26($t1)
/* 3CE44 8004C644 0000A294 */  lhu        $v0, 0x0($a1)
/* 3CE48 8004C648 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CE4C 8004C64C 280022A5 */  sh         $v0, 0x28($t1)
/* 3CE50 8004C650 0000A394 */  lhu        $v1, 0x0($a1)
/* 3CE54 8004C654 08000224 */  addiu      $v0, $zero, 0x8
/* 3CE58 8004C658 2A0023A5 */  sh         $v1, 0x2A($t1)
/* 3CE5C 8004C65C 4000848D */  lw         $a0, 0x40($t4)
/* 3CE60 8004C660 38000324 */  addiu      $v1, $zero, 0x38
/* 3CE64 8004C664 030022A1 */  sb         $v0, 0x3($t1)
/* 3CE68 8004C668 070023A1 */  sb         $v1, 0x7($t1)
/* 3CE6C 8004C66C 40100400 */  sll        $v0, $a0, 1
/* 3CE70 8004C670 21104400 */  addu       $v0, $v0, $a0
/* 3CE74 8004C674 21104201 */  addu       $v0, $t2, $v0
/* 3CE78 8004C678 2140C200 */  addu       $t0, $a2, $v0
/* 3CE7C 8004C67C 00000391 */  lbu        $v1, 0x0($t0)
/* 3CE80 8004C680 01000825 */  addiu      $t0, $t0, 0x1
/* 3CE84 8004C684 040023A1 */  sb         $v1, 0x4($t1)
/* 3CE88 8004C688 00000291 */  lbu        $v0, 0x0($t0)
/* 3CE8C 8004C68C 01000825 */  addiu      $t0, $t0, 0x1
/* 3CE90 8004C690 050022A1 */  sb         $v0, 0x5($t1)
/* 3CE94 8004C694 00000391 */  lbu        $v1, 0x0($t0)
/* 3CE98 8004C698 01000825 */  addiu      $t0, $t0, 0x1
/* 3CE9C 8004C69C 060023A1 */  sb         $v1, 0x6($t1)
/* 3CEA0 8004C6A0 00000291 */  lbu        $v0, 0x0($t0)
/* 3CEA4 8004C6A4 01000825 */  addiu      $t0, $t0, 0x1
/* 3CEA8 8004C6A8 0C0022A1 */  sb         $v0, 0xC($t1)
/* 3CEAC 8004C6AC 00000391 */  lbu        $v1, 0x0($t0)
/* 3CEB0 8004C6B0 01000825 */  addiu      $t0, $t0, 0x1
/* 3CEB4 8004C6B4 0D0023A1 */  sb         $v1, 0xD($t1)
/* 3CEB8 8004C6B8 00000291 */  lbu        $v0, 0x0($t0)
/* 3CEBC 8004C6BC 01000825 */  addiu      $t0, $t0, 0x1
/* 3CEC0 8004C6C0 0E0022A1 */  sb         $v0, 0xE($t1)
/* 3CEC4 8004C6C4 00000391 */  lbu        $v1, 0x0($t0)
/* 3CEC8 8004C6C8 01000825 */  addiu      $t0, $t0, 0x1
/* 3CECC 8004C6CC 140023A1 */  sb         $v1, 0x14($t1)
/* 3CED0 8004C6D0 00000291 */  lbu        $v0, 0x0($t0)
/* 3CED4 8004C6D4 01000825 */  addiu      $t0, $t0, 0x1
/* 3CED8 8004C6D8 150022A1 */  sb         $v0, 0x15($t1)
/* 3CEDC 8004C6DC 00000391 */  lbu        $v1, 0x0($t0)
/* 3CEE0 8004C6E0 01000825 */  addiu      $t0, $t0, 0x1
/* 3CEE4 8004C6E4 160023A1 */  sb         $v1, 0x16($t1)
/* 3CEE8 8004C6E8 00000291 */  lbu        $v0, 0x0($t0)
/* 3CEEC 8004C6EC 01000825 */  addiu      $t0, $t0, 0x1
/* 3CEF0 8004C6F0 1C0022A1 */  sb         $v0, 0x1C($t1)
/* 3CEF4 8004C6F4 00000391 */  lbu        $v1, 0x0($t0)
/* 3CEF8 8004C6F8 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CEFC 8004C6FC 1D0023A1 */  sb         $v1, 0x1D($t1)
/* 3CF00 8004C700 01000491 */  lbu        $a0, 0x1($t0)
/* 3CF04 8004C704 0C004A25 */  addiu      $t2, $t2, 0xC
/* 3CF08 8004C708 1E0024A1 */  sb         $a0, 0x1E($t1)
/* 3CF0C 8004C70C 4400828D */  lw         $v0, 0x44($t4)
/* 3CF10 8004C710 00000000 */  nop
/* 3CF14 8004C714 2A106201 */  slt        $v0, $t3, $v0
/* 3CF18 8004C718 C3FF4014 */  bnez       $v0, .L8004C628
/* 3CF1C 8004C71C 2C002925 */   addiu     $t1, $t1, 0x2C
.L8004C720:
/* 3CF20 8004C720 4800828D */  lw         $v0, 0x48($t4)
/* 3CF24 8004C724 00000000 */  nop
/* 3CF28 8004C728 49004018 */  blez       $v0, .L8004C850
/* 3CF2C 8004C72C 00000000 */   nop
/* 3CF30 8004C730 1800888D */  lw         $t0, 0x18($t4)
/* 3CF34 8004C734 46004018 */  blez       $v0, .L8004C850
/* 3CF38 8004C738 21580000 */   addu      $t3, $zero, $zero
/* 3CF3C 8004C73C 0C80043C */  lui        $a0, %hi(VRAMItems)
/* 3CF40 8004C740 38AD8424 */  addiu      $a0, $a0, %lo(VRAMItems)
/* 3CF44 8004C744 80100700 */  sll        $v0, $a3, 2
/* 3CF48 8004C748 21104700 */  addu       $v0, $v0, $a3
/* 3CF4C 8004C74C 80100200 */  sll        $v0, $v0, 2
/* 3CF50 8004C750 21504400 */  addu       $t2, $v0, $a0
/* 3CF54 8004C754 08008424 */  addiu      $a0, $a0, 0x8
/* 3CF58 8004C758 21704400 */  addu       $t6, $v0, $a0
/* 3CF5C 8004C75C 80190700 */  sll        $v1, $a3, 6
/* 3CF60 8004C760 21186700 */  addu       $v1, $v1, $a3
/* 3CF64 8004C764 40180300 */  sll        $v1, $v1, 1
/* 3CF68 8004C768 0C80023C */  lui        $v0, %hi(gCLUTUseTable + 0x26)
/* 3CF6C 8004C76C CEC44224 */  addiu      $v0, $v0, %lo(gCLUTUseTable + 0x26)
/* 3CF70 8004C770 21686200 */  addu       $t5, $v1, $v0
/* 3CF74 8004C774 21200000 */  addu       $a0, $zero, $zero
/* 3CF78 8004C778 21480001 */  addu       $t1, $t0, $zero
/* 3CF7C 8004C77C 07001824 */  addiu      $t8, $zero, 0x7
/* 3CF80 8004C780 24000F24 */  addiu      $t7, $zero, 0x24
.L8004C784:
/* 3CF84 8004C784 0000A294 */  lhu        $v0, 0x0($a1)
/* 3CF88 8004C788 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CF8C 8004C78C 200022A5 */  sh         $v0, 0x20($t1)
/* 3CF90 8004C790 0000A394 */  lhu        $v1, 0x0($a1)
/* 3CF94 8004C794 0200A524 */  addiu      $a1, $a1, 0x2
/* 3CF98 8004C798 220023A5 */  sh         $v1, 0x22($t1)
/* 3CF9C 8004C79C 0000A294 */  lhu        $v0, 0x0($a1)
/* 3CFA0 8004C7A0 2140C400 */  addu       $t0, $a2, $a0
/* 3CFA4 8004C7A4 030038A1 */  sb         $t8, 0x3($t1)
/* 3CFA8 8004C7A8 07002FA1 */  sb         $t7, 0x7($t1)
/* 3CFAC 8004C7AC 240022A5 */  sh         $v0, 0x24($t1)
/* 3CFB0 8004C7B0 00000391 */  lbu        $v1, 0x0($t0)
/* 3CFB4 8004C7B4 01000825 */  addiu      $t0, $t0, 0x1
/* 3CFB8 8004C7B8 040023A1 */  sb         $v1, 0x4($t1)
/* 3CFBC 8004C7BC 00000291 */  lbu        $v0, 0x0($t0)
/* 3CFC0 8004C7C0 00000000 */  nop
/* 3CFC4 8004C7C4 050022A1 */  sb         $v0, 0x5($t1)
/* 3CFC8 8004C7C8 01000391 */  lbu        $v1, 0x1($t0)
/* 3CFCC 8004C7CC 00000000 */  nop
/* 3CFD0 8004C7D0 060023A1 */  sb         $v1, 0x6($t1)
/* 3CFD4 8004C7D4 0E004291 */  lbu        $v0, 0xE($t2)
/* 3CFD8 8004C7D8 00000000 */  nop
/* 3CFDC 8004C7DC 0C0022A1 */  sb         $v0, 0xC($t1)
/* 3CFE0 8004C7E0 0F004391 */  lbu        $v1, 0xF($t2)
/* 3CFE4 8004C7E4 00000000 */  nop
/* 3CFE8 8004C7E8 0D0023A1 */  sb         $v1, 0xD($t1)
/* 3CFEC 8004C7EC 0E004291 */  lbu        $v0, 0xE($t2)
/* 3CFF0 8004C7F0 00000000 */  nop
/* 3CFF4 8004C7F4 3F004224 */  addiu      $v0, $v0, 0x3F
/* 3CFF8 8004C7F8 140022A1 */  sb         $v0, 0x14($t1)
/* 3CFFC 8004C7FC 0F004391 */  lbu        $v1, 0xF($t2)
/* 3D000 8004C800 00000000 */  nop
/* 3D004 8004C804 150023A1 */  sb         $v1, 0x15($t1)
/* 3D008 8004C808 0E004291 */  lbu        $v0, 0xE($t2)
/* 3D00C 8004C80C 00000000 */  nop
/* 3D010 8004C810 1C0022A1 */  sb         $v0, 0x1C($t1)
/* 3D014 8004C814 0F004391 */  lbu        $v1, 0xF($t2)
/* 3D018 8004C818 03008424 */  addiu      $a0, $a0, 0x3
/* 3D01C 8004C81C 3F006324 */  addiu      $v1, $v1, 0x3F
/* 3D020 8004C820 1D0023A1 */  sb         $v1, 0x1D($t1)
/* 3D024 8004C824 0000C295 */  lhu        $v0, 0x0($t6)
/* 3D028 8004C828 01006B25 */  addiu      $t3, $t3, 0x1
/* 3D02C 8004C82C 160022A5 */  sh         $v0, 0x16($t1)
/* 3D030 8004C830 0000A395 */  lhu        $v1, 0x0($t5)
/* 3D034 8004C834 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D038 8004C838 0E0023A5 */  sh         $v1, 0xE($t1)
/* 3D03C 8004C83C 4800828D */  lw         $v0, 0x48($t4)
/* 3D040 8004C840 00000000 */  nop
/* 3D044 8004C844 2A106201 */  slt        $v0, $t3, $v0
/* 3D048 8004C848 CEFF4014 */  bnez       $v0, .L8004C784
/* 3D04C 8004C84C 28002925 */   addiu     $t1, $t1, 0x28
.L8004C850:
/* 3D050 8004C850 4C00828D */  lw         $v0, 0x4C($t4)
/* 3D054 8004C854 00000000 */  nop
/* 3D058 8004C858 54004018 */  blez       $v0, .L8004C9AC
/* 3D05C 8004C85C 00000000 */   nop
/* 3D060 8004C860 1C00888D */  lw         $t0, 0x1C($t4)
/* 3D064 8004C864 51004018 */  blez       $v0, .L8004C9AC
/* 3D068 8004C868 21580000 */   addu      $t3, $zero, $zero
/* 3D06C 8004C86C 0C80043C */  lui        $a0, %hi(VRAMItems)
/* 3D070 8004C870 38AD8424 */  addiu      $a0, $a0, %lo(VRAMItems)
/* 3D074 8004C874 80100700 */  sll        $v0, $a3, 2
/* 3D078 8004C878 21104700 */  addu       $v0, $v0, $a3
/* 3D07C 8004C87C 80100200 */  sll        $v0, $v0, 2
/* 3D080 8004C880 21504400 */  addu       $t2, $v0, $a0
/* 3D084 8004C884 08008424 */  addiu      $a0, $a0, 0x8
/* 3D088 8004C888 21784400 */  addu       $t7, $v0, $a0
/* 3D08C 8004C88C 80190700 */  sll        $v1, $a3, 6
/* 3D090 8004C890 21186700 */  addu       $v1, $v1, $a3
/* 3D094 8004C894 40180300 */  sll        $v1, $v1, 1
/* 3D098 8004C898 0C80023C */  lui        $v0, %hi(gCLUTUseTable + 0x26)
/* 3D09C 8004C89C CEC44224 */  addiu      $v0, $v0, %lo(gCLUTUseTable + 0x26)
/* 3D0A0 8004C8A0 21706200 */  addu       $t6, $v1, $v0
/* 3D0A4 8004C8A4 21480001 */  addu       $t1, $t0, $zero
/* 3D0A8 8004C8A8 21680000 */  addu       $t5, $zero, $zero
.L8004C8AC:
/* 3D0AC 8004C8AC 0000A394 */  lhu        $v1, 0x0($a1)
/* 3D0B0 8004C8B0 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D0B4 8004C8B4 2140CD00 */  addu       $t0, $a2, $t5
/* 3D0B8 8004C8B8 280023A5 */  sh         $v1, 0x28($t1)
/* 3D0BC 8004C8BC 0000A294 */  lhu        $v0, 0x0($a1)
/* 3D0C0 8004C8C0 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D0C4 8004C8C4 2A0022A5 */  sh         $v0, 0x2A($t1)
/* 3D0C8 8004C8C8 0000A394 */  lhu        $v1, 0x0($a1)
/* 3D0CC 8004C8CC 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D0D0 8004C8D0 09000224 */  addiu      $v0, $zero, 0x9
/* 3D0D4 8004C8D4 2C0023A5 */  sh         $v1, 0x2C($t1)
/* 3D0D8 8004C8D8 0000A494 */  lhu        $a0, 0x0($a1)
/* 3D0DC 8004C8DC 2C000324 */  addiu      $v1, $zero, 0x2C
/* 3D0E0 8004C8E0 030022A1 */  sb         $v0, 0x3($t1)
/* 3D0E4 8004C8E4 070023A1 */  sb         $v1, 0x7($t1)
/* 3D0E8 8004C8E8 2E0024A5 */  sh         $a0, 0x2E($t1)
/* 3D0EC 8004C8EC 00000391 */  lbu        $v1, 0x0($t0)
/* 3D0F0 8004C8F0 01000825 */  addiu      $t0, $t0, 0x1
/* 3D0F4 8004C8F4 040023A1 */  sb         $v1, 0x4($t1)
/* 3D0F8 8004C8F8 00000291 */  lbu        $v0, 0x0($t0)
/* 3D0FC 8004C8FC 00000000 */  nop
/* 3D100 8004C900 050022A1 */  sb         $v0, 0x5($t1)
/* 3D104 8004C904 01000391 */  lbu        $v1, 0x1($t0)
/* 3D108 8004C908 00000000 */  nop
/* 3D10C 8004C90C 060023A1 */  sb         $v1, 0x6($t1)
/* 3D110 8004C910 0E004291 */  lbu        $v0, 0xE($t2)
/* 3D114 8004C914 00000000 */  nop
/* 3D118 8004C918 0C0022A1 */  sb         $v0, 0xC($t1)
/* 3D11C 8004C91C 0F004391 */  lbu        $v1, 0xF($t2)
/* 3D120 8004C920 00000000 */  nop
/* 3D124 8004C924 0D0023A1 */  sb         $v1, 0xD($t1)
/* 3D128 8004C928 0E004291 */  lbu        $v0, 0xE($t2)
/* 3D12C 8004C92C 00000000 */  nop
/* 3D130 8004C930 3F004224 */  addiu      $v0, $v0, 0x3F
/* 3D134 8004C934 140022A1 */  sb         $v0, 0x14($t1)
/* 3D138 8004C938 0F004391 */  lbu        $v1, 0xF($t2)
/* 3D13C 8004C93C 00000000 */  nop
/* 3D140 8004C940 150023A1 */  sb         $v1, 0x15($t1)
/* 3D144 8004C944 0E004491 */  lbu        $a0, 0xE($t2)
/* 3D148 8004C948 00000000 */  nop
/* 3D14C 8004C94C 1C0024A1 */  sb         $a0, 0x1C($t1)
/* 3D150 8004C950 0F004291 */  lbu        $v0, 0xF($t2)
/* 3D154 8004C954 00000000 */  nop
/* 3D158 8004C958 3F004224 */  addiu      $v0, $v0, 0x3F
/* 3D15C 8004C95C 1D0022A1 */  sb         $v0, 0x1D($t1)
/* 3D160 8004C960 0E004391 */  lbu        $v1, 0xE($t2)
/* 3D164 8004C964 00000000 */  nop
/* 3D168 8004C968 3F006324 */  addiu      $v1, $v1, 0x3F
/* 3D16C 8004C96C 240023A1 */  sb         $v1, 0x24($t1)
/* 3D170 8004C970 0F004291 */  lbu        $v0, 0xF($t2)
/* 3D174 8004C974 0300AD25 */  addiu      $t5, $t5, 0x3
/* 3D178 8004C978 3F004224 */  addiu      $v0, $v0, 0x3F
/* 3D17C 8004C97C 250022A1 */  sb         $v0, 0x25($t1)
/* 3D180 8004C980 0000E395 */  lhu        $v1, 0x0($t7)
/* 3D184 8004C984 01006B25 */  addiu      $t3, $t3, 0x1
/* 3D188 8004C988 160023A5 */  sh         $v1, 0x16($t1)
/* 3D18C 8004C98C 0000C495 */  lhu        $a0, 0x0($t6)
/* 3D190 8004C990 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D194 8004C994 0E0024A5 */  sh         $a0, 0xE($t1)
/* 3D198 8004C998 4C00828D */  lw         $v0, 0x4C($t4)
/* 3D19C 8004C99C 00000000 */  nop
/* 3D1A0 8004C9A0 2A106201 */  slt        $v0, $t3, $v0
/* 3D1A4 8004C9A4 C1FF4014 */  bnez       $v0, .L8004C8AC
/* 3D1A8 8004C9A8 34002925 */   addiu     $t1, $t1, 0x34
.L8004C9AC:
/* 3D1AC 8004C9AC 5000828D */  lw         $v0, 0x50($t4)
/* 3D1B0 8004C9B0 00000000 */  nop
/* 3D1B4 8004C9B4 5B004018 */  blez       $v0, .L8004CB24
/* 3D1B8 8004C9B8 00000000 */   nop
/* 3D1BC 8004C9BC 2000888D */  lw         $t0, 0x20($t4)
/* 3D1C0 8004C9C0 58004018 */  blez       $v0, .L8004CB24
/* 3D1C4 8004C9C4 21580000 */   addu      $t3, $zero, $zero
/* 3D1C8 8004C9C8 0C80043C */  lui        $a0, %hi(VRAMItems)
/* 3D1CC 8004C9CC 38AD8424 */  addiu      $a0, $a0, %lo(VRAMItems)
/* 3D1D0 8004C9D0 80100700 */  sll        $v0, $a3, 2
/* 3D1D4 8004C9D4 21104700 */  addu       $v0, $v0, $a3
/* 3D1D8 8004C9D8 80100200 */  sll        $v0, $v0, 2
/* 3D1DC 8004C9DC 21504400 */  addu       $t2, $v0, $a0
/* 3D1E0 8004C9E0 08008424 */  addiu      $a0, $a0, 0x8
/* 3D1E4 8004C9E4 21784400 */  addu       $t7, $v0, $a0
/* 3D1E8 8004C9E8 80190700 */  sll        $v1, $a3, 6
/* 3D1EC 8004C9EC 21186700 */  addu       $v1, $v1, $a3
/* 3D1F0 8004C9F0 40180300 */  sll        $v1, $v1, 1
/* 3D1F4 8004C9F4 0C80023C */  lui        $v0, %hi(gCLUTUseTable + 0x26)
/* 3D1F8 8004C9F8 CEC44224 */  addiu      $v0, $v0, %lo(gCLUTUseTable + 0x26)
/* 3D1FC 8004C9FC 21706200 */  addu       $t6, $v1, $v0
/* 3D200 8004CA00 21480001 */  addu       $t1, $t0, $zero
/* 3D204 8004CA04 21680000 */  addu       $t5, $zero, $zero
.L8004CA08:
/* 3D208 8004CA08 0000A394 */  lhu        $v1, 0x0($a1)
/* 3D20C 8004CA0C 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D210 8004CA10 2140CD00 */  addu       $t0, $a2, $t5
/* 3D214 8004CA14 280023A5 */  sh         $v1, 0x28($t1)
/* 3D218 8004CA18 0000A294 */  lhu        $v0, 0x0($a1)
/* 3D21C 8004CA1C 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D220 8004CA20 34000324 */  addiu      $v1, $zero, 0x34
/* 3D224 8004CA24 2A0022A5 */  sh         $v0, 0x2A($t1)
/* 3D228 8004CA28 0000A494 */  lhu        $a0, 0x0($a1)
/* 3D22C 8004CA2C 09000224 */  addiu      $v0, $zero, 0x9
/* 3D230 8004CA30 030022A1 */  sb         $v0, 0x3($t1)
/* 3D234 8004CA34 070023A1 */  sb         $v1, 0x7($t1)
/* 3D238 8004CA38 2C0024A5 */  sh         $a0, 0x2C($t1)
/* 3D23C 8004CA3C 00000291 */  lbu        $v0, 0x0($t0)
/* 3D240 8004CA40 01000825 */  addiu      $t0, $t0, 0x1
/* 3D244 8004CA44 040022A1 */  sb         $v0, 0x4($t1)
/* 3D248 8004CA48 00000391 */  lbu        $v1, 0x0($t0)
/* 3D24C 8004CA4C 01000825 */  addiu      $t0, $t0, 0x1
/* 3D250 8004CA50 050023A1 */  sb         $v1, 0x5($t1)
/* 3D254 8004CA54 00000291 */  lbu        $v0, 0x0($t0)
/* 3D258 8004CA58 01000825 */  addiu      $t0, $t0, 0x1
/* 3D25C 8004CA5C 060022A1 */  sb         $v0, 0x6($t1)
/* 3D260 8004CA60 00000391 */  lbu        $v1, 0x0($t0)
/* 3D264 8004CA64 01000825 */  addiu      $t0, $t0, 0x1
/* 3D268 8004CA68 100023A1 */  sb         $v1, 0x10($t1)
/* 3D26C 8004CA6C 00000291 */  lbu        $v0, 0x0($t0)
/* 3D270 8004CA70 01000825 */  addiu      $t0, $t0, 0x1
/* 3D274 8004CA74 110022A1 */  sb         $v0, 0x11($t1)
/* 3D278 8004CA78 00000391 */  lbu        $v1, 0x0($t0)
/* 3D27C 8004CA7C 01000825 */  addiu      $t0, $t0, 0x1
/* 3D280 8004CA80 120023A1 */  sb         $v1, 0x12($t1)
/* 3D284 8004CA84 00000491 */  lbu        $a0, 0x0($t0)
/* 3D288 8004CA88 01000825 */  addiu      $t0, $t0, 0x1
/* 3D28C 8004CA8C 1C0024A1 */  sb         $a0, 0x1C($t1)
/* 3D290 8004CA90 00000291 */  lbu        $v0, 0x0($t0)
/* 3D294 8004CA94 00000000 */  nop
/* 3D298 8004CA98 1D0022A1 */  sb         $v0, 0x1D($t1)
/* 3D29C 8004CA9C 01000391 */  lbu        $v1, 0x1($t0)
/* 3D2A0 8004CAA0 00000000 */  nop
/* 3D2A4 8004CAA4 1E0023A1 */  sb         $v1, 0x1E($t1)
/* 3D2A8 8004CAA8 0E004291 */  lbu        $v0, 0xE($t2)
/* 3D2AC 8004CAAC 00000000 */  nop
/* 3D2B0 8004CAB0 0C0022A1 */  sb         $v0, 0xC($t1)
/* 3D2B4 8004CAB4 0F004391 */  lbu        $v1, 0xF($t2)
/* 3D2B8 8004CAB8 00000000 */  nop
/* 3D2BC 8004CABC 0D0023A1 */  sb         $v1, 0xD($t1)
/* 3D2C0 8004CAC0 0E004291 */  lbu        $v0, 0xE($t2)
/* 3D2C4 8004CAC4 00000000 */  nop
/* 3D2C8 8004CAC8 3F004224 */  addiu      $v0, $v0, 0x3F
/* 3D2CC 8004CACC 180022A1 */  sb         $v0, 0x18($t1)
/* 3D2D0 8004CAD0 0F004391 */  lbu        $v1, 0xF($t2)
/* 3D2D4 8004CAD4 00000000 */  nop
/* 3D2D8 8004CAD8 190023A1 */  sb         $v1, 0x19($t1)
/* 3D2DC 8004CADC 0E004291 */  lbu        $v0, 0xE($t2)
/* 3D2E0 8004CAE0 00000000 */  nop
/* 3D2E4 8004CAE4 240022A1 */  sb         $v0, 0x24($t1)
/* 3D2E8 8004CAE8 0F004391 */  lbu        $v1, 0xF($t2)
/* 3D2EC 8004CAEC 0300AD25 */  addiu      $t5, $t5, 0x3
/* 3D2F0 8004CAF0 3F006324 */  addiu      $v1, $v1, 0x3F
/* 3D2F4 8004CAF4 250023A1 */  sb         $v1, 0x25($t1)
/* 3D2F8 8004CAF8 0000E295 */  lhu        $v0, 0x0($t7)
/* 3D2FC 8004CAFC 01006B25 */  addiu      $t3, $t3, 0x1
/* 3D300 8004CB00 1A0022A5 */  sh         $v0, 0x1A($t1)
/* 3D304 8004CB04 0000C395 */  lhu        $v1, 0x0($t6)
/* 3D308 8004CB08 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D30C 8004CB0C 0E0023A5 */  sh         $v1, 0xE($t1)
/* 3D310 8004CB10 5000828D */  lw         $v0, 0x50($t4)
/* 3D314 8004CB14 00000000 */  nop
/* 3D318 8004CB18 2A106201 */  slt        $v0, $t3, $v0
/* 3D31C 8004CB1C BAFF4014 */  bnez       $v0, .L8004CA08
/* 3D320 8004CB20 30002925 */   addiu     $t1, $t1, 0x30
.L8004CB24:
/* 3D324 8004CB24 5400828D */  lw         $v0, 0x54($t4)
/* 3D328 8004CB28 00000000 */  nop
/* 3D32C 8004CB2C 6F004018 */  blez       $v0, .L8004CCEC
/* 3D330 8004CB30 00000000 */   nop
/* 3D334 8004CB34 2400888D */  lw         $t0, 0x24($t4)
/* 3D338 8004CB38 6C004018 */  blez       $v0, .L8004CCEC
/* 3D33C 8004CB3C 21580000 */   addu      $t3, $zero, $zero
/* 3D340 8004CB40 0C80043C */  lui        $a0, %hi(VRAMItems)
/* 3D344 8004CB44 38AD8424 */  addiu      $a0, $a0, %lo(VRAMItems)
/* 3D348 8004CB48 80100700 */  sll        $v0, $a3, 2
/* 3D34C 8004CB4C 21104700 */  addu       $v0, $v0, $a3
/* 3D350 8004CB50 80100200 */  sll        $v0, $v0, 2
/* 3D354 8004CB54 21504400 */  addu       $t2, $v0, $a0
/* 3D358 8004CB58 08008424 */  addiu      $a0, $a0, 0x8
/* 3D35C 8004CB5C 21704400 */  addu       $t6, $v0, $a0
/* 3D360 8004CB60 80190700 */  sll        $v1, $a3, 6
/* 3D364 8004CB64 21186700 */  addu       $v1, $v1, $a3
/* 3D368 8004CB68 40180300 */  sll        $v1, $v1, 1
/* 3D36C 8004CB6C 0C80023C */  lui        $v0, %hi(gCLUTUseTable + 0x26)
/* 3D370 8004CB70 CEC44224 */  addiu      $v0, $v0, %lo(gCLUTUseTable + 0x26)
/* 3D374 8004CB74 21386200 */  addu       $a3, $v1, $v0
/* 3D378 8004CB78 21680000 */  addu       $t5, $zero, $zero
/* 3D37C 8004CB7C 21480001 */  addu       $t1, $t0, $zero
.L8004CB80:
/* 3D380 8004CB80 0000A394 */  lhu        $v1, 0x0($a1)
/* 3D384 8004CB84 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D388 8004CB88 2140CD00 */  addu       $t0, $a2, $t5
/* 3D38C 8004CB8C 340023A5 */  sh         $v1, 0x34($t1)
/* 3D390 8004CB90 0000A294 */  lhu        $v0, 0x0($a1)
/* 3D394 8004CB94 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D398 8004CB98 360022A5 */  sh         $v0, 0x36($t1)
/* 3D39C 8004CB9C 0000A394 */  lhu        $v1, 0x0($a1)
/* 3D3A0 8004CBA0 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D3A4 8004CBA4 0C000224 */  addiu      $v0, $zero, 0xC
/* 3D3A8 8004CBA8 380023A5 */  sh         $v1, 0x38($t1)
/* 3D3AC 8004CBAC 0000A494 */  lhu        $a0, 0x0($a1)
/* 3D3B0 8004CBB0 3C000324 */  addiu      $v1, $zero, 0x3C
/* 3D3B4 8004CBB4 030022A1 */  sb         $v0, 0x3($t1)
/* 3D3B8 8004CBB8 070023A1 */  sb         $v1, 0x7($t1)
/* 3D3BC 8004CBBC 3A0024A5 */  sh         $a0, 0x3A($t1)
/* 3D3C0 8004CBC0 00000291 */  lbu        $v0, 0x0($t0)
/* 3D3C4 8004CBC4 01000825 */  addiu      $t0, $t0, 0x1
/* 3D3C8 8004CBC8 040022A1 */  sb         $v0, 0x4($t1)
/* 3D3CC 8004CBCC 00000391 */  lbu        $v1, 0x0($t0)
/* 3D3D0 8004CBD0 01000825 */  addiu      $t0, $t0, 0x1
/* 3D3D4 8004CBD4 050023A1 */  sb         $v1, 0x5($t1)
/* 3D3D8 8004CBD8 00000291 */  lbu        $v0, 0x0($t0)
/* 3D3DC 8004CBDC 01000825 */  addiu      $t0, $t0, 0x1
/* 3D3E0 8004CBE0 060022A1 */  sb         $v0, 0x6($t1)
/* 3D3E4 8004CBE4 00000391 */  lbu        $v1, 0x0($t0)
/* 3D3E8 8004CBE8 01000825 */  addiu      $t0, $t0, 0x1
/* 3D3EC 8004CBEC 100023A1 */  sb         $v1, 0x10($t1)
/* 3D3F0 8004CBF0 00000291 */  lbu        $v0, 0x0($t0)
/* 3D3F4 8004CBF4 01000825 */  addiu      $t0, $t0, 0x1
/* 3D3F8 8004CBF8 110022A1 */  sb         $v0, 0x11($t1)
/* 3D3FC 8004CBFC 00000391 */  lbu        $v1, 0x0($t0)
/* 3D400 8004CC00 01000825 */  addiu      $t0, $t0, 0x1
/* 3D404 8004CC04 120023A1 */  sb         $v1, 0x12($t1)
/* 3D408 8004CC08 00000291 */  lbu        $v0, 0x0($t0)
/* 3D40C 8004CC0C 01000825 */  addiu      $t0, $t0, 0x1
/* 3D410 8004CC10 1C0022A1 */  sb         $v0, 0x1C($t1)
/* 3D414 8004CC14 00000391 */  lbu        $v1, 0x0($t0)
/* 3D418 8004CC18 01000825 */  addiu      $t0, $t0, 0x1
/* 3D41C 8004CC1C 1D0023A1 */  sb         $v1, 0x1D($t1)
/* 3D420 8004CC20 00000291 */  lbu        $v0, 0x0($t0)
/* 3D424 8004CC24 01000825 */  addiu      $t0, $t0, 0x1
/* 3D428 8004CC28 1E0022A1 */  sb         $v0, 0x1E($t1)
/* 3D42C 8004CC2C 00000391 */  lbu        $v1, 0x0($t0)
/* 3D430 8004CC30 01000825 */  addiu      $t0, $t0, 0x1
/* 3D434 8004CC34 280023A1 */  sb         $v1, 0x28($t1)
/* 3D438 8004CC38 00000291 */  lbu        $v0, 0x0($t0)
/* 3D43C 8004CC3C 00000000 */  nop
/* 3D440 8004CC40 290022A1 */  sb         $v0, 0x29($t1)
/* 3D444 8004CC44 01000391 */  lbu        $v1, 0x1($t0)
/* 3D448 8004CC48 00000000 */  nop
/* 3D44C 8004CC4C 2A0023A1 */  sb         $v1, 0x2A($t1)
/* 3D450 8004CC50 0E004291 */  lbu        $v0, 0xE($t2)
/* 3D454 8004CC54 00000000 */  nop
/* 3D458 8004CC58 0C0022A1 */  sb         $v0, 0xC($t1)
/* 3D45C 8004CC5C 0F004391 */  lbu        $v1, 0xF($t2)
/* 3D460 8004CC60 00000000 */  nop
/* 3D464 8004CC64 0D0023A1 */  sb         $v1, 0xD($t1)
/* 3D468 8004CC68 0E004291 */  lbu        $v0, 0xE($t2)
/* 3D46C 8004CC6C 00000000 */  nop
/* 3D470 8004CC70 3F004224 */  addiu      $v0, $v0, 0x3F
/* 3D474 8004CC74 180022A1 */  sb         $v0, 0x18($t1)
/* 3D478 8004CC78 0F004391 */  lbu        $v1, 0xF($t2)
/* 3D47C 8004CC7C 00000000 */  nop
/* 3D480 8004CC80 190023A1 */  sb         $v1, 0x19($t1)
/* 3D484 8004CC84 0E004491 */  lbu        $a0, 0xE($t2)
/* 3D488 8004CC88 00000000 */  nop
/* 3D48C 8004CC8C 240024A1 */  sb         $a0, 0x24($t1)
/* 3D490 8004CC90 0F004291 */  lbu        $v0, 0xF($t2)
/* 3D494 8004CC94 00000000 */  nop
/* 3D498 8004CC98 3F004224 */  addiu      $v0, $v0, 0x3F
/* 3D49C 8004CC9C 250022A1 */  sb         $v0, 0x25($t1)
/* 3D4A0 8004CCA0 0E004391 */  lbu        $v1, 0xE($t2)
/* 3D4A4 8004CCA4 00000000 */  nop
/* 3D4A8 8004CCA8 3F006324 */  addiu      $v1, $v1, 0x3F
/* 3D4AC 8004CCAC 300023A1 */  sb         $v1, 0x30($t1)
/* 3D4B0 8004CCB0 0F004291 */  lbu        $v0, 0xF($t2)
/* 3D4B4 8004CCB4 0300AD25 */  addiu      $t5, $t5, 0x3
/* 3D4B8 8004CCB8 3F004224 */  addiu      $v0, $v0, 0x3F
/* 3D4BC 8004CCBC 310022A1 */  sb         $v0, 0x31($t1)
/* 3D4C0 8004CCC0 0000C395 */  lhu        $v1, 0x0($t6)
/* 3D4C4 8004CCC4 01006B25 */  addiu      $t3, $t3, 0x1
/* 3D4C8 8004CCC8 1A0023A5 */  sh         $v1, 0x1A($t1)
/* 3D4CC 8004CCCC 0000E494 */  lhu        $a0, 0x0($a3)
/* 3D4D0 8004CCD0 0200A524 */  addiu      $a1, $a1, 0x2
/* 3D4D4 8004CCD4 0E0024A5 */  sh         $a0, 0xE($t1)
/* 3D4D8 8004CCD8 5400828D */  lw         $v0, 0x54($t4)
/* 3D4DC 8004CCDC 00000000 */  nop
/* 3D4E0 8004CCE0 2A106201 */  slt        $v0, $t3, $v0
/* 3D4E4 8004CCE4 A6FF4014 */  bnez       $v0, .L8004CB80
/* 3D4E8 8004CCE8 40002925 */   addiu     $t1, $t1, 0x40
.L8004CCEC:
/* 3D4EC 8004CCEC 0800E003 */  jr         $ra
/* 3D4F0 8004CCF0 00000000 */   nop
.size InitCelPolys, . - InitCelPolys