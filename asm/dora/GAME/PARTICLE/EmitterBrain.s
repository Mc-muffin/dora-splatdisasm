.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EmitterBrain
/* 20380 8002FB80 4000858C */  lw         $a1, 0x40($a0)
/* 20384 8002FB84 0800828C */  lw         $v0, 0x8($a0)
/* 20388 8002FB88 1400878C */  lw         $a3, 0x14($a0)
/* 2038C 8002FB8C 1C004018 */  blez       $v0, .L8002FC00
/* 20390 8002FB90 01000824 */   addiu     $t0, $zero, 0x1
/* 20394 8002FB94 21304000 */  addu       $a2, $v0, $zero
.L8002FB98:
/* 20398 8002FB98 0000A284 */  lh         $v0, 0x0($a1)
/* 2039C 8002FB9C 00000000 */  nop
/* 203A0 8002FBA0 14004814 */  bne        $v0, $t0, .L8002FBF4
/* 203A4 8002FBA4 00000000 */   nop
/* 203A8 8002FBA8 0400A28C */  lw         $v0, 0x4($a1)
/* 203AC 8002FBAC 1000A38C */  lw         $v1, 0x10($a1)
/* 203B0 8002FBB0 1800A48C */  lw         $a0, 0x18($a1)
/* 203B4 8002FBB4 21104300 */  addu       $v0, $v0, $v1
/* 203B8 8002FBB8 1400A38C */  lw         $v1, 0x14($a1)
/* 203BC 8002FBBC 0400A2AC */  sw         $v0, 0x4($a1)
/* 203C0 8002FBC0 0800A28C */  lw         $v0, 0x8($a1)
/* 203C4 8002FBC4 21186700 */  addu       $v1, $v1, $a3
/* 203C8 8002FBC8 21104300 */  addu       $v0, $v0, $v1
/* 203CC 8002FBCC 0C00A38C */  lw         $v1, 0xC($a1)
/* 203D0 8002FBD0 0800A2AC */  sw         $v0, 0x8($a1)
/* 203D4 8002FBD4 0200A294 */  lhu        $v0, 0x2($a1)
/* 203D8 8002FBD8 21186400 */  addu       $v1, $v1, $a0
/* 203DC 8002FBDC FFFF4224 */  addiu      $v0, $v0, -0x1
/* 203E0 8002FBE0 0200A2A4 */  sh         $v0, 0x2($a1)
/* 203E4 8002FBE4 00140200 */  sll        $v0, $v0, 16
/* 203E8 8002FBE8 02004014 */  bnez       $v0, .L8002FBF4
/* 203EC 8002FBEC 0C00A3AC */   sw        $v1, 0xC($a1)
/* 203F0 8002FBF0 0000A0A4 */  sh         $zero, 0x0($a1)
.L8002FBF4:
/* 203F4 8002FBF4 FFFFC624 */  addiu      $a2, $a2, -0x1
/* 203F8 8002FBF8 E7FFC014 */  bnez       $a2, .L8002FB98
/* 203FC 8002FBFC 7400A524 */   addiu     $a1, $a1, 0x74
.L8002FC00:
/* 20400 8002FC00 0800E003 */  jr         $ra
/* 20404 8002FC04 00000000 */   nop
.size EmitterBrain, . - EmitterBrain
