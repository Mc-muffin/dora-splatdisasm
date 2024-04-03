.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MetroBoss
/* 33E20 80043620 A00C828F */  lw         $v0, %gp_rel(NumSpawnedActors)($gp)
/* 33E24 80043624 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 33E28 80043628 1800B2AF */  sw         $s2, 0x18($sp)
/* 33E2C 8004362C 21900000 */  addu       $s2, $zero, $zero
/* 33E30 80043630 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 33E34 80043634 1400B1AF */  sw         $s1, 0x14($sp)
/* 33E38 80043638 22004018 */  blez       $v0, .L800436C4
/* 33E3C 8004363C 1000B0AF */   sw        $s0, 0x10($sp)
/* 33E40 80043640 0A80023C */  lui        $v0, %hi(SpawnServiceList)
/* 33E44 80043644 B8C05124 */  addiu      $s1, $v0, %lo(SpawnServiceList)
.L80043648:
/* 33E48 80043648 4400308E */  lw         $s0, 0x44($s1)
/* 33E4C 8004364C 00000000 */  nop
/* 33E50 80043650 1000038E */  lw         $v1, 0x10($s0)
/* 33E54 80043654 02000224 */  addiu      $v0, $zero, 0x2
/* 33E58 80043658 15006214 */  bne        $v1, $v0, .L800436B0
/* 33E5C 8004365C 00000000 */   nop
/* 33E60 80043660 1000228E */  lw         $v0, 0x10($s1)
/* 33E64 80043664 00000000 */  nop
/* 33E68 80043668 00014230 */  andi       $v0, $v0, 0x100
/* 33E6C 8004366C 10004014 */  bnez       $v0, .L800436B0
/* 33E70 80043670 06000324 */   addiu     $v1, $zero, 0x6
/* 33E74 80043674 1C00028E */  lw         $v0, 0x1C($s0)
/* 33E78 80043678 00000000 */  nop
/* 33E7C 8004367C 06004230 */  andi       $v0, $v0, 0x6
/* 33E80 80043680 0B004314 */  bne        $v0, $v1, .L800436B0
/* 33E84 80043684 21202002 */   addu      $a0, $s1, $zero
/* 33E88 80043688 3BDD000C */  jal        AllocatePoolActor
/* 33E8C 8004368C 02000524 */   addiu     $a1, $zero, 0x2
/* 33E90 80043690 1000238E */  lw         $v1, 0x10($s1)
/* 33E94 80043694 200122AE */  sw         $v0, 0x120($s1)
/* 33E98 80043698 00016334 */  ori        $v1, $v1, 0x100
/* 33E9C 8004369C 100023AE */  sw         $v1, 0x10($s1)
/* 33EA0 800436A0 1C00028E */  lw         $v0, 0x1C($s0)
/* 33EA4 800436A4 00000000 */  nop
/* 33EA8 800436A8 08004234 */  ori        $v0, $v0, 0x8
/* 33EAC 800436AC 1C0002AE */  sw         $v0, 0x1C($s0)
.L800436B0:
/* 33EB0 800436B0 A00C828F */  lw         $v0, %gp_rel(NumSpawnedActors)($gp)
/* 33EB4 800436B4 01005226 */  addiu      $s2, $s2, 0x1
/* 33EB8 800436B8 2A104202 */  slt        $v0, $s2, $v0
/* 33EBC 800436BC E2FF4014 */  bnez       $v0, .L80043648
/* 33EC0 800436C0 88013126 */   addiu     $s1, $s1, 0x188
.L800436C4:
/* 33EC4 800436C4 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 33EC8 800436C8 1800B28F */  lw         $s2, 0x18($sp)
/* 33ECC 800436CC 1400B18F */  lw         $s1, 0x14($sp)
/* 33ED0 800436D0 1000B08F */  lw         $s0, 0x10($sp)
/* 33ED4 800436D4 0800E003 */  jr         $ra
/* 33ED8 800436D8 2000BD27 */   addiu     $sp, $sp, 0x20
.size MetroBoss, . - MetroBoss
