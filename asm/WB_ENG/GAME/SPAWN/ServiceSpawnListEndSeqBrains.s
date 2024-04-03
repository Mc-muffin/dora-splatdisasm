.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ServiceSpawnListEndSeqBrains
/* 33898 80043098 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3389C 8004309C A00C838F */  lw         $v1, %gp_rel(NumSpawnedActors)($gp)
/* 338A0 800430A0 0A80023C */  lui        $v0, %hi(SpawnServiceList)
/* 338A4 800430A4 1000B0AF */  sw         $s0, 0x10($sp)
/* 338A8 800430A8 B8C05024 */  addiu      $s0, $v0, %lo(SpawnServiceList)
/* 338AC 800430AC 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 338B0 800430B0 1800B2AF */  sw         $s2, 0x18($sp)
/* 338B4 800430B4 20006018 */  blez       $v1, .L80043138
/* 338B8 800430B8 1400B1AF */   sw        $s1, 0x14($sp)
/* 338BC 800430BC 0A80023C */  lui        $v0, %hi(AnimationList)
/* 338C0 800430C0 80515224 */  addiu      $s2, $v0, %lo(AnimationList)
/* 338C4 800430C4 21886000 */  addu       $s1, $v1, $zero
.L800430C8:
/* 338C8 800430C8 1000028E */  lw         $v0, 0x10($s0)
/* 338CC 800430CC 00000000 */  nop
/* 338D0 800430D0 00014230 */  andi       $v0, $v0, 0x100
/* 338D4 800430D4 15004010 */  beqz       $v0, .L8004312C
/* 338D8 800430D8 00000000 */   nop
/* 338DC 800430DC 4400038E */  lw         $v1, 0x44($s0)
/* 338E0 800430E0 00000000 */  nop
/* 338E4 800430E4 1000648C */  lw         $a0, 0x10($v1)
/* 338E8 800430E8 00000000 */  nop
/* 338EC 800430EC 40110400 */  sll        $v0, $a0, 5
/* 338F0 800430F0 23104400 */  subu       $v0, $v0, $a0
/* 338F4 800430F4 80100200 */  sll        $v0, $v0, 2
/* 338F8 800430F8 21105200 */  addu       $v0, $v0, $s2
/* 338FC 800430FC 0000438C */  lw         $v1, 0x0($v0)
/* 33900 80043100 00000000 */  nop
/* 33904 80043104 07006010 */  beqz       $v1, .L80043124
/* 33908 80043108 21200002 */   addu      $a0, $s0, $zero
/* 3390C 8004310C 65E2000C */  jal        AnimateActor
/* 33910 80043110 21200002 */   addu      $a0, $s0, $zero
/* 33914 80043114 21200002 */  addu       $a0, $s0, $zero
/* 33918 80043118 10DE000C */  jal        CheckNextAnim
/* 3391C 8004311C 2C010526 */   addiu     $a1, $s0, 0x12C
/* 33920 80043120 21200002 */  addu       $a0, $s0, $zero
.L80043124:
/* 33924 80043124 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 33928 80043128 6C000526 */   addiu     $a1, $s0, 0x6C
.L8004312C:
/* 3392C 8004312C FFFF3126 */  addiu      $s1, $s1, -0x1
/* 33930 80043130 E5FF2016 */  bnez       $s1, .L800430C8
/* 33934 80043134 88011026 */   addiu     $s0, $s0, 0x188
.L80043138:
/* 33938 80043138 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 3393C 8004313C 1800B28F */  lw         $s2, 0x18($sp)
/* 33940 80043140 1400B18F */  lw         $s1, 0x14($sp)
/* 33944 80043144 1000B08F */  lw         $s0, 0x10($sp)
/* 33948 80043148 0800E003 */  jr         $ra
/* 3394C 8004314C 2000BD27 */   addiu     $sp, $sp, 0x20
.size ServiceSpawnListEndSeqBrains, . - ServiceSpawnListEndSeqBrains
