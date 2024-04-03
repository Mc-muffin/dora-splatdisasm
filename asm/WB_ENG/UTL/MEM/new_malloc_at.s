.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel new_malloc_at
/* 4062C 8004FE2C 06008014 */  bnez       $a0, .L8004FE48
/* 40630 8004FE30 03008424 */   addiu     $a0, $a0, 0x3
/* 40634 8004FE34 0800E003 */  jr         $ra
/* 40638 8004FE38 21100000 */   addu      $v0, $zero, $zero
.L8004FE3C:
/* 4063C 8004FE3C 0000C8AC */  sw         $t0, 0x0($a2)
/* 40640 8004FE40 0800E003 */  jr         $ra
/* 40644 8004FE44 0400C224 */   addiu     $v0, $a2, 0x4
.L8004FE48:
/* 40648 8004FE48 82200400 */  srl        $a0, $a0, 2
/* 4064C 8004FE4C 80200400 */  sll        $a0, $a0, 2
/* 40650 8004FE50 AC15868F */  lw         $a2, %gp_rel(s_endOfBSS)($gp)
/* 40654 8004FE54 B015828F */  lw         $v0, %gp_rel(s_endOfRAM)($gp)
/* 40658 8004FE58 04008A24 */  addiu      $t2, $a0, 0x4
/* 4065C 8004FE5C 2B18C200 */  sltu       $v1, $a2, $v0
/* 40660 8004FE60 2168C000 */  addu       $t5, $a2, $zero
/* 40664 8004FE64 3C006010 */  beqz       $v1, .L8004FF58
/* 40668 8004FE68 21584000 */   addu      $t3, $v0, $zero
/* 4066C 8004FE6C 82100A00 */  srl        $v0, $t2, 2
/* 40670 8004FE70 80100200 */  sll        $v0, $v0, 2
/* 40674 8004FE74 2148A200 */  addu       $t1, $a1, $v0
/* 40678 8004FE78 FEFF0F24 */  addiu      $t7, $zero, -0x2
/* 4067C 8004FE7C 24604F01 */  and        $t4, $t2, $t7
/* 40680 8004FE80 83100C00 */  sra        $v0, $t4, 2
/* 40684 8004FE84 80100200 */  sll        $v0, $v0, 2
/* 40688 8004FE88 04005824 */  addiu      $t8, $v0, 0x4
/* 4068C 8004FE8C 21706001 */  addu       $t6, $t3, $zero
.L8004FE90:
/* 40690 8004FE90 0000C28C */  lw         $v0, 0x0($a2)
/* 40694 8004FE94 2B20A600 */  sltu       $a0, $a1, $a2
/* 40698 8004FE98 24404F00 */  and        $t0, $v0, $t7
/* 4069C 8004FE9C 82180800 */  srl        $v1, $t0, 2
/* 406A0 8004FEA0 80180300 */  sll        $v1, $v1, 2
/* 406A4 8004FEA4 2118C300 */  addu       $v1, $a2, $v1
/* 406A8 8004FEA8 24008014 */  bnez       $a0, .L8004FF3C
/* 406AC 8004FEAC 21384000 */   addu      $a3, $v0, $zero
/* 406B0 8004FEB0 2B106900 */  sltu       $v0, $v1, $t1
/* 406B4 8004FEB4 22004014 */  bnez       $v0, .L8004FF40
/* 406B8 8004FEB8 83100700 */   sra       $v0, $a3, 2
/* 406BC 8004FEBC 0100E230 */  andi       $v0, $a3, 0x1
/* 406C0 8004FEC0 1F004010 */  beqz       $v0, .L8004FF40
/* 406C4 8004FEC4 83100700 */   sra       $v0, $a3, 2
/* 406C8 8004FEC8 DCFF0A11 */  beq        $t0, $t2, .L8004FE3C
/* 406CC 8004FECC 2310A600 */   subu      $v0, $a1, $a2
/* 406D0 8004FED0 83100200 */  sra        $v0, $v0, 2
/* 406D4 8004FED4 80200200 */  sll        $a0, $v0, 2
/* 406D8 8004FED8 23186900 */  subu       $v1, $v1, $t1
/* 406DC 8004FEDC 83180300 */  sra        $v1, $v1, 2
/* 406E0 8004FEE0 0400822C */  sltiu      $v0, $a0, 0x4
/* 406E4 8004FEE4 07004014 */  bnez       $v0, .L8004FF04
/* 406E8 8004FEE8 80180300 */   sll       $v1, $v1, 2
/* 406EC 8004FEEC 01008234 */  ori        $v0, $a0, 0x1
/* 406F0 8004FEF0 0000C2AC */  sw         $v0, 0x0($a2)
/* 406F4 8004FEF4 83100200 */  sra        $v0, $v0, 2
/* 406F8 8004FEF8 80100200 */  sll        $v0, $v0, 2
/* 406FC 8004FEFC 04004224 */  addiu      $v0, $v0, 0x4
/* 40700 8004FF00 2130C200 */  addu       $a2, $a2, $v0
.L8004FF04:
/* 40704 8004FF04 0400622C */  sltiu      $v0, $v1, 0x4
/* 40708 8004FF08 07004014 */  bnez       $v0, .L8004FF28
/* 4070C 8004FF0C 23100401 */   subu      $v0, $t0, $a0
/* 40710 8004FF10 2120C000 */  addu       $a0, $a2, $zero
/* 40714 8004FF14 0000CCAC */  sw         $t4, 0x0($a2)
/* 40718 8004FF18 2130D800 */  addu       $a2, $a2, $t8
/* 4071C 8004FF1C 01006234 */  ori        $v0, $v1, 0x1
/* 40720 8004FF20 CD3F0108 */  j          .L8004FF34
/* 40724 8004FF24 0000C2AC */   sw        $v0, 0x0($a2)
.L8004FF28:
/* 40728 8004FF28 24104F00 */  and        $v0, $v0, $t7
/* 4072C 8004FF2C 0000C2AC */  sw         $v0, 0x0($a2)
/* 40730 8004FF30 2120C000 */  addu       $a0, $a2, $zero
.L8004FF34:
/* 40734 8004FF34 0800E003 */  jr         $ra
/* 40738 8004FF38 21108000 */   addu      $v0, $a0, $zero
.L8004FF3C:
/* 4073C 8004FF3C 83100700 */  sra        $v0, $a3, 2
.L8004FF40:
/* 40740 8004FF40 80100200 */  sll        $v0, $v0, 2
/* 40744 8004FF44 04004224 */  addiu      $v0, $v0, 0x4
/* 40748 8004FF48 2130C200 */  addu       $a2, $a2, $v0
/* 4074C 8004FF4C 2B18CE00 */  sltu       $v1, $a2, $t6
/* 40750 8004FF50 CFFF6014 */  bnez       $v1, .L8004FE90
/* 40754 8004FF54 00000000 */   nop
.L8004FF58:
/* 40758 8004FF58 2B10AB01 */  sltu       $v0, $t5, $t3
/* 4075C 8004FF5C 0B004010 */  beqz       $v0, .L8004FF8C
/* 40760 8004FF60 2120A001 */   addu      $a0, $t5, $zero
/* 40764 8004FF64 21286001 */  addu       $a1, $t3, $zero
.L8004FF68:
/* 40768 8004FF68 0000828C */  lw         $v0, 0x0($a0)
/* 4076C 8004FF6C 00000000 */  nop
/* 40770 8004FF70 83100200 */  sra        $v0, $v0, 2
/* 40774 8004FF74 80100200 */  sll        $v0, $v0, 2
/* 40778 8004FF78 04004224 */  addiu      $v0, $v0, 0x4
/* 4077C 8004FF7C 21208200 */  addu       $a0, $a0, $v0
/* 40780 8004FF80 2B188500 */  sltu       $v1, $a0, $a1
/* 40784 8004FF84 F8FF6014 */  bnez       $v1, .L8004FF68
/* 40788 8004FF88 00000000 */   nop
.L8004FF8C:
/* 4078C 8004FF8C 2128A001 */  addu       $a1, $t5, $zero
/* 40790 8004FF90 2B10AB00 */  sltu       $v0, $a1, $t3
/* 40794 8004FF94 12004010 */  beqz       $v0, .L8004FFE0
/* 40798 8004FF98 21300000 */   addu      $a2, $zero, $zero
/* 4079C 8004FF9C 21386001 */  addu       $a3, $t3, $zero
.L8004FFA0:
/* 407A0 8004FFA0 0000A28C */  lw         $v0, 0x0($a1)
/* 407A4 8004FFA4 00000000 */  nop
/* 407A8 8004FFA8 01004330 */  andi       $v1, $v0, 0x1
/* 407AC 8004FFAC 05006010 */  beqz       $v1, .L8004FFC4
/* 407B0 8004FFB0 21204000 */   addu      $a0, $v0, $zero
/* 407B4 8004FFB4 2A10C400 */  slt        $v0, $a2, $a0
/* 407B8 8004FFB8 03004010 */  beqz       $v0, .L8004FFC8
/* 407BC 8004FFBC 83100400 */   sra       $v0, $a0, 2
/* 407C0 8004FFC0 21308000 */  addu       $a2, $a0, $zero
.L8004FFC4:
/* 407C4 8004FFC4 83100400 */  sra        $v0, $a0, 2
.L8004FFC8:
/* 407C8 8004FFC8 80100200 */  sll        $v0, $v0, 2
/* 407CC 8004FFCC 04004224 */  addiu      $v0, $v0, 0x4
/* 407D0 8004FFD0 2128A200 */  addu       $a1, $a1, $v0
/* 407D4 8004FFD4 2B18A700 */  sltu       $v1, $a1, $a3
/* 407D8 8004FFD8 F1FF6014 */  bnez       $v1, .L8004FFA0
/* 407DC 8004FFDC 00000000 */   nop
.L8004FFE0:
/* 407E0 8004FFE0 0800E003 */  jr         $ra
/* 407E4 8004FFE4 21100000 */   addu      $v0, $zero, $zero
.size new_malloc_at, . - new_malloc_at
