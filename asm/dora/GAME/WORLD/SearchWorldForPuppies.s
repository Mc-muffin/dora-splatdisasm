.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SearchWorldForPuppies
/* 149E8 800241E8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 149EC 800241EC 21280000 */  addu       $a1, $zero, $zero
/* 149F0 800241F0 0880023C */  lui        $v0, %hi(TestWorld)
/* 149F4 800241F4 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 149F8 800241F8 1800BFAF */  sw         $ra, 0x18($sp)
/* 149FC 800241FC 1400B1AF */  sw         $s1, 0x14($sp)
/* 14A00 80024200 1000B0AF */  sw         $s0, 0x10($sp)
/* 14A04 80024204 1C00448C */  lw         $a0, 0x1C($v0)
/* 14A08 80024208 1000428C */  lw         $v0, 0x10($v0)
/* 14A0C 8002420C 00000000 */  nop
/* 14A10 80024210 0A004018 */  blez       $v0, .L8002423C
/* 14A14 80024214 02000624 */   addiu     $a2, $zero, 0x2
/* 14A18 80024218 21184000 */  addu       $v1, $v0, $zero
.L8002421C:
/* 14A1C 8002421C 1000828C */  lw         $v0, 0x10($a0)
/* 14A20 80024220 00000000 */  nop
/* 14A24 80024224 02004614 */  bne        $v0, $a2, .L80024230
/* 14A28 80024228 00000000 */   nop
/* 14A2C 8002422C 0100A524 */  addiu      $a1, $a1, 0x1
.L80024230:
/* 14A30 80024230 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 14A34 80024234 F9FF6014 */  bnez       $v1, .L8002421C
/* 14A38 80024238 24008424 */   addiu     $a0, $a0, 0x24
.L8002423C:
/* 14A3C 8002423C 2188A000 */  addu       $s1, $a1, $zero
/* 14A40 80024240 AD85000C */  jal        SearchForDigActors
/* 14A44 80024244 02000424 */   addiu     $a0, $zero, 0x2
/* 14A48 80024248 02000424 */  addiu      $a0, $zero, 0x2
/* 14A4C 8002424C 8085000C */  jal        SearchForCrateActors
/* 14A50 80024250 21804000 */   addu      $s0, $v0, $zero
/* 14A54 80024254 21800202 */  addu       $s0, $s0, $v0
/* 14A58 80024258 21103002 */  addu       $v0, $s1, $s0
/* 14A5C 8002425C 1800BF8F */  lw         $ra, 0x18($sp)
/* 14A60 80024260 1400B18F */  lw         $s1, 0x14($sp)
/* 14A64 80024264 1000B08F */  lw         $s0, 0x10($sp)
/* 14A68 80024268 0800E003 */  jr         $ra
/* 14A6C 8002426C 2000BD27 */   addiu     $sp, $sp, 0x20
.size SearchWorldForPuppies, . - SearchWorldForPuppies
