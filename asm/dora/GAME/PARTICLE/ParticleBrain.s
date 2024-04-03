.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleBrain
/* 20408 8002FC08 21388000 */  addu       $a3, $a0, $zero
/* 2040C 8002FC0C 4000E58C */  lw         $a1, 0x40($a3)
/* 20410 8002FC10 0800E28C */  lw         $v0, 0x8($a3)
/* 20414 8002FC14 1400E88C */  lw         $t0, 0x14($a3)
/* 20418 8002FC18 1D004018 */  blez       $v0, .L8002FC90
/* 2041C 8002FC1C 00000000 */   nop
/* 20420 8002FC20 01000924 */  addiu      $t1, $zero, 0x1
/* 20424 8002FC24 21304000 */  addu       $a2, $v0, $zero
.L8002FC28:
/* 20428 8002FC28 0000A284 */  lh         $v0, 0x0($a1)
/* 2042C 8002FC2C 00000000 */  nop
/* 20430 8002FC30 14004914 */  bne        $v0, $t1, .L8002FC84
/* 20434 8002FC34 00000000 */   nop
/* 20438 8002FC38 0400A28C */  lw         $v0, 0x4($a1)
/* 2043C 8002FC3C 1000A38C */  lw         $v1, 0x10($a1)
/* 20440 8002FC40 1800A48C */  lw         $a0, 0x18($a1)
/* 20444 8002FC44 21104300 */  addu       $v0, $v0, $v1
/* 20448 8002FC48 1400A38C */  lw         $v1, 0x14($a1)
/* 2044C 8002FC4C 0400A2AC */  sw         $v0, 0x4($a1)
/* 20450 8002FC50 0800A28C */  lw         $v0, 0x8($a1)
/* 20454 8002FC54 21186800 */  addu       $v1, $v1, $t0
/* 20458 8002FC58 21104300 */  addu       $v0, $v0, $v1
/* 2045C 8002FC5C 0C00A38C */  lw         $v1, 0xC($a1)
/* 20460 8002FC60 0800A2AC */  sw         $v0, 0x8($a1)
/* 20464 8002FC64 0200A294 */  lhu        $v0, 0x2($a1)
/* 20468 8002FC68 21186400 */  addu       $v1, $v1, $a0
/* 2046C 8002FC6C FFFF4224 */  addiu      $v0, $v0, -0x1
/* 20470 8002FC70 0200A2A4 */  sh         $v0, 0x2($a1)
/* 20474 8002FC74 00140200 */  sll        $v0, $v0, 16
/* 20478 8002FC78 02004014 */  bnez       $v0, .L8002FC84
/* 2047C 8002FC7C 0C00A3AC */   sw        $v1, 0xC($a1)
/* 20480 8002FC80 0000A0A4 */  sh         $zero, 0x0($a1)
.L8002FC84:
/* 20484 8002FC84 FFFFC624 */  addiu      $a2, $a2, -0x1
/* 20488 8002FC88 E7FFC014 */  bnez       $a2, .L8002FC28
/* 2048C 8002FC8C 7400A524 */   addiu     $a1, $a1, 0x74
.L8002FC90:
/* 20490 8002FC90 0C00E28C */  lw         $v0, 0xC($a3)
/* 20494 8002FC94 00000000 */  nop
/* 20498 8002FC98 04004018 */  blez       $v0, .L8002FCAC
/* 2049C 8002FC9C FFFF4224 */   addiu     $v0, $v0, -0x1
/* 204A0 8002FCA0 02004014 */  bnez       $v0, .L8002FCAC
/* 204A4 8002FCA4 0C00E2AC */   sw        $v0, 0xC($a3)
/* 204A8 8002FCA8 0000E0AC */  sw         $zero, 0x0($a3)
.L8002FCAC:
/* 204AC 8002FCAC 0800E003 */  jr         $ra
/* 204B0 8002FCB0 00000000 */   nop
.size ParticleBrain, . - ParticleBrain
