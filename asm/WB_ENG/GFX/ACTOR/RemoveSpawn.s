.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RemoveSpawn
/* 52690 80061E90 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 52694 80061E94 1000BFAF */  sw         $ra, 0x10($sp)
/* 52698 80061E98 4400858C */  lw         $a1, 0x44($a0)
/* 5269C 80061E9C 00000000 */  nop
/* 526A0 80061EA0 1C00A28C */  lw         $v0, 0x1C($a1)
/* 526A4 80061EA4 00000000 */  nop
/* 526A8 80061EA8 04004230 */  andi       $v0, $v0, 0x4
/* 526AC 80061EAC 05004010 */  beqz       $v0, .L80061EC4
/* 526B0 80061EB0 FFFE0324 */   addiu     $v1, $zero, -0x101
/* 526B4 80061EB4 640C010C */  jal        SpawnResetScroll
/* 526B8 80061EB8 00000000 */   nop
/* 526BC 80061EBC B5870108 */  j          .L80061ED4
/* 526C0 80061EC0 00000000 */   nop
.L80061EC4:
/* 526C4 80061EC4 1000828C */  lw         $v0, 0x10($a0)
/* 526C8 80061EC8 00000000 */  nop
/* 526CC 80061ECC 24104300 */  and        $v0, $v0, $v1
/* 526D0 80061ED0 100082AC */  sw         $v0, 0x10($a0)
.L80061ED4:
/* 526D4 80061ED4 1000BF8F */  lw         $ra, 0x10($sp)
/* 526D8 80061ED8 00000000 */  nop
/* 526DC 80061EDC 0800E003 */  jr         $ra
/* 526E0 80061EE0 1800BD27 */   addiu     $sp, $sp, 0x18
.size RemoveSpawn, . - RemoveSpawn
