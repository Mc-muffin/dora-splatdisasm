.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetNameSegment
/* 4761C 80056E1C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 47620 80056E20 1000B0AF */  sw         $s0, 0x10($sp)
/* 47624 80056E24 21808000 */  addu       $s0, $a0, $zero
/* 47628 80056E28 1800B2AF */  sw         $s2, 0x18($sp)
/* 4762C 80056E2C 2190A000 */  addu       $s2, $a1, $zero
/* 47630 80056E30 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 47634 80056E34 A3C2010C */  jal        strlen
/* 47638 80056E38 1400B1AF */   sw        $s1, 0x14($sp)
/* 4763C 80056E3C 21204000 */  addu       $a0, $v0, $zero
/* 47640 80056E40 21100402 */  addu       $v0, $s0, $a0
/* 47644 80056E44 00004590 */  lbu        $a1, 0x0($v0)
/* 47648 80056E48 5C000324 */  addiu      $v1, $zero, 0x5C
/* 4764C 80056E4C 1100A310 */  beq        $a1, $v1, .L80056E94
/* 47650 80056E50 2F000224 */   addiu     $v0, $zero, 0x2F
/* 47654 80056E54 1600A210 */  beq        $a1, $v0, .L80056EB0
/* 47658 80056E58 00000000 */   nop
/* 4765C 80056E5C 0D008018 */  blez       $a0, .L80056E94
/* 47660 80056E60 5C000524 */   addiu     $a1, $zero, 0x5C
/* 47664 80056E64 2F000324 */  addiu      $v1, $zero, 0x2F
/* 47668 80056E68 FFFF8424 */  addiu      $a0, $a0, -0x1
.L80056E6C:
/* 4766C 80056E6C 21100402 */  addu       $v0, $s0, $a0
/* 47670 80056E70 00004290 */  lbu        $v0, 0x0($v0)
/* 47674 80056E74 00000000 */  nop
/* 47678 80056E78 06004510 */  beq        $v0, $a1, .L80056E94
/* 4767C 80056E7C 00000000 */   nop
/* 47680 80056E80 0B004310 */  beq        $v0, $v1, .L80056EB0
/* 47684 80056E84 00000000 */   nop
/* 47688 80056E88 F8FF801C */  bgtz       $a0, .L80056E6C
/* 4768C 80056E8C FFFF8424 */   addiu     $a0, $a0, -0x1
/* 47690 80056E90 01008424 */  addiu      $a0, $a0, 0x1
.L80056E94:
/* 47694 80056E94 21100402 */  addu       $v0, $s0, $a0
/* 47698 80056E98 00004590 */  lbu        $a1, 0x0($v0)
/* 4769C 80056E9C 2F000324 */  addiu      $v1, $zero, 0x2F
/* 476A0 80056EA0 0300A310 */  beq        $a1, $v1, .L80056EB0
/* 476A4 80056EA4 5C000224 */   addiu     $v0, $zero, 0x5C
/* 476A8 80056EA8 0200A214 */  bne        $a1, $v0, .L80056EB4
/* 476AC 80056EAC 00000000 */   nop
.L80056EB0:
/* 476B0 80056EB0 01008424 */  addiu      $a0, $a0, 0x1
.L80056EB4:
/* 476B4 80056EB4 21200402 */  addu       $a0, $s0, $a0
/* 476B8 80056EB8 00008290 */  lbu        $v0, 0x0($a0)
/* 476BC 80056EBC 00000000 */  nop
/* 476C0 80056EC0 0B004010 */  beqz       $v0, .L80056EF0
/* 476C4 80056EC4 21880000 */   addu      $s1, $zero, $zero
/* 476C8 80056EC8 21808000 */  addu       $s0, $a0, $zero
.L80056ECC:
/* 476CC 80056ECC 00000492 */  lbu        $a0, 0x0($s0)
/* 476D0 80056ED0 8FC7010C */  jal        toupper
/* 476D4 80056ED4 01001026 */   addiu     $s0, $s0, 0x1
/* 476D8 80056ED8 21185102 */  addu       $v1, $s2, $s1
/* 476DC 80056EDC 000062A0 */  sb         $v0, 0x0($v1)
/* 476E0 80056EE0 00000292 */  lbu        $v0, 0x0($s0)
/* 476E4 80056EE4 00000000 */  nop
/* 476E8 80056EE8 F8FF4014 */  bnez       $v0, .L80056ECC
/* 476EC 80056EEC 01003126 */   addiu     $s1, $s1, 0x1
.L80056EF0:
/* 476F0 80056EF0 21105102 */  addu       $v0, $s2, $s1
/* 476F4 80056EF4 000040A0 */  sb         $zero, 0x0($v0)
/* 476F8 80056EF8 21102002 */  addu       $v0, $s1, $zero
/* 476FC 80056EFC 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 47700 80056F00 1800B28F */  lw         $s2, 0x18($sp)
/* 47704 80056F04 1400B18F */  lw         $s1, 0x14($sp)
/* 47708 80056F08 1000B08F */  lw         $s0, 0x10($sp)
/* 4770C 80056F0C 0800E003 */  jr         $ra
/* 47710 80056F10 2000BD27 */   addiu     $sp, $sp, 0x20
.size GetNameSegment, . - GetNameSegment
