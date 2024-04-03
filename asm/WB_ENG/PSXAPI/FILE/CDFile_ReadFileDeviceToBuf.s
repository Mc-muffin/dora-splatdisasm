.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_ReadFileDeviceToBuf
/* 474BC 80056CBC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 474C0 80056CC0 1400B1AF */  sw         $s1, 0x14($sp)
/* 474C4 80056CC4 2188A000 */  addu       $s1, $a1, $zero
/* 474C8 80056CC8 1800BFAF */  sw         $ra, 0x18($sp)
/* 474CC 80056CCC D55A010C */  jal        CDFile_FileOpen
/* 474D0 80056CD0 1000B0AF */   sw        $s0, 0x10($sp)
/* 474D4 80056CD4 21404000 */  addu       $t0, $v0, $zero
/* 474D8 80056CD8 21480001 */  addu       $t1, $t0, $zero
/* 474DC 80056CDC 0B80053C */  lui        $a1, %hi(gCDFileInfo)
/* 474E0 80056CE0 78AAA324 */  addiu      $v1, $a1, %lo(gCDFileInfo)
.L80056CE4:
/* 474E4 80056CE4 0000628C */  lw         $v0, 0x0($v1)
/* 474E8 80056CE8 00000000 */  nop
/* 474EC 80056CEC 03004104 */  bgez       $v0, .L80056CFC
/* 474F0 80056CF0 FEFF4224 */   addiu     $v0, $v0, -0x2
/* 474F4 80056CF4 625B0108 */  j          .L80056D88
/* 474F8 80056CF8 FFFF0224 */   addiu     $v0, $zero, -0x1
.L80056CFC:
/* 474FC 80056CFC 0200422C */  sltiu      $v0, $v0, 0x2
/* 47500 80056D00 F8FF4014 */  bnez       $v0, .L80056CE4
/* 47504 80056D04 21200000 */   addu      $a0, $zero, $zero
/* 47508 80056D08 78AAA524 */  addiu      $a1, $a1, %lo(gCDFileInfo)
/* 4750C 80056D0C 00210400 */  sll        $a0, $a0, 4
/* 47510 80056D10 21308500 */  addu       $a2, $a0, $a1
/* 47514 80056D14 03000324 */  addiu      $v1, $zero, 0x3
/* 47518 80056D18 1000A224 */  addiu      $v0, $a1, 0x10
/* 4751C 80056D1C 21108200 */  addu       $v0, $a0, $v0
/* 47520 80056D20 0000C3AC */  sw         $v1, 0x0($a2)
/* 47524 80056D24 2118A400 */  addu       $v1, $a1, $a0
/* 47528 80056D28 0980103C */  lui        $s0, %hi(gCDCallback)
/* 4752C 80056D2C 21286000 */  addu       $a1, $v1, $zero
/* 47530 80056D30 0000478C */  lw         $a3, 0x0($v0)
/* 47534 80056D34 0400668C */  lw         $a2, 0x4($v1)
/* 47538 80056D38 0800A58C */  lw         $a1, 0x8($a1)
/* 4753C 80056D3C 2338E600 */  subu       $a3, $a3, $a2
/* 47540 80056D40 2110E900 */  addu       $v0, $a3, $t1
/* 47544 80056D44 2A104500 */  slt        $v0, $v0, $a1
/* 47548 80056D48 05004014 */  bnez       $v0, .L80056D60
/* 4754C 80056D4C 21200000 */   addu      $a0, $zero, $zero
/* 47550 80056D50 2340A700 */  subu       $t0, $a1, $a3
/* 47554 80056D54 00010324 */  addiu      $v1, $zero, 0x100
/* 47558 80056D58 5C820226 */  addiu      $v0, $s0, %lo(gCDCallback)
/* 4755C 80056D5C 240043AC */  sw         $v1, 0x24($v0)
.L80056D60:
/* 47560 80056D60 21282002 */  addu       $a1, $s1, $zero
/* 47564 80056D64 21300001 */  addu       $a2, $t0, $zero
/* 47568 80056D68 845A010C */  jal        CDFile_Read
/* 4756C 80056D6C 21380000 */   addu      $a3, $zero, $zero
/* 47570 80056D70 0980033C */  lui        $v1, %hi(gCDCallback)
.L80056D74:
/* 47574 80056D74 5C82628C */  lw         $v0, %lo(gCDCallback)($v1)
/* 47578 80056D78 00000000 */  nop
/* 4757C 80056D7C FDFF4014 */  bnez       $v0, .L80056D74
/* 47580 80056D80 5C820226 */   addiu     $v0, $s0, %lo(gCDCallback)
/* 47584 80056D84 0800428C */  lw         $v0, 0x8($v0)
.L80056D88:
/* 47588 80056D88 1800BF8F */  lw         $ra, 0x18($sp)
/* 4758C 80056D8C 1400B18F */  lw         $s1, 0x14($sp)
/* 47590 80056D90 1000B08F */  lw         $s0, 0x10($sp)
/* 47594 80056D94 0800E003 */  jr         $ra
/* 47598 80056D98 2000BD27 */   addiu     $sp, $sp, 0x20
.size CDFile_ReadFileDeviceToBuf, . - CDFile_ReadFileDeviceToBuf
