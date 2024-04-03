.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel CalcCellVerticesRotationCrap
/* 504B0 8005FCB0 801F0A3C */  lui        $t2, (0x1F80005C >> 16)
/* 504B4 8005FCB4 5C004A35 */  ori        $t2, $t2, (0x1F80005C & 0xFFFF)
/* 504B8 8005FCB8 801F083C */  lui        $t0, (0x1F80005C >> 16)
/* 504BC 8005FCBC 09800B3C */  lui        $t3, %hi(DistBuf)
/* 504C0 8005FCC0 90576B8D */  lw         $t3, %lo(DistBuf)($t3)
/* 504C4 8005FCC4 1000A98F */  lw         $t1, 0x10($sp)
/* 504C8 8005FCC8 3000E38C */  lw         $v1, 0x30($a3)
/* 504CC 8005FCCC 5C000835 */  ori        $t0, $t0, (0x1F80005C & 0xFFFF)
/* 504D0 8005FCD0 000004A5 */  sh         $a0, 0x0($t0)
/* 504D4 8005FCD4 020005A5 */  sh         $a1, 0x2($t0)
/* 504D8 8005FCD8 040006A5 */  sh         $a2, 0x4($t0)
/* 504DC 8005FCDC 000000C9 */  lwc2       $0, 0x0($t0)
/* 504E0 8005FCE0 040001C9 */  lwc2       $1, 0x4($t0)
/* 504E4 8005FCE4 00000000 */  nop
/* 504E8 8005FCE8 00000000 */  nop
/* 504EC 8005FCEC 0100184A */  RTPS
/* 504F0 8005FCF0 00004EE9 */  swc2       $14, 0x0($t2)
/* 504F4 8005FCF4 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 504F8 8005FCF8 00000000 */  nop
/* 504FC 8005FCFC C3600C00 */  sra        $t4, $t4, 3
/* 50500 8005FD00 00006CAD */  sw         $t4, 0x0($t3)
/* 50504 8005FD04 0000628D */  lw         $v0, 0x0($t3)
/* 50508 8005FD08 00000000 */  nop
/* 5050C 8005FD0C 28004228 */  slti       $v0, $v0, 0x28
/* 50510 8005FD10 03004010 */  beqz       $v0, .L8005FD20
/* 50514 8005FD14 00400224 */   addiu     $v0, $zero, 0x4000
/* 50518 8005FD18 0800E003 */  jr         $ra
/* 5051C 8005FD1C 21100000 */   addu      $v0, $zero, $zero
.L8005FD20:
/* 50520 8005FD20 0000E78C */  lw         $a3, 0x0($a3)
/* 50524 8005FD24 2B002211 */  beq        $t1, $v0, .L8005FDD4
/* 50528 8005FD28 01402229 */   slti      $v0, $t1, 0x4001
/* 5052C 8005FD2C 05004010 */  beqz       $v0, .L8005FD44
/* 50530 8005FD30 00000000 */   nop
/* 50534 8005FD34 08002011 */  beqz       $t1, .L8005FD58
/* 50538 8005FD38 00000000 */   nop
/* 5053C 8005FD3C B57F0108 */  j          .L8005FED4
/* 50540 8005FD40 00000000 */   nop
.L8005FD44:
/* 50544 8005FD44 00800234 */  ori        $v0, $zero, 0x8000
/* 50548 8005FD48 42002211 */  beq        $t1, $v0, .L8005FE54
/* 5054C 8005FD4C 00000000 */   nop
/* 50550 8005FD50 B57F0108 */  j          .L8005FED4
/* 50554 8005FD54 00000000 */   nop
.L8005FD58:
/* 50558 8005FD58 7C006018 */  blez       $v1, .L8005FF4C
/* 5055C 8005FD5C 21486000 */   addu      $t1, $v1, $zero
.L8005FD60:
/* 50560 8005FD60 0000E294 */  lhu        $v0, 0x0($a3)
/* 50564 8005FD64 00000000 */  nop
/* 50568 8005FD68 21104400 */  addu       $v0, $v0, $a0
/* 5056C 8005FD6C 000002A5 */  sh         $v0, 0x0($t0)
/* 50570 8005FD70 0200E394 */  lhu        $v1, 0x2($a3)
/* 50574 8005FD74 00000000 */  nop
/* 50578 8005FD78 21186500 */  addu       $v1, $v1, $a1
/* 5057C 8005FD7C 020003A5 */  sh         $v1, 0x2($t0)
/* 50580 8005FD80 0400E294 */  lhu        $v0, 0x4($a3)
/* 50584 8005FD84 0800E724 */  addiu      $a3, $a3, 0x8
/* 50588 8005FD88 21104600 */  addu       $v0, $v0, $a2
/* 5058C 8005FD8C 040002A5 */  sh         $v0, 0x4($t0)
/* 50590 8005FD90 000000C9 */  lwc2       $0, 0x0($t0)
/* 50594 8005FD94 040001C9 */  lwc2       $1, 0x4($t0)
/* 50598 8005FD98 00000000 */  nop
/* 5059C 8005FD9C 00000000 */  nop
/* 505A0 8005FDA0 0100184A */  RTPS
/* 505A4 8005FDA4 00004EE9 */  swc2       $14, 0x0($t2)
/* 505A8 8005FDA8 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 505AC 8005FDAC 00000000 */  nop
/* 505B0 8005FDB0 C3600C00 */  sra        $t4, $t4, 3
/* 505B4 8005FDB4 00006CAD */  sw         $t4, 0x0($t3)
/* 505B8 8005FDB8 FFFF2925 */  addiu      $t1, $t1, -0x1
/* 505BC 8005FDBC 04006B25 */  addiu      $t3, $t3, 0x4
/* 505C0 8005FDC0 04004A25 */  addiu      $t2, $t2, 0x4
/* 505C4 8005FDC4 E6FF2015 */  bnez       $t1, .L8005FD60
/* 505C8 8005FDC8 08000825 */   addiu     $t0, $t0, 0x8
/* 505CC 8005FDCC 0800E003 */  jr         $ra
/* 505D0 8005FDD0 01000224 */   addiu     $v0, $zero, 0x1
.L8005FDD4:
/* 505D4 8005FDD4 5D006018 */  blez       $v1, .L8005FF4C
/* 505D8 8005FDD8 21486000 */   addu      $t1, $v1, $zero
.L8005FDDC:
/* 505DC 8005FDDC 0000E294 */  lhu        $v0, 0x0($a3)
/* 505E0 8005FDE0 00000000 */  nop
/* 505E4 8005FDE4 21104400 */  addu       $v0, $v0, $a0
/* 505E8 8005FDE8 000002A5 */  sh         $v0, 0x0($t0)
/* 505EC 8005FDEC 0200E394 */  lhu        $v1, 0x2($a3)
/* 505F0 8005FDF0 00000000 */  nop
/* 505F4 8005FDF4 21186500 */  addu       $v1, $v1, $a1
/* 505F8 8005FDF8 020003A5 */  sh         $v1, 0x2($t0)
/* 505FC 8005FDFC 0400E294 */  lhu        $v0, 0x4($a3)
/* 50600 8005FE00 00000000 */  nop
/* 50604 8005FE04 2310C200 */  subu       $v0, $a2, $v0
/* 50608 8005FE08 040002A5 */  sh         $v0, 0x4($t0)
/* 5060C 8005FE0C 000000C9 */  lwc2       $0, 0x0($t0)
/* 50610 8005FE10 040001C9 */  lwc2       $1, 0x4($t0)
/* 50614 8005FE14 00000000 */  nop
/* 50618 8005FE18 00000000 */  nop
/* 5061C 8005FE1C 0100184A */  RTPS
/* 50620 8005FE20 00004EE9 */  swc2       $14, 0x0($t2)
/* 50624 8005FE24 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 50628 8005FE28 00000000 */  nop
/* 5062C 8005FE2C C3600C00 */  sra        $t4, $t4, 3
/* 50630 8005FE30 00006CAD */  sw         $t4, 0x0($t3)
/* 50634 8005FE34 0800E724 */  addiu      $a3, $a3, 0x8
/* 50638 8005FE38 FFFF2925 */  addiu      $t1, $t1, -0x1
/* 5063C 8005FE3C 04006B25 */  addiu      $t3, $t3, 0x4
/* 50640 8005FE40 04004A25 */  addiu      $t2, $t2, 0x4
/* 50644 8005FE44 E5FF2015 */  bnez       $t1, .L8005FDDC
/* 50648 8005FE48 08000825 */   addiu     $t0, $t0, 0x8
/* 5064C 8005FE4C 0800E003 */  jr         $ra
/* 50650 8005FE50 01000224 */   addiu     $v0, $zero, 0x1
.L8005FE54:
/* 50654 8005FE54 3D006018 */  blez       $v1, .L8005FF4C
/* 50658 8005FE58 21486000 */   addu      $t1, $v1, $zero
.L8005FE5C:
/* 5065C 8005FE5C 0000E294 */  lhu        $v0, 0x0($a3)
/* 50660 8005FE60 00000000 */  nop
/* 50664 8005FE64 23108200 */  subu       $v0, $a0, $v0
/* 50668 8005FE68 000002A5 */  sh         $v0, 0x0($t0)
/* 5066C 8005FE6C 0200E394 */  lhu        $v1, 0x2($a3)
/* 50670 8005FE70 00000000 */  nop
/* 50674 8005FE74 21186500 */  addu       $v1, $v1, $a1
/* 50678 8005FE78 020003A5 */  sh         $v1, 0x2($t0)
/* 5067C 8005FE7C 0400E294 */  lhu        $v0, 0x4($a3)
/* 50680 8005FE80 00000000 */  nop
/* 50684 8005FE84 21104600 */  addu       $v0, $v0, $a2
/* 50688 8005FE88 040002A5 */  sh         $v0, 0x4($t0)
/* 5068C 8005FE8C 000000C9 */  lwc2       $0, 0x0($t0)
/* 50690 8005FE90 040001C9 */  lwc2       $1, 0x4($t0)
/* 50694 8005FE94 00000000 */  nop
/* 50698 8005FE98 00000000 */  nop
/* 5069C 8005FE9C 0100184A */  RTPS
/* 506A0 8005FEA0 00004EE9 */  swc2       $14, 0x0($t2)
/* 506A4 8005FEA4 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 506A8 8005FEA8 00000000 */  nop
/* 506AC 8005FEAC C3600C00 */  sra        $t4, $t4, 3
/* 506B0 8005FEB0 00006CAD */  sw         $t4, 0x0($t3)
/* 506B4 8005FEB4 0800E724 */  addiu      $a3, $a3, 0x8
/* 506B8 8005FEB8 FFFF2925 */  addiu      $t1, $t1, -0x1
/* 506BC 8005FEBC 04006B25 */  addiu      $t3, $t3, 0x4
/* 506C0 8005FEC0 04004A25 */  addiu      $t2, $t2, 0x4
/* 506C4 8005FEC4 E5FF2015 */  bnez       $t1, .L8005FE5C
/* 506C8 8005FEC8 08000825 */   addiu     $t0, $t0, 0x8
/* 506CC 8005FECC 0800E003 */  jr         $ra
/* 506D0 8005FED0 01000224 */   addiu     $v0, $zero, 0x1
.L8005FED4:
/* 506D4 8005FED4 1D006018 */  blez       $v1, .L8005FF4C
/* 506D8 8005FED8 21486000 */   addu      $t1, $v1, $zero
.L8005FEDC:
/* 506DC 8005FEDC 0000E294 */  lhu        $v0, 0x0($a3)
/* 506E0 8005FEE0 00000000 */  nop
/* 506E4 8005FEE4 23108200 */  subu       $v0, $a0, $v0
/* 506E8 8005FEE8 000002A5 */  sh         $v0, 0x0($t0)
/* 506EC 8005FEEC 0200E394 */  lhu        $v1, 0x2($a3)
/* 506F0 8005FEF0 00000000 */  nop
/* 506F4 8005FEF4 21186500 */  addu       $v1, $v1, $a1
/* 506F8 8005FEF8 020003A5 */  sh         $v1, 0x2($t0)
/* 506FC 8005FEFC 0400E294 */  lhu        $v0, 0x4($a3)
/* 50700 8005FF00 00000000 */  nop
/* 50704 8005FF04 2310C200 */  subu       $v0, $a2, $v0
/* 50708 8005FF08 040002A5 */  sh         $v0, 0x4($t0)
/* 5070C 8005FF0C 000000C9 */  lwc2       $0, 0x0($t0)
/* 50710 8005FF10 040001C9 */  lwc2       $1, 0x4($t0)
/* 50714 8005FF14 00000000 */  nop
/* 50718 8005FF18 00000000 */  nop
/* 5071C 8005FF1C 0100184A */  RTPS
/* 50720 8005FF20 00004EE9 */  swc2       $14, 0x0($t2)
/* 50724 8005FF24 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
/* 50728 8005FF28 00000000 */  nop
/* 5072C 8005FF2C C3600C00 */  sra        $t4, $t4, 3
/* 50730 8005FF30 00006CAD */  sw         $t4, 0x0($t3)
/* 50734 8005FF34 0800E724 */  addiu      $a3, $a3, 0x8
/* 50738 8005FF38 FFFF2925 */  addiu      $t1, $t1, -0x1
/* 5073C 8005FF3C 04006B25 */  addiu      $t3, $t3, 0x4
/* 50740 8005FF40 04004A25 */  addiu      $t2, $t2, 0x4
/* 50744 8005FF44 E5FF2015 */  bnez       $t1, .L8005FEDC
/* 50748 8005FF48 08000825 */   addiu     $t0, $t0, 0x8
.L8005FF4C:
/* 5074C 8005FF4C 01000224 */  addiu      $v0, $zero, 0x1
/* 50750 8005FF50 0800E003 */  jr         $ra
/* 50754 8005FF54 00000000 */   nop
.size CalcCellVerticesRotationCrap, . - CalcCellVerticesRotationCrap
