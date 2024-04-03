.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ChangeClusterColour
/* 3C8C4 8004C0C4 21400000 */  addu       $t0, $zero, $zero
/* 3C8C8 8004C0C8 FFFFA530 */  andi       $a1, $a1, 0xFFFF
/* 3C8CC 8004C0CC 40180500 */  sll        $v1, $a1, 1
/* 3C8D0 8004C0D0 21186500 */  addu       $v1, $v1, $a1
/* 3C8D4 8004C0D4 80180300 */  sll        $v1, $v1, 2
/* 3C8D8 8004C0D8 FFFFC630 */  andi       $a2, $a2, 0xFFFF
/* 3C8DC 8004C0DC FFFFE730 */  andi       $a3, $a3, 0xFFFF
/* 3C8E0 8004C0E0 2400858C */  lw         $a1, 0x24($a0)
/* 3C8E4 8004C0E4 1000A997 */  lhu        $t1, 0x10($sp)
/* 3C8E8 8004C0E8 21186500 */  addu       $v1, $v1, $a1
/* 3C8EC 8004C0EC 00006294 */  lhu        $v0, 0x0($v1)
/* 3C8F0 8004C0F0 1800858C */  lw         $a1, 0x18($a0)
/* 3C8F4 8004C0F4 02006494 */  lhu        $a0, 0x2($v1)
/* 3C8F8 8004C0F8 80100200 */  sll        $v0, $v0, 2
/* 3C8FC 8004C0FC 09008010 */  beqz       $a0, .L8004C124
/* 3C900 8004C100 2128A200 */   addu      $a1, $a1, $v0
.L8004C104:
/* 3C904 8004C104 0000A6A0 */  sb         $a2, 0x0($a1)
/* 3C908 8004C108 0100A7A0 */  sb         $a3, 0x1($a1)
/* 3C90C 8004C10C 0200A9A0 */  sb         $t1, 0x2($a1)
/* 3C910 8004C110 01000225 */  addiu      $v0, $t0, 0x1
/* 3C914 8004C114 FFFF4830 */  andi       $t0, $v0, 0xFFFF
/* 3C918 8004C118 2B180401 */  sltu       $v1, $t0, $a0
/* 3C91C 8004C11C F9FF6014 */  bnez       $v1, .L8004C104
/* 3C920 8004C120 0400A524 */   addiu     $a1, $a1, 0x4
.L8004C124:
/* 3C924 8004C124 0800E003 */  jr         $ra
/* 3C928 8004C128 00000000 */   nop
.size ChangeClusterColour, . - ChangeClusterColour
