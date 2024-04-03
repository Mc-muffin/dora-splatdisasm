.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitHirezScreen
/* 4BBFC 8005B3FC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4BC00 8005B400 00020424 */  addiu      $a0, $zero, 0x200
/* 4BC04 8005B404 E0010524 */  addiu      $a1, $zero, 0x1E0
/* 4BC08 8005B408 21300000 */  addu       $a2, $zero, $zero
/* 4BC0C 8005B40C 21380000 */  addu       $a3, $zero, $zero
/* 4BC10 8005B410 3000BFAF */  sw         $ra, 0x30($sp)
/* 4BC14 8005B414 37E8010C */  jal        GsInitGraph2
/* 4BC18 8005B418 1000A0AF */   sw        $zero, 0x10($sp)
/* 4BC1C 8005B41C 8BE9010C */  jal        GsInit3D
/* 4BC20 8005B420 00000000 */   nop
/* 4BC24 8005B424 07EB010C */  jal        GsSetLightMode
/* 4BC28 8005B428 21200000 */   addu      $a0, $zero, $zero
/* 4BC2C 8005B42C 00080424 */  addiu      $a0, $zero, 0x800
/* 4BC30 8005B430 00080524 */  addiu      $a1, $zero, 0x800
/* 4BC34 8005B434 27EB010C */  jal        GsSetAmbient
/* 4BC38 8005B438 00080624 */   addiu     $a2, $zero, 0x800
/* 4BC3C 8005B43C A5EB010C */  jal        InitGeom
/* 4BC40 8005B440 00000000 */   nop
/* 4BC44 8005B444 00010424 */  addiu      $a0, $zero, 0x100
/* 4BC48 8005B448 E3ED010C */  jal        SetGeomOffset
/* 4BC4C 8005B44C F0000524 */   addiu     $a1, $zero, 0xF0
/* 4BC50 8005B450 EBED010C */  jal        SetGeomScreen
/* 4BC54 8005B454 00040424 */   addiu     $a0, $zero, 0x400
/* 4BC58 8005B458 1800A427 */  addiu      $a0, $sp, 0x18
/* 4BC5C 8005B45C 2000A527 */  addiu      $a1, $sp, 0x20
/* 4BC60 8005B460 2800A627 */  addiu      $a2, $sp, 0x28
/* 4BC64 8005B464 01000724 */  addiu      $a3, $zero, 0x1
/* 4BC68 8005B468 00020224 */  addiu      $v0, $zero, 0x200
/* 4BC6C 8005B46C E0010324 */  addiu      $v1, $zero, 0x1E0
/* 4BC70 8005B470 1800A2A7 */  sh         $v0, 0x18($sp)
/* 4BC74 8005B474 1A00A0A7 */  sh         $zero, 0x1A($sp)
/* 4BC78 8005B478 1C00A2A7 */  sh         $v0, 0x1C($sp)
/* 4BC7C 8005B47C 1E00A3A7 */  sh         $v1, 0x1E($sp)
/* 4BC80 8005B480 2000A2A7 */  sh         $v0, 0x20($sp)
/* 4BC84 8005B484 2200A0A7 */  sh         $zero, 0x22($sp)
/* 4BC88 8005B488 2400A2A7 */  sh         $v0, 0x24($sp)
/* 4BC8C 8005B48C 2600A3A7 */  sh         $v1, 0x26($sp)
/* 4BC90 8005B490 2A00A0A3 */  sb         $zero, 0x2A($sp)
/* 4BC94 8005B494 2900A0A3 */  sb         $zero, 0x29($sp)
/* 4BC98 8005B498 A267010C */  jal        SetupScreens2
/* 4BC9C 8005B49C 2800A0A3 */   sb        $zero, 0x28($sp)
/* 4BCA0 8005B4A0 5D67010C */  jal        InitOrderingTables
/* 4BCA4 8005B4A4 00000000 */   nop
/* 4BCA8 8005B4A8 3000BF8F */  lw         $ra, 0x30($sp)
/* 4BCAC 8005B4AC 00000000 */  nop
/* 4BCB0 8005B4B0 0800E003 */  jr         $ra
/* 4BCB4 8005B4B4 3800BD27 */   addiu     $sp, $sp, 0x38
.size InitHirezScreen, . - InitHirezScreen
