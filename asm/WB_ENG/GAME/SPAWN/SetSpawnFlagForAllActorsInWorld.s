.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetSpawnFlagForAllActorsInWorld
/* 33FE0 800437E0 0880023C */  lui        $v0, %hi(TestWorld)
/* 33FE4 800437E4 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 33FE8 800437E8 1C00438C */  lw         $v1, 0x1C($v0)
/* 33FEC 800437EC 1000428C */  lw         $v0, 0x10($v0)
/* 33FF0 800437F0 00000000 */  nop
/* 33FF4 800437F4 09004018 */  blez       $v0, .L8004381C
/* 33FF8 800437F8 21300000 */   addu      $a2, $zero, $zero
/* 33FFC 800437FC 21284000 */  addu       $a1, $v0, $zero
.L80043800:
/* 34000 80043800 0100C624 */  addiu      $a2, $a2, 0x1
/* 34004 80043804 1C00628C */  lw         $v0, 0x1C($v1)
/* 34008 80043808 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 3400C 8004380C 25104400 */  or         $v0, $v0, $a0
/* 34010 80043810 1C0062AC */  sw         $v0, 0x1C($v1)
/* 34014 80043814 FAFFA014 */  bnez       $a1, .L80043800
/* 34018 80043818 24006324 */   addiu     $v1, $v1, 0x24
.L8004381C:
/* 3401C 8004381C 0800E003 */  jr         $ra
/* 34020 80043820 2110C000 */   addu      $v0, $a2, $zero
.size SetSpawnFlagForAllActorsInWorld, . - SetSpawnFlagForAllActorsInWorld
