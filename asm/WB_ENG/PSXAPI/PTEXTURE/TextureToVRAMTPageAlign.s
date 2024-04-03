.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextureToVRAMTPageAlign
/* 484F4 80057CF4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 484F8 80057CF8 1000A5AF */  sw         $a1, 0x10($sp)
/* 484FC 80057CFC 1800A527 */  addiu      $a1, $sp, 0x18
/* 48500 80057D00 3000B2AF */  sw         $s2, 0x30($sp)
/* 48504 80057D04 21908000 */  addu       $s2, $a0, $zero
/* 48508 80057D08 1400A6AF */  sw         $a2, 0x14($sp)
/* 4850C 80057D0C 21300000 */  addu       $a2, $zero, $zero
/* 48510 80057D10 3400BFAF */  sw         $ra, 0x34($sp)
/* 48514 80057D14 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 48518 80057D18 2800B0AF */  sw         $s0, 0x28($sp)
/* 4851C 80057D1C 04004396 */  lhu        $v1, 0x4($s2)
/* 48520 80057D20 00004492 */  lbu        $a0, 0x0($s2)
/* 48524 80057D24 06004296 */  lhu        $v0, 0x6($s2)
/* 48528 80057D28 21380000 */  addu       $a3, $zero, $zero
/* 4852C 80057D2C 1C00A3A7 */  sh         $v1, 0x1C($sp)
/* 48530 80057D30 7F6F010C */  jal        AllocVRAMTPageAlign
/* 48534 80057D34 1E00A2A7 */   sh        $v0, 0x1E($sp)
/* 48538 80057D38 00140200 */  sll        $v0, $v0, 16
/* 4853C 80057D3C 038C0200 */  sra        $s1, $v0, 16
/* 48540 80057D40 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 48544 80057D44 16002212 */  beq        $s1, $v0, .L80057DA0
/* 48548 80057D48 0C80023C */   lui       $v0, %hi(VRAMItems)
/* 4854C 80057D4C 38AD4224 */  addiu      $v0, $v0, %lo(VRAMItems)
/* 48550 80057D50 80181100 */  sll        $v1, $s1, 2
/* 48554 80057D54 21187100 */  addu       $v1, $v1, $s1
/* 48558 80057D58 80180300 */  sll        $v1, $v1, 2
/* 4855C 80057D5C 21186200 */  addu       $v1, $v1, $v0
/* 48560 80057D60 03006288 */  lwl        $v0, 0x3($v1)
/* 48564 80057D64 00006298 */  lwr        $v0, 0x0($v1)
/* 48568 80057D68 07006488 */  lwl        $a0, 0x7($v1)
/* 4856C 80057D6C 04006498 */  lwr        $a0, 0x4($v1)
/* 48570 80057D70 2300A2AB */  swl        $v0, 0x23($sp)
/* 48574 80057D74 2000A2BB */  swr        $v0, 0x20($sp)
/* 48578 80057D78 2700A4AB */  swl        $a0, 0x27($sp)
/* 4857C 80057D7C 2400A4BB */  swr        $a0, 0x24($sp)
/* 48580 80057D80 21200000 */  addu       $a0, $zero, $zero
/* 48584 80057D84 36DB010C */  jal        DrawSync
/* 48588 80057D88 2000B027 */   addiu     $s0, $sp, 0x20
/* 4858C 80057D8C 21200002 */  addu       $a0, $s0, $zero
/* 48590 80057D90 E1DB010C */  jal        LoadImage
/* 48594 80057D94 08024526 */   addiu     $a1, $s2, 0x208
/* 48598 80057D98 36DB010C */  jal        DrawSync
/* 4859C 80057D9C 21200000 */   addu      $a0, $zero, $zero
.L80057DA0:
/* 485A0 80057DA0 21102002 */  addu       $v0, $s1, $zero
/* 485A4 80057DA4 3400BF8F */  lw         $ra, 0x34($sp)
/* 485A8 80057DA8 3000B28F */  lw         $s2, 0x30($sp)
/* 485AC 80057DAC 2C00B18F */  lw         $s1, 0x2C($sp)
/* 485B0 80057DB0 2800B08F */  lw         $s0, 0x28($sp)
/* 485B4 80057DB4 0800E003 */  jr         $ra
/* 485B8 80057DB8 3800BD27 */   addiu     $sp, $sp, 0x38
.size TextureToVRAMTPageAlign, . - TextureToVRAMTPageAlign
