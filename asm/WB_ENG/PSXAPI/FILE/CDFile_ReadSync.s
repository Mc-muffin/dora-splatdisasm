.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_ReadSync
/* 47F10 80057710 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47F14 80057714 2150A000 */  addu       $t2, $a1, $zero
/* 47F18 80057718 2140C000 */  addu       $t0, $a2, $zero
/* 47F1C 8005771C 2158E000 */  addu       $t3, $a3, $zero
/* 47F20 80057720 21488000 */  addu       $t1, $a0, $zero
/* 47F24 80057724 0B80053C */  lui        $a1, %hi(gCDFileInfo)
/* 47F28 80057728 78AAA424 */  addiu      $a0, $a1, %lo(gCDFileInfo)
/* 47F2C 8005772C 80180900 */  sll        $v1, $t1, 2
/* 47F30 80057730 21106900 */  addu       $v0, $v1, $t1
/* 47F34 80057734 80100200 */  sll        $v0, $v0, 2
/* 47F38 80057738 21304400 */  addu       $a2, $v0, $a0
/* 47F3C 8005773C 1400BFAF */  sw         $ra, 0x14($sp)
/* 47F40 80057740 1000B0AF */  sw         $s0, 0x10($sp)
.L80057744:
/* 47F44 80057744 0000C28C */  lw         $v0, 0x0($a2)
/* 47F48 80057748 00000000 */  nop
/* 47F4C 8005774C 03004104 */  bgez       $v0, .L8005775C
/* 47F50 80057750 FEFF4224 */   addiu     $v0, $v0, -0x2
/* 47F54 80057754 FB5D0108 */  j          .L800577EC
/* 47F58 80057758 FFFF0224 */   addiu     $v0, $zero, -0x1
.L8005775C:
/* 47F5C 8005775C 0200422C */  sltiu      $v0, $v0, 0x2
/* 47F60 80057760 F8FF4014 */  bnez       $v0, .L80057744
/* 47F64 80057764 21206900 */   addu      $a0, $v1, $t1
/* 47F68 80057768 78AAA524 */  addiu      $a1, $a1, %lo(gCDFileInfo)
/* 47F6C 8005776C 80200400 */  sll        $a0, $a0, 2
/* 47F70 80057770 21308500 */  addu       $a2, $a0, $a1
/* 47F74 80057774 03000324 */  addiu      $v1, $zero, 0x3
/* 47F78 80057778 1000A224 */  addiu      $v0, $a1, 0x10
/* 47F7C 8005777C 21108200 */  addu       $v0, $a0, $v0
/* 47F80 80057780 0000C3AC */  sw         $v1, 0x0($a2)
/* 47F84 80057784 2118A400 */  addu       $v1, $a1, $a0
/* 47F88 80057788 0980103C */  lui        $s0, %hi(gCDCallback)
/* 47F8C 8005778C 21286000 */  addu       $a1, $v1, $zero
/* 47F90 80057790 0000478C */  lw         $a3, 0x0($v0)
/* 47F94 80057794 0400668C */  lw         $a2, 0x4($v1)
/* 47F98 80057798 0800A38C */  lw         $v1, 0x8($a1)
/* 47F9C 8005779C 2338E600 */  subu       $a3, $a3, $a2
/* 47FA0 800577A0 2110E800 */  addu       $v0, $a3, $t0
/* 47FA4 800577A4 2A104300 */  slt        $v0, $v0, $v1
/* 47FA8 800577A8 05004014 */  bnez       $v0, .L800577C0
/* 47FAC 800577AC 21202001 */   addu      $a0, $t1, $zero
/* 47FB0 800577B0 23406700 */  subu       $t0, $v1, $a3
/* 47FB4 800577B4 00010324 */  addiu      $v1, $zero, 0x100
/* 47FB8 800577B8 5C820226 */  addiu      $v0, $s0, %lo(gCDCallback)
/* 47FBC 800577BC 240043AC */  sw         $v1, 0x24($v0)
.L800577C0:
/* 47FC0 800577C0 21284001 */  addu       $a1, $t2, $zero
/* 47FC4 800577C4 21300001 */  addu       $a2, $t0, $zero
/* 47FC8 800577C8 845A010C */  jal        CDFile_Read
/* 47FCC 800577CC 21386001 */   addu      $a3, $t3, $zero
/* 47FD0 800577D0 0980033C */  lui        $v1, %hi(gCDCallback)
.L800577D4:
/* 47FD4 800577D4 5C82628C */  lw         $v0, %lo(gCDCallback)($v1)
/* 47FD8 800577D8 00000000 */  nop
/* 47FDC 800577DC FDFF4014 */  bnez       $v0, .L800577D4
/* 47FE0 800577E0 00000000 */   nop
/* 47FE4 800577E4 5C820326 */  addiu      $v1, $s0, %lo(gCDCallback)
/* 47FE8 800577E8 0800628C */  lw         $v0, 0x8($v1)
.L800577EC:
/* 47FEC 800577EC 1400BF8F */  lw         $ra, 0x14($sp)
/* 47FF0 800577F0 1000B08F */  lw         $s0, 0x10($sp)
/* 47FF4 800577F4 0800E003 */  jr         $ra
/* 47FF8 800577F8 1800BD27 */   addiu     $sp, $sp, 0x18
.size CDFile_ReadSync, . - CDFile_ReadSync
