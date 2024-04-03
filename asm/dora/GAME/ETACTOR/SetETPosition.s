.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetETPosition
/* 66CC 80015ECC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 66D0 80015ED0 0980023C */  lui        $v0, %hi(ET_StartPoints)
/* 66D4 80015ED4 605C4924 */  addiu      $t1, $v0, %lo(ET_StartPoints)
/* 66D8 80015ED8 40180400 */  sll        $v1, $a0, 1
/* 66DC 80015EDC 21186400 */  addu       $v1, $v1, $a0
/* 66E0 80015EE0 80180300 */  sll        $v1, $v1, 2
/* 66E4 80015EE4 21106900 */  addu       $v0, $v1, $t1
/* 66E8 80015EE8 1000BFAF */  sw         $ra, 0x10($sp)
/* 66EC 80015EEC 0000468C */  lw         $a2, 0x0($v0)
/* 66F0 80015EF0 00000000 */  nop
/* 66F4 80015EF4 0000C78C */  lw         $a3, 0x0($a2)
/* 66F8 80015EF8 00000000 */  nop
/* 66FC 80015EFC 1F00E010 */  beqz       $a3, .L80015F7C
/* 6700 80015F00 0980053C */   lui       $a1, %hi(ETActor)
/* 6704 80015F04 B05AA824 */  addiu      $t0, $a1, %lo(ETActor)
/* 6708 80015F08 700007AD */  sw         $a3, 0x70($t0)
/* 670C 80015F0C 0400C48C */  lw         $a0, 0x4($a2)
/* 6710 80015F10 21102301 */  addu       $v0, $t1, $v1
/* 6714 80015F14 740004AD */  sw         $a0, 0x74($t0)
/* 6718 80015F18 0800C38C */  lw         $v1, 0x8($a2)
/* 671C 80015F1C 0400468C */  lw         $a2, 0x4($v0)
/* 6720 80015F20 B05AA7AC */  sw         $a3, %lo(ETActor)($a1)
/* 6724 80015F24 040004AD */  sw         $a0, 0x4($t0)
/* 6728 80015F28 780003AD */  sw         $v1, 0x78($t0)
/* 672C 80015F2C 0500C014 */  bnez       $a2, .L80015F44
/* 6730 80015F30 080003AD */   sw        $v1, 0x8($t0)
/* 6734 80015F34 00080224 */  addiu      $v0, $zero, 0x800
/* 6738 80015F38 540002AD */  sw         $v0, 0x54($t0)
/* 673C 80015F3C DF570008 */  j          .L80015F7C
/* 6740 80015F40 580002AD */   sw        $v0, 0x58($t0)
.L80015F44:
/* 6744 80015F44 01000224 */  addiu      $v0, $zero, 0x1
/* 6748 80015F48 0300C214 */  bne        $a2, $v0, .L80015F58
/* 674C 80015F4C 02000224 */   addiu     $v0, $zero, 0x2
/* 6750 80015F50 DD570008 */  j          .L80015F74
/* 6754 80015F54 000C0224 */   addiu     $v0, $zero, 0xC00
.L80015F58:
/* 6758 80015F58 0400C214 */  bne        $a2, $v0, .L80015F6C
/* 675C 80015F5C 03000224 */   addiu     $v0, $zero, 0x3
/* 6760 80015F60 580000AD */  sw         $zero, 0x58($t0)
/* 6764 80015F64 DF570008 */  j          .L80015F7C
/* 6768 80015F68 540000AD */   sw        $zero, 0x54($t0)
.L80015F6C:
/* 676C 80015F6C 0300C214 */  bne        $a2, $v0, .L80015F7C
/* 6770 80015F70 00040224 */   addiu     $v0, $zero, 0x400
.L80015F74:
/* 6774 80015F74 580002AD */  sw         $v0, 0x58($t0)
/* 6778 80015F78 540002AD */  sw         $v0, 0x54($t0)
.L80015F7C:
/* 677C 80015F7C DDD5000C */  jal        SetBootsPosition
/* 6780 80015F80 00000000 */   nop
/* 6784 80015F84 1000BF8F */  lw         $ra, 0x10($sp)
/* 6788 80015F88 00000000 */  nop
/* 678C 80015F8C 0800E003 */  jr         $ra
/* 6790 80015F90 1800BD27 */   addiu     $sp, $sp, 0x18
.size SetETPosition, . - SetETPosition
