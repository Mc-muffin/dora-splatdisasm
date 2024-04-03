.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CreateCelAnimPressureTrigger
/* 2FD50 8003F550 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 2FD54 8003F554 1400B1AF */  sw         $s1, 0x14($sp)
/* 2FD58 8003F558 4000B18F */  lw         $s1, 0x40($sp)
/* 2FD5C 8003F55C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2FD60 8003F560 2180C000 */  addu       $s0, $a2, $zero
/* 2FD64 8003F564 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 2FD68 8003F568 21980000 */  addu       $s3, $zero, $zero
/* 2FD6C 8003F56C 2400B5AF */  sw         $s5, 0x24($sp)
/* 2FD70 8003F570 21A88000 */  addu       $s5, $a0, $zero
/* 2FD74 8003F574 2000B4AF */  sw         $s4, 0x20($sp)
/* 2FD78 8003F578 21A0E000 */  addu       $s4, $a3, $zero
/* 2FD7C 8003F57C 2800BFAF */  sw         $ra, 0x28($sp)
/* 2FD80 8003F580 0400A004 */  bltz       $a1, .L8003F594
/* 2FD84 8003F584 1800B2AF */   sw        $s2, 0x18($sp)
/* 2FD88 8003F588 C814838F */  lw         $v1, %gp_rel(CellAnimLinks)($gp)
/* 2FD8C 8003F58C 00110500 */  sll        $v0, $a1, 4
/* 2FD90 8003F590 21986200 */  addu       $s3, $v1, $v0
.L8003F594:
/* 2FD94 8003F594 200C838F */  lw         $v1, %gp_rel(numstaticpressuretriggers)($gp)
/* 2FD98 8003F598 00000000 */  nop
/* 2FD9C 8003F59C 21800302 */  addu       $s0, $s0, $v1
/* 2FDA0 8003F5A0 00111000 */  sll        $v0, $s0, 4
/* 2FDA4 8003F5A4 21105000 */  addu       $v0, $v0, $s0
/* 2FDA8 8003F5A8 C014838F */  lw         $v1, %gp_rel(PressureTrigger)($gp)
/* 2FDAC 8003F5AC C0900200 */  sll        $s2, $v0, 3
/* 2FDB0 8003F5B0 21184302 */  addu       $v1, $s2, $v1
/* 2FDB4 8003F5B4 000075AC */  sw         $s5, 0x0($v1)
/* 2FDB8 8003F5B8 680073AC */  sw         $s3, 0x68($v1)
/* 2FDBC 8003F5BC 1000228E */  lw         $v0, 0x10($s1)
/* 2FDC0 8003F5C0 00000000 */  nop
/* 2FDC4 8003F5C4 380062AC */  sw         $v0, 0x38($v1)
/* 2FDC8 8003F5C8 1400258E */  lw         $a1, 0x14($s1)
/* 2FDCC 8003F5CC 00000000 */  nop
/* 2FDD0 8003F5D0 3C0065AC */  sw         $a1, 0x3C($v1)
/* 2FDD4 8003F5D4 0800248E */  lw         $a0, 0x8($s1)
/* 2FDD8 8003F5D8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 2FDDC 8003F5DC 240062AC */  sw         $v0, 0x24($v1)
/* 2FDE0 8003F5E0 280062AC */  sw         $v0, 0x28($v1)
/* 2FDE4 8003F5E4 2C0062AC */  sw         $v0, 0x2C($v1)
/* 2FDE8 8003F5E8 300062AC */  sw         $v0, 0x30($v1)
/* 2FDEC 8003F5EC 01000224 */  addiu      $v0, $zero, 0x1
/* 2FDF0 8003F5F0 040074AC */  sw         $s4, 0x4($v1)
/* 2FDF4 8003F5F4 0300A214 */  bne        $a1, $v0, .L8003F604
/* 2FDF8 8003F5F8 100064AC */   sw        $a0, 0x10($v1)
/* 2FDFC 8003F5FC 5A13010C */  jal        PointInPoly_GotoOutsideEdges
/* 2FE00 8003F600 2120A002 */   addu      $a0, $s5, $zero
.L8003F604:
/* 2FE04 8003F604 C014828F */  lw         $v0, %gp_rel(PressureTrigger)($gp)
/* 2FE08 8003F608 0000238E */  lw         $v1, 0x0($s1)
/* 2FE0C 8003F60C 21204202 */  addu       $a0, $s2, $v0
/* 2FE10 8003F610 180083AC */  sw         $v1, 0x18($a0)
/* 2FE14 8003F614 0400228E */  lw         $v0, 0x4($s1)
/* 2FE18 8003F618 21180000 */  addu       $v1, $zero, $zero
/* 2FE1C 8003F61C 05006016 */  bnez       $s3, .L8003F634
/* 2FE20 8003F620 1C0082AC */   sw        $v0, 0x1C($a0)
/* 2FE24 8003F624 2800828C */  lw         $v0, 0x28($a0)
/* 2FE28 8003F628 00000000 */  nop
/* 2FE2C 8003F62C 2B100200 */  sltu       $v0, $zero, $v0
/* 2FE30 8003F630 21184000 */  addu       $v1, $v0, $zero
.L8003F634:
/* 2FE34 8003F634 860083A4 */  sh         $v1, 0x86($a0)
/* 2FE38 8003F638 0000248E */  lw         $a0, 0x0($s1)
/* 2FE3C 8003F63C 00000000 */  nop
/* 2FE40 8003F640 13008004 */  bltz       $a0, .L8003F690
/* 2FE44 8003F644 FFFF6230 */   andi      $v0, $v1, 0xFFFF
/* 2FE48 8003F648 12004014 */  bnez       $v0, .L8003F694
/* 2FE4C 8003F64C 00291000 */   sll       $a1, $s0, 4
/* 2FE50 8003F650 0A80033C */  lui        $v1, %hi(ggrouptriggersMax)
/* 2FE54 8003F654 58BB6324 */  addiu      $v1, $v1, %lo(ggrouptriggersMax)
/* 2FE58 8003F658 80200400 */  sll        $a0, $a0, 2
/* 2FE5C 8003F65C 21208300 */  addu       $a0, $a0, $v1
/* 2FE60 8003F660 0000828C */  lw         $v0, 0x0($a0)
/* 2FE64 8003F664 0A80053C */  lui        $a1, %hi(gkeytriggersMax)
/* 2FE68 8003F668 01004224 */  addiu      $v0, $v0, 0x1
/* 2FE6C 8003F66C 000082AC */  sw         $v0, 0x0($a0)
/* 2FE70 8003F670 0400238E */  lw         $v1, 0x4($s1)
/* 2FE74 8003F674 68BAA524 */  addiu      $a1, $a1, %lo(gkeytriggersMax)
/* 2FE78 8003F678 80180300 */  sll        $v1, $v1, 2
/* 2FE7C 8003F67C 21186500 */  addu       $v1, $v1, $a1
/* 2FE80 8003F680 0000628C */  lw         $v0, 0x0($v1)
/* 2FE84 8003F684 00000000 */  nop
/* 2FE88 8003F688 01004224 */  addiu      $v0, $v0, 0x1
/* 2FE8C 8003F68C 000062AC */  sw         $v0, 0x0($v1)
.L8003F690:
/* 2FE90 8003F690 00291000 */  sll        $a1, $s0, 4
.L8003F694:
/* 2FE94 8003F694 2110B000 */  addu       $v0, $a1, $s0
/* 2FE98 8003F698 C014838F */  lw         $v1, %gp_rel(PressureTrigger)($gp)
/* 2FE9C 8003F69C C0100200 */  sll        $v0, $v0, 3
/* 2FEA0 8003F6A0 21104300 */  addu       $v0, $v0, $v1
/* 2FEA4 8003F6A4 3800438C */  lw         $v1, 0x38($v0)
/* 2FEA8 8003F6A8 04000424 */  addiu      $a0, $zero, 0x4
/* 2FEAC 8003F6AC 02006414 */  bne        $v1, $a0, .L8003F6B8
/* 2FEB0 8003F6B0 01000224 */   addiu     $v0, $zero, 0x1
/* 2FEB4 8003F6B4 0000A2AE */  sw         $v0, 0x0($s5)
.L8003F6B8:
/* 2FEB8 8003F6B8 2B00801A */  blez       $s4, .L8003F768
/* 2FEBC 8003F6BC FFFF0424 */   addiu     $a0, $zero, -0x1
/* 2FEC0 8003F6C0 21380000 */  addu       $a3, $zero, $zero
/* 2FEC4 8003F6C4 C414828F */  lw         $v0, %gp_rel(gnumpressuretriggers)($gp)
/* 2FEC8 8003F6C8 C014888F */  lw         $t0, %gp_rel(PressureTrigger)($gp)
/* 2FECC 8003F6CC 14004018 */  blez       $v0, .L8003F720
/* 2FED0 8003F6D0 21304000 */   addu      $a2, $v0, $zero
/* 2FED4 8003F6D4 0400028D */  lw         $v0, 0x4($t0)
/* 2FED8 8003F6D8 00000000 */  nop
/* 2FEDC 8003F6DC 04005414 */  bne        $v0, $s4, .L8003F6F0
/* 2FEE0 8003F6E0 0100E724 */   addiu     $a3, $a3, 0x1
/* 2FEE4 8003F6E4 FFFFE724 */  addiu      $a3, $a3, -0x1
/* 2FEE8 8003F6E8 C8FD0008 */  j          .L8003F720
/* 2FEEC 8003F6EC 21200000 */   addu      $a0, $zero, $zero
.L8003F6F0:
/* 2FEF0 8003F6F0 2A10E600 */  slt        $v0, $a3, $a2
/* 2FEF4 8003F6F4 0A004010 */  beqz       $v0, .L8003F720
/* 2FEF8 8003F6F8 00110700 */   sll       $v0, $a3, 4
/* 2FEFC 8003F6FC 21104700 */  addu       $v0, $v0, $a3
/* 2FF00 8003F700 C0100200 */  sll        $v0, $v0, 3
/* 2FF04 8003F704 21104800 */  addu       $v0, $v0, $t0
/* 2FF08 8003F708 0400438C */  lw         $v1, 0x4($v0)
/* 2FF0C 8003F70C 00000000 */  nop
/* 2FF10 8003F710 F7FF7414 */  bne        $v1, $s4, .L8003F6F0
/* 2FF14 8003F714 0100E724 */   addiu     $a3, $a3, 0x1
/* 2FF18 8003F718 FFFFE724 */  addiu      $a3, $a3, -0x1
/* 2FF1C 8003F71C 2120E000 */  addu       $a0, $a3, $zero
.L8003F720:
/* 2FF20 8003F720 2118B000 */  addu       $v1, $a1, $s0
/* 2FF24 8003F724 C0180300 */  sll        $v1, $v1, 3
/* 2FF28 8003F728 00110400 */  sll        $v0, $a0, 4
/* 2FF2C 8003F72C 21104400 */  addu       $v0, $v0, $a0
/* 2FF30 8003F730 C0100200 */  sll        $v0, $v0, 3
/* 2FF34 8003F734 21104800 */  addu       $v0, $v0, $t0
/* 2FF38 8003F738 21286800 */  addu       $a1, $v1, $t0
/* 2FF3C 8003F73C 4000448C */  lw         $a0, 0x40($v0)
/* 2FF40 8003F740 00110700 */  sll        $v0, $a3, 4
/* 2FF44 8003F744 21104700 */  addu       $v0, $v0, $a3
/* 2FF48 8003F748 C0100200 */  sll        $v0, $v0, 3
/* 2FF4C 8003F74C 21104800 */  addu       $v0, $v0, $t0
/* 2FF50 8003F750 4000A4AC */  sw         $a0, 0x40($a1)
/* 2FF54 8003F754 0400448C */  lw         $a0, 0x4($v0)
/* 2FF58 8003F758 03010324 */  addiu      $v1, $zero, 0x103
/* 2FF5C 8003F75C 02008314 */  bne        $a0, $v1, .L8003F768
/* 2FF60 8003F760 00000000 */   nop
/* 2FF64 8003F764 6400A5AC */  sw         $a1, 0x64($a1)
.L8003F768:
/* 2FF68 8003F768 2800BF8F */  lw         $ra, 0x28($sp)
/* 2FF6C 8003F76C 2400B58F */  lw         $s5, 0x24($sp)
/* 2FF70 8003F770 2000B48F */  lw         $s4, 0x20($sp)
/* 2FF74 8003F774 1C00B38F */  lw         $s3, 0x1C($sp)
/* 2FF78 8003F778 1800B28F */  lw         $s2, 0x18($sp)
/* 2FF7C 8003F77C 1400B18F */  lw         $s1, 0x14($sp)
/* 2FF80 8003F780 1000B08F */  lw         $s0, 0x10($sp)
/* 2FF84 8003F784 0800E003 */  jr         $ra
/* 2FF88 8003F788 3000BD27 */   addiu     $sp, $sp, 0x30
.size CreateCelAnimPressureTrigger, . - CreateCelAnimPressureTrigger
