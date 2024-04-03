.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ClearSpawnFlagForAllActorsInWorld
/* 33F98 80043798 0880023C */  lui        $v0, %hi(TestWorld)
/* 33F9C 8004379C 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 33FA0 800437A0 1C00438C */  lw         $v1, 0x1C($v0)
/* 33FA4 800437A4 1000428C */  lw         $v0, 0x10($v0)
/* 33FA8 800437A8 00000000 */  nop
/* 33FAC 800437AC 0A004018 */  blez       $v0, .L800437D8
/* 33FB0 800437B0 21300000 */   addu      $a2, $zero, $zero
/* 33FB4 800437B4 27200400 */  nor        $a0, $zero, $a0
/* 33FB8 800437B8 21284000 */  addu       $a1, $v0, $zero
.L800437BC:
/* 33FBC 800437BC 0100C624 */  addiu      $a2, $a2, 0x1
/* 33FC0 800437C0 1C00628C */  lw         $v0, 0x1C($v1)
/* 33FC4 800437C4 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 33FC8 800437C8 24104400 */  and        $v0, $v0, $a0
/* 33FCC 800437CC 1C0062AC */  sw         $v0, 0x1C($v1)
/* 33FD0 800437D0 FAFFA014 */  bnez       $a1, .L800437BC
/* 33FD4 800437D4 24006324 */   addiu     $v1, $v1, 0x24
.L800437D8:
/* 33FD8 800437D8 0800E003 */  jr         $ra
/* 33FDC 800437DC 2110C000 */   addu      $v0, $a2, $zero
.size ClearSpawnFlagForAllActorsInWorld, . - ClearSpawnFlagForAllActorsInWorld
