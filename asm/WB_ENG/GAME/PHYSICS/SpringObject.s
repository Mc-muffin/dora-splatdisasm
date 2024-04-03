.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SpringObject
/* 2EE20 8003E620 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2EE24 8003E624 00400224 */  addiu      $v0, $zero, 0x4000
/* 2EE28 8003E628 1100E210 */  beq        $a3, $v0, .L8003E670
/* 2EE2C 8003E62C 1000BFAF */   sw        $ra, 0x10($sp)
/* 2EE30 8003E630 0140E228 */  slti       $v0, $a3, 0x4001
/* 2EE34 8003E634 05004010 */  beqz       $v0, .L8003E64C
/* 2EE38 8003E638 00200224 */   addiu     $v0, $zero, 0x2000
/* 2EE3C 8003E63C 0A00E210 */  beq        $a3, $v0, .L8003E668
/* 2EE40 8003E640 00120500 */   sll       $v0, $a1, 8
/* 2EE44 8003E644 A9F90008 */  j          .L8003E6A4
/* 2EE48 8003E648 23100200 */   negu      $v0, $v0
.L8003E64C:
/* 2EE4C 8003E64C 00800234 */  ori        $v0, $zero, 0x8000
/* 2EE50 8003E650 0C00E210 */  beq        $a3, $v0, .L8003E684
/* 2EE54 8003E654 0100023C */   lui       $v0, (0x10000 >> 16)
/* 2EE58 8003E658 0C00E210 */  beq        $a3, $v0, .L8003E68C
/* 2EE5C 8003E65C 00120500 */   sll       $v0, $a1, 8
/* 2EE60 8003E660 A9F90008 */  j          .L8003E6A4
/* 2EE64 8003E664 23100200 */   negu      $v0, $v0
.L8003E668:
/* 2EE68 8003E668 9EF90008 */  j          .L8003E678
/* 2EE6C 8003E66C 80110600 */   sll       $v0, $a2, 6
.L8003E670:
/* 2EE70 8003E670 23100600 */  negu       $v0, $a2
/* 2EE74 8003E674 80110200 */  sll        $v0, $v0, 6
.L8003E678:
/* 2EE78 8003E678 380082AC */  sw         $v0, 0x38($a0)
/* 2EE7C 8003E67C A7F90008 */  j          .L8003E69C
/* 2EE80 8003E680 300080AC */   sw        $zero, 0x30($a0)
.L8003E684:
/* 2EE84 8003E684 A5F90008 */  j          .L8003E694
/* 2EE88 8003E688 80110600 */   sll       $v0, $a2, 6
.L8003E68C:
/* 2EE8C 8003E68C 80110600 */  sll        $v0, $a2, 6
/* 2EE90 8003E690 23100200 */  negu       $v0, $v0
.L8003E694:
/* 2EE94 8003E694 300082AC */  sw         $v0, 0x30($a0)
/* 2EE98 8003E698 380080AC */  sw         $zero, 0x38($a0)
.L8003E69C:
/* 2EE9C 8003E69C 00120500 */  sll        $v0, $a1, 8
/* 2EEA0 8003E6A0 23100200 */  negu       $v0, $v0
.L8003E6A4:
/* 2EEA4 8003E6A4 340082AC */  sw         $v0, 0x34($a0)
/* 2EEA8 8003E6A8 15000424 */  addiu      $a0, $zero, 0x15
/* 2EEAC 8003E6AC 21280000 */  addu       $a1, $zero, $zero
/* 2EEB0 8003E6B0 6F4A010C */  jal        pxm_sendevent
/* 2EEB4 8003E6B4 21300000 */   addu      $a2, $zero, $zero
/* 2EEB8 8003E6B8 1000BF8F */  lw         $ra, 0x10($sp)
/* 2EEBC 8003E6BC 00000000 */  nop
/* 2EEC0 8003E6C0 0800E003 */  jr         $ra
/* 2EEC4 8003E6C4 1800BD27 */   addiu     $sp, $sp, 0x18
.size SpringObject, . - SpringObject
