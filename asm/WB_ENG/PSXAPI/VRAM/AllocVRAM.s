.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocVRAM
/* 4CC1C 8005C41C 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 4CC20 8005C420 00240400 */  sll        $a0, $a0, 16
/* 4CC24 8005C424 03240400 */  sra        $a0, $a0, 16
/* 4CC28 8005C428 003C0700 */  sll        $a3, $a3, 16
/* 4CC2C 8005C42C 033C0700 */  sra        $a3, $a3, 16
/* 4CC30 8005C430 0C80023C */  lui        $v0, %hi(VRAMItems)
/* 4CC34 8005C434 1400A4AF */  sw         $a0, 0x14($sp)
/* 4CC38 8005C438 38AD4424 */  addiu      $a0, $v0, %lo(VRAMItems)
/* 4CC3C 8005C43C 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 4CC40 8005C440 6800BEAF */  sw         $fp, 0x68($sp)
/* 4CC44 8005C444 6400B7AF */  sw         $s7, 0x64($sp)
/* 4CC48 8005C448 6000B6AF */  sw         $s6, 0x60($sp)
/* 4CC4C 8005C44C 5C00B5AF */  sw         $s5, 0x5C($sp)
/* 4CC50 8005C450 5800B4AF */  sw         $s4, 0x58($sp)
/* 4CC54 8005C454 5400B3AF */  sw         $s3, 0x54($sp)
/* 4CC58 8005C458 5000B2AF */  sw         $s2, 0x50($sp)
/* 4CC5C 8005C45C 4C00B1AF */  sw         $s1, 0x4C($sp)
/* 4CC60 8005C460 4800B0AF */  sw         $s0, 0x48($sp)
/* 4CC64 8005C464 1C00A0AF */  sw         $zero, 0x1C($sp)
/* 4CC68 8005C468 7400A5AF */  sw         $a1, 0x74($sp)
/* 4CC6C 8005C46C 7800A6AF */  sw         $a2, 0x78($sp)
/* 4CC70 8005C470 1800A7AF */  sw         $a3, 0x18($sp)
/* 4CC74 8005C474 10008390 */  lbu        $v1, 0x10($a0)
/* 4CC78 8005C478 00000000 */  nop
/* 4CC7C 8005C47C 0E006010 */  beqz       $v1, .L8005C4B8
/* 4CC80 8005C480 10008524 */   addiu     $a1, $a0, 0x10
/* 4CC84 8005C484 0100043C */  lui        $a0, (0x10000 >> 16)
/* 4CC88 8005C488 0100063C */  lui        $a2, (0x10000 >> 16)
/* 4CC8C 8005C48C 1400A524 */  addiu      $a1, $a1, 0x14
.L8005C490:
/* 4CC90 8005C490 21188000 */  addu       $v1, $a0, $zero
/* 4CC94 8005C494 21208600 */  addu       $a0, $a0, $a2
/* 4CC98 8005C498 031C0300 */  sra        $v1, $v1, 16
/* 4CC9C 8005C49C 2C016228 */  slti       $v0, $v1, 0x12C
/* 4CCA0 8005C4A0 05004010 */  beqz       $v0, .L8005C4B8
/* 4CCA4 8005C4A4 1C00A3AF */   sw        $v1, 0x1C($sp)
/* 4CCA8 8005C4A8 0000A290 */  lbu        $v0, 0x0($a1)
/* 4CCAC 8005C4AC 00000000 */  nop
/* 4CCB0 8005C4B0 F7FF4014 */  bnez       $v0, .L8005C490
/* 4CCB4 8005C4B4 1400A524 */   addiu     $a1, $a1, 0x14
.L8005C4B8:
/* 4CCB8 8005C4B8 7400A38F */  lw         $v1, 0x74($sp)
/* 4CCBC 8005C4BC 01000424 */  addiu      $a0, $zero, 0x1
/* 4CCC0 8005C4C0 04006294 */  lhu        $v0, 0x4($v1)
/* 4CCC4 8005C4C4 1400A58F */  lw         $a1, 0x14($sp)
/* 4CCC8 8005C4C8 00140200 */  sll        $v0, $v0, 16
/* 4CCCC 8005C4CC 1500A410 */  beq        $a1, $a0, .L8005C524
/* 4CCD0 8005C4D0 031C0200 */   sra       $v1, $v0, 16
/* 4CCD4 8005C4D4 0200A228 */  slti       $v0, $a1, 0x2
/* 4CCD8 8005C4D8 05004010 */  beqz       $v0, .L8005C4F0
/* 4CCDC 8005C4DC 00000000 */   nop
/* 4CCE0 8005C4E0 0900A010 */  beqz       $a1, .L8005C508
/* 4CCE4 8005C4E4 00000000 */   nop
/* 4CCE8 8005C4E8 52710108 */  j          .L8005C548
/* 4CCEC 8005C4EC 00000000 */   nop
.L8005C4F0:
/* 4CCF0 8005C4F0 1400A68F */  lw         $a2, 0x14($sp)
/* 4CCF4 8005C4F4 02000224 */  addiu      $v0, $zero, 0x2
/* 4CCF8 8005C4F8 1100C210 */  beq        $a2, $v0, .L8005C540
/* 4CCFC 8005C4FC 04000224 */   addiu     $v0, $zero, 0x4
/* 4CD00 8005C500 52710108 */  j          .L8005C548
/* 4CD04 8005C504 00000000 */   nop
.L8005C508:
/* 4CD08 8005C508 02006104 */  bgez       $v1, .L8005C514
/* 4CD0C 8005C50C 21106000 */   addu      $v0, $v1, $zero
/* 4CD10 8005C510 03006224 */  addiu      $v0, $v1, 0x3
.L8005C514:
/* 4CD14 8005C514 83100200 */  sra        $v0, $v0, 2
/* 4CD18 8005C518 1000A2A7 */  sh         $v0, 0x10($sp)
/* 4CD1C 8005C51C 52710108 */  j          .L8005C548
/* 4CD20 8005C520 1200A4A3 */   sb        $a0, 0x12($sp)
.L8005C524:
/* 4CD24 8005C524 C2170200 */  srl        $v0, $v0, 31
/* 4CD28 8005C528 21106200 */  addu       $v0, $v1, $v0
/* 4CD2C 8005C52C 43100200 */  sra        $v0, $v0, 1
/* 4CD30 8005C530 02000324 */  addiu      $v1, $zero, 0x2
/* 4CD34 8005C534 1000A2A7 */  sh         $v0, 0x10($sp)
/* 4CD38 8005C538 52710108 */  j          .L8005C548
/* 4CD3C 8005C53C 1200A3A3 */   sb        $v1, 0x12($sp)
.L8005C540:
/* 4CD40 8005C540 1000A3A7 */  sh         $v1, 0x10($sp)
/* 4CD44 8005C544 1200A2A3 */  sb         $v0, 0x12($sp)
.L8005C548:
/* 4CD48 8005C548 1000A287 */  lh         $v0, 0x10($sp)
/* 4CD4C 8005C54C 2417858F */  lw         $a1, %gp_rel(CellW)($gp)
/* 4CD50 8005C550 00000000 */  nop
/* 4CD54 8005C554 21104500 */  addu       $v0, $v0, $a1
/* 4CD58 8005C558 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 4CD5C 8005C55C 1A004500 */  div        $zero, $v0, $a1
/* 4CD60 8005C560 7400A38F */  lw         $v1, 0x74($sp)
/* 4CD64 8005C564 00000000 */  nop
/* 4CD68 8005C568 06006384 */  lh         $v1, 0x6($v1)
/* 4CD6C 8005C56C 00000000 */  nop
/* 4CD70 8005C570 2000A3AF */  sw         $v1, 0x20($sp)
/* 4CD74 8005C574 12100000 */  mflo       $v0
/* 4CD78 8005C578 0200A014 */  bnez       $a1, .L8005C584
/* 4CD7C 8005C57C 00000000 */   nop
/* 4CD80 8005C580 CD010000 */  break      0, 7
.L8005C584:
/* 4CD84 8005C584 2017848F */  lw         $a0, %gp_rel(CellH)($gp)
/* 4CD88 8005C588 00000000 */  nop
/* 4CD8C 8005C58C 21186400 */  addu       $v1, $v1, $a0
/* 4CD90 8005C590 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 4CD94 8005C594 1A006400 */  div        $zero, $v1, $a0
/* 4CD98 8005C598 FF005630 */  andi       $s6, $v0, 0xFF
/* 4CD9C 8005C59C 12180000 */  mflo       $v1
/* 4CDA0 8005C5A0 02008014 */  bnez       $a0, .L8005C5AC
/* 4CDA4 8005C5A4 00000000 */   nop
/* 4CDA8 8005C5A8 CD010000 */  break      0, 7
.L8005C5AC:
/* 4CDAC 8005C5AC 21500000 */  addu       $t2, $zero, $zero
/* 4CDB0 8005C5B0 1817828F */  lw         $v0, %gp_rel(XCnt)($gp)
/* 4CDB4 8005C5B4 FF007330 */  andi       $s3, $v1, 0xFF
/* 4CDB8 8005C5B8 3800A5AF */  sw         $a1, 0x38($sp)
/* 4CDBC 8005C5BC 3C00A4AF */  sw         $a0, 0x3C($sp)
/* 4CDC0 8005C5C0 23185600 */  subu       $v1, $v0, $s6
/* 4CDC4 8005C5C4 93006018 */  blez       $v1, .L8005C814
/* 4CDC8 8005C5C8 21884000 */   addu      $s1, $v0, $zero
/* 4CDCC 8005C5CC 1C17828F */  lw         $v0, %gp_rel(YCnt)($gp)
/* 4CDD0 8005C5D0 2120C002 */  addu       $a0, $s6, $zero
/* 4CDD4 8005C5D4 2400A3AF */  sw         $v1, 0x24($sp)
/* 4CDD8 8005C5D8 FFFFC326 */  addiu      $v1, $s6, -0x1
/* 4CDDC 8005C5DC 4000A3AF */  sw         $v1, 0x40($sp)
/* 4CDE0 8005C5E0 23285300 */  subu       $a1, $v0, $s3
/* 4CDE4 8005C5E4 3000A2AF */  sw         $v0, 0x30($sp)
/* 4CDE8 8005C5E8 3400A5AF */  sw         $a1, 0x34($sp)
.L8005C5EC:
/* 4CDEC 8005C5EC 3400A68F */  lw         $a2, 0x34($sp)
/* 4CDF0 8005C5F0 00000000 */  nop
/* 4CDF4 8005C5F4 7F00C018 */  blez       $a2, .L8005C7F4
/* 4CDF8 8005C5F8 21580000 */   addu      $t3, $zero, $zero
/* 4CDFC 8005C5FC 3C00A78F */  lw         $a3, 0x3C($sp)
/* 4CE00 8005C600 FFFF6226 */  addiu      $v0, $s3, -0x1
/* 4CE04 8005C604 18004700 */  mult       $v0, $a3
/* 4CE08 8005C608 3000A38F */  lw         $v1, 0x30($sp)
/* 4CE0C 8005C60C 3800BE8F */  lw         $fp, 0x38($sp)
/* 4CE10 8005C610 23187300 */  subu       $v1, $v1, $s3
/* 4CE14 8005C614 2800A3AF */  sw         $v1, 0x28($sp)
/* 4CE18 8005C618 12100000 */  mflo       $v0
/* 4CE1C 8005C61C 4000A38F */  lw         $v1, 0x40($sp)
/* 4CE20 8005C620 00000000 */  nop
/* 4CE24 8005C624 18007E00 */  mult       $v1, $fp
/* 4CE28 8005C628 21786002 */  addu       $t7, $s3, $zero
/* 4CE2C 8005C62C 0C17998F */  lw         $t9, %gp_rel(OrginY)($gp)
/* 4CE30 8005C630 0817948F */  lw         $s4, %gp_rel(OrginX)($gp)
/* 4CE34 8005C634 21285900 */  addu       $a1, $v0, $t9
/* 4CE38 8005C638 12180000 */  mflo       $v1
/* 4CE3C 8005C63C 2C00A3AF */  sw         $v1, 0x2C($sp)
.L8005C640:
/* 4CE40 8005C640 00000000 */  nop
/* 4CE44 8005C644 18005E01 */  mult       $t2, $fp
/* 4CE48 8005C648 12100000 */  mflo       $v0
/* 4CE4C 8005C64C 21105400 */  addu       $v0, $v0, $s4
/* 4CE50 8005C650 02004104 */  bgez       $v0, .L8005C65C
/* 4CE54 8005C654 00000000 */   nop
/* 4CE58 8005C658 3F004224 */  addiu      $v0, $v0, 0x3F
.L8005C65C:
/* 4CE5C 8005C65C 2C00A68F */  lw         $a2, 0x2C($sp)
/* 4CE60 8005C660 83490200 */  sra        $t1, $v0, 6
/* 4CE64 8005C664 2118D400 */  addu       $v1, $a2, $s4
/* 4CE68 8005C668 02006104 */  bgez       $v1, .L8005C674
/* 4CE6C 8005C66C 21C08000 */   addu      $t8, $a0, $zero
/* 4CE70 8005C670 3F006324 */  addiu      $v1, $v1, 0x3F
.L8005C674:
/* 4CE74 8005C674 83110300 */  sra        $v0, $v1, 6
/* 4CE78 8005C678 03421900 */  sra        $t0, $t9, 8
/* 4CE7C 8005C67C 1200A393 */  lbu        $v1, 0x12($sp)
/* 4CE80 8005C680 23104900 */  subu       $v0, $v0, $t1
/* 4CE84 8005C684 2A104300 */  slt        $v0, $v0, $v1
/* 4CE88 8005C688 53004010 */  beqz       $v0, .L8005C7D8
/* 4CE8C 8005C68C 03320500 */   sra       $a2, $a1, 8
/* 4CE90 8005C690 5100C814 */  bne        $a2, $t0, .L8005C7D8
/* 4CE94 8005C694 00140B00 */   sll       $v0, $t3, 16
/* 4CE98 8005C698 03BC0200 */  sra        $s7, $v0, 16
/* 4CE9C 8005C69C 001C0A00 */  sll        $v1, $t2, 16
/* 4CEA0 8005C6A0 1800A28F */  lw         $v0, 0x18($sp)
/* 4CEA4 8005C6A4 00000000 */  nop
/* 4CEA8 8005C6A8 2D004010 */  beqz       $v0, .L8005C760
/* 4CEAC 8005C6AC 03AC0300 */   sra       $s5, $v1, 16
/* 4CEB0 8005C6B0 1A005601 */  div        $zero, $t2, $s6
/* 4CEB4 8005C6B4 10100000 */  mfhi       $v0
/* 4CEB8 8005C6B8 0200C016 */  bnez       $s6, .L8005C6C4
/* 4CEBC 8005C6BC 00000000 */   nop
/* 4CEC0 8005C6C0 CD010000 */  break      0, 7
.L8005C6C4:
/* 4CEC4 8005C6C4 44004014 */  bnez       $v0, .L8005C7D8
/* 4CEC8 8005C6C8 00000000 */   nop
/* 4CECC 8005C6CC 1A007301 */  div        $zero, $t3, $s3
/* 4CED0 8005C6D0 10100000 */  mfhi       $v0
/* 4CED4 8005C6D4 02006016 */  bnez       $s3, .L8005C6E0
/* 4CED8 8005C6D8 00000000 */   nop
/* 4CEDC 8005C6DC CD010000 */  break      0, 7
.L8005C6E0:
/* 4CEE0 8005C6E0 3D004014 */  bnez       $v0, .L8005C7D8
/* 4CEE4 8005C6E4 2A106F01 */   slt       $v0, $t3, $t7
/* 4CEE8 8005C6E8 38004010 */  beqz       $v0, .L8005C7CC
/* 4CEEC 8005C6EC 21606001 */   addu      $t4, $t3, $zero
/* 4CEF0 8005C6F0 18007101 */  mult       $t3, $s1
/* 4CEF4 8005C6F4 2A904401 */  slt        $s2, $t2, $a0
/* 4CEF8 8005C6F8 2180E001 */  addu       $s0, $t7, $zero
/* 4CEFC 8005C6FC 21702002 */  addu       $t6, $s1, $zero
/* 4CF00 8005C700 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4CF04 8005C704 38974224 */  addiu      $v0, $v0, %lo(VRAMGrid)
/* 4CF08 8005C708 12180000 */  mflo       $v1
/* 4CF0C 8005C70C 21186200 */  addu       $v1, $v1, $v0
.L8005C710:
/* 4CF10 8005C710 0B004012 */  beqz       $s2, .L8005C740
/* 4CF14 8005C714 21404001 */   addu      $t0, $t2, $zero
/* 4CF18 8005C718 01000D24 */  addiu      $t5, $zero, 0x1
/* 4CF1C 8005C71C 21480003 */  addu       $t1, $t8, $zero
/* 4CF20 8005C720 21304301 */  addu       $a2, $t2, $v1
.L8005C724:
/* 4CF24 8005C724 0000C290 */  lbu        $v0, 0x0($a2)
/* 4CF28 8005C728 00000000 */  nop
/* 4CF2C 8005C72C 0A004D10 */  beq        $v0, $t5, .L8005C758
/* 4CF30 8005C730 01000825 */   addiu     $t0, $t0, 0x1
/* 4CF34 8005C734 2A100901 */  slt        $v0, $t0, $t1
/* 4CF38 8005C738 FAFF4014 */  bnez       $v0, .L8005C724
/* 4CF3C 8005C73C 0100C624 */   addiu     $a2, $a2, 0x1
.L8005C740:
/* 4CF40 8005C740 01008C25 */  addiu      $t4, $t4, 0x1
/* 4CF44 8005C744 2A109001 */  slt        $v0, $t4, $s0
/* 4CF48 8005C748 F1FF4014 */  bnez       $v0, .L8005C710
/* 4CF4C 8005C74C 21186E00 */   addu      $v1, $v1, $t6
/* 4CF50 8005C750 F4710108 */  j          .L8005C7D0
/* 4CF54 8005C754 21100000 */   addu      $v0, $zero, $zero
.L8005C758:
/* 4CF58 8005C758 F4710108 */  j          .L8005C7D0
/* 4CF5C 8005C75C 01000224 */   addiu     $v0, $zero, 0x1
.L8005C760:
/* 4CF60 8005C760 2A106F01 */  slt        $v0, $t3, $t7
/* 4CF64 8005C764 19004010 */  beqz       $v0, .L8005C7CC
/* 4CF68 8005C768 21606001 */   addu      $t4, $t3, $zero
/* 4CF6C 8005C76C 21702002 */  addu       $t6, $s1, $zero
/* 4CF70 8005C770 18006E01 */  mult       $t3, $t6
/* 4CF74 8005C774 2A904401 */  slt        $s2, $t2, $a0
/* 4CF78 8005C778 2180E001 */  addu       $s0, $t7, $zero
/* 4CF7C 8005C77C 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4CF80 8005C780 38974224 */  addiu      $v0, $v0, %lo(VRAMGrid)
/* 4CF84 8005C784 12180000 */  mflo       $v1
/* 4CF88 8005C788 21186200 */  addu       $v1, $v1, $v0
.L8005C78C:
/* 4CF8C 8005C78C 0B004012 */  beqz       $s2, .L8005C7BC
/* 4CF90 8005C790 21404001 */   addu      $t0, $t2, $zero
/* 4CF94 8005C794 01000D24 */  addiu      $t5, $zero, 0x1
/* 4CF98 8005C798 21480003 */  addu       $t1, $t8, $zero
/* 4CF9C 8005C79C 21304301 */  addu       $a2, $t2, $v1
.L8005C7A0:
/* 4CFA0 8005C7A0 0000C290 */  lbu        $v0, 0x0($a2)
/* 4CFA4 8005C7A4 00000000 */  nop
/* 4CFA8 8005C7A8 EBFF4D10 */  beq        $v0, $t5, .L8005C758
/* 4CFAC 8005C7AC 01000825 */   addiu     $t0, $t0, 0x1
/* 4CFB0 8005C7B0 2A100901 */  slt        $v0, $t0, $t1
/* 4CFB4 8005C7B4 FAFF4014 */  bnez       $v0, .L8005C7A0
/* 4CFB8 8005C7B8 0100C624 */   addiu     $a2, $a2, 0x1
.L8005C7BC:
/* 4CFBC 8005C7BC 01008C25 */  addiu      $t4, $t4, 0x1
/* 4CFC0 8005C7C0 2A109001 */  slt        $v0, $t4, $s0
/* 4CFC4 8005C7C4 F1FF4014 */  bnez       $v0, .L8005C78C
/* 4CFC8 8005C7C8 21186E00 */   addu      $v1, $v1, $t6
.L8005C7CC:
/* 4CFCC 8005C7CC 21100000 */  addu       $v0, $zero, $zero
.L8005C7D0:
/* 4CFD0 8005C7D0 12004010 */  beqz       $v0, .L8005C81C
/* 4CFD4 8005C7D4 2118F302 */   addu      $v1, $s7, $s3
.L8005C7D8:
/* 4CFD8 8005C7D8 0100EF25 */  addiu      $t7, $t7, 0x1
/* 4CFDC 8005C7DC 2128A700 */  addu       $a1, $a1, $a3
/* 4CFE0 8005C7E0 2800A38F */  lw         $v1, 0x28($sp)
/* 4CFE4 8005C7E4 01006B25 */  addiu      $t3, $t3, 0x1
/* 4CFE8 8005C7E8 2A106301 */  slt        $v0, $t3, $v1
/* 4CFEC 8005C7EC 94FF4014 */  bnez       $v0, .L8005C640
/* 4CFF0 8005C7F0 21C82703 */   addu      $t9, $t9, $a3
.L8005C7F4:
/* 4CFF4 8005C7F4 01008424 */  addiu      $a0, $a0, 0x1
/* 4CFF8 8005C7F8 01004A25 */  addiu      $t2, $t2, 0x1
/* 4CFFC 8005C7FC 4000A58F */  lw         $a1, 0x40($sp)
/* 4D000 8005C800 2400A68F */  lw         $a2, 0x24($sp)
/* 4D004 8005C804 0100A524 */  addiu      $a1, $a1, 0x1
/* 4D008 8005C808 2A104601 */  slt        $v0, $t2, $a2
/* 4D00C 8005C80C 77FF4014 */  bnez       $v0, .L8005C5EC
/* 4D010 8005C810 4000A5AF */   sw        $a1, 0x40($sp)
.L8005C814:
/* 4D014 8005C814 7A720108 */  j          .L8005C9E8
/* 4D018 8005C818 FFFF0224 */   addiu     $v0, $zero, -0x1
.L8005C81C:
/* 4D01C 8005C81C 2158E002 */  addu       $t3, $s7, $zero
/* 4D020 8005C820 1C00A48F */  lw         $a0, 0x1C($sp)
/* 4D024 8005C824 2A10E302 */  slt        $v0, $s7, $v1
/* 4D028 8005C828 17004010 */  beqz       $v0, .L8005C888
/* 4D02C 8005C82C 80800400 */   sll       $s0, $a0, 2
/* 4D030 8005C830 2128B602 */  addu       $a1, $s5, $s6
/* 4D034 8005C834 2A40A502 */  slt        $t0, $s5, $a1
/* 4D038 8005C838 21386000 */  addu       $a3, $v1, $zero
/* 4D03C 8005C83C 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4D040 8005C840 38974924 */  addiu      $t1, $v0, %lo(VRAMGrid)
/* 4D044 8005C844 1817868F */  lw         $a2, %gp_rel(XCnt)($gp)
.L8005C848:
/* 4D048 8005C848 0B000011 */  beqz       $t0, .L8005C878
/* 4D04C 8005C84C 01006325 */   addiu     $v1, $t3, 0x1
/* 4D050 8005C850 18006601 */  mult       $t3, $a2
/* 4D054 8005C854 01000424 */  addiu      $a0, $zero, 0x1
/* 4D058 8005C858 2350B500 */  subu       $t2, $a1, $s5
/* 4D05C 8005C85C 12100000 */  mflo       $v0
/* 4D060 8005C860 21104900 */  addu       $v0, $v0, $t1
/* 4D064 8005C864 2110A202 */  addu       $v0, $s5, $v0
.L8005C868:
/* 4D068 8005C868 000044A0 */  sb         $a0, 0x0($v0)
/* 4D06C 8005C86C FFFF4A25 */  addiu      $t2, $t2, -0x1
/* 4D070 8005C870 FDFF4015 */  bnez       $t2, .L8005C868
/* 4D074 8005C874 01004224 */   addiu     $v0, $v0, 0x1
.L8005C878:
/* 4D078 8005C878 21586000 */  addu       $t3, $v1, $zero
/* 4D07C 8005C87C 2A106701 */  slt        $v0, $t3, $a3
/* 4D080 8005C880 F1FF4014 */  bnez       $v0, .L8005C848
/* 4D084 8005C884 00000000 */   nop
.L8005C888:
/* 4D088 8005C888 2417838F */  lw         $v1, %gp_rel(CellW)($gp)
/* 4D08C 8005C88C 00000000 */  nop
/* 4D090 8005C890 1800A302 */  mult       $s5, $v1
/* 4D094 8005C894 12180000 */  mflo       $v1
/* 4D098 8005C898 2017858F */  lw         $a1, %gp_rel(CellH)($gp)
/* 4D09C 8005C89C 0C80023C */  lui        $v0, %hi(VRAMItems)
/* 4D0A0 8005C8A0 1800E502 */  mult       $s7, $a1
/* 4D0A4 8005C8A4 38AD4624 */  addiu      $a2, $v0, %lo(VRAMItems)
/* 4D0A8 8005C8A8 1C00A28F */  lw         $v0, 0x1C($sp)
/* 4D0AC 8005C8AC 0200C724 */  addiu      $a3, $a2, 0x2
/* 4D0B0 8005C8B0 21200202 */  addu       $a0, $s0, $v0
/* 4D0B4 8005C8B4 80200400 */  sll        $a0, $a0, 2
/* 4D0B8 8005C8B8 21408600 */  addu       $t0, $a0, $a2
/* 4D0BC 8005C8BC 08178297 */  lhu        $v0, %gp_rel(OrginX)($gp)
/* 4D0C0 8005C8C0 21388700 */  addu       $a3, $a0, $a3
/* 4D0C4 8005C8C4 21104300 */  addu       $v0, $v0, $v1
/* 4D0C8 8005C8C8 000002A5 */  sh         $v0, 0x0($t0)
/* 4D0CC 8005C8CC 0C178297 */  lhu        $v0, %gp_rel(OrginY)($gp)
/* 4D0D0 8005C8D0 12280000 */  mflo       $a1
/* 4D0D4 8005C8D4 21104500 */  addu       $v0, $v0, $a1
/* 4D0D8 8005C8D8 0000E2A4 */  sh         $v0, 0x0($a3)
/* 4D0DC 8005C8DC 1000A597 */  lhu        $a1, 0x10($sp)
/* 4D0E0 8005C8E0 2110C400 */  addu       $v0, $a2, $a0
/* 4D0E4 8005C8E4 040045A4 */  sh         $a1, 0x4($v0)
/* 4D0E8 8005C8E8 2000A58F */  lw         $a1, 0x20($sp)
/* 4D0EC 8005C8EC 21184000 */  addu       $v1, $v0, $zero
/* 4D0F0 8005C8F0 060065A4 */  sh         $a1, 0x6($v1)
/* 4D0F4 8005C8F4 7400A38F */  lw         $v1, 0x74($sp)
/* 4D0F8 8005C8F8 00000000 */  nop
/* 4D0FC 8005C8FC 04006294 */  lhu        $v0, 0x4($v1)
/* 4D100 8005C900 00000000 */  nop
/* 4D104 8005C904 00140200 */  sll        $v0, $v0, 16
/* 4D108 8005C908 031C0200 */  sra        $v1, $v0, 16
/* 4D10C 8005C90C C2170200 */  srl        $v0, $v0, 31
/* 4D110 8005C910 21186200 */  addu       $v1, $v1, $v0
/* 4D114 8005C914 43180300 */  sra        $v1, $v1, 1
/* 4D118 8005C918 110003A1 */  sb         $v1, 0x11($t0)
/* 4D11C 8005C91C 7400A28F */  lw         $v0, 0x74($sp)
/* 4D120 8005C920 00000000 */  nop
/* 4D124 8005C924 06004594 */  lhu        $a1, 0x6($v0)
/* 4D128 8005C928 2130C400 */  addu       $a2, $a2, $a0
/* 4D12C 8005C92C 1200C5A4 */  sh         $a1, 0x12($a2)
/* 4D130 8005C930 00000291 */  lbu        $v0, 0x0($t0)
/* 4D134 8005C934 00000000 */  nop
/* 4D138 8005C938 3F004430 */  andi       $a0, $v0, 0x3F
/* 4D13C 8005C93C 0E0004A1 */  sb         $a0, 0xE($t0)
/* 4D140 8005C940 0000E290 */  lbu        $v0, 0x0($a3)
/* 4D144 8005C944 00000000 */  nop
/* 4D148 8005C948 0F0002A1 */  sb         $v0, 0xF($t0)
/* 4D14C 8005C94C 1400A58F */  lw         $a1, 0x14($sp)
/* 4D150 8005C950 01000324 */  addiu      $v1, $zero, 0x1
/* 4D154 8005C954 0700A310 */  beq        $a1, $v1, .L8005C974
/* 4D158 8005C958 0200A228 */   slti      $v0, $a1, 0x2
/* 4D15C 8005C95C 08004010 */  beqz       $v0, .L8005C980
/* 4D160 8005C960 0C80063C */   lui       $a2, %hi(VRAMItems)
/* 4D164 8005C964 0700A014 */  bnez       $a1, .L8005C984
/* 4D168 8005C968 38ADD124 */   addiu     $s1, $a2, %lo(VRAMItems)
/* 4D16C 8005C96C 5E720108 */  j          .L8005C978
/* 4D170 8005C970 80100400 */   sll       $v0, $a0, 2
.L8005C974:
/* 4D174 8005C974 40100400 */  sll        $v0, $a0, 1
.L8005C978:
/* 4D178 8005C978 0E0002A1 */  sb         $v0, 0xE($t0)
/* 4D17C 8005C97C 0C80063C */  lui        $a2, %hi(VRAMItems)
.L8005C980:
/* 4D180 8005C980 38ADD124 */  addiu      $s1, $a2, %lo(VRAMItems)
.L8005C984:
/* 4D184 8005C984 1C00A28F */  lw         $v0, 0x1C($sp)
/* 4D188 8005C988 1400A48F */  lw         $a0, 0x14($sp)
/* 4D18C 8005C98C 7800A58F */  lw         $a1, 0x78($sp)
/* 4D190 8005C990 21800202 */  addu       $s0, $s0, $v0
/* 4D194 8005C994 80801000 */  sll        $s0, $s0, 2
/* 4D198 8005C998 21901102 */  addu       $s2, $s0, $s1
/* 4D19C 8005C99C 21103002 */  addu       $v0, $s1, $s0
/* 4D1A0 8005C9A0 00004696 */  lhu        $a2, 0x0($s2)
/* 4D1A4 8005C9A4 02004794 */  lhu        $a3, 0x2($v0)
/* 4D1A8 8005C9A8 C0FFC630 */  andi       $a2, $a2, 0xFFC0
/* 4D1AC 8005C9AC 00340600 */  sll        $a2, $a2, 16
/* 4D1B0 8005C9B0 00FFE730 */  andi       $a3, $a3, 0xFF00
/* 4D1B4 8005C9B4 003C0700 */  sll        $a3, $a3, 16
/* 4D1B8 8005C9B8 03340600 */  sra        $a2, $a2, 16
/* 4D1BC 8005C9BC 93E6010C */  jal        GetTPage
/* 4D1C0 8005C9C0 033C0700 */   sra       $a3, $a3, 16
/* 4D1C4 8005C9C4 21883002 */  addu       $s1, $s1, $s0
/* 4D1C8 8005C9C8 080022A6 */  sh         $v0, 0x8($s1)
/* 4D1CC 8005C9CC 1C00A28F */  lw         $v0, 0x1C($sp)
/* 4D1D0 8005C9D0 01000324 */  addiu      $v1, $zero, 0x1
/* 4D1D4 8005C9D4 100043A2 */  sb         $v1, 0x10($s2)
/* 4D1D8 8005C9D8 0A0055A2 */  sb         $s5, 0xA($s2)
/* 4D1DC 8005C9DC 0B0057A2 */  sb         $s7, 0xB($s2)
/* 4D1E0 8005C9E0 0C0056A2 */  sb         $s6, 0xC($s2)
/* 4D1E4 8005C9E4 0D0053A2 */  sb         $s3, 0xD($s2)
.L8005C9E8:
/* 4D1E8 8005C9E8 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 4D1EC 8005C9EC 6800BE8F */  lw         $fp, 0x68($sp)
/* 4D1F0 8005C9F0 6400B78F */  lw         $s7, 0x64($sp)
/* 4D1F4 8005C9F4 6000B68F */  lw         $s6, 0x60($sp)
/* 4D1F8 8005C9F8 5C00B58F */  lw         $s5, 0x5C($sp)
/* 4D1FC 8005C9FC 5800B48F */  lw         $s4, 0x58($sp)
/* 4D200 8005CA00 5400B38F */  lw         $s3, 0x54($sp)
/* 4D204 8005CA04 5000B28F */  lw         $s2, 0x50($sp)
/* 4D208 8005CA08 4C00B18F */  lw         $s1, 0x4C($sp)
/* 4D20C 8005CA0C 4800B08F */  lw         $s0, 0x48($sp)
/* 4D210 8005CA10 0800E003 */  jr         $ra
/* 4D214 8005CA14 7000BD27 */   addiu     $sp, $sp, 0x70
.size AllocVRAM, . - AllocVRAM
