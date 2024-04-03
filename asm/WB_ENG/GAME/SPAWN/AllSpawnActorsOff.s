.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllSpawnActorsOff
/* 3365C 80042E5C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 33660 80042E60 A00C838F */  lw         $v1, %gp_rel(NumSpawnedActors)($gp)
/* 33664 80042E64 0A80023C */  lui        $v0, %hi(SpawnServiceList)
/* 33668 80042E68 1400B1AF */  sw         $s1, 0x14($sp)
/* 3366C 80042E6C B8C05124 */  addiu      $s1, $v0, %lo(SpawnServiceList)
/* 33670 80042E70 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 33674 80042E74 2800B6AF */  sw         $s6, 0x28($sp)
/* 33678 80042E78 2400B5AF */  sw         $s5, 0x24($sp)
/* 3367C 80042E7C 2000B4AF */  sw         $s4, 0x20($sp)
/* 33680 80042E80 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 33684 80042E84 1800B2AF */  sw         $s2, 0x18($sp)
/* 33688 80042E88 3E006018 */  blez       $v1, .L80042F84
/* 3368C 80042E8C 1000B0AF */   sw        $s0, 0x10($sp)
/* 33690 80042E90 0880023C */  lui        $v0, %hi(MeshIDTable)
/* 33694 80042E94 60545324 */  addiu      $s3, $v0, %lo(MeshIDTable)
/* 33698 80042E98 10007626 */  addiu      $s6, $s3, 0x10
/* 3369C 80042E9C 0880023C */  lui        $v0, %hi(AITable + 0xC)
/* 336A0 80042EA0 307A5524 */  addiu      $s5, $v0, %lo(AITable + 0xC)
/* 336A4 80042EA4 FFFE1424 */  addiu      $s4, $zero, -0x101
/* 336A8 80042EA8 21906000 */  addu       $s2, $v1, $zero
.L80042EAC:
/* 336AC 80042EAC 4400248E */  lw         $a0, 0x44($s1)
/* 336B0 80042EB0 00000000 */  nop
/* 336B4 80042EB4 0000838C */  lw         $v1, 0x0($a0)
/* 336B8 80042EB8 0C00908C */  lw         $s0, 0xC($a0)
/* 336BC 80042EBC 1000858C */  lw         $a1, 0x10($a0)
/* 336C0 80042EC0 000023AE */  sw         $v1, 0x0($s1)
/* 336C4 80042EC4 0400828C */  lw         $v0, 0x4($a0)
/* 336C8 80042EC8 00000000 */  nop
/* 336CC 80042ECC 040022AE */  sw         $v0, 0x4($s1)
/* 336D0 80042ED0 0800838C */  lw         $v1, 0x8($a0)
/* 336D4 80042ED4 00000000 */  nop
/* 336D8 80042ED8 080023AE */  sw         $v1, 0x8($s1)
/* 336DC 80042EDC 0000828C */  lw         $v0, 0x0($a0)
/* 336E0 80042EE0 00000000 */  nop
/* 336E4 80042EE4 700022AE */  sw         $v0, 0x70($s1)
/* 336E8 80042EE8 40100500 */  sll        $v0, $a1, 1
/* 336EC 80042EEC 21104500 */  addu       $v0, $v0, $a1
/* 336F0 80042EF0 80100200 */  sll        $v0, $v0, 2
/* 336F4 80042EF4 23104500 */  subu       $v0, $v0, $a1
/* 336F8 80042EF8 0400838C */  lw         $v1, 0x4($a0)
/* 336FC 80042EFC 80100200 */  sll        $v0, $v0, 2
/* 33700 80042F00 740023AE */  sw         $v1, 0x74($s1)
/* 33704 80042F04 21186202 */  addu       $v1, $s3, $v0
/* 33708 80042F08 21306000 */  addu       $a2, $v1, $zero
/* 3370C 80042F0C 21105600 */  addu       $v0, $v0, $s6
/* 33710 80042F10 0800898C */  lw         $t1, 0x8($a0)
/* 33714 80042F14 0C00678C */  lw         $a3, 0xC($v1)
/* 33718 80042F18 1400C88C */  lw         $t0, 0x14($a2)
/* 3371C 80042F1C 0000438C */  lw         $v1, 0x0($v0)
/* 33720 80042F20 21202002 */  addu       $a0, $s1, $zero
/* 33724 80042F24 F00027AE */  sw         $a3, 0xF0($s1)
/* 33728 80042F28 4C0028AE */  sw         $t0, 0x4C($s1)
/* 3372C 80042F2C 500023AE */  sw         $v1, 0x50($s1)
/* 33730 80042F30 8B87000C */  jal        SetupActorCustomSizes
/* 33734 80042F34 780029AE */   sw        $t1, 0x78($s1)
/* 33738 80042F38 40811000 */  sll        $s0, $s0, 5
/* 3373C 80042F3C 21801502 */  addu       $s0, $s0, $s5
/* 33740 80042F40 0000108E */  lw         $s0, 0x0($s0)
/* 33744 80042F44 00100224 */  addiu      $v0, $zero, 0x1000
/* 33748 80042F48 03000012 */  beqz       $s0, .L80042F58
/* 3374C 80042F4C 140022AE */   sw        $v0, 0x14($s1)
/* 33750 80042F50 09F80002 */  jalr       $s0
/* 33754 80042F54 21202002 */   addu      $a0, $s1, $zero
.L80042F58:
/* 33758 80042F58 1000228E */  lw         $v0, 0x10($s1)
/* 3375C 80042F5C 21202002 */  addu       $a0, $s1, $zero
/* 33760 80042F60 24105400 */  and        $v0, $v0, $s4
/* 33764 80042F64 A0DD000C */  jal        DeAllocatePoolActor
/* 33768 80042F68 100022AE */   sw        $v0, 0x10($s1)
/* 3376C 80042F6C 1000238E */  lw         $v1, 0x10($s1)
/* 33770 80042F70 FFFF5226 */  addiu      $s2, $s2, -0x1
/* 33774 80042F74 24187400 */  and        $v1, $v1, $s4
/* 33778 80042F78 100023AE */  sw         $v1, 0x10($s1)
/* 3377C 80042F7C CBFF4016 */  bnez       $s2, .L80042EAC
/* 33780 80042F80 88013126 */   addiu     $s1, $s1, 0x188
.L80042F84:
/* 33784 80042F84 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 33788 80042F88 2800B68F */  lw         $s6, 0x28($sp)
/* 3378C 80042F8C 2400B58F */  lw         $s5, 0x24($sp)
/* 33790 80042F90 2000B48F */  lw         $s4, 0x20($sp)
/* 33794 80042F94 1C00B38F */  lw         $s3, 0x1C($sp)
/* 33798 80042F98 1800B28F */  lw         $s2, 0x18($sp)
/* 3379C 80042F9C 1400B18F */  lw         $s1, 0x14($sp)
/* 337A0 80042FA0 1000B08F */  lw         $s0, 0x10($sp)
/* 337A4 80042FA4 0800E003 */  jr         $ra
/* 337A8 80042FA8 3000BD27 */   addiu     $sp, $sp, 0x30
.size AllSpawnActorsOff, . - AllSpawnActorsOff
