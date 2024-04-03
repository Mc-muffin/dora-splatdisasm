.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SearchWorldForStars
/* 14A70 80024270 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 14A74 80024274 21280000 */  addu       $a1, $zero, $zero
/* 14A78 80024278 0880023C */  lui        $v0, %hi(TestWorld)
/* 14A7C 8002427C 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 14A80 80024280 1800BFAF */  sw         $ra, 0x18($sp)
/* 14A84 80024284 1400B1AF */  sw         $s1, 0x14($sp)
/* 14A88 80024288 1000B0AF */  sw         $s0, 0x10($sp)
/* 14A8C 8002428C 1C00448C */  lw         $a0, 0x1C($v0)
/* 14A90 80024290 1000428C */  lw         $v0, 0x10($v0)
/* 14A94 80024294 00000000 */  nop
/* 14A98 80024298 0A004018 */  blez       $v0, .L800242C4
/* 14A9C 8002429C 07000624 */   addiu     $a2, $zero, 0x7
/* 14AA0 800242A0 21184000 */  addu       $v1, $v0, $zero
.L800242A4:
/* 14AA4 800242A4 1000828C */  lw         $v0, 0x10($a0)
/* 14AA8 800242A8 00000000 */  nop
/* 14AAC 800242AC 02004614 */  bne        $v0, $a2, .L800242B8
/* 14AB0 800242B0 00000000 */   nop
/* 14AB4 800242B4 0100A524 */  addiu      $a1, $a1, 0x1
.L800242B8:
/* 14AB8 800242B8 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 14ABC 800242BC F9FF6014 */  bnez       $v1, .L800242A4
/* 14AC0 800242C0 24008424 */   addiu     $a0, $a0, 0x24
.L800242C4:
/* 14AC4 800242C4 2188A000 */  addu       $s1, $a1, $zero
/* 14AC8 800242C8 AD85000C */  jal        SearchForDigActors
/* 14ACC 800242CC 07000424 */   addiu     $a0, $zero, 0x7
/* 14AD0 800242D0 07000424 */  addiu      $a0, $zero, 0x7
/* 14AD4 800242D4 8085000C */  jal        SearchForCrateActors
/* 14AD8 800242D8 21804000 */   addu      $s0, $v0, $zero
/* 14ADC 800242DC 21800202 */  addu       $s0, $s0, $v0
/* 14AE0 800242E0 21883002 */  addu       $s1, $s1, $s0
/* 14AE4 800242E4 0980023C */  lui        $v0, %hi(NumPickupList)
/* 14AE8 800242E8 A055428C */  lw         $v0, %lo(NumPickupList)($v0)
/* 14AEC 800242EC 00000000 */  nop
/* 14AF0 800242F0 04004018 */  blez       $v0, .L80024304
/* 14AF4 800242F4 21180000 */   addu      $v1, $zero, $zero
.L800242F8:
/* 14AF8 800242F8 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 14AFC 800242FC FEFF4014 */  bnez       $v0, .L800242F8
/* 14B00 80024300 01006324 */   addiu     $v1, $v1, 0x1
.L80024304:
/* 14B04 80024304 21102302 */  addu       $v0, $s1, $v1
/* 14B08 80024308 1800BF8F */  lw         $ra, 0x18($sp)
/* 14B0C 8002430C 1400B18F */  lw         $s1, 0x14($sp)
/* 14B10 80024310 1000B08F */  lw         $s0, 0x10($sp)
/* 14B14 80024314 0800E003 */  jr         $ra
/* 14B18 80024318 2000BD27 */   addiu     $sp, $sp, 0x20
.size SearchWorldForStars, . - SearchWorldForStars
