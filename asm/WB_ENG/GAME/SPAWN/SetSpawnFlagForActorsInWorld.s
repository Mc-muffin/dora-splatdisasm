.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetSpawnFlagForActorsInWorld
/* 33F44 80043744 0880023C */  lui        $v0, %hi(TestWorld)
/* 33F48 80043748 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 33F4C 8004374C 1C00438C */  lw         $v1, 0x1C($v0)
/* 33F50 80043750 1000428C */  lw         $v0, 0x10($v0)
/* 33F54 80043754 00000000 */  nop
/* 33F58 80043758 0D004018 */  blez       $v0, .L80043790
/* 33F5C 8004375C 21380000 */   addu      $a3, $zero, $zero
/* 33F60 80043760 21304000 */  addu       $a2, $v0, $zero
.L80043764:
/* 33F64 80043764 1000628C */  lw         $v0, 0x10($v1)
/* 33F68 80043768 00000000 */  nop
/* 33F6C 8004376C 05004414 */  bne        $v0, $a0, .L80043784
/* 33F70 80043770 00000000 */   nop
/* 33F74 80043774 1C00628C */  lw         $v0, 0x1C($v1)
/* 33F78 80043778 0100E724 */  addiu      $a3, $a3, 0x1
/* 33F7C 8004377C 25104500 */  or         $v0, $v0, $a1
/* 33F80 80043780 1C0062AC */  sw         $v0, 0x1C($v1)
.L80043784:
/* 33F84 80043784 FFFFC624 */  addiu      $a2, $a2, -0x1
/* 33F88 80043788 F6FFC014 */  bnez       $a2, .L80043764
/* 33F8C 8004378C 24006324 */   addiu     $v1, $v1, 0x24
.L80043790:
/* 33F90 80043790 0800E003 */  jr         $ra
/* 33F94 80043794 2110E000 */   addu      $v0, $a3, $zero
.size SetSpawnFlagForActorsInWorld, . - SetSpawnFlagForActorsInWorld
