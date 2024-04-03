.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AddActorETCollisionList
/* 2FA10 8003F210 21308000 */  addu       $a2, $a0, $zero
/* 2FA14 8003F214 0980023C */  lui        $v0, %hi(ETActor + 0xC)
/* 2FA18 8003F218 BC5A448C */  lw         $a0, %lo(ETActor + 0xC)($v0)
/* 2FA1C 8003F21C 06000324 */  addiu      $v1, $zero, 0x6
/* 2FA20 8003F220 14008310 */  beq        $a0, $v1, .L8003F274
/* 2FA24 8003F224 2138A000 */   addu      $a3, $a1, $zero
/* 2FA28 8003F228 11000224 */  addiu      $v0, $zero, 0x11
/* 2FA2C 8003F22C 11008210 */  beq        $a0, $v0, .L8003F274
/* 2FA30 8003F230 10000224 */   addiu     $v0, $zero, 0x10
/* 2FA34 8003F234 0F008210 */  beq        $a0, $v0, .L8003F274
/* 2FA38 8003F238 00000000 */   nop
/* 2FA3C 8003F23C 0980023C */  lui        $v0, %hi(gETEndLevel)
/* 2FA40 8003F240 D442428C */  lw         $v0, %lo(gETEndLevel)($v0)
/* 2FA44 8003F244 00000000 */  nop
/* 2FA48 8003F248 0A004014 */  bnez       $v0, .L8003F274
/* 2FA4C 8003F24C 0A80043C */   lui       $a0, %hi(CollisionList)
/* 2FA50 8003F250 B414858F */  lw         $a1, %gp_rel(NumCollisionList)($gp)
/* 2FA54 8003F254 A0B98424 */  addiu      $a0, $a0, %lo(CollisionList)
/* 2FA58 8003F258 C0100500 */  sll        $v0, $a1, 3
/* 2FA5C 8003F25C 21188200 */  addu       $v1, $a0, $v0
/* 2FA60 8003F260 21104400 */  addu       $v0, $v0, $a0
/* 2FA64 8003F264 0100A524 */  addiu      $a1, $a1, 0x1
/* 2FA68 8003F268 040066AC */  sw         $a2, 0x4($v1)
/* 2FA6C 8003F26C 000047AC */  sw         $a3, 0x0($v0)
/* 2FA70 8003F270 B41485AF */  sw         $a1, %gp_rel(NumCollisionList)($gp)
.L8003F274:
/* 2FA74 8003F274 0800E003 */  jr         $ra
/* 2FA78 8003F278 00000000 */   nop
.size AddActorETCollisionList, . - AddActorETCollisionList
