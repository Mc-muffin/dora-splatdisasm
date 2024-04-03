.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DrawBilboardFT4
/* 4FD04 8005F504 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4FD08 8005F508 801F033C */  lui        $v1, (0x1F800060 >> 16)
/* 4FD0C 8005F50C 60006334 */  ori        $v1, $v1, (0x1F800060 & 0xFFFF)
/* 4FD10 8005F510 801F083C */  lui        $t0, (0x1F800070 >> 16)
/* 4FD14 8005F514 70000835 */  ori        $t0, $t0, (0x1F800070 & 0xFFFF)
/* 4FD18 8005F518 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 4FD1C 8005F51C 21988000 */  addu       $s3, $a0, $zero
/* 4FD20 8005F520 1000B0AF */  sw         $s0, 0x10($sp)
/* 4FD24 8005F524 3800B08F */  lw         $s0, 0x38($sp)
/* 4FD28 8005F528 0B80023C */  lui        $v0, %hi(g_nt)
/* 4FD2C 8005F52C 2000B4AF */  sw         $s4, 0x20($sp)
/* 4FD30 8005F530 68BB5424 */  addiu      $s4, $v0, %lo(g_nt)
/* 4FD34 8005F534 2400BFAF */  sw         $ra, 0x24($sp)
/* 4FD38 8005F538 1800B2AF */  sw         $s2, 0x18($sp)
/* 4FD3C 8005F53C 1400B1AF */  sw         $s1, 0x14($sp)
/* 4FD40 8005F540 0000A0C8 */  lwc2       $0, 0x0($a1)
/* 4FD44 8005F544 0400A1C8 */  lwc2       $1, 0x4($a1)
/* 4FD48 8005F548 00000000 */  nop
/* 4FD4C 8005F54C 00000000 */  nop
/* 4FD50 8005F550 0100184A */  RTPS
/* 4FD54 8005F554 00000EE9 */  swc2       $14, 0x0($t0)
/* 4FD58 8005F558 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 4FD5C 8005F55C 00000000 */  nop
/* 4FD60 8005F560 C3600C00 */  sra        $t4, $t4, 3
/* 4FD64 8005F564 00006CAC */  sw         $t4, 0x0($v1)
/* 4FD68 8005F568 0000638C */  lw         $v1, 0x0($v1)
/* 4FD6C 8005F56C 0000088D */  lw         $t0, 0x0($t0)
/* 4FD70 8005F570 15006228 */  slti       $v0, $v1, 0x15
/* 4FD74 8005F574 7A004014 */  bnez       $v0, .L8005F760
/* 4FD78 8005F578 00000000 */   nop
/* 4FD7C 8005F57C 1A00C300 */  div        $zero, $a2, $v1
/* 4FD80 8005F580 12880000 */  mflo       $s1
/* 4FD84 8005F584 02006014 */  bnez       $v1, .L8005F590
/* 4FD88 8005F588 00000000 */   nop
/* 4FD8C 8005F58C CD010000 */  break      0, 7
.L8005F590:
/* 4FD90 8005F590 1A00E300 */  div        $zero, $a3, $v1
/* 4FD94 8005F594 12900000 */  mflo       $s2
/* 4FD98 8005F598 02006014 */  bnez       $v1, .L8005F5A4
/* 4FD9C 8005F59C 00000000 */   nop
/* 4FDA0 8005F5A0 CD010000 */  break      0, 7
.L8005F5A4:
/* 4FDA4 8005F5A4 801F013C */  lui        $at, (0x1F800080 >> 16)
/* 4FDA8 8005F5A8 800028AC */  sw         $t0, (0x1F800080 & 0xFFFF)($at)
/* 4FDAC 8005F5AC 47EB010C */  jal        rsin
/* 4FDB0 8005F5B0 21200002 */   addu      $a0, $s0, $zero
/* 4FDB4 8005F5B4 21200002 */  addu       $a0, $s0, $zero
/* 4FDB8 8005F5B8 7BEB010C */  jal        rcos
/* 4FDBC 8005F5BC 21804000 */   addu      $s0, $v0, $zero
/* 4FDC0 8005F5C0 23181100 */  negu       $v1, $s1
/* 4FDC4 8005F5C4 18006200 */  mult       $v1, $v0
/* 4FDC8 8005F5C8 12300000 */  mflo       $a2
/* 4FDCC 8005F5CC 23281200 */  negu       $a1, $s2
/* 4FDD0 8005F5D0 00000000 */  nop
/* 4FDD4 8005F5D4 1800B000 */  mult       $a1, $s0
/* 4FDD8 8005F5D8 12380000 */  mflo       $a3
/* 4FDDC 8005F5DC 00000000 */  nop
/* 4FDE0 8005F5E0 00000000 */  nop
/* 4FDE4 8005F5E4 18007000 */  mult       $v1, $s0
/* 4FDE8 8005F5E8 12200000 */  mflo       $a0
/* 4FDEC 8005F5EC 00000000 */  nop
/* 4FDF0 8005F5F0 00000000 */  nop
/* 4FDF4 8005F5F4 1800A200 */  mult       $a1, $v0
/* 4FDF8 8005F5F8 12280000 */  mflo       $a1
/* 4FDFC 8005F5FC 00000000 */  nop
/* 4FE00 8005F600 00000000 */  nop
/* 4FE04 8005F604 18002202 */  mult       $s1, $v0
/* 4FE08 8005F608 12500000 */  mflo       $t2
/* 4FE0C 8005F60C 00000000 */  nop
/* 4FE10 8005F610 00000000 */  nop
/* 4FE14 8005F614 18003002 */  mult       $s1, $s0
/* 4FE18 8005F618 12480000 */  mflo       $t1
/* 4FE1C 8005F61C 00000000 */  nop
/* 4FE20 8005F620 00000000 */  nop
/* 4FE24 8005F624 18006200 */  mult       $v1, $v0
/* 4FE28 8005F628 12400000 */  mflo       $t0
/* 4FE2C 8005F62C 00000000 */  nop
/* 4FE30 8005F630 00000000 */  nop
/* 4FE34 8005F634 18005002 */  mult       $s2, $s0
/* 4FE38 8005F638 C3320600 */  sra        $a2, $a2, 11
/* 4FE3C 8005F63C C33A0700 */  sra        $a3, $a3, 11
/* 4FE40 8005F640 12580000 */  mflo       $t3
/* 4FE44 8005F644 2330C700 */  subu       $a2, $a2, $a3
/* 4FE48 8005F648 03230400 */  sra        $a0, $a0, 12
/* 4FE4C 8005F64C 18007000 */  mult       $v1, $s0
/* 4FE50 8005F650 032B0500 */  sra        $a1, $a1, 12
/* 4FE54 8005F654 21208500 */  addu       $a0, $a0, $a1
/* 4FE58 8005F658 00240400 */  sll        $a0, $a0, 16
/* 4FE5C 8005F65C 2130C400 */  addu       $a2, $a2, $a0
/* 4FE60 8005F660 C3520A00 */  sra        $t2, $t2, 11
/* 4FE64 8005F664 23384701 */  subu       $a3, $t2, $a3
/* 4FE68 8005F668 034B0900 */  sra        $t1, $t1, 12
/* 4FE6C 8005F66C 21282501 */  addu       $a1, $t1, $a1
/* 4FE70 8005F670 002C0500 */  sll        $a1, $a1, 16
/* 4FE74 8005F674 2138E500 */  addu       $a3, $a3, $a1
/* 4FE78 8005F678 C3420800 */  sra        $t0, $t0, 11
/* 4FE7C 8005F67C 12800000 */  mflo       $s0
/* 4FE80 8005F680 C35A0B00 */  sra        $t3, $t3, 11
/* 4FE84 8005F684 23400B01 */  subu       $t0, $t0, $t3
/* 4FE88 8005F688 18004202 */  mult       $s2, $v0
/* 4FE8C 8005F68C 801F033C */  lui        $v1, (0x1F800070 >> 16)
/* 4FE90 8005F690 7000638C */  lw         $v1, (0x1F800070 & 0xFFFF)($v1)
/* 4FE94 8005F694 23504B01 */  subu       $t2, $t2, $t3
/* 4FE98 8005F698 21186600 */  addu       $v1, $v1, $a2
/* 4FE9C 8005F69C 801F013C */  lui        $at, (0x1F800070 >> 16)
/* 4FEA0 8005F6A0 700023AC */  sw         $v1, (0x1F800070 & 0xFFFF)($at)
/* 4FEA4 8005F6A4 080063AE */  sw         $v1, 0x8($s3)
/* 4FEA8 8005F6A8 801F023C */  lui        $v0, (0x1F800080 >> 16)
/* 4FEAC 8005F6AC 8000428C */  lw         $v0, (0x1F800080 & 0xFFFF)($v0)
/* 4FEB0 8005F6B0 03831000 */  sra        $s0, $s0, 12
/* 4FEB4 8005F6B4 21104700 */  addu       $v0, $v0, $a3
/* 4FEB8 8005F6B8 801F013C */  lui        $at, (0x1F800070 >> 16)
/* 4FEBC 8005F6BC 700022AC */  sw         $v0, (0x1F800070 & 0xFFFF)($at)
/* 4FEC0 8005F6C0 100062AE */  sw         $v0, 0x10($s3)
/* 4FEC4 8005F6C4 801F023C */  lui        $v0, (0x1F800080 >> 16)
/* 4FEC8 8005F6C8 8000428C */  lw         $v0, (0x1F800080 & 0xFFFF)($v0)
/* 4FECC 8005F6CC 12900000 */  mflo       $s2
/* 4FED0 8005F6D0 03931200 */  sra        $s2, $s2, 12
/* 4FED4 8005F6D4 21801202 */  addu       $s0, $s0, $s2
/* 4FED8 8005F6D8 00841000 */  sll        $s0, $s0, 16
/* 4FEDC 8005F6DC 21401001 */  addu       $t0, $t0, $s0
/* 4FEE0 8005F6E0 21104800 */  addu       $v0, $v0, $t0
/* 4FEE4 8005F6E4 21483201 */  addu       $t1, $t1, $s2
/* 4FEE8 8005F6E8 004C0900 */  sll        $t1, $t1, 16
/* 4FEEC 8005F6EC 801F013C */  lui        $at, (0x1F800070 >> 16)
/* 4FEF0 8005F6F0 700022AC */  sw         $v0, (0x1F800070 & 0xFFFF)($at)
/* 4FEF4 8005F6F4 180062AE */  sw         $v0, 0x18($s3)
/* 4FEF8 8005F6F8 801F023C */  lui        $v0, (0x1F800080 >> 16)
/* 4FEFC 8005F6FC 8000428C */  lw         $v0, (0x1F800080 & 0xFFFF)($v0)
/* 4FF00 8005F700 21504901 */  addu       $t2, $t2, $t1
/* 4FF04 8005F704 21104A00 */  addu       $v0, $v0, $t2
/* 4FF08 8005F708 801F013C */  lui        $at, (0x1F800070 >> 16)
/* 4FF0C 8005F70C 700022AC */  sw         $v0, (0x1F800070 & 0xFFFF)($at)
/* 4FF10 8005F710 200062AE */  sw         $v0, 0x20($s3)
/* 4FF14 8005F714 3C00A38F */  lw         $v1, 0x3C($sp)
/* 4FF18 8005F718 00000000 */  nop
/* 4FF1C 8005F71C C0180300 */  sll        $v1, $v1, 3
/* 4FF20 8005F720 21207400 */  addu       $a0, $v1, $s4
/* 4FF24 8005F724 0000858C */  lw         $a1, 0x0($a0)
/* 4FF28 8005F728 00000000 */  nop
/* 4FF2C 8005F72C 0900A010 */  beqz       $a1, .L8005F754
/* 4FF30 8005F730 21306000 */   addu      $a2, $v1, $zero
/* 4FF34 8005F734 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
/* 4FF38 8005F738 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 4FF3C 8005F73C 0089023C */  lui        $v0, (0x89000000 >> 16)
/* 4FF40 8005F740 2610A200 */  xor        $v0, $a1, $v0
/* 4FF44 8005F744 24186302 */  and        $v1, $s3, $v1
/* 4FF48 8005F748 000062AE */  sw         $v0, 0x0($s3)
/* 4FF4C 8005F74C D67D0108 */  j          .L8005F758
/* 4FF50 8005F750 000083AC */   sw        $v1, 0x0($a0)
.L8005F754:
/* 4FF54 8005F754 040093AC */  sw         $s3, 0x4($a0)
.L8005F758:
/* 4FF58 8005F758 2110D400 */  addu       $v0, $a2, $s4
/* 4FF5C 8005F75C 000053AC */  sw         $s3, 0x0($v0)
.L8005F760:
/* 4FF60 8005F760 2400BF8F */  lw         $ra, 0x24($sp)
/* 4FF64 8005F764 2000B48F */  lw         $s4, 0x20($sp)
/* 4FF68 8005F768 1C00B38F */  lw         $s3, 0x1C($sp)
/* 4FF6C 8005F76C 1800B28F */  lw         $s2, 0x18($sp)
/* 4FF70 8005F770 1400B18F */  lw         $s1, 0x14($sp)
/* 4FF74 8005F774 1000B08F */  lw         $s0, 0x10($sp)
/* 4FF78 8005F778 0800E003 */  jr         $ra
/* 4FF7C 8005F77C 2800BD27 */   addiu     $sp, $sp, 0x28
.size DrawBilboardFT4, . - DrawBilboardFT4
