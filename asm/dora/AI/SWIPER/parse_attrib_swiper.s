.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_swiper
/* 26E7C 8003667C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 26E80 80036680 1000B0AF */  sw         $s0, 0x10($sp)
/* 26E84 80036684 21808000 */  addu       $s0, $a0, $zero
/* 26E88 80036688 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 26E8C 8003668C 1800B2AF */  sw         $s2, 0x18($sp)
/* 26E90 80036690 4E26010C */  jal        parse_attrib_generic
/* 26E94 80036694 1400B1AF */   sw        $s1, 0x14($sp)
/* 26E98 80036698 60000424 */  addiu      $a0, $zero, 0x60
/* 26E9C 8003669C 2B3F010C */  jal        new_malloc
/* 26EA0 800366A0 21904000 */   addu      $s2, $v0, $zero
/* 26EA4 800366A4 21200002 */  addu       $a0, $s0, $zero
/* 26EA8 800366A8 21884000 */  addu       $s1, $v0, $zero
/* 26EAC 800366AC BC42010C */  jal        pbag_init
/* 26EB0 800366B0 380051AE */   sw        $s1, 0x38($s2)
/* 26EB4 800366B4 1543010C */  jal        pbag_getptr
/* 26EB8 800366B8 00000000 */   nop
/* 26EBC 800366BC 21804000 */  addu       $s0, $v0, $zero
/* 26EC0 800366C0 03000224 */  addiu      $v0, $zero, 0x3
/* 26EC4 800366C4 340020AE */  sw         $zero, 0x34($s1)
/* 26EC8 800366C8 380020AE */  sw         $zero, 0x38($s1)
/* 26ECC 800366CC EAD90008 */  j          .L800367A8
/* 26ED0 800366D0 500022AE */   sw        $v0, 0x50($s1)
.L800366D4:
/* 26ED4 800366D4 2B104300 */  sltu       $v0, $v0, $v1
/* 26ED8 800366D8 30004010 */  beqz       $v0, .L8003679C
/* 26EDC 800366DC FFFF023C */   lui       $v0, (0xFFFF7F00 >> 16)
/* 26EE0 800366E0 007F4234 */  ori        $v0, $v0, (0xFFFF7F00 & 0xFFFF)
/* 26EE4 800366E4 21206200 */  addu       $a0, $v1, $v0
/* 26EE8 800366E8 0A00832C */  sltiu      $v1, $a0, 0xA
/* 26EEC 800366EC 2B006010 */  beqz       $v1, .L8003679C
/* 26EF0 800366F0 0180023C */   lui       $v0, %hi(jtbl_800127EC)
/* 26EF4 800366F4 EC274224 */  addiu      $v0, $v0, %lo(jtbl_800127EC)
/* 26EF8 800366F8 80180400 */  sll        $v1, $a0, 2
/* 26EFC 800366FC 21186200 */  addu       $v1, $v1, $v0
/* 26F00 80036700 0000648C */  lw         $a0, 0x0($v1)
/* 26F04 80036704 00000000 */  nop
/* 26F08 80036708 08008000 */  jr         $a0
/* 26F0C 8003670C 00000000 */   nop
jlabel .L80036710
/* 26F10 80036710 0800028E */  lw         $v0, 0x8($s0)
/* 26F14 80036714 00000000 */  nop
/* 26F18 80036718 0000448C */  lw         $a0, 0x0($v0)
/* 26F1C 8003671C FFFF0324 */  addiu      $v1, $zero, -0x1
/* 26F20 80036720 1E008310 */  beq        $a0, $v1, .L8003679C
/* 26F24 80036724 00000000 */   nop
/* 26F28 80036728 5413010C */  jal        GetWorldPathData
/* 26F2C 8003672C 00000000 */   nop
/* 26F30 80036730 E7D90008 */  j          .L8003679C
/* 26F34 80036734 340022AE */   sw        $v0, 0x34($s1)
jlabel .L80036738
/* 26F38 80036738 0800028E */  lw         $v0, 0x8($s0)
/* 26F3C 8003673C 00000000 */  nop
/* 26F40 80036740 0000448C */  lw         $a0, 0x0($v0)
/* 26F44 80036744 FFFF0324 */  addiu      $v1, $zero, -0x1
/* 26F48 80036748 14008310 */  beq        $a0, $v1, .L8003679C
/* 26F4C 8003674C 00000000 */   nop
/* 26F50 80036750 5413010C */  jal        GetWorldPathData
/* 26F54 80036754 00000000 */   nop
/* 26F58 80036758 E7D90008 */  j          .L8003679C
/* 26F5C 8003675C 380022AE */   sw        $v0, 0x38($s1)
jlabel .L80036760
/* 26F60 80036760 0800028E */  lw         $v0, 0x8($s0)
/* 26F64 80036764 00000000 */  nop
/* 26F68 80036768 0000438C */  lw         $v1, 0x0($v0)
/* 26F6C 8003676C E7D90008 */  j          .L8003679C
/* 26F70 80036770 400023AE */   sw        $v1, 0x40($s1)
jlabel .L80036774
/* 26F74 80036774 0800028E */  lw         $v0, 0x8($s0)
/* 26F78 80036778 00000000 */  nop
/* 26F7C 8003677C 0000438C */  lw         $v1, 0x0($v0)
/* 26F80 80036780 E7D90008 */  j          .L8003679C
/* 26F84 80036784 540023AE */   sw        $v1, 0x54($s1)
jlabel .L80036788
/* 26F88 80036788 0800028E */  lw         $v0, 0x8($s0)
/* 26F8C 8003678C 00000000 */  nop
/* 26F90 80036790 0000438C */  lw         $v1, 0x0($v0)
/* 26F94 80036794 00000000 */  nop
/* 26F98 80036798 580023AE */  sw         $v1, 0x58($s1)
jlabel .L8003679C
/* 26F9C 8003679C E742010C */  jal        pbag_advanceONE
/* 26FA0 800367A0 00000000 */   nop
/* 26FA4 800367A4 21804000 */  addu       $s0, $v0, $zero
.L800367A8:
/* 26FA8 800367A8 0000048E */  lw         $a0, 0x0($s0)
/* 26FAC 800367AC B142010C */  jal        pbag_getenum
/* 26FB0 800367B0 00000000 */   nop
/* 26FB4 800367B4 21184000 */  addu       $v1, $v0, $zero
/* 26FB8 800367B8 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 26FBC 800367BC C5FF6214 */  bne        $v1, $v0, .L800366D4
/* 26FC0 800367C0 FF800234 */   ori       $v0, $zero, 0x80FF
/* 26FC4 800367C4 21104002 */  addu       $v0, $s2, $zero
/* 26FC8 800367C8 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 26FCC 800367CC 1800B28F */  lw         $s2, 0x18($sp)
/* 26FD0 800367D0 1400B18F */  lw         $s1, 0x14($sp)
/* 26FD4 800367D4 1000B08F */  lw         $s0, 0x10($sp)
/* 26FD8 800367D8 0800E003 */  jr         $ra
/* 26FDC 800367DC 2000BD27 */   addiu     $sp, $sp, 0x20
.size parse_attrib_swiper, . - parse_attrib_swiper
