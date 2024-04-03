.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleSplashInit
/* 1C468 8002BC68 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 1C46C 8002BC6C 5C00B7AF */  sw         $s7, 0x5C($sp)
/* 1C470 8002BC70 21B88000 */  addu       $s7, $a0, $zero
/* 1C474 8002BC74 44000324 */  addiu      $v1, $zero, 0x44
/* 1C478 8002BC78 6400BFAF */  sw         $ra, 0x64($sp)
/* 1C47C 8002BC7C 6000BEAF */  sw         $fp, 0x60($sp)
/* 1C480 8002BC80 5800B6AF */  sw         $s6, 0x58($sp)
/* 1C484 8002BC84 5400B5AF */  sw         $s5, 0x54($sp)
/* 1C488 8002BC88 5000B4AF */  sw         $s4, 0x50($sp)
/* 1C48C 8002BC8C 4C00B3AF */  sw         $s3, 0x4C($sp)
/* 1C490 8002BC90 4800B2AF */  sw         $s2, 0x48($sp)
/* 1C494 8002BC94 4400B1AF */  sw         $s1, 0x44($sp)
/* 1C498 8002BC98 4000B0AF */  sw         $s0, 0x40($sp)
/* 1C49C 8002BC9C 1000A5AF */  sw         $a1, 0x10($sp)
/* 1C4A0 8002BCA0 1400A6AF */  sw         $a2, 0x14($sp)
/* 1C4A4 8002BCA4 1800A7AF */  sw         $a3, 0x18($sp)
/* 1C4A8 8002BCA8 4000F68E */  lw         $s6, 0x40($s7)
/* 1C4AC 8002BCAC FF000224 */  addiu      $v0, $zero, 0xFF
/* 1C4B0 8002BCB0 BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1C4B4 8002BCB4 FF0F0224 */  addiu      $v0, $zero, 0xFFF
/* 1C4B8 8002BCB8 C41383AF */  sw         $v1, %gp_rel(TEMPR)($gp)
/* 1C4BC 8002BCBC C01383AF */  sw         $v1, %gp_rel(TEMPG)($gp)
/* 1C4C0 8002BCC0 3400E2AE */  sw         $v0, 0x34($s7)
/* 1C4C4 8002BCC4 3C00E2AE */  sw         $v0, 0x3C($s7)
/* 1C4C8 8002BCC8 3408828F */  lw         $v0, %gp_rel(R)($gp)
/* 1C4CC 8002BCCC 3808838F */  lw         $v1, %gp_rel(S)($gp)
/* 1C4D0 8002BCD0 3000E0AE */  sw         $zero, 0x30($s7)
/* 1C4D4 8002BCD4 3800E0AE */  sw         $zero, 0x38($s7)
/* 1C4D8 8002BCD8 1C00A2AF */  sw         $v0, 0x1C($sp)
/* 1C4DC 8002BCDC 14000224 */  addiu      $v0, $zero, 0x14
/* 1C4E0 8002BCE0 2000A3AF */  sw         $v1, 0x20($sp)
/* 1C4E4 8002BCE4 0C00E2AE */  sw         $v0, 0xC($s7)
/* 1C4E8 8002BCE8 1000A38F */  lw         $v1, 0x10($sp)
/* 1C4EC 8002BCEC 00000000 */  nop
/* 1C4F0 8002BCF0 2400E3AE */  sw         $v1, 0x24($s7)
/* 1C4F4 8002BCF4 1400A28F */  lw         $v0, 0x14($sp)
/* 1C4F8 8002BCF8 00000000 */  nop
/* 1C4FC 8002BCFC 2800E2AE */  sw         $v0, 0x28($s7)
/* 1C500 8002BD00 1800A38F */  lw         $v1, 0x18($sp)
/* 1C504 8002BD04 C8000224 */  addiu      $v0, $zero, 0xC8
/* 1C508 8002BD08 4A00E2A6 */  sh         $v0, 0x4A($s7)
/* 1C50C 8002BD0C 0400E28E */  lw         $v0, 0x4($s7)
/* 1C510 8002BD10 00000000 */  nop
/* 1C514 8002BD14 04004014 */  bnez       $v0, .L8002BD28
/* 1C518 8002BD18 2C00E3AE */   sw        $v1, 0x2C($s7)
/* 1C51C 8002BD1C 1000A0AF */  sw         $zero, 0x10($sp)
/* 1C520 8002BD20 1400A0AF */  sw         $zero, 0x14($sp)
/* 1C524 8002BD24 1800A0AF */  sw         $zero, 0x18($sp)
.L8002BD28:
/* 1C528 8002BD28 0800E28E */  lw         $v0, 0x8($s7)
/* 1C52C 8002BD2C 00000000 */  nop
/* 1C530 8002BD30 A8004018 */  blez       $v0, .L8002BFD4
/* 1C534 8002BD34 21880000 */   addu      $s1, $zero, $zero
.L8002BD38:
/* 1C538 8002BD38 D140010C */  jal        u32Random
/* 1C53C 8002BD3C FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C540 8002BD40 21804000 */  addu       $s0, $v0, $zero
/* 1C544 8002BD44 D140010C */  jal        u32Random
/* 1C548 8002BD48 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C54C 8002BD4C 21984000 */  addu       $s3, $v0, $zero
/* 1C550 8002BD50 21100000 */  addu       $v0, $zero, $zero
/* 1C554 8002BD54 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1C558 8002BD58 20004310 */  beq        $v0, $v1, .L8002BDDC
/* 1C55C 8002BD5C 00000000 */   nop
/* 1C560 8002BD60 1000A28F */  lw         $v0, 0x10($sp)
/* 1C564 8002BD64 1400A38F */  lw         $v1, 0x14($sp)
/* 1C568 8002BD68 01003126 */  addiu      $s1, $s1, 0x1
/* 1C56C 8002BD6C 2800B1AF */  sw         $s1, 0x28($sp)
/* 1C570 8002BD70 00F20200 */  sll        $fp, $v0, 8
/* 1C574 8002BD74 1800A28F */  lw         $v0, 0x18($sp)
/* 1C578 8002BD78 001A0300 */  sll        $v1, $v1, 8
/* 1C57C 8002BD7C 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1C580 8002BD80 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1C584 8002BD84 3400A3AF */  sw         $v1, 0x34($sp)
/* 1C588 8002BD88 7400C326 */  addiu      $v1, $s6, 0x74
/* 1C58C 8002BD8C 3800A3AF */  sw         $v1, 0x38($sp)
/* 1C590 8002BD90 00120200 */  sll        $v0, $v0, 8
/* 1C594 8002BD94 3000A2AF */  sw         $v0, 0x30($sp)
/* 1C598 8002BD98 4400C226 */  addiu      $v0, $s6, 0x44
/* 1C59C 8002BD9C 05000006 */  bltz       $s0, .L8002BDB4
/* 1C5A0 8002BDA0 2400A2AF */   sw        $v0, 0x24($sp)
/* 1C5A4 8002BDA4 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1C5A8 8002BDA8 2A107000 */  slt        $v0, $v1, $s0
/* 1C5AC 8002BDAC 1E004010 */  beqz       $v0, .L8002BE28
/* 1C5B0 8002BDB0 21100000 */   addu      $v0, $zero, $zero
.L8002BDB4:
/* 1C5B4 8002BDB4 D140010C */  jal        u32Random
/* 1C5B8 8002BDB8 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C5BC 8002BDBC 21804000 */  addu       $s0, $v0, $zero
/* 1C5C0 8002BDC0 FCFF0006 */  bltz       $s0, .L8002BDB4
/* 1C5C4 8002BDC4 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1C5C8 8002BDC8 2A107000 */  slt        $v0, $v1, $s0
/* 1C5CC 8002BDCC F9FF4014 */  bnez       $v0, .L8002BDB4
/* 1C5D0 8002BDD0 21100000 */   addu      $v0, $zero, $zero
/* 1C5D4 8002BDD4 8AAF0008 */  j          .L8002BE28
/* 1C5D8 8002BDD8 00000000 */   nop
.L8002BDDC:
/* 1C5DC 8002BDDC 21800000 */  addu       $s0, $zero, $zero
/* 1C5E0 8002BDE0 1000A28F */  lw         $v0, 0x10($sp)
/* 1C5E4 8002BDE4 1400A38F */  lw         $v1, 0x14($sp)
/* 1C5E8 8002BDE8 01003126 */  addiu      $s1, $s1, 0x1
/* 1C5EC 8002BDEC 2800B1AF */  sw         $s1, 0x28($sp)
/* 1C5F0 8002BDF0 00F20200 */  sll        $fp, $v0, 8
/* 1C5F4 8002BDF4 1800A28F */  lw         $v0, 0x18($sp)
/* 1C5F8 8002BDF8 001A0300 */  sll        $v1, $v1, 8
/* 1C5FC 8002BDFC 2C00A3AF */  sw         $v1, 0x2C($sp)
/* 1C600 8002BE00 1C00C326 */  addiu      $v1, $s6, 0x1C
/* 1C604 8002BE04 3400A3AF */  sw         $v1, 0x34($sp)
/* 1C608 8002BE08 7400C326 */  addiu      $v1, $s6, 0x74
/* 1C60C 8002BE0C 3800A3AF */  sw         $v1, 0x38($sp)
/* 1C610 8002BE10 00120200 */  sll        $v0, $v0, 8
/* 1C614 8002BE14 3000A2AF */  sw         $v0, 0x30($sp)
/* 1C618 8002BE18 4400C226 */  addiu      $v0, $s6, 0x44
/* 1C61C 8002BE1C 2400A2AF */  sw         $v0, 0x24($sp)
/* 1C620 8002BE20 21100000 */  addu       $v0, $zero, $zero
/* 1C624 8002BE24 FF0F0324 */  addiu      $v1, $zero, 0xFFF
.L8002BE28:
/* 1C628 8002BE28 0F004310 */  beq        $v0, $v1, .L8002BE68
/* 1C62C 8002BE2C 00000000 */   nop
/* 1C630 8002BE30 03006006 */  bltz       $s3, .L8002BE40
/* 1C634 8002BE34 2A107300 */   slt       $v0, $v1, $s3
/* 1C638 8002BE38 0C004010 */  beqz       $v0, .L8002BE6C
/* 1C63C 8002BE3C 00000000 */   nop
.L8002BE40:
/* 1C640 8002BE40 D140010C */  jal        u32Random
/* 1C644 8002BE44 FF0F0424 */   addiu     $a0, $zero, 0xFFF
/* 1C648 8002BE48 21984000 */  addu       $s3, $v0, $zero
/* 1C64C 8002BE4C FCFF6006 */  bltz       $s3, .L8002BE40
/* 1C650 8002BE50 FF0F0324 */   addiu     $v1, $zero, 0xFFF
/* 1C654 8002BE54 2A107300 */  slt        $v0, $v1, $s3
/* 1C658 8002BE58 F9FF4014 */  bnez       $v0, .L8002BE40
/* 1C65C 8002BE5C 00000000 */   nop
/* 1C660 8002BE60 9BAF0008 */  j          .L8002BE6C
/* 1C664 8002BE64 00000000 */   nop
.L8002BE68:
/* 1C668 8002BE68 21980000 */  addu       $s3, $zero, $zero
.L8002BE6C:
/* 1C66C 8002BE6C 7BEB010C */  jal        rcos
/* 1C670 8002BE70 21200002 */   addu      $a0, $s0, $zero
/* 1C674 8002BE74 21200002 */  addu       $a0, $s0, $zero
/* 1C678 8002BE78 47EB010C */  jal        rsin
/* 1C67C 8002BE7C 21904000 */   addu      $s2, $v0, $zero
/* 1C680 8002BE80 21206002 */  addu       $a0, $s3, $zero
/* 1C684 8002BE84 7BEB010C */  jal        rcos
/* 1C688 8002BE88 21884000 */   addu      $s1, $v0, $zero
/* 1C68C 8002BE8C 21206002 */  addu       $a0, $s3, $zero
/* 1C690 8002BE90 47EB010C */  jal        rsin
/* 1C694 8002BE94 21804000 */   addu      $s0, $v0, $zero
/* 1C698 8002BE98 18003002 */  mult       $s1, $s0
/* 1C69C 8002BE9C 12880000 */  mflo       $s1
/* 1C6A0 8002BEA0 00000000 */  nop
/* 1C6A4 8002BEA4 00000000 */  nop
/* 1C6A8 8002BEA8 18005002 */  mult       $s2, $s0
/* 1C6AC 8002BEAC 12900000 */  mflo       $s2
/* 1C6B0 8002BEB0 1C00A38F */  lw         $v1, 0x1C($sp)
/* 1C6B4 8002BEB4 038B1100 */  sra        $s1, $s1, 12
/* 1C6B8 8002BEB8 18002302 */  mult       $s1, $v1
/* 1C6BC 8002BEBC 12A80000 */  mflo       $s5
/* 1C6C0 8002BEC0 21A04000 */  addu       $s4, $v0, $zero
/* 1C6C4 8002BEC4 00000000 */  nop
/* 1C6C8 8002BEC8 18008302 */  mult       $s4, $v1
/* 1C6CC 8002BECC 12980000 */  mflo       $s3
/* 1C6D0 8002BED0 03931200 */  sra        $s2, $s2, 12
/* 1C6D4 8002BED4 00000000 */  nop
/* 1C6D8 8002BED8 18004302 */  mult       $s2, $v1
/* 1C6DC 8002BEDC 12800000 */  mflo       $s0
/* 1C6E0 8002BEE0 2000A28F */  lw         $v0, 0x20($sp)
/* 1C6E4 8002BEE4 00000000 */  nop
/* 1C6E8 8002BEE8 18002202 */  mult       $s1, $v0
/* 1C6EC 8002BEEC 12880000 */  mflo       $s1
/* 1C6F0 8002BEF0 00000000 */  nop
/* 1C6F4 8002BEF4 00000000 */  nop
/* 1C6F8 8002BEF8 18008202 */  mult       $s4, $v0
/* 1C6FC 8002BEFC 12A00000 */  mflo       $s4
/* 1C700 8002BF00 00000000 */  nop
/* 1C704 8002BF04 00000000 */  nop
/* 1C708 8002BF08 18004202 */  mult       $s2, $v0
/* 1C70C 8002BF0C 04000424 */  addiu      $a0, $zero, 0x4
/* 1C710 8002BF10 03A91500 */  sra        $s5, $s5, 4
/* 1C714 8002BF14 21A8D503 */  addu       $s5, $fp, $s5
/* 1C718 8002BF18 03991300 */  sra        $s3, $s3, 4
/* 1C71C 8002BF1C 3000A38F */  lw         $v1, 0x30($sp)
/* 1C720 8002BF20 03811000 */  sra        $s0, $s0, 4
/* 1C724 8002BF24 21807000 */  addu       $s0, $v1, $s0
/* 1C728 8002BF28 03891100 */  sra        $s1, $s1, 4
/* 1C72C 8002BF2C 2C00A28F */  lw         $v0, 0x2C($sp)
/* 1C730 8002BF30 03A11400 */  sra        $s4, $s4, 4
/* 1C734 8002BF34 21985300 */  addu       $s3, $v0, $s3
/* 1C738 8002BF38 12900000 */  mflo       $s2
/* 1C73C 8002BF3C D140010C */  jal        u32Random
/* 1C740 8002BF40 03911200 */   sra       $s2, $s2, 4
/* 1C744 8002BF44 01000324 */  addiu      $v1, $zero, 0x1
/* 1C748 8002BF48 0000C3A6 */  sh         $v1, 0x0($s6)
/* 1C74C 8002BF4C 14000324 */  addiu      $v1, $zero, 0x14
/* 1C750 8002BF50 23106200 */  subu       $v0, $v1, $v0
/* 1C754 8002BF54 0400D5AE */  sw         $s5, 0x4($s6)
/* 1C758 8002BF58 0800D3AE */  sw         $s3, 0x8($s6)
/* 1C75C 8002BF5C 0C00D0AE */  sw         $s0, 0xC($s6)
/* 1C760 8002BF60 1000D1AE */  sw         $s1, 0x10($s6)
/* 1C764 8002BF64 1400D4AE */  sw         $s4, 0x14($s6)
/* 1C768 8002BF68 1800D2AE */  sw         $s2, 0x18($s6)
/* 1C76C 8002BF6C 0200C2A6 */  sh         $v0, 0x2($s6)
/* 1C770 8002BF70 4C00E392 */  lbu        $v1, 0x4C($s7)
/* 1C774 8002BF74 3400A58F */  lw         $a1, 0x34($sp)
/* 1C778 8002BF78 00000000 */  nop
/* 1C77C 8002BF7C 0400A3A0 */  sb         $v1, 0x4($a1)
/* 1C780 8002BF80 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1C784 8002BF84 00000000 */  nop
/* 1C788 8002BF88 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1C78C 8002BF8C 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1C790 8002BF90 00000000 */  nop
/* 1C794 8002BF94 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1C798 8002BF98 4C00E492 */  lbu        $a0, 0x4C($s7)
/* 1C79C 8002BF9C 2400A58F */  lw         $a1, 0x24($sp)
/* 1C7A0 8002BFA0 00000000 */  nop
/* 1C7A4 8002BFA4 0400A4A0 */  sb         $a0, 0x4($a1)
/* 1C7A8 8002BFA8 4D00E292 */  lbu        $v0, 0x4D($s7)
/* 1C7AC 8002BFAC 00000000 */  nop
/* 1C7B0 8002BFB0 0500A2A0 */  sb         $v0, 0x5($a1)
/* 1C7B4 8002BFB4 4E00E392 */  lbu        $v1, 0x4E($s7)
/* 1C7B8 8002BFB8 2800B18F */  lw         $s1, 0x28($sp)
/* 1C7BC 8002BFBC 0600A3A0 */  sb         $v1, 0x6($a1)
/* 1C7C0 8002BFC0 0800E28E */  lw         $v0, 0x8($s7)
/* 1C7C4 8002BFC4 3800B68F */  lw         $s6, 0x38($sp)
/* 1C7C8 8002BFC8 2A102202 */  slt        $v0, $s1, $v0
/* 1C7CC 8002BFCC 5AFF4014 */  bnez       $v0, .L8002BD38
/* 1C7D0 8002BFD0 00000000 */   nop
.L8002BFD4:
/* 1C7D4 8002BFD4 6400BF8F */  lw         $ra, 0x64($sp)
/* 1C7D8 8002BFD8 6000BE8F */  lw         $fp, 0x60($sp)
/* 1C7DC 8002BFDC 0000E0AE */  sw         $zero, 0x0($s7)
/* 1C7E0 8002BFE0 5C00B78F */  lw         $s7, 0x5C($sp)
/* 1C7E4 8002BFE4 5800B68F */  lw         $s6, 0x58($sp)
/* 1C7E8 8002BFE8 5400B58F */  lw         $s5, 0x54($sp)
/* 1C7EC 8002BFEC 5000B48F */  lw         $s4, 0x50($sp)
/* 1C7F0 8002BFF0 4C00B38F */  lw         $s3, 0x4C($sp)
/* 1C7F4 8002BFF4 4800B28F */  lw         $s2, 0x48($sp)
/* 1C7F8 8002BFF8 4400B18F */  lw         $s1, 0x44($sp)
/* 1C7FC 8002BFFC 4000B08F */  lw         $s0, 0x40($sp)
/* 1C800 8002C000 0800E003 */  jr         $ra
/* 1C804 8002C004 6800BD27 */   addiu     $sp, $sp, 0x68
.size ParticleSplashInit, . - ParticleSplashInit
