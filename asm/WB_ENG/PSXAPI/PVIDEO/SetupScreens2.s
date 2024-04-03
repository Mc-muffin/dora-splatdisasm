.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetupScreens2
/* 4A688 80059E88 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 4A68C 80059E8C 1800B0AF */  sw         $s0, 0x18($sp)
/* 4A690 80059E90 21808000 */  addu       $s0, $a0, $zero
/* 4A694 80059E94 21200000 */  addu       $a0, $zero, $zero
/* 4A698 80059E98 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 4A69C 80059E9C 21A8C000 */  addu       $s5, $a2, $zero
/* 4A6A0 80059EA0 3400B7AF */  sw         $s7, 0x34($sp)
/* 4A6A4 80059EA4 FFFFF730 */  andi       $s7, $a3, 0xFFFF
/* 4A6A8 80059EA8 3800BFAF */  sw         $ra, 0x38($sp)
/* 4A6AC 80059EAC 3000B6AF */  sw         $s6, 0x30($sp)
/* 4A6B0 80059EB0 2800B4AF */  sw         $s4, 0x28($sp)
/* 4A6B4 80059EB4 2400B3AF */  sw         $s3, 0x24($sp)
/* 4A6B8 80059EB8 2000B2AF */  sw         $s2, 0x20($sp)
/* 4A6BC 80059EBC EBD6010C */  jal        VSync
/* 4A6C0 80059EC0 1C00B1AF */   sw        $s1, 0x1C($sp)
/* 4A6C4 80059EC4 36DB010C */  jal        DrawSync
/* 4A6C8 80059EC8 21200000 */   addu      $a0, $zero, $zero
/* 4A6CC 80059ECC 0B80123C */  lui        $s2, %hi(gDoubleBuffer)
/* 4A6D0 80059ED0 78B95226 */  addiu      $s2, $s2, %lo(gDoubleBuffer)
/* 4A6D4 80059ED4 E410948F */  lw         $s4, %gp_rel(ot_ndx)($gp)
/* 4A6D8 80059ED8 00000586 */  lh         $a1, 0x0($s0)
/* 4A6DC 80059EDC 02000686 */  lh         $a2, 0x2($s0)
/* 4A6E0 80059EE0 04000786 */  lh         $a3, 0x4($s0)
/* 4A6E4 80059EE4 06000286 */  lh         $v0, 0x6($s0)
/* 4A6E8 80059EE8 0100913A */  xori       $s1, $s4, 0x1
/* 4A6EC 80059EEC C0891100 */  sll        $s1, $s1, 7
/* 4A6F0 80059EF0 21983202 */  addu       $s3, $s1, $s2
/* 4A6F4 80059EF4 21206002 */  addu       $a0, $s3, $zero
/* 4A6F8 80059EF8 53E6010C */  jal        SetDefDrawEnv
/* 4A6FC 80059EFC 1000A2AF */   sw        $v0, 0x10($sp)
/* 4A700 80059F00 5C005626 */  addiu      $s6, $s2, 0x5C
/* 4A704 80059F04 00000586 */  lh         $a1, 0x0($s0)
/* 4A708 80059F08 02000686 */  lh         $a2, 0x2($s0)
/* 4A70C 80059F0C 04000786 */  lh         $a3, 0x4($s0)
/* 4A710 80059F10 06000286 */  lh         $v0, 0x6($s0)
/* 4A714 80059F14 21203602 */  addu       $a0, $s1, $s6
/* 4A718 80059F18 83E6010C */  jal        SetDefDispEnv
/* 4A71C 80059F1C 1000A2AF */   sw        $v0, 0x10($sp)
/* 4A720 80059F20 180077A2 */  sb         $s7, 0x18($s3)
/* 4A724 80059F24 0000A292 */  lbu        $v0, 0x0($s5)
/* 4A728 80059F28 00000000 */  nop
/* 4A72C 80059F2C 190062A2 */  sb         $v0, 0x19($s3)
/* 4A730 80059F30 0100A392 */  lbu        $v1, 0x1($s5)
/* 4A734 80059F34 00000000 */  nop
/* 4A738 80059F38 1A0063A2 */  sb         $v1, 0x1A($s3)
/* 4A73C 80059F3C 0200A292 */  lbu        $v0, 0x2($s5)
/* 4A740 80059F40 21200000 */  addu       $a0, $zero, $zero
/* 4A744 80059F44 EBD6010C */  jal        VSync
/* 4A748 80059F48 1B0062A2 */   sb        $v0, 0x1B($s3)
/* 4A74C 80059F4C 36DB010C */  jal        DrawSync
/* 4A750 80059F50 21200000 */   addu      $a0, $zero, $zero
/* 4A754 80059F54 C0A11400 */  sll        $s4, $s4, 7
/* 4A758 80059F58 21909202 */  addu       $s2, $s4, $s2
/* 4A75C 80059F5C 00000586 */  lh         $a1, 0x0($s0)
/* 4A760 80059F60 02000686 */  lh         $a2, 0x2($s0)
/* 4A764 80059F64 04000786 */  lh         $a3, 0x4($s0)
/* 4A768 80059F68 06000286 */  lh         $v0, 0x6($s0)
/* 4A76C 80059F6C 21204002 */  addu       $a0, $s2, $zero
/* 4A770 80059F70 53E6010C */  jal        SetDefDrawEnv
/* 4A774 80059F74 1000A2AF */   sw        $v0, 0x10($sp)
/* 4A778 80059F78 00000586 */  lh         $a1, 0x0($s0)
/* 4A77C 80059F7C 02000686 */  lh         $a2, 0x2($s0)
/* 4A780 80059F80 04000786 */  lh         $a3, 0x4($s0)
/* 4A784 80059F84 06000286 */  lh         $v0, 0x6($s0)
/* 4A788 80059F88 21209602 */  addu       $a0, $s4, $s6
/* 4A78C 80059F8C 83E6010C */  jal        SetDefDispEnv
/* 4A790 80059F90 1000A2AF */   sw        $v0, 0x10($sp)
/* 4A794 80059F94 180057A2 */  sb         $s7, 0x18($s2)
/* 4A798 80059F98 0000A292 */  lbu        $v0, 0x0($s5)
/* 4A79C 80059F9C 3800BF8F */  lw         $ra, 0x38($sp)
/* 4A7A0 80059FA0 3400B78F */  lw         $s7, 0x34($sp)
/* 4A7A4 80059FA4 3000B68F */  lw         $s6, 0x30($sp)
/* 4A7A8 80059FA8 2800B48F */  lw         $s4, 0x28($sp)
/* 4A7AC 80059FAC 2400B38F */  lw         $s3, 0x24($sp)
/* 4A7B0 80059FB0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 4A7B4 80059FB4 1800B08F */  lw         $s0, 0x18($sp)
/* 4A7B8 80059FB8 190042A2 */  sb         $v0, 0x19($s2)
/* 4A7BC 80059FBC 0100A392 */  lbu        $v1, 0x1($s5)
/* 4A7C0 80059FC0 00000000 */  nop
/* 4A7C4 80059FC4 1A0043A2 */  sb         $v1, 0x1A($s2)
/* 4A7C8 80059FC8 0200A292 */  lbu        $v0, 0x2($s5)
/* 4A7CC 80059FCC 2C00B58F */  lw         $s5, 0x2C($sp)
/* 4A7D0 80059FD0 1B0042A2 */  sb         $v0, 0x1B($s2)
/* 4A7D4 80059FD4 2000B28F */  lw         $s2, 0x20($sp)
/* 4A7D8 80059FD8 0800E003 */  jr         $ra
/* 4A7DC 80059FDC 4000BD27 */   addiu     $sp, $sp, 0x40
.size SetupScreens2, . - SetupScreens2
