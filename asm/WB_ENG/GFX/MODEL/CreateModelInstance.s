.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CreateModelInstance
/* 3C4EC 8004BCEC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3C4F0 8004BCF0 1800B2AF */  sw         $s2, 0x18($sp)
/* 3C4F4 8004BCF4 21908000 */  addu       $s2, $a0, $zero
/* 3C4F8 8004BCF8 5C000424 */  addiu      $a0, $zero, 0x5C
/* 3C4FC 8004BCFC 1400B1AF */  sw         $s1, 0x14($sp)
/* 3C500 8004BD00 2188A000 */  addu       $s1, $a1, $zero
/* 3C504 8004BD04 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 3C508 8004BD08 2B3F010C */  jal        new_malloc
/* 3C50C 8004BD0C 1000B0AF */   sw        $s0, 0x10($sp)
/* 3C510 8004BD10 21804000 */  addu       $s0, $v0, $zero
/* 3C514 8004BD14 21180002 */  addu       $v1, $s0, $zero
/* 3C518 8004BD18 21104002 */  addu       $v0, $s2, $zero
/* 3C51C 8004BD1C 50004426 */  addiu      $a0, $s2, 0x50
.L8004BD20:
/* 3C520 8004BD20 0000458C */  lw         $a1, 0x0($v0)
/* 3C524 8004BD24 0400468C */  lw         $a2, 0x4($v0)
/* 3C528 8004BD28 0800478C */  lw         $a3, 0x8($v0)
/* 3C52C 8004BD2C 0C00488C */  lw         $t0, 0xC($v0)
/* 3C530 8004BD30 000065AC */  sw         $a1, 0x0($v1)
/* 3C534 8004BD34 040066AC */  sw         $a2, 0x4($v1)
/* 3C538 8004BD38 080067AC */  sw         $a3, 0x8($v1)
/* 3C53C 8004BD3C 0C0068AC */  sw         $t0, 0xC($v1)
/* 3C540 8004BD40 10004224 */  addiu      $v0, $v0, 0x10
/* 3C544 8004BD44 F6FF4414 */  bne        $v0, $a0, .L8004BD20
/* 3C548 8004BD48 10006324 */   addiu     $v1, $v1, 0x10
/* 3C54C 8004BD4C 21202002 */  addu       $a0, $s1, $zero
/* 3C550 8004BD50 0000498C */  lw         $t1, 0x0($v0)
/* 3C554 8004BD54 04004A8C */  lw         $t2, 0x4($v0)
/* 3C558 8004BD58 08004B8C */  lw         $t3, 0x8($v0)
/* 3C55C 8004BD5C 000069AC */  sw         $t1, 0x0($v1)
/* 3C560 8004BD60 04006AAC */  sw         $t2, 0x4($v1)
/* 3C564 8004BD64 2A6F000C */  jal        meshname
/* 3C568 8004BD68 08006BAC */   sw        $t3, 0x8($v1)
/* 3C56C 8004BD6C 08000396 */  lhu        $v1, 0x8($s0)
/* 3C570 8004BD70 00000000 */  nop
/* 3C574 8004BD74 27006010 */  beqz       $v1, .L8004BE14
/* 3C578 8004BD78 00000000 */   nop
/* 3C57C 8004BD7C 21206000 */  addu       $a0, $v1, $zero
/* 3C580 8004BD80 2B3F010C */  jal        new_malloc
/* 3C584 8004BD84 40210400 */   sll       $a0, $a0, 5
/* 3C588 8004BD88 21284000 */  addu       $a1, $v0, $zero
/* 3C58C 8004BD8C 08000296 */  lhu        $v0, 0x8($s0)
/* 3C590 8004BD90 200005AE */  sw         $a1, 0x20($s0)
/* 3C594 8004BD94 2000448E */  lw         $a0, 0x20($s2)
/* 3C598 8004BD98 1E004010 */  beqz       $v0, .L8004BE14
/* 3C59C 8004BD9C 21300000 */   addu      $a2, $zero, $zero
.L8004BDA0:
/* 3C5A0 8004BDA0 0000828C */  lw         $v0, 0x0($a0)
/* 3C5A4 8004BDA4 00000000 */  nop
/* 3C5A8 8004BDA8 0000A2AC */  sw         $v0, 0x0($a1)
/* 3C5AC 8004BDAC 0400838C */  lw         $v1, 0x4($a0)
/* 3C5B0 8004BDB0 00000000 */  nop
/* 3C5B4 8004BDB4 0400A3AC */  sw         $v1, 0x4($a1)
/* 3C5B8 8004BDB8 0800828C */  lw         $v0, 0x8($a0)
/* 3C5BC 8004BDBC 00000000 */  nop
/* 3C5C0 8004BDC0 0800A2AC */  sw         $v0, 0x8($a1)
/* 3C5C4 8004BDC4 0C00838C */  lw         $v1, 0xC($a0)
/* 3C5C8 8004BDC8 00000000 */  nop
/* 3C5CC 8004BDCC 0C00A3AC */  sw         $v1, 0xC($a1)
/* 3C5D0 8004BDD0 1000828C */  lw         $v0, 0x10($a0)
/* 3C5D4 8004BDD4 00000000 */  nop
/* 3C5D8 8004BDD8 1000A2AC */  sw         $v0, 0x10($a1)
/* 3C5DC 8004BDDC 1400838C */  lw         $v1, 0x14($a0)
/* 3C5E0 8004BDE0 00000000 */  nop
/* 3C5E4 8004BDE4 1400A3AC */  sw         $v1, 0x14($a1)
/* 3C5E8 8004BDE8 1800828C */  lw         $v0, 0x18($a0)
/* 3C5EC 8004BDEC 0100C624 */  addiu      $a2, $a2, 0x1
/* 3C5F0 8004BDF0 1800A2AC */  sw         $v0, 0x18($a1)
/* 3C5F4 8004BDF4 1C00838C */  lw         $v1, 0x1C($a0)
/* 3C5F8 8004BDF8 20008424 */  addiu      $a0, $a0, 0x20
/* 3C5FC 8004BDFC 1C00A3AC */  sw         $v1, 0x1C($a1)
/* 3C600 8004BE00 08000296 */  lhu        $v0, 0x8($s0)
/* 3C604 8004BE04 00000000 */  nop
/* 3C608 8004BE08 2A10C200 */  slt        $v0, $a2, $v0
/* 3C60C 8004BE0C E4FF4014 */  bnez       $v0, .L8004BDA0
/* 3C610 8004BE10 2000A524 */   addiu     $a1, $a1, 0x20
.L8004BE14:
/* 3C614 8004BE14 48000296 */  lhu        $v0, 0x48($s0)
/* 3C618 8004BE18 00000000 */  nop
/* 3C61C 8004BE1C 22004010 */  beqz       $v0, .L8004BEA8
/* 3C620 8004BE20 00000000 */   nop
/* 3C624 8004BE24 40200200 */  sll        $a0, $v0, 1
/* 3C628 8004BE28 21208200 */  addu       $a0, $a0, $v0
/* 3C62C 8004BE2C 2B3F010C */  jal        new_malloc
/* 3C630 8004BE30 00210400 */   sll       $a0, $a0, 4
/* 3C634 8004BE34 21184000 */  addu       $v1, $v0, $zero
/* 3C638 8004BE38 48000296 */  lhu        $v0, 0x48($s0)
/* 3C63C 8004BE3C 280003AE */  sw         $v1, 0x28($s0)
/* 3C640 8004BE40 2800448E */  lw         $a0, 0x28($s2)
/* 3C644 8004BE44 18004010 */  beqz       $v0, .L8004BEA8
/* 3C648 8004BE48 21300000 */   addu      $a2, $zero, $zero
.L8004BE4C:
/* 3C64C 8004BE4C 21106000 */  addu       $v0, $v1, $zero
/* 3C650 8004BE50 21188000 */  addu       $v1, $a0, $zero
/* 3C654 8004BE54 0100C824 */  addiu      $t0, $a2, 0x1
/* 3C658 8004BE58 30006424 */  addiu      $a0, $v1, 0x30
/* 3C65C 8004BE5C 21308000 */  addu       $a2, $a0, $zero
/* 3C660 8004BE60 30004524 */  addiu      $a1, $v0, 0x30
.L8004BE64:
/* 3C664 8004BE64 0000678C */  lw         $a3, 0x0($v1)
/* 3C668 8004BE68 0400698C */  lw         $t1, 0x4($v1)
/* 3C66C 8004BE6C 08006A8C */  lw         $t2, 0x8($v1)
/* 3C670 8004BE70 0C006B8C */  lw         $t3, 0xC($v1)
/* 3C674 8004BE74 000047AC */  sw         $a3, 0x0($v0)
/* 3C678 8004BE78 040049AC */  sw         $t1, 0x4($v0)
/* 3C67C 8004BE7C 08004AAC */  sw         $t2, 0x8($v0)
/* 3C680 8004BE80 0C004BAC */  sw         $t3, 0xC($v0)
/* 3C684 8004BE84 10006324 */  addiu      $v1, $v1, 0x10
/* 3C688 8004BE88 F6FF6414 */  bne        $v1, $a0, .L8004BE64
/* 3C68C 8004BE8C 10004224 */   addiu     $v0, $v0, 0x10
/* 3C690 8004BE90 2120C000 */  addu       $a0, $a2, $zero
/* 3C694 8004BE94 48000296 */  lhu        $v0, 0x48($s0)
/* 3C698 8004BE98 21300001 */  addu       $a2, $t0, $zero
/* 3C69C 8004BE9C 2A10C200 */  slt        $v0, $a2, $v0
/* 3C6A0 8004BEA0 EAFF4014 */  bnez       $v0, .L8004BE4C
/* 3C6A4 8004BEA4 2118A000 */   addu      $v1, $a1, $zero
.L8004BEA8:
/* 3C6A8 8004BEA8 50000296 */  lhu        $v0, 0x50($s0)
/* 3C6AC 8004BEAC 00000000 */  nop
/* 3C6B0 8004BEB0 26004010 */  beqz       $v0, .L8004BF4C
/* 3C6B4 8004BEB4 C0200200 */   sll       $a0, $v0, 3
/* 3C6B8 8004BEB8 21208200 */  addu       $a0, $a0, $v0
/* 3C6BC 8004BEBC 2B3F010C */  jal        new_malloc
/* 3C6C0 8004BEC0 C0200400 */   sll       $a0, $a0, 3
/* 3C6C4 8004BEC4 21284000 */  addu       $a1, $v0, $zero
/* 3C6C8 8004BEC8 50000296 */  lhu        $v0, 0x50($s0)
/* 3C6CC 8004BECC 380005AE */  sw         $a1, 0x38($s0)
/* 3C6D0 8004BED0 3800478E */  lw         $a3, 0x38($s2)
/* 3C6D4 8004BED4 1D004010 */  beqz       $v0, .L8004BF4C
/* 3C6D8 8004BED8 21300000 */   addu      $a2, $zero, $zero
/* 3C6DC 8004BEDC 2120A000 */  addu       $a0, $a1, $zero
.L8004BEE0:
/* 3C6E0 8004BEE0 2118E000 */  addu       $v1, $a3, $zero
/* 3C6E4 8004BEE4 40006724 */  addiu      $a3, $v1, 0x40
/* 3C6E8 8004BEE8 0100C824 */  addiu      $t0, $a2, 0x1
/* 3C6EC 8004BEEC 48006524 */  addiu      $a1, $v1, 0x48
/* 3C6F0 8004BEF0 48008224 */  addiu      $v0, $a0, 0x48
.L8004BEF4:
/* 3C6F4 8004BEF4 0000668C */  lw         $a2, 0x0($v1)
/* 3C6F8 8004BEF8 0400698C */  lw         $t1, 0x4($v1)
/* 3C6FC 8004BEFC 08006A8C */  lw         $t2, 0x8($v1)
/* 3C700 8004BF00 0C006B8C */  lw         $t3, 0xC($v1)
/* 3C704 8004BF04 000086AC */  sw         $a2, 0x0($a0)
/* 3C708 8004BF08 040089AC */  sw         $t1, 0x4($a0)
/* 3C70C 8004BF0C 08008AAC */  sw         $t2, 0x8($a0)
/* 3C710 8004BF10 0C008BAC */  sw         $t3, 0xC($a0)
/* 3C714 8004BF14 10006324 */  addiu      $v1, $v1, 0x10
/* 3C718 8004BF18 F6FF6714 */  bne        $v1, $a3, .L8004BEF4
/* 3C71C 8004BF1C 10008424 */   addiu     $a0, $a0, 0x10
/* 3C720 8004BF20 2138A000 */  addu       $a3, $a1, $zero
/* 3C724 8004BF24 21284000 */  addu       $a1, $v0, $zero
/* 3C728 8004BF28 0000628C */  lw         $v0, 0x0($v1)
/* 3C72C 8004BF2C 0400668C */  lw         $a2, 0x4($v1)
/* 3C730 8004BF30 000082AC */  sw         $v0, 0x0($a0)
/* 3C734 8004BF34 040086AC */  sw         $a2, 0x4($a0)
/* 3C738 8004BF38 50000296 */  lhu        $v0, 0x50($s0)
/* 3C73C 8004BF3C 21300001 */  addu       $a2, $t0, $zero
/* 3C740 8004BF40 2A10C200 */  slt        $v0, $a2, $v0
/* 3C744 8004BF44 E6FF4014 */  bnez       $v0, .L8004BEE0
/* 3C748 8004BF48 2120A000 */   addu      $a0, $a1, $zero
.L8004BF4C:
/* 3C74C 8004BF4C 52000296 */  lhu        $v0, 0x52($s0)
/* 3C750 8004BF50 00000000 */  nop
/* 3C754 8004BF54 2A004010 */  beqz       $v0, .L8004C000
/* 3C758 8004BF58 40200200 */   sll       $a0, $v0, 1
/* 3C75C 8004BF5C 21208200 */  addu       $a0, $a0, $v0
/* 3C760 8004BF60 C0200400 */  sll        $a0, $a0, 3
/* 3C764 8004BF64 23208200 */  subu       $a0, $a0, $v0
/* 3C768 8004BF68 2B3F010C */  jal        new_malloc
/* 3C76C 8004BF6C 80200400 */   sll       $a0, $a0, 2
/* 3C770 8004BF70 21284000 */  addu       $a1, $v0, $zero
/* 3C774 8004BF74 52000296 */  lhu        $v0, 0x52($s0)
/* 3C778 8004BF78 3C0005AE */  sw         $a1, 0x3C($s0)
/* 3C77C 8004BF7C 3C00478E */  lw         $a3, 0x3C($s2)
/* 3C780 8004BF80 1F004010 */  beqz       $v0, .L8004C000
/* 3C784 8004BF84 21300000 */   addu      $a2, $zero, $zero
/* 3C788 8004BF88 2120A000 */  addu       $a0, $a1, $zero
.L8004BF8C:
/* 3C78C 8004BF8C 2118E000 */  addu       $v1, $a3, $zero
/* 3C790 8004BF90 50006724 */  addiu      $a3, $v1, 0x50
/* 3C794 8004BF94 0100C824 */  addiu      $t0, $a2, 0x1
/* 3C798 8004BF98 5C006524 */  addiu      $a1, $v1, 0x5C
/* 3C79C 8004BF9C 5C008224 */  addiu      $v0, $a0, 0x5C
.L8004BFA0:
/* 3C7A0 8004BFA0 00006B8C */  lw         $t3, 0x0($v1)
/* 3C7A4 8004BFA4 0400668C */  lw         $a2, 0x4($v1)
/* 3C7A8 8004BFA8 0800698C */  lw         $t1, 0x8($v1)
/* 3C7AC 8004BFAC 0C006A8C */  lw         $t2, 0xC($v1)
/* 3C7B0 8004BFB0 00008BAC */  sw         $t3, 0x0($a0)
/* 3C7B4 8004BFB4 040086AC */  sw         $a2, 0x4($a0)
/* 3C7B8 8004BFB8 080089AC */  sw         $t1, 0x8($a0)
/* 3C7BC 8004BFBC 0C008AAC */  sw         $t2, 0xC($a0)
/* 3C7C0 8004BFC0 10006324 */  addiu      $v1, $v1, 0x10
/* 3C7C4 8004BFC4 F6FF6714 */  bne        $v1, $a3, .L8004BFA0
/* 3C7C8 8004BFC8 10008424 */   addiu     $a0, $a0, 0x10
/* 3C7CC 8004BFCC 2138A000 */  addu       $a3, $a1, $zero
/* 3C7D0 8004BFD0 21284000 */  addu       $a1, $v0, $zero
/* 3C7D4 8004BFD4 00006B8C */  lw         $t3, 0x0($v1)
/* 3C7D8 8004BFD8 0400628C */  lw         $v0, 0x4($v1)
/* 3C7DC 8004BFDC 0800668C */  lw         $a2, 0x8($v1)
/* 3C7E0 8004BFE0 00008BAC */  sw         $t3, 0x0($a0)
/* 3C7E4 8004BFE4 040082AC */  sw         $v0, 0x4($a0)
/* 3C7E8 8004BFE8 080086AC */  sw         $a2, 0x8($a0)
/* 3C7EC 8004BFEC 52000296 */  lhu        $v0, 0x52($s0)
/* 3C7F0 8004BFF0 21300001 */  addu       $a2, $t0, $zero
/* 3C7F4 8004BFF4 2A10C200 */  slt        $v0, $a2, $v0
/* 3C7F8 8004BFF8 E4FF4014 */  bnez       $v0, .L8004BF8C
/* 3C7FC 8004BFFC 2120A000 */   addu      $a0, $a1, $zero
.L8004C000:
/* 3C800 8004C000 08000296 */  lhu        $v0, 0x8($s0)
/* 3C804 8004C004 00000000 */  nop
/* 3C808 8004C008 27004010 */  beqz       $v0, .L8004C0A8
/* 3C80C 8004C00C 00000000 */   nop
/* 3C810 8004C010 21204000 */  addu       $a0, $v0, $zero
/* 3C814 8004C014 2B3F010C */  jal        new_malloc
/* 3C818 8004C018 40210400 */   sll       $a0, $a0, 5
/* 3C81C 8004C01C 21284000 */  addu       $a1, $v0, $zero
/* 3C820 8004C020 08000296 */  lhu        $v0, 0x8($s0)
/* 3C824 8004C024 200005AE */  sw         $a1, 0x20($s0)
/* 3C828 8004C028 2000448E */  lw         $a0, 0x20($s2)
/* 3C82C 8004C02C 1E004010 */  beqz       $v0, .L8004C0A8
/* 3C830 8004C030 21300000 */   addu      $a2, $zero, $zero
.L8004C034:
/* 3C834 8004C034 0000828C */  lw         $v0, 0x0($a0)
/* 3C838 8004C038 00000000 */  nop
/* 3C83C 8004C03C 0000A2AC */  sw         $v0, 0x0($a1)
/* 3C840 8004C040 0400838C */  lw         $v1, 0x4($a0)
/* 3C844 8004C044 00000000 */  nop
/* 3C848 8004C048 0400A3AC */  sw         $v1, 0x4($a1)
/* 3C84C 8004C04C 0800828C */  lw         $v0, 0x8($a0)
/* 3C850 8004C050 00000000 */  nop
/* 3C854 8004C054 0800A2AC */  sw         $v0, 0x8($a1)
/* 3C858 8004C058 0C00838C */  lw         $v1, 0xC($a0)
/* 3C85C 8004C05C 00000000 */  nop
/* 3C860 8004C060 0C00A3AC */  sw         $v1, 0xC($a1)
/* 3C864 8004C064 1000828C */  lw         $v0, 0x10($a0)
/* 3C868 8004C068 00000000 */  nop
/* 3C86C 8004C06C 1000A2AC */  sw         $v0, 0x10($a1)
/* 3C870 8004C070 1400838C */  lw         $v1, 0x14($a0)
/* 3C874 8004C074 00000000 */  nop
/* 3C878 8004C078 1400A3AC */  sw         $v1, 0x14($a1)
/* 3C87C 8004C07C 1800828C */  lw         $v0, 0x18($a0)
/* 3C880 8004C080 0100C624 */  addiu      $a2, $a2, 0x1
/* 3C884 8004C084 1800A2AC */  sw         $v0, 0x18($a1)
/* 3C888 8004C088 1C00838C */  lw         $v1, 0x1C($a0)
/* 3C88C 8004C08C 20008424 */  addiu      $a0, $a0, 0x20
/* 3C890 8004C090 1C00A3AC */  sw         $v1, 0x1C($a1)
/* 3C894 8004C094 08000296 */  lhu        $v0, 0x8($s0)
/* 3C898 8004C098 00000000 */  nop
/* 3C89C 8004C09C 2A10C200 */  slt        $v0, $a2, $v0
/* 3C8A0 8004C0A0 E4FF4014 */  bnez       $v0, .L8004C034
/* 3C8A4 8004C0A4 2000A524 */   addiu     $a1, $a1, 0x20
.L8004C0A8:
/* 3C8A8 8004C0A8 21100002 */  addu       $v0, $s0, $zero
/* 3C8AC 8004C0AC 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 3C8B0 8004C0B0 1800B28F */  lw         $s2, 0x18($sp)
/* 3C8B4 8004C0B4 1400B18F */  lw         $s1, 0x14($sp)
/* 3C8B8 8004C0B8 1000B08F */  lw         $s0, 0x10($sp)
/* 3C8BC 8004C0BC 0800E003 */  jr         $ra
/* 3C8C0 8004C0C0 2000BD27 */   addiu     $sp, $sp, 0x20
.size CreateModelInstance, . - CreateModelInstance
