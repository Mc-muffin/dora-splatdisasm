.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitEndSeqActor
/* 33D00 80043500 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 33D04 80043504 2400B5AF */  sw         $s5, 0x24($sp)
/* 33D08 80043508 21A8A000 */  addu       $s5, $a1, $zero
/* 33D0C 8004350C 1800B2AF */  sw         $s2, 0x18($sp)
/* 33D10 80043510 4000B28F */  lw         $s2, 0x40($sp)
/* 33D14 80043514 A00C858F */  lw         $a1, %gp_rel(NumSpawnedActors)($gp)
/* 33D18 80043518 0A80023C */  lui        $v0, %hi(SpawnServiceList)
/* 33D1C 8004351C 1000B0AF */  sw         $s0, 0x10($sp)
/* 33D20 80043520 B8C05024 */  addiu      $s0, $v0, %lo(SpawnServiceList)
/* 33D24 80043524 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 33D28 80043528 4400B38F */  lw         $s3, 0x44($sp)
/* 33D2C 8004352C 21400000 */  addu       $t0, $zero, $zero
/* 33D30 80043530 2000B4AF */  sw         $s4, 0x20($sp)
/* 33D34 80043534 21A08000 */  addu       $s4, $a0, $zero
/* 33D38 80043538 2800B6AF */  sw         $s6, 0x28($sp)
/* 33D3C 8004353C 21B0C000 */  addu       $s6, $a2, $zero
/* 33D40 80043540 1400B1AF */  sw         $s1, 0x14($sp)
/* 33D44 80043544 2188E000 */  addu       $s1, $a3, $zero
/* 33D48 80043548 2B00A018 */  blez       $a1, .L800435F8
/* 33D4C 8004354C 2C00BFAF */   sw        $ra, 0x2C($sp)
.L80043550:
/* 33D50 80043550 1000048E */  lw         $a0, 0x10($s0)
/* 33D54 80043554 00000000 */  nop
/* 33D58 80043558 00018230 */  andi       $v0, $a0, 0x100
/* 33D5C 8004355C 22004014 */  bnez       $v0, .L800435E8
/* 33D60 80043560 00000000 */   nop
/* 33D64 80043564 4400028E */  lw         $v0, 0x44($s0)
/* 33D68 80043568 00000000 */  nop
/* 33D6C 8004356C 1000438C */  lw         $v1, 0x10($v0)
/* 33D70 80043570 00000000 */  nop
/* 33D74 80043574 1D002316 */  bne        $s1, $v1, .L800435EC
/* 33D78 80043578 01000825 */   addiu     $t0, $t0, 0x1
/* 33D7C 8004357C 00018234 */  ori        $v0, $a0, 0x100
/* 33D80 80043580 100002AE */  sw         $v0, 0x10($s0)
/* 33D84 80043584 63DD000C */  jal        CheckIfPooled
/* 33D88 80043588 21202002 */   addu      $a0, $s1, $zero
/* 33D8C 8004358C 05004010 */  beqz       $v0, .L800435A4
/* 33D90 80043590 21200002 */   addu      $a0, $s0, $zero
/* 33D94 80043594 3BDD000C */  jal        AllocatePoolActor
/* 33D98 80043598 21282002 */   addu      $a1, $s1, $zero
/* 33D9C 8004359C 05004010 */  beqz       $v0, .L800435B4
/* 33DA0 800435A0 200102AE */   sw        $v0, 0x120($s0)
.L800435A4:
/* 33DA4 800435A4 1000028E */  lw         $v0, 0x10($s0)
/* 33DA8 800435A8 00000000 */  nop
/* 33DAC 800435AC 00014234 */  ori        $v0, $v0, 0x100
/* 33DB0 800435B0 100002AE */  sw         $v0, 0x10($s0)
.L800435B4:
/* 33DB4 800435B4 700014AE */  sw         $s4, 0x70($s0)
/* 33DB8 800435B8 740015AE */  sw         $s5, 0x74($s0)
/* 33DBC 800435BC 06004006 */  bltz       $s2, .L800435D8
/* 33DC0 800435C0 780016AE */   sw        $s6, 0x78($s0)
/* 33DC4 800435C4 440112AE */  sw         $s2, 0x144($s0)
/* 33DC8 800435C8 21200002 */  addu       $a0, $s0, $zero
/* 33DCC 800435CC 21284002 */  addu       $a1, $s2, $zero
/* 33DD0 800435D0 DCE2000C */  jal        ForceAnim
/* 33DD4 800435D4 2C010626 */   addiu     $a2, $s0, 0x12C
.L800435D8:
/* 33DD8 800435D8 21100002 */  addu       $v0, $s0, $zero
/* 33DDC 800435DC 580013AE */  sw         $s3, 0x58($s0)
/* 33DE0 800435E0 7E0D0108 */  j          .L800435F8
/* 33DE4 800435E4 540013AE */   sw        $s3, 0x54($s0)
.L800435E8:
/* 33DE8 800435E8 01000825 */  addiu      $t0, $t0, 0x1
.L800435EC:
/* 33DEC 800435EC 2A100501 */  slt        $v0, $t0, $a1
/* 33DF0 800435F0 D7FF4014 */  bnez       $v0, .L80043550
/* 33DF4 800435F4 88011026 */   addiu     $s0, $s0, 0x188
.L800435F8:
/* 33DF8 800435F8 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 33DFC 800435FC 2800B68F */  lw         $s6, 0x28($sp)
/* 33E00 80043600 2400B58F */  lw         $s5, 0x24($sp)
/* 33E04 80043604 2000B48F */  lw         $s4, 0x20($sp)
/* 33E08 80043608 1C00B38F */  lw         $s3, 0x1C($sp)
/* 33E0C 8004360C 1800B28F */  lw         $s2, 0x18($sp)
/* 33E10 80043610 1400B18F */  lw         $s1, 0x14($sp)
/* 33E14 80043614 1000B08F */  lw         $s0, 0x10($sp)
/* 33E18 80043618 0800E003 */  jr         $ra
/* 33E1C 8004361C 3000BD27 */   addiu     $sp, $sp, 0x30
.size InitEndSeqActor, . - InitEndSeqActor
