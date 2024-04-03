.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ClearSpawnFlagForActorsInWorld
/* 33EEC 800436EC 0880023C */  lui        $v0, %hi(TestWorld)
/* 33EF0 800436F0 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 33EF4 800436F4 1C00438C */  lw         $v1, 0x1C($v0)
/* 33EF8 800436F8 1000428C */  lw         $v0, 0x10($v0)
/* 33EFC 800436FC 00000000 */  nop
/* 33F00 80043700 0E004018 */  blez       $v0, .L8004373C
/* 33F04 80043704 21380000 */   addu      $a3, $zero, $zero
/* 33F08 80043708 27280500 */  nor        $a1, $zero, $a1
/* 33F0C 8004370C 21304000 */  addu       $a2, $v0, $zero
.L80043710:
/* 33F10 80043710 1000628C */  lw         $v0, 0x10($v1)
/* 33F14 80043714 00000000 */  nop
/* 33F18 80043718 05004414 */  bne        $v0, $a0, .L80043730
/* 33F1C 8004371C 00000000 */   nop
/* 33F20 80043720 1C00628C */  lw         $v0, 0x1C($v1)
/* 33F24 80043724 0100E724 */  addiu      $a3, $a3, 0x1
/* 33F28 80043728 24104500 */  and        $v0, $v0, $a1
/* 33F2C 8004372C 1C0062AC */  sw         $v0, 0x1C($v1)
.L80043730:
/* 33F30 80043730 FFFFC624 */  addiu      $a2, $a2, -0x1
/* 33F34 80043734 F6FFC014 */  bnez       $a2, .L80043710
/* 33F38 80043738 24006324 */   addiu     $v1, $v1, 0x24
.L8004373C:
/* 33F3C 8004373C 0800E003 */  jr         $ra
/* 33F40 80043740 2110E000 */   addu      $v0, $a3, $zero
.size ClearSpawnFlagForActorsInWorld, . - ClearSpawnFlagForActorsInWorld
