.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckETTeeter
/* 7E48 80017648 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 7E4C 8001764C 1800B0AF */  sw         $s0, 0x18($sp)
/* 7E50 80017650 6C009024 */  addiu      $s0, $a0, 0x6C
/* 7E54 80017654 21200002 */  addu       $a0, $s0, $zero
/* 7E58 80017658 3800BFAF */  sw         $ra, 0x38($sp)
/* 7E5C 8001765C 3400B7AF */  sw         $s7, 0x34($sp)
/* 7E60 80017660 3000B6AF */  sw         $s6, 0x30($sp)
/* 7E64 80017664 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 7E68 80017668 2800B4AF */  sw         $s4, 0x28($sp)
/* 7E6C 8001766C 2400B3AF */  sw         $s3, 0x24($sp)
/* 7E70 80017670 2000B2AF */  sw         $s2, 0x20($sp)
/* 7E74 80017674 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 7E78 80017678 8400038E */  lw         $v1, 0x84($s0)
/* 7E7C 8001767C 0400138E */  lw         $s3, 0x4($s0)
/* 7E80 80017680 0800068E */  lw         $a2, 0x8($s0)
/* 7E84 80017684 0C00178E */  lw         $s7, 0xC($s0)
/* 7E88 80017688 04001524 */  addiu      $s5, $zero, 0x4
/* 7E8C 8001768C 1000B5AF */  sw         $s5, 0x10($sp)
/* 7E90 80017690 FFFF6526 */  addiu      $a1, $s3, -0x1
/* 7E94 80017694 C2170300 */  srl        $v0, $v1, 31
/* 7E98 80017698 21186200 */  addu       $v1, $v1, $v0
/* 7E9C 8001769C 43900300 */  sra        $s2, $v1, 1
/* 7EA0 800176A0 21B0B200 */  addu       $s6, $a1, $s2
/* 7EA4 800176A4 2128C002 */  addu       $a1, $s6, $zero
/* 7EA8 800176A8 7F00D124 */  addiu      $s1, $a2, 0x7F
/* 7EAC 800176AC 21302002 */  addu       $a2, $s1, $zero
/* 7EB0 800176B0 FFFFE226 */  addiu      $v0, $s7, -0x1
/* 7EB4 800176B4 21A05200 */  addu       $s4, $v0, $s2
/* 7EB8 800176B8 6B5C000C */  jal        CheckTeeter
/* 7EBC 800176BC 21388002 */   addu      $a3, $s4, $zero
/* 7EC0 800176C0 37004014 */  bnez       $v0, .L800177A0
/* 7EC4 800176C4 21200002 */   addu      $a0, $s0, $zero
/* 7EC8 800176C8 1000B5AF */  sw         $s5, 0x10($sp)
/* 7ECC 800176CC 01006226 */  addiu      $v0, $s3, 0x1
/* 7ED0 800176D0 23985200 */  subu       $s3, $v0, $s2
/* 7ED4 800176D4 21286002 */  addu       $a1, $s3, $zero
/* 7ED8 800176D8 21302002 */  addu       $a2, $s1, $zero
/* 7EDC 800176DC 6B5C000C */  jal        CheckTeeter
/* 7EE0 800176E0 21388002 */   addu      $a3, $s4, $zero
/* 7EE4 800176E4 2E004014 */  bnez       $v0, .L800177A0
/* 7EE8 800176E8 01001524 */   addiu     $s5, $zero, 0x1
/* 7EEC 800176EC 1000B5AF */  sw         $s5, 0x10($sp)
/* 7EF0 800176F0 21200002 */  addu       $a0, $s0, $zero
/* 7EF4 800176F4 2128C002 */  addu       $a1, $s6, $zero
/* 7EF8 800176F8 21302002 */  addu       $a2, $s1, $zero
/* 7EFC 800176FC 0100E226 */  addiu      $v0, $s7, 0x1
/* 7F00 80017700 23905200 */  subu       $s2, $v0, $s2
/* 7F04 80017704 6B5C000C */  jal        CheckTeeter
/* 7F08 80017708 21384002 */   addu      $a3, $s2, $zero
/* 7F0C 8001770C 24004014 */  bnez       $v0, .L800177A0
/* 7F10 80017710 21200002 */   addu      $a0, $s0, $zero
/* 7F14 80017714 1000B5AF */  sw         $s5, 0x10($sp)
/* 7F18 80017718 21286002 */  addu       $a1, $s3, $zero
/* 7F1C 8001771C 21302002 */  addu       $a2, $s1, $zero
/* 7F20 80017720 6B5C000C */  jal        CheckTeeter
/* 7F24 80017724 21384002 */   addu      $a3, $s2, $zero
/* 7F28 80017728 1D004014 */  bnez       $v0, .L800177A0
/* 7F2C 8001772C 02001524 */   addiu     $s5, $zero, 0x2
/* 7F30 80017730 1000B5AF */  sw         $s5, 0x10($sp)
/* 7F34 80017734 21200002 */  addu       $a0, $s0, $zero
/* 7F38 80017738 21286002 */  addu       $a1, $s3, $zero
/* 7F3C 8001773C 21302002 */  addu       $a2, $s1, $zero
/* 7F40 80017740 6B5C000C */  jal        CheckTeeter
/* 7F44 80017744 21384002 */   addu      $a3, $s2, $zero
/* 7F48 80017748 15004014 */  bnez       $v0, .L800177A0
/* 7F4C 8001774C 21200002 */   addu      $a0, $s0, $zero
/* 7F50 80017750 1000B5AF */  sw         $s5, 0x10($sp)
/* 7F54 80017754 21286002 */  addu       $a1, $s3, $zero
/* 7F58 80017758 21302002 */  addu       $a2, $s1, $zero
/* 7F5C 8001775C 6B5C000C */  jal        CheckTeeter
/* 7F60 80017760 21388002 */   addu      $a3, $s4, $zero
/* 7F64 80017764 0E004014 */  bnez       $v0, .L800177A0
/* 7F68 80017768 08001324 */   addiu     $s3, $zero, 0x8
/* 7F6C 8001776C 1000B3AF */  sw         $s3, 0x10($sp)
/* 7F70 80017770 21200002 */  addu       $a0, $s0, $zero
/* 7F74 80017774 2128C002 */  addu       $a1, $s6, $zero
/* 7F78 80017778 21302002 */  addu       $a2, $s1, $zero
/* 7F7C 8001777C 6B5C000C */  jal        CheckTeeter
/* 7F80 80017780 21384002 */   addu      $a3, $s2, $zero
/* 7F84 80017784 06004014 */  bnez       $v0, .L800177A0
/* 7F88 80017788 21200002 */   addu      $a0, $s0, $zero
/* 7F8C 8001778C 1000B3AF */  sw         $s3, 0x10($sp)
/* 7F90 80017790 2128C002 */  addu       $a1, $s6, $zero
/* 7F94 80017794 21302002 */  addu       $a2, $s1, $zero
/* 7F98 80017798 6B5C000C */  jal        CheckTeeter
/* 7F9C 8001779C 21388002 */   addu      $a3, $s4, $zero
.L800177A0:
/* 7FA0 800177A0 3800BF8F */  lw         $ra, 0x38($sp)
/* 7FA4 800177A4 3400B78F */  lw         $s7, 0x34($sp)
/* 7FA8 800177A8 3000B68F */  lw         $s6, 0x30($sp)
/* 7FAC 800177AC 2C00B58F */  lw         $s5, 0x2C($sp)
/* 7FB0 800177B0 2800B48F */  lw         $s4, 0x28($sp)
/* 7FB4 800177B4 2400B38F */  lw         $s3, 0x24($sp)
/* 7FB8 800177B8 2000B28F */  lw         $s2, 0x20($sp)
/* 7FBC 800177BC 1C00B18F */  lw         $s1, 0x1C($sp)
/* 7FC0 800177C0 1800B08F */  lw         $s0, 0x18($sp)
/* 7FC4 800177C4 0800E003 */  jr         $ra
/* 7FC8 800177C8 4000BD27 */   addiu     $sp, $sp, 0x40
.size CheckETTeeter, . - CheckETTeeter
