.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PrintDebugPhysics
/* 2C440 8003BC40 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 2C444 8003BC44 2400B1AF */  sw         $s1, 0x24($sp)
/* 2C448 8003BC48 6C009124 */  addiu      $s1, $a0, 0x6C
/* 2C44C 8003BC4C 10000424 */  addiu      $a0, $zero, 0x10
/* 2C450 8003BC50 10000524 */  addiu      $a1, $zero, 0x10
/* 2C454 8003BC54 2800BFAF */  sw         $ra, 0x28($sp)
/* 2C458 8003BC58 2000B0AF */  sw         $s0, 0x20($sp)
/* 2C45C 8003BC5C 0400228E */  lw         $v0, 0x4($s1)
/* 2C460 8003BC60 21300000 */  addu       $a2, $zero, $zero
/* 2C464 8003BC64 1000A2AF */  sw         $v0, 0x10($sp)
/* 2C468 8003BC68 0800238E */  lw         $v1, 0x8($s1)
/* 2C46C 8003BC6C 0180073C */  lui        $a3, %hi(D_80012C88)
/* 2C470 8003BC70 1400A3AF */  sw         $v1, 0x14($sp)
/* 2C474 8003BC74 0C00228E */  lw         $v0, 0xC($s1)
/* 2C478 8003BC78 882CE724 */  addiu      $a3, $a3, %lo(D_80012C88)
/* 2C47C 8003BC7C 3063010C */  jal        Print
/* 2C480 8003BC80 1800A2AF */   sw        $v0, 0x18($sp)
/* 2C484 8003BC84 10000424 */  addiu      $a0, $zero, 0x10
/* 2C488 8003BC88 20000524 */  addiu      $a1, $zero, 0x20
/* 2C48C 8003BC8C 0400228E */  lw         $v0, 0x4($s1)
/* 2C490 8003BC90 21300000 */  addu       $a2, $zero, $zero
/* 2C494 8003BC94 C3110200 */  sra        $v0, $v0, 7
/* 2C498 8003BC98 1000A2AF */  sw         $v0, 0x10($sp)
/* 2C49C 8003BC9C 0800238E */  lw         $v1, 0x8($s1)
/* 2C4A0 8003BCA0 0180073C */  lui        $a3, %hi(D_80012CA0)
/* 2C4A4 8003BCA4 C3190300 */  sra        $v1, $v1, 7
/* 2C4A8 8003BCA8 1400A3AF */  sw         $v1, 0x14($sp)
/* 2C4AC 8003BCAC 0C00228E */  lw         $v0, 0xC($s1)
/* 2C4B0 8003BCB0 A02CE724 */  addiu      $a3, $a3, %lo(D_80012CA0)
/* 2C4B4 8003BCB4 C3110200 */  sra        $v0, $v0, 7
/* 2C4B8 8003BCB8 3063010C */  jal        Print
/* 2C4BC 8003BCBC 1800A2AF */   sw        $v0, 0x18($sp)
/* 2C4C0 8003BCC0 10000424 */  addiu      $a0, $zero, 0x10
/* 2C4C4 8003BCC4 30000524 */  addiu      $a1, $zero, 0x30
/* 2C4C8 8003BCC8 21300000 */  addu       $a2, $zero, $zero
/* 2C4CC 8003BCCC 0180073C */  lui        $a3, %hi(D_80012CB8)
/* 2C4D0 8003BCD0 8800228E */  lw         $v0, 0x88($s1)
/* 2C4D4 8003BCD4 B82CE724 */  addiu      $a3, $a3, %lo(D_80012CB8)
/* 2C4D8 8003BCD8 3063010C */  jal        Print
/* 2C4DC 8003BCDC 1000A2AF */   sw        $v0, 0x10($sp)
/* 2C4E0 8003BCE0 8800238E */  lw         $v1, 0x88($s1)
/* 2C4E4 8003BCE4 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2C4E8 8003BCE8 FF036330 */  andi       $v1, $v1, 0x3FF
/* 2C4EC 8003BCEC 87006210 */  beq        $v1, $v0, .L8003BF0C
/* 2C4F0 8003BCF0 10000424 */   addiu     $a0, $zero, 0x10
/* 2C4F4 8003BCF4 40000524 */  addiu      $a1, $zero, 0x40
/* 2C4F8 8003BCF8 21300000 */  addu       $a2, $zero, $zero
/* 2C4FC 8003BCFC 0180073C */  lui        $a3, %hi(D_80012CCC)
/* 2C500 8003BD00 8C00228E */  lw         $v0, 0x8C($s1)
/* 2C504 8003BD04 CC2CE724 */  addiu      $a3, $a3, %lo(D_80012CCC)
/* 2C508 8003BD08 3063010C */  jal        Print
/* 2C50C 8003BD0C 1000A2AF */   sw        $v0, 0x10($sp)
/* 2C510 8003BD10 10000424 */  addiu      $a0, $zero, 0x10
/* 2C514 8003BD14 50000524 */  addiu      $a1, $zero, 0x50
/* 2C518 8003BD18 21300000 */  addu       $a2, $zero, $zero
/* 2C51C 8003BD1C 0180073C */  lui        $a3, %hi(D_80012CE8)
/* 2C520 8003BD20 E82CE724 */  addiu      $a3, $a3, %lo(D_80012CE8)
/* 2C524 8003BD24 8800228E */  lw         $v0, 0x88($s1)
/* 2C528 8003BD28 00FC0324 */  addiu      $v1, $zero, -0x400
/* 2C52C 8003BD2C 24104300 */  and        $v0, $v0, $v1
/* 2C530 8003BD30 3063010C */  jal        Print
/* 2C534 8003BD34 1000A2AF */   sw        $v0, 0x10($sp)
/* 2C538 8003BD38 10000424 */  addiu      $a0, $zero, 0x10
/* 2C53C 8003BD3C 60000524 */  addiu      $a1, $zero, 0x60
/* 2C540 8003BD40 21300000 */  addu       $a2, $zero, $zero
/* 2C544 8003BD44 0180073C */  lui        $a3, %hi(D_80012D04)
/* 2C548 8003BD48 3063010C */  jal        Print
/* 2C54C 8003BD4C 042DE724 */   addiu     $a3, $a3, %lo(D_80012D04)
/* 2C550 8003BD50 8C00238E */  lw         $v1, 0x8C($s1)
/* 2C554 8003BD54 0400023C */  lui        $v0, (0x40000 >> 16)
/* 2C558 8003BD58 24186200 */  and        $v1, $v1, $v0
/* 2C55C 8003BD5C 06006010 */  beqz       $v1, .L8003BD78
/* 2C560 8003BD60 50000424 */   addiu     $a0, $zero, 0x50
/* 2C564 8003BD64 60000524 */  addiu      $a1, $zero, 0x60
/* 2C568 8003BD68 21300000 */  addu       $a2, $zero, $zero
/* 2C56C 8003BD6C 0180073C */  lui        $a3, %hi(D_80012D10)
/* 2C570 8003BD70 3063010C */  jal        Print
/* 2C574 8003BD74 102DE724 */   addiu     $a3, $a3, %lo(D_80012D10)
.L8003BD78:
/* 2C578 8003BD78 8C00228E */  lw         $v0, 0x8C($s1)
/* 2C57C 8003BD7C 00000000 */  nop
/* 2C580 8003BD80 01004230 */  andi       $v0, $v0, 0x1
/* 2C584 8003BD84 06004010 */  beqz       $v0, .L8003BDA0
/* 2C588 8003BD88 50000424 */   addiu     $a0, $zero, 0x50
/* 2C58C 8003BD8C 60000524 */  addiu      $a1, $zero, 0x60
/* 2C590 8003BD90 21300000 */  addu       $a2, $zero, $zero
/* 2C594 8003BD94 0980073C */  lui        $a3, %hi(D_80094E34)
/* 2C598 8003BD98 3063010C */  jal        Print
/* 2C59C 8003BD9C 344EE724 */   addiu     $a3, $a3, %lo(D_80094E34)
.L8003BDA0:
/* 2C5A0 8003BDA0 8C00228E */  lw         $v0, 0x8C($s1)
/* 2C5A4 8003BDA4 00000000 */  nop
/* 2C5A8 8003BDA8 02004230 */  andi       $v0, $v0, 0x2
/* 2C5AC 8003BDAC 06004010 */  beqz       $v0, .L8003BDC8
/* 2C5B0 8003BDB0 60000424 */   addiu     $a0, $zero, 0x60
/* 2C5B4 8003BDB4 60000524 */  addiu      $a1, $zero, 0x60
/* 2C5B8 8003BDB8 21300000 */  addu       $a2, $zero, $zero
/* 2C5BC 8003BDBC 0980073C */  lui        $a3, %hi(D_80094E38)
/* 2C5C0 8003BDC0 3063010C */  jal        Print
/* 2C5C4 8003BDC4 384EE724 */   addiu     $a3, $a3, %lo(D_80094E38)
.L8003BDC8:
/* 2C5C8 8003BDC8 8C00228E */  lw         $v0, 0x8C($s1)
/* 2C5CC 8003BDCC 00000000 */  nop
/* 2C5D0 8003BDD0 04004230 */  andi       $v0, $v0, 0x4
/* 2C5D4 8003BDD4 06004010 */  beqz       $v0, .L8003BDF0
/* 2C5D8 8003BDD8 70000424 */   addiu     $a0, $zero, 0x70
/* 2C5DC 8003BDDC 60000524 */  addiu      $a1, $zero, 0x60
/* 2C5E0 8003BDE0 21300000 */  addu       $a2, $zero, $zero
/* 2C5E4 8003BDE4 0980073C */  lui        $a3, %hi(D_80094E3C)
/* 2C5E8 8003BDE8 3063010C */  jal        Print
/* 2C5EC 8003BDEC 3C4EE724 */   addiu     $a3, $a3, %lo(D_80094E3C)
.L8003BDF0:
/* 2C5F0 8003BDF0 8C00228E */  lw         $v0, 0x8C($s1)
/* 2C5F4 8003BDF4 00000000 */  nop
/* 2C5F8 8003BDF8 08004230 */  andi       $v0, $v0, 0x8
/* 2C5FC 8003BDFC 06004010 */  beqz       $v0, .L8003BE18
/* 2C600 8003BE00 80000424 */   addiu     $a0, $zero, 0x80
/* 2C604 8003BE04 60000524 */  addiu      $a1, $zero, 0x60
/* 2C608 8003BE08 21300000 */  addu       $a2, $zero, $zero
/* 2C60C 8003BE0C 0980073C */  lui        $a3, %hi(D_80094E40)
/* 2C610 8003BE10 3063010C */  jal        Print
/* 2C614 8003BE14 404EE724 */   addiu     $a3, $a3, %lo(D_80094E40)
.L8003BE18:
/* 2C618 8003BE18 8C00228E */  lw         $v0, 0x8C($s1)
/* 2C61C 8003BE1C 00000000 */  nop
/* 2C620 8003BE20 00014230 */  andi       $v0, $v0, 0x100
/* 2C624 8003BE24 18004010 */  beqz       $v0, .L8003BE88
/* 2C628 8003BE28 10000424 */   addiu     $a0, $zero, 0x10
/* 2C62C 8003BE2C 8800228E */  lw         $v0, 0x88($s1)
/* 2C630 8003BE30 0980103C */  lui        $s0, %hi(CellAttributesPtr)
/* 2C634 8003BE34 6C50108E */  lw         $s0, %lo(CellAttributesPtr)($s0)
/* 2C638 8003BE38 FF034230 */  andi       $v0, $v0, 0x3FF
/* 2C63C 8003BE3C 80180200 */  sll        $v1, $v0, 2
/* 2C640 8003BE40 21186200 */  addu       $v1, $v1, $v0
/* 2C644 8003BE44 C0180300 */  sll        $v1, $v1, 3
/* 2C648 8003BE48 21800302 */  addu       $s0, $s0, $v1
/* 2C64C 8003BE4C 14000286 */  lh         $v0, 0x14($s0)
/* 2C650 8003BE50 70000524 */  addiu      $a1, $zero, 0x70
/* 2C654 8003BE54 1000A2AF */  sw         $v0, 0x10($sp)
/* 2C658 8003BE58 16000386 */  lh         $v1, 0x16($s0)
/* 2C65C 8003BE5C 21300000 */  addu       $a2, $zero, $zero
/* 2C660 8003BE60 1400A3AF */  sw         $v1, 0x14($sp)
/* 2C664 8003BE64 18000286 */  lh         $v0, 0x18($s0)
/* 2C668 8003BE68 0180073C */  lui        $a3, %hi(D_80012D1C)
/* 2C66C 8003BE6C 1800A2AF */  sw         $v0, 0x18($sp)
/* 2C670 8003BE70 1A000286 */  lh         $v0, 0x1A($s0)
/* 2C674 8003BE74 1C2DE724 */  addiu      $a3, $a3, %lo(D_80012D1C)
/* 2C678 8003BE78 3063010C */  jal        Print
/* 2C67C 8003BE7C 1C00A2AF */   sw        $v0, 0x1C($sp)
/* 2C680 8003BE80 AFEF0008 */  j          .L8003BEBC
/* 2C684 8003BE84 00000000 */   nop
.L8003BE88:
/* 2C688 8003BE88 70000524 */  addiu      $a1, $zero, 0x70
/* 2C68C 8003BE8C 21300000 */  addu       $a2, $zero, $zero
/* 2C690 8003BE90 0180073C */  lui        $a3, %hi(D_80012D40)
/* 2C694 8003BE94 402DE724 */  addiu      $a3, $a3, %lo(D_80012D40)
/* 2C698 8003BE98 8800238E */  lw         $v1, 0x88($s1)
/* 2C69C 8003BE9C 0980103C */  lui        $s0, %hi(CellAttributesPtr)
/* 2C6A0 8003BEA0 6C50108E */  lw         $s0, %lo(CellAttributesPtr)($s0)
/* 2C6A4 8003BEA4 FF036330 */  andi       $v1, $v1, 0x3FF
/* 2C6A8 8003BEA8 80100300 */  sll        $v0, $v1, 2
/* 2C6AC 8003BEAC 21104300 */  addu       $v0, $v0, $v1
/* 2C6B0 8003BEB0 C0100200 */  sll        $v0, $v0, 3
/* 2C6B4 8003BEB4 3063010C */  jal        Print
/* 2C6B8 8003BEB8 21800202 */   addu      $s0, $s0, $v0
.L8003BEBC:
/* 2C6BC 8003BEBC 0400258E */  lw         $a1, 0x4($s1)
/* 2C6C0 8003BEC0 0800268E */  lw         $a2, 0x8($s1)
/* 2C6C4 8003BEC4 0C00278E */  lw         $a3, 0xC($s1)
/* 2C6C8 8003BEC8 08FA000C */  jal        GetCellAttributeHeight
/* 2C6CC 8003BECC 21200002 */   addu      $a0, $s0, $zero
/* 2C6D0 8003BED0 0400248E */  lw         $a0, 0x4($s1)
/* 2C6D4 8003BED4 0800258E */  lw         $a1, 0x8($s1)
/* 2C6D8 8003BED8 0C00268E */  lw         $a2, 0xC($s1)
/* 2C6DC 8003BEDC CDEF000C */  jal        GetHeight
/* 2C6E0 8003BEE0 21804000 */   addu      $s0, $v0, $zero
/* 2C6E4 8003BEE4 10000424 */  addiu      $a0, $zero, 0x10
/* 2C6E8 8003BEE8 80000524 */  addiu      $a1, $zero, 0x80
/* 2C6EC 8003BEEC 21300000 */  addu       $a2, $zero, $zero
/* 2C6F0 8003BEF0 0180073C */  lui        $a3, %hi(D_80012D30)
/* 2C6F4 8003BEF4 302DE724 */  addiu      $a3, $a3, %lo(D_80012D30)
/* 2C6F8 8003BEF8 1000B0AF */  sw         $s0, 0x10($sp)
/* 2C6FC 8003BEFC 3063010C */  jal        Print
/* 2C700 8003BF00 1400A2AF */   sw        $v0, 0x14($sp)
/* 2C704 8003BF04 C8EF0008 */  j          .L8003BF20
/* 2C708 8003BF08 00000000 */   nop
.L8003BF0C:
/* 2C70C 8003BF0C 40000524 */  addiu      $a1, $zero, 0x40
/* 2C710 8003BF10 21300000 */  addu       $a2, $zero, $zero
/* 2C714 8003BF14 0180073C */  lui        $a3, %hi(D_80012D4C)
/* 2C718 8003BF18 3063010C */  jal        Print
/* 2C71C 8003BF1C 4C2DE724 */   addiu     $a3, $a3, %lo(D_80012D4C)
.L8003BF20:
/* 2C720 8003BF20 2800BF8F */  lw         $ra, 0x28($sp)
/* 2C724 8003BF24 2400B18F */  lw         $s1, 0x24($sp)
/* 2C728 8003BF28 2000B08F */  lw         $s0, 0x20($sp)
/* 2C72C 8003BF2C 0800E003 */  jr         $ra
/* 2C730 8003BF30 3000BD27 */   addiu     $sp, $sp, 0x30
.size PrintDebugPhysics, . - PrintDebugPhysics
