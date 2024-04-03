.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SaveLevel
/* 3F0F0 8004E8F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3F0F4 8004E8F4 0880033C */  lui        $v1, %hi(TestWorld)
/* 3F0F8 8004E8F8 8C65668C */  lw         $a2, %lo(TestWorld)($v1)
/* 3F0FC 8004E8FC 8C656724 */  addiu      $a3, $v1, %lo(TestWorld)
/* 3F100 8004E900 1000BFAF */  sw         $ra, 0x10($sp)
/* 3F104 8004E904 0400E28C */  lw         $v0, 0x4($a3)
/* 3F108 8004E908 00000000 */  nop
/* 3F10C 8004E90C 1800C200 */  mult       $a2, $v0
/* 3F110 8004E910 12300000 */  mflo       $a2
/* 3F114 8004E914 0800E38C */  lw         $v1, 0x8($a3)
/* 3F118 8004E918 00000000 */  nop
/* 3F11C 8004E91C 1800C300 */  mult       $a2, $v1
/* 3F120 8004E920 0180043C */  lui        $a0, %hi(D_80012E48)
/* 3F124 8004E924 482E8424 */  addiu      $a0, $a0, %lo(D_80012E48)
/* 3F128 8004E928 1400E58C */  lw         $a1, 0x14($a3)
/* 3F12C 8004E92C 12300000 */  mflo       $a2
/* 3F130 8004E930 685C010C */  jal        SaveFile
/* 3F134 8004E934 80300600 */   sll       $a2, $a2, 2
/* 3F138 8004E938 1000BF8F */  lw         $ra, 0x10($sp)
/* 3F13C 8004E93C 00000000 */  nop
/* 3F140 8004E940 0800E003 */  jr         $ra
/* 3F144 8004E944 1800BD27 */   addiu     $sp, $sp, 0x18
.size SaveLevel, . - SaveLevel
