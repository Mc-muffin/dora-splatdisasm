.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitLorezScreen
/* 4BCC4 8005B4C4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4BCC8 8005B4C8 40010424 */  addiu      $a0, $zero, 0x140
/* 4BCCC 8005B4CC F0000524 */  addiu      $a1, $zero, 0xF0
/* 4BCD0 8005B4D0 21300000 */  addu       $a2, $zero, $zero
/* 4BCD4 8005B4D4 21380000 */  addu       $a3, $zero, $zero
/* 4BCD8 8005B4D8 3400BFAF */  sw         $ra, 0x34($sp)
/* 4BCDC 8005B4DC 3000B0AF */  sw         $s0, 0x30($sp)
/* 4BCE0 8005B4E0 37E8010C */  jal        GsInitGraph2
/* 4BCE4 8005B4E4 1000A0AF */   sw        $zero, 0x10($sp)
/* 4BCE8 8005B4E8 8BE9010C */  jal        GsInit3D
/* 4BCEC 8005B4EC F0001024 */   addiu     $s0, $zero, 0xF0
/* 4BCF0 8005B4F0 07EB010C */  jal        GsSetLightMode
/* 4BCF4 8005B4F4 21200000 */   addu      $a0, $zero, $zero
/* 4BCF8 8005B4F8 00080424 */  addiu      $a0, $zero, 0x800
/* 4BCFC 8005B4FC 00080524 */  addiu      $a1, $zero, 0x800
/* 4BD00 8005B500 27EB010C */  jal        GsSetAmbient
/* 4BD04 8005B504 00080624 */   addiu     $a2, $zero, 0x800
/* 4BD08 8005B508 A5EB010C */  jal        InitGeom
/* 4BD0C 8005B50C 00000000 */   nop
/* 4BD10 8005B510 EBED010C */  jal        SetGeomScreen
/* 4BD14 8005B514 EE020424 */   addiu     $a0, $zero, 0x2EE
/* 4BD18 8005B518 A0000424 */  addiu      $a0, $zero, 0xA0
/* 4BD1C 8005B51C E3ED010C */  jal        SetGeomOffset
/* 4BD20 8005B520 78000524 */   addiu     $a1, $zero, 0x78
/* 4BD24 8005B524 5D67010C */  jal        InitOrderingTables
/* 4BD28 8005B528 00000000 */   nop
/* 4BD2C 8005B52C 1800A427 */  addiu      $a0, $sp, 0x18
/* 4BD30 8005B530 2000A527 */  addiu      $a1, $sp, 0x20
/* 4BD34 8005B534 2800A627 */  addiu      $a2, $sp, 0x28
/* 4BD38 8005B538 01000724 */  addiu      $a3, $zero, 0x1
/* 4BD3C 8005B53C 40010224 */  addiu      $v0, $zero, 0x140
/* 4BD40 8005B540 1800A0A7 */  sh         $zero, 0x18($sp)
/* 4BD44 8005B544 1A00A0A7 */  sh         $zero, 0x1A($sp)
/* 4BD48 8005B548 1C00A2A7 */  sh         $v0, 0x1C($sp)
/* 4BD4C 8005B54C 1E00B0A7 */  sh         $s0, 0x1E($sp)
/* 4BD50 8005B550 2000A0A7 */  sh         $zero, 0x20($sp)
/* 4BD54 8005B554 2200B0A7 */  sh         $s0, 0x22($sp)
/* 4BD58 8005B558 2400A2A7 */  sh         $v0, 0x24($sp)
/* 4BD5C 8005B55C 2600B0A7 */  sh         $s0, 0x26($sp)
/* 4BD60 8005B560 2A00A0A3 */  sb         $zero, 0x2A($sp)
/* 4BD64 8005B564 2900A0A3 */  sb         $zero, 0x29($sp)
/* 4BD68 8005B568 F867010C */  jal        SetupScreens
/* 4BD6C 8005B56C 2800A0A3 */   sb        $zero, 0x28($sp)
/* 4BD70 8005B570 0B80023C */  lui        $v0, %hi(gDoubleBuffer)
/* 4BD74 8005B574 3400BF8F */  lw         $ra, 0x34($sp)
/* 4BD78 8005B578 78B94224 */  addiu      $v0, $v0, %lo(gDoubleBuffer)
/* 4BD7C 8005B57C CC1080AF */  sw         $zero, %gp_rel(TellTimerUpdateScreen)($gp)
/* 4BD80 8005B580 EA0050A4 */  sh         $s0, 0xEA($v0)
/* 4BD84 8005B584 6A0050A4 */  sh         $s0, 0x6A($v0)
/* 4BD88 8005B588 3000B08F */  lw         $s0, 0x30($sp)
/* 4BD8C 8005B58C 0800E003 */  jr         $ra
/* 4BD90 8005B590 3800BD27 */   addiu     $sp, $sp, 0x38
.size InitLorezScreen, . - InitLorezScreen
