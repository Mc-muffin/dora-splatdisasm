.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetScroll
/* 55DA0 800655A0 0880033C */  lui        $v1, %hi(TestWorld)
/* 55DA4 800655A4 8C656924 */  addiu      $t1, $v1, %lo(TestWorld)
/* 55DA8 800655A8 0400288D */  lw         $t0, 0x4($t1)
/* 55DAC 800655AC 7417828F */  lw         $v0, %gp_rel(ScrollYSize)($gp)
/* 55DB0 800655B0 00000000 */  nop
/* 55DB4 800655B4 2A100201 */  slt        $v0, $t0, $v0
/* 55DB8 800655B8 02004010 */  beqz       $v0, .L800655C4
/* 55DBC 800655BC 21388000 */   addu      $a3, $a0, $zero
/* 55DC0 800655C0 741788AF */  sw         $t0, %gp_rel(ScrollYSize)($gp)
.L800655C4:
/* 55DC4 800655C4 1812828F */  lw         $v0, %gp_rel(ScrollXOffset)($gp)
/* 55DC8 800655C8 8C65638C */  lw         $v1, %lo(TestWorld)($v1)
/* 55DCC 800655CC 7017848F */  lw         $a0, %gp_rel(ScrollXSize)($gp)
/* 55DD0 800655D0 C0110200 */  sll        $v0, $v0, 7
/* 55DD4 800655D4 2338E200 */  subu       $a3, $a3, $v0
/* 55DD8 800655D8 23186400 */  subu       $v1, $v1, $a0
/* 55DDC 800655DC 0200E104 */  bgez       $a3, .L800655E8
/* 55DE0 800655E0 C0190300 */   sll       $v1, $v1, 7
/* 55DE4 800655E4 21380000 */  addu       $a3, $zero, $zero
.L800655E8:
/* 55DE8 800655E8 2A106700 */  slt        $v0, $v1, $a3
/* 55DEC 800655EC 02004010 */  beqz       $v0, .L800655F8
/* 55DF0 800655F0 00000000 */   nop
/* 55DF4 800655F4 21386000 */  addu       $a3, $v1, $zero
.L800655F8:
/* 55DF8 800655F8 C3190700 */  sra        $v1, $a3, 7
/* 55DFC 800655FC 1C12828F */  lw         $v0, %gp_rel(ScrollYOffset)($gp)
/* 55E00 80065600 0C1283AF */  sw         $v1, %gp_rel(ScrollXPos)($gp)
/* 55E04 80065604 C0110200 */  sll        $v0, $v0, 7
/* 55E08 80065608 2328A200 */  subu       $a1, $a1, $v0
/* 55E0C 8006560C 0200A104 */  bgez       $a1, .L80065618
/* 55E10 80065610 C0210800 */   sll       $a0, $t0, 7
/* 55E14 80065614 21280000 */  addu       $a1, $zero, $zero
.L80065618:
/* 55E18 80065618 7417838F */  lw         $v1, %gp_rel(ScrollYSize)($gp)
/* 55E1C 8006561C 00000000 */  nop
/* 55E20 80065620 C0190300 */  sll        $v1, $v1, 7
/* 55E24 80065624 2110A300 */  addu       $v0, $a1, $v1
/* 55E28 80065628 2A104400 */  slt        $v0, $v0, $a0
/* 55E2C 8006562C 02004014 */  bnez       $v0, .L80065638
/* 55E30 80065630 00000000 */   nop
/* 55E34 80065634 23288300 */  subu       $a1, $a0, $v1
.L80065638:
/* 55E38 80065638 2012838F */  lw         $v1, %gp_rel(ScrollZOffset)($gp)
/* 55E3C 8006563C C3110500 */  sra        $v0, $a1, 7
/* 55E40 80065640 101282AF */  sw         $v0, %gp_rel(ScrollYPos)($gp)
/* 55E44 80065644 0800228D */  lw         $v0, 0x8($t1)
/* 55E48 80065648 7817848F */  lw         $a0, %gp_rel(ScrollZSize)($gp)
/* 55E4C 8006564C C0190300 */  sll        $v1, $v1, 7
/* 55E50 80065650 2330C300 */  subu       $a2, $a2, $v1
/* 55E54 80065654 23104400 */  subu       $v0, $v0, $a0
/* 55E58 80065658 0200C104 */  bgez       $a2, .L80065664
/* 55E5C 8006565C C0190200 */   sll       $v1, $v0, 7
/* 55E60 80065660 21300000 */  addu       $a2, $zero, $zero
.L80065664:
/* 55E64 80065664 2A106600 */  slt        $v0, $v1, $a2
/* 55E68 80065668 03004010 */  beqz       $v0, .L80065678
/* 55E6C 8006566C C3110600 */   sra       $v0, $a2, 7
/* 55E70 80065670 21306000 */  addu       $a2, $v1, $zero
/* 55E74 80065674 C3110600 */  sra        $v0, $a2, 7
.L80065678:
/* 55E78 80065678 141282AF */  sw         $v0, %gp_rel(ScrollZPos)($gp)
/* 55E7C 8006567C 0800E003 */  jr         $ra
/* 55E80 80065680 00000000 */   nop
.size SetScroll, . - SetScroll
