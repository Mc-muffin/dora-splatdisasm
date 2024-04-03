.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel RideActor
/* BC1C 8001B41C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BC20 8001B420 21488000 */  addu       $t1, $a0, $zero
/* BC24 8001B424 1C00BFAF */  sw         $ra, 0x1C($sp)
/* BC28 8001B428 1800B2AF */  sw         $s2, 0x18($sp)
/* BC2C 8001B42C 1400B1AF */  sw         $s1, 0x14($sp)
/* BC30 8001B430 1000B0AF */  sw         $s0, 0x10($sp)
/* BC34 8001B434 2001228D */  lw         $v0, 0x120($t1)
/* BC38 8001B438 00000000 */  nop
/* BC3C 8001B43C 2000438C */  lw         $v1, 0x20($v0)
/* BC40 8001B440 00000000 */  nop
/* BC44 8001B444 3000658C */  lw         $a1, 0x30($v1)
/* BC48 8001B448 0980113C */  lui        $s1, %hi(ETActor)
/* BC4C 8001B44C B05A25AE */  sw         $a1, %lo(ETActor)($s1)
/* BC50 8001B450 2001228D */  lw         $v0, 0x120($t1)
/* BC54 8001B454 00000000 */  nop
/* BC58 8001B458 2000438C */  lw         $v1, 0x20($v0)
/* BC5C 8001B45C 00000000 */  nop
/* BC60 8001B460 3400668C */  lw         $a2, 0x34($v1)
/* BC64 8001B464 B05A3126 */  addiu      $s1, $s1, %lo(ETActor)
/* BC68 8001B468 040026AE */  sw         $a2, 0x4($s1)
/* BC6C 8001B46C 2001228D */  lw         $v0, 0x120($t1)
/* BC70 8001B470 00000000 */  nop
/* BC74 8001B474 2000438C */  lw         $v1, 0x20($v0)
/* BC78 8001B478 00000000 */  nop
/* BC7C 8001B47C 3800678C */  lw         $a3, 0x38($v1)
/* BC80 8001B480 00000000 */  nop
/* BC84 8001B484 080027AE */  sw         $a3, 0x8($s1)
/* BC88 8001B488 2001228D */  lw         $v0, 0x120($t1)
/* BC8C 8001B48C 00000000 */  nop
/* BC90 8001B490 2000438C */  lw         $v1, 0x20($v0)
/* BC94 8001B494 00000000 */  nop
/* BC98 8001B498 5000648C */  lw         $a0, 0x50($v1)
/* BC9C 8001B49C 0A80123C */  lui        $s2, %hi(BootsActor)
/* BCA0 8001B4A0 988D44AE */  sw         $a0, %lo(BootsActor)($s2)
/* BCA4 8001B4A4 2001228D */  lw         $v0, 0x120($t1)
/* BCA8 8001B4A8 00000000 */  nop
/* BCAC 8001B4AC 2000438C */  lw         $v1, 0x20($v0)
/* BCB0 8001B4B0 00000000 */  nop
/* BCB4 8001B4B4 5400648C */  lw         $a0, 0x54($v1)
/* BCB8 8001B4B8 988D5026 */  addiu      $s0, $s2, %lo(BootsActor)
/* BCBC 8001B4BC 040004AE */  sw         $a0, 0x4($s0)
/* BCC0 8001B4C0 2001228D */  lw         $v0, 0x120($t1)
/* BCC4 8001B4C4 00000000 */  nop
/* BCC8 8001B4C8 2000438C */  lw         $v1, 0x20($v0)
/* BCCC 8001B4CC 00000000 */  nop
/* BCD0 8001B4D0 5800648C */  lw         $a0, 0x58($v1)
/* BCD4 8001B4D4 00000000 */  nop
/* BCD8 8001B4D8 080004AE */  sw         $a0, 0x8($s0)
/* BCDC 8001B4DC 5800228D */  lw         $v0, 0x58($t1)
/* BCE0 8001B4E0 00000000 */  nop
/* BCE4 8001B4E4 580002AE */  sw         $v0, 0x58($s0)
/* BCE8 8001B4E8 5400288D */  lw         $t0, 0x54($t1)
/* BCEC 8001B4EC 00000000 */  nop
/* BCF0 8001B4F0 540008AE */  sw         $t0, 0x54($s0)
/* BCF4 8001B4F4 5400238D */  lw         $v1, 0x54($t1)
/* BCF8 8001B4F8 4001888F */  lw         $t0, %gp_rel(eggfudge)($gp)
/* BCFC 8001B4FC 00000000 */  nop
/* BD00 8001B500 21186800 */  addu       $v1, $v1, $t0
/* BD04 8001B504 FF0F6330 */  andi       $v1, $v1, 0xFFF
/* BD08 8001B508 580023AE */  sw         $v1, 0x58($s1)
/* BD0C 8001B50C 5400228D */  lw         $v0, 0x54($t1)
/* BD10 8001B510 6C002426 */  addiu      $a0, $s1, 0x6C
/* BD14 8001B514 21104800 */  addu       $v0, $v0, $t0
/* BD18 8001B518 FF0F4230 */  andi       $v0, $v0, 0xFFF
/* BD1C 8001B51C 77FB000C */  jal        MotionPhysics_SetPosition
/* BD20 8001B520 540022AE */   sw        $v0, 0x54($s1)
/* BD24 8001B524 988D458E */  lw         $a1, %lo(BootsActor)($s2)
/* BD28 8001B528 0400068E */  lw         $a2, 0x4($s0)
/* BD2C 8001B52C 0800078E */  lw         $a3, 0x8($s0)
/* BD30 8001B530 77FB000C */  jal        MotionPhysics_SetPosition
/* BD34 8001B534 6C000426 */   addiu     $a0, $s0, 0x6C
/* BD38 8001B538 2025010C */  jal        CommonActorPostBrains
/* BD3C 8001B53C 21200002 */   addu      $a0, $s0, $zero
/* BD40 8001B540 21202002 */  addu       $a0, $s1, $zero
/* BD44 8001B544 10DE000C */  jal        CheckNextAnim
/* BD48 8001B548 2C012526 */   addiu     $a1, $s1, 0x12C
/* BD4C 8001B54C 21202002 */  addu       $a0, $s1, $zero
/* BD50 8001B550 10DE000C */  jal        CheckNextAnim
/* BD54 8001B554 58018524 */   addiu     $a1, $a0, 0x158
/* BD58 8001B558 1C00BF8F */  lw         $ra, 0x1C($sp)
/* BD5C 8001B55C 1800B28F */  lw         $s2, 0x18($sp)
/* BD60 8001B560 1400B18F */  lw         $s1, 0x14($sp)
/* BD64 8001B564 1000B08F */  lw         $s0, 0x10($sp)
/* BD68 8001B568 0800E003 */  jr         $ra
/* BD6C 8001B56C 2000BD27 */   addiu     $sp, $sp, 0x20
.size RideActor, . - RideActor
