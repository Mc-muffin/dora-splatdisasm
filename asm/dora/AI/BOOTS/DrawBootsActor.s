.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawBootsActor
/* 25CF8 800354F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 25CFC 800354FC 1400B1AF */  sw         $s1, 0x14($sp)
/* 25D00 80035500 21880000 */  addu       $s1, $zero, $zero
/* 25D04 80035504 0A80043C */  lui        $a0, %hi(BootsActor)
/* 25D08 80035508 1000B0AF */  sw         $s0, 0x10($sp)
/* 25D0C 8003550C 988D9024 */  addiu      $s0, $a0, %lo(BootsActor)
/* 25D10 80035510 E3000224 */  addiu      $v0, $zero, 0xE3
/* 25D14 80035514 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 25D18 80035518 1800B2AF */  sw         $s2, 0x18($sp)
/* 25D1C 8003551C 1000038E */  lw         $v1, 0x10($s0)
/* 25D20 80035520 21908000 */  addu       $s2, $a0, $zero
/* 25D24 80035524 00016330 */  andi       $v1, $v1, 0x100
/* 25D28 80035528 3D006010 */  beqz       $v1, .L80035620
/* 25D2C 8003552C 5C0002AE */   sw        $v0, 0x5C($s0)
/* 25D30 80035530 258C010C */  jal        GetActorDepth
/* 25D34 80035534 21200002 */   addu      $a0, $s0, $zero
/* 25D38 80035538 21884000 */  addu       $s1, $v0, $zero
/* 25D3C 8003553C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 25D40 80035540 02002216 */  bne        $s1, $v0, .L8003554C
/* 25D44 80035544 00000000 */   nop
/* 25D48 80035548 21880000 */  addu       $s1, $zero, $zero
.L8003554C:
/* 25D4C 8003554C 1000028E */  lw         $v0, 0x10($s0)
/* 25D50 80035550 00000000 */  nop
/* 25D54 80035554 00044230 */  andi       $v0, $v0, 0x400
/* 25D58 80035558 03004014 */  bnez       $v0, .L80035568
/* 25D5C 8003555C 0980023C */   lui       $v0, %hi(ETActor)
/* 25D60 80035560 89D50008 */  j          .L80035624
/* 25D64 80035564 FFFF0224 */   addiu     $v0, $zero, -0x1
.L80035568:
/* 25D68 80035568 B05A4424 */  addiu      $a0, $v0, %lo(ETActor)
/* 25D6C 8003556C 6800838C */  lw         $v1, 0x68($a0)
/* 25D70 80035570 00000000 */  nop
/* 25D74 80035574 13007114 */  bne        $v1, $s1, .L800355C4
/* 25D78 80035578 21284000 */   addu      $a1, $v0, $zero
/* 25D7C 8003557C 0980023C */  lui        $v0, %hi(BootsAndDoraRidingFlag)
/* 25D80 80035580 EC42428C */  lw         $v0, %lo(BootsAndDoraRidingFlag)($v0)
/* 25D84 80035584 00000000 */  nop
/* 25D88 80035588 0A004014 */  bnez       $v0, .L800355B4
/* 25D8C 8003558C 01000224 */   addiu     $v0, $zero, 0x1
/* 25D90 80035590 7800838C */  lw         $v1, 0x78($a0)
/* 25D94 80035594 7800028E */  lw         $v0, 0x78($s0)
/* 25D98 80035598 00000000 */  nop
/* 25D9C 8003559C 2A104300 */  slt        $v0, $v0, $v1
/* 25DA0 800355A0 04004010 */  beqz       $v0, .L800355B4
/* 25DA4 800355A4 01000224 */   addiu     $v0, $zero, 0x1
/* 25DA8 800355A8 380000AE */  sw         $zero, 0x38($s0)
/* 25DAC 800355AC 73D50008 */  j          .L800355CC
/* 25DB0 800355B0 380082AC */   sw        $v0, 0x38($a0)
.L800355B4:
/* 25DB4 800355B4 B05AA324 */  addiu      $v1, $a1, %lo(ETActor)
/* 25DB8 800355B8 380002AE */  sw         $v0, 0x38($s0)
/* 25DBC 800355BC 73D50008 */  j          .L800355CC
/* 25DC0 800355C0 380060AC */   sw        $zero, 0x38($v1)
.L800355C4:
/* 25DC4 800355C4 380000AE */  sw         $zero, 0x38($s0)
/* 25DC8 800355C8 380080AC */  sw         $zero, 0x38($a0)
.L800355CC:
/* 25DCC 800355CC 0980023C */  lui        $v0, %hi(PLAYER_WAIT_FLAG)
/* 25DD0 800355D0 AC42428C */  lw         $v0, %lo(PLAYER_WAIT_FLAG)($v0)
/* 25DD4 800355D4 00000000 */  nop
/* 25DD8 800355D8 0B004010 */  beqz       $v0, .L80035608
/* 25DDC 800355DC 21200002 */   addu      $a0, $s0, $zero
/* 25DE0 800355E0 3C01028E */  lw         $v0, 0x13C($s0)
/* 25DE4 800355E4 00000000 */  nop
/* 25DE8 800355E8 07004014 */  bnez       $v0, .L80035608
/* 25DEC 800355EC 00000000 */   nop
/* 25DF0 800355F0 4C01028E */  lw         $v0, 0x14C($s0)
/* 25DF4 800355F4 00000000 */  nop
/* 25DF8 800355F8 03004014 */  bnez       $v0, .L80035608
/* 25DFC 800355FC 988D4226 */   addiu     $v0, $s2, %lo(BootsActor)
/* 25E00 80035600 580040AC */  sw         $zero, 0x58($v0)
/* 25E04 80035604 21200002 */  addu       $a0, $s0, $zero
.L80035608:
/* 25E08 80035608 B19A010C */  jal        DrawActor
/* 25E0C 8003560C 21282002 */   addu      $a1, $s1, $zero
/* 25E10 80035610 21200002 */  addu       $a0, $s0, $zero
/* 25E14 80035614 3F89010C */  jal        DrawActorShadow
/* 25E18 80035618 21282002 */   addu      $a1, $s1, $zero
/* 25E1C 8003561C 680011AE */  sw         $s1, 0x68($s0)
.L80035620:
/* 25E20 80035620 21102002 */  addu       $v0, $s1, $zero
.L80035624:
/* 25E24 80035624 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 25E28 80035628 1800B28F */  lw         $s2, 0x18($sp)
/* 25E2C 8003562C 1400B18F */  lw         $s1, 0x14($sp)
/* 25E30 80035630 1000B08F */  lw         $s0, 0x10($sp)
/* 25E34 80035634 0800E003 */  jr         $ra
/* 25E38 80035638 2000BD27 */   addiu     $sp, $sp, 0x20
.size DrawBootsActor, . - DrawBootsActor
