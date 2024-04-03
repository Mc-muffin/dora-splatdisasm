.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SpawnResetScroll
/* 33990 80043190 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 33994 80043194 1800BFAF */  sw         $ra, 0x18($sp)
/* 33998 80043198 1400B1AF */  sw         $s1, 0x14($sp)
/* 3399C 8004319C 1000B0AF */  sw         $s0, 0x10($sp)
/* 339A0 800431A0 0C00B08C */  lw         $s0, 0xC($a1)
/* 339A4 800431A4 1000A68C */  lw         $a2, 0x10($a1)
/* 339A8 800431A8 0000A38C */  lw         $v1, 0x0($a1)
/* 339AC 800431AC 21888000 */  addu       $s1, $a0, $zero
/* 339B0 800431B0 000023AE */  sw         $v1, 0x0($s1)
/* 339B4 800431B4 0400A28C */  lw         $v0, 0x4($a1)
/* 339B8 800431B8 00000000 */  nop
/* 339BC 800431BC 040022AE */  sw         $v0, 0x4($s1)
/* 339C0 800431C0 0800A38C */  lw         $v1, 0x8($a1)
/* 339C4 800431C4 00000000 */  nop
/* 339C8 800431C8 080023AE */  sw         $v1, 0x8($s1)
/* 339CC 800431CC 0000A28C */  lw         $v0, 0x0($a1)
/* 339D0 800431D0 00000000 */  nop
/* 339D4 800431D4 700022AE */  sw         $v0, 0x70($s1)
/* 339D8 800431D8 0400A38C */  lw         $v1, 0x4($a1)
/* 339DC 800431DC 00000000 */  nop
/* 339E0 800431E0 740023AE */  sw         $v1, 0x74($s1)
/* 339E4 800431E4 0800A28C */  lw         $v0, 0x8($a1)
/* 339E8 800431E8 0880053C */  lui        $a1, %hi(MeshIDTable)
/* 339EC 800431EC 6054A524 */  addiu      $a1, $a1, %lo(MeshIDTable)
/* 339F0 800431F0 780022AE */  sw         $v0, 0x78($s1)
/* 339F4 800431F4 40100600 */  sll        $v0, $a2, 1
/* 339F8 800431F8 21104600 */  addu       $v0, $v0, $a2
/* 339FC 800431FC 80100200 */  sll        $v0, $v0, 2
/* 33A00 80043200 23104600 */  subu       $v0, $v0, $a2
/* 33A04 80043204 80100200 */  sll        $v0, $v0, 2
/* 33A08 80043208 2118A200 */  addu       $v1, $a1, $v0
/* 33A0C 8004320C 0C00648C */  lw         $a0, 0xC($v1)
/* 33A10 80043210 00000000 */  nop
/* 33A14 80043214 F00024AE */  sw         $a0, 0xF0($s1)
/* 33A18 80043218 1400648C */  lw         $a0, 0x14($v1)
/* 33A1C 8004321C 21286000 */  addu       $a1, $v1, $zero
/* 33A20 80043220 4C0024AE */  sw         $a0, 0x4C($s1)
/* 33A24 80043224 21202002 */  addu       $a0, $s1, $zero
/* 33A28 80043228 1000A38C */  lw         $v1, 0x10($a1)
/* 33A2C 8004322C 2128C000 */  addu       $a1, $a2, $zero
/* 33A30 80043230 8B87000C */  jal        SetupActorCustomSizes
/* 33A34 80043234 500023AE */   sw        $v1, 0x50($s1)
/* 33A38 80043238 00100324 */  addiu      $v1, $zero, 0x1000
/* 33A3C 8004323C 0880023C */  lui        $v0, %hi(AITable)
/* 33A40 80043240 247A4224 */  addiu      $v0, $v0, %lo(AITable)
/* 33A44 80043244 40811000 */  sll        $s0, $s0, 5
/* 33A48 80043248 21105000 */  addu       $v0, $v0, $s0
/* 33A4C 8004324C 140023AE */  sw         $v1, 0x14($s1)
/* 33A50 80043250 0C00428C */  lw         $v0, 0xC($v0)
/* 33A54 80043254 00000000 */  nop
/* 33A58 80043258 04004010 */  beqz       $v0, .L8004326C
/* 33A5C 8004325C 21202002 */   addu      $a0, $s1, $zero
/* 33A60 80043260 09F84000 */  jalr       $v0
/* 33A64 80043264 21202002 */   addu      $a0, $s1, $zero
/* 33A68 80043268 21202002 */  addu       $a0, $s1, $zero
.L8004326C:
/* 33A6C 8004326C 1000228E */  lw         $v0, 0x10($s1)
/* 33A70 80043270 FFFE0324 */  addiu      $v1, $zero, -0x101
/* 33A74 80043274 24104300 */  and        $v0, $v0, $v1
/* 33A78 80043278 A0DD000C */  jal        DeAllocatePoolActor
/* 33A7C 8004327C 100022AE */   sw        $v0, 0x10($s1)
/* 33A80 80043280 1800BF8F */  lw         $ra, 0x18($sp)
/* 33A84 80043284 1400B18F */  lw         $s1, 0x14($sp)
/* 33A88 80043288 1000B08F */  lw         $s0, 0x10($sp)
/* 33A8C 8004328C 0800E003 */  jr         $ra
/* 33A90 80043290 2000BD27 */   addiu     $sp, $sp, 0x20
.size SpawnResetScroll, . - SpawnResetScroll