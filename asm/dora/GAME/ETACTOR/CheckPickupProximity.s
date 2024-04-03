.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckPickupProximity
/* B924 8001B124 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B928 8001B128 1400B1AF */  sw         $s1, 0x14($sp)
/* B92C 8001B12C 21888000 */  addu       $s1, $a0, $zero
/* B930 8001B130 1800BFAF */  sw         $ra, 0x18($sp)
/* B934 8001B134 1000B0AF */  sw         $s0, 0x10($sp)
/* B938 8001B138 4C00228E */  lw         $v0, 0x4C($s1)
/* B93C 8001B13C 0C00238E */  lw         $v1, 0xC($s1)
/* B940 8001B140 10004224 */  addiu      $v0, $v0, 0x10
/* B944 8001B144 F0FF6324 */  addiu      $v1, $v1, -0x10
/* B948 8001B148 0200632C */  sltiu      $v1, $v1, 0x2
/* B94C 8001B14C 08006014 */  bnez       $v1, .L8001B170
/* B950 8001B150 4C0022AE */   sw        $v0, 0x4C($s1)
/* B954 8001B154 0980033C */  lui        $v1, %hi(gGameState)
/* B958 8001B158 8456638C */  lw         $v1, %lo(gGameState)($v1)
/* B95C 8001B15C 0A000224 */  addiu      $v0, $zero, 0xA
/* B960 8001B160 03006210 */  beq        $v1, $v0, .L8001B170
/* B964 8001B164 08000224 */   addiu     $v0, $zero, 0x8
/* B968 8001B168 03006214 */  bne        $v1, $v0, .L8001B178
/* B96C 8001B16C 21202002 */   addu      $a0, $s1, $zero
.L8001B170:
/* B970 8001B170 676C0008 */  j          .L8001B19C
/* B974 8001B174 21100000 */   addu      $v0, $zero, $zero
.L8001B178:
/* B978 8001B178 0980053C */  lui        $a1, %hi(ETActor)
/* B97C 8001B17C 3AFC000C */  jal        CollisionCheck
/* B980 8001B180 B05AA524 */   addiu     $a1, $a1, %lo(ETActor)
/* B984 8001B184 21804000 */  addu       $s0, $v0, $zero
/* B988 8001B188 03000012 */  beqz       $s0, .L8001B198
/* B98C 8001B18C 21202002 */   addu      $a0, $s1, $zero
/* B990 8001B190 84FC000C */  jal        AddActorETCollisionList
/* B994 8001B194 21280002 */   addu      $a1, $s0, $zero
.L8001B198:
/* B998 8001B198 21100002 */  addu       $v0, $s0, $zero
.L8001B19C:
/* B99C 8001B19C 4C00238E */  lw         $v1, 0x4C($s1)
/* B9A0 8001B1A0 1800BF8F */  lw         $ra, 0x18($sp)
/* B9A4 8001B1A4 1000B08F */  lw         $s0, 0x10($sp)
/* B9A8 8001B1A8 F0FF6324 */  addiu      $v1, $v1, -0x10
/* B9AC 8001B1AC 4C0023AE */  sw         $v1, 0x4C($s1)
/* B9B0 8001B1B0 1400B18F */  lw         $s1, 0x14($sp)
/* B9B4 8001B1B4 0800E003 */  jr         $ra
/* B9B8 8001B1B8 2000BD27 */   addiu     $sp, $sp, 0x20
.size CheckPickupProximity, . - CheckPickupProximity
