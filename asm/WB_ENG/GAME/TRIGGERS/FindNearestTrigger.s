.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FindNearestTrigger
/* 30C40 80040440 C414838F */  lw         $v1, %gp_rel(gnumpressuretriggers)($gp)
/* 30C44 80040444 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 30C48 80040448 2800B2AF */  sw         $s2, 0x28($sp)
/* 30C4C 8004044C 2190A000 */  addu       $s2, $a1, $zero
/* 30C50 80040450 3000B4AF */  sw         $s4, 0x30($sp)
/* 30C54 80040454 21A00000 */  addu       $s4, $zero, $zero
/* 30C58 80040458 3400B5AF */  sw         $s5, 0x34($sp)
/* 30C5C 8004045C 21A88000 */  addu       $s5, $a0, $zero
/* 30C60 80040460 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 30C64 80040464 3800B6AF */  sw         $s6, 0x38($sp)
/* 30C68 80040468 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 30C6C 8004046C 2400B1AF */  sw         $s1, 0x24($sp)
/* 30C70 80040470 23006018 */  blez       $v1, .L80040500
/* 30C74 80040474 2000B0AF */   sw        $s0, 0x20($sp)
/* 30C78 80040478 0980023C */  lui        $v0, %hi(ETActor)
/* 30C7C 8004047C B05A5624 */  addiu      $s6, $v0, %lo(ETActor)
/* 30C80 80040480 21980000 */  addu       $s3, $zero, $zero
/* 30C84 80040484 21886000 */  addu       $s1, $v1, $zero
.L80040488:
/* 30C88 80040488 C014828F */  lw         $v0, %gp_rel(PressureTrigger)($gp)
/* 30C8C 8004048C 00000000 */  nop
/* 30C90 80040490 21105300 */  addu       $v0, $v0, $s3
/* 30C94 80040494 0000438C */  lw         $v1, 0x0($v0)
/* 30C98 80040498 4400428C */  lw         $v0, 0x44($v0)
/* 30C9C 8004049C 15006010 */  beqz       $v1, .L800404F4
/* 30CA0 800404A0 00000000 */   nop
/* 30CA4 800404A4 13005610 */  beq        $v0, $s6, .L800404F4
/* 30CA8 800404A8 00000000 */   nop
/* 30CAC 800404AC 0800708C */  lw         $s0, 0x8($v1)
/* 30CB0 800404B0 0000A48E */  lw         $a0, 0x0($s5)
/* 30CB4 800404B4 0000028E */  lw         $v0, 0x0($s0)
/* 30CB8 800404B8 00000000 */  nop
/* 30CBC 800404BC 23208200 */  subu       $a0, $a0, $v0
/* 30CC0 800404C0 1000A4AF */  sw         $a0, 0x10($sp)
/* 30CC4 800404C4 0800A58E */  lw         $a1, 0x8($s5)
/* 30CC8 800404C8 0800028E */  lw         $v0, 0x8($s0)
/* 30CCC 800404CC 00000000 */  nop
/* 30CD0 800404D0 2328A200 */  subu       $a1, $a1, $v0
/* 30CD4 800404D4 FEE9000C */  jal        DistApprox_2d
/* 30CD8 800404D8 1800A5AF */   sw        $a1, 0x18($sp)
/* 30CDC 800404DC 21184000 */  addu       $v1, $v0, $zero
/* 30CE0 800404E0 2A107200 */  slt        $v0, $v1, $s2
/* 30CE4 800404E4 03004010 */  beqz       $v0, .L800404F4
/* 30CE8 800404E8 00000000 */   nop
/* 30CEC 800404EC 21906000 */  addu       $s2, $v1, $zero
/* 30CF0 800404F0 21A00002 */  addu       $s4, $s0, $zero
.L800404F4:
/* 30CF4 800404F4 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 30CF8 800404F8 E3FF2016 */  bnez       $s1, .L80040488
/* 30CFC 800404FC 88007326 */   addiu     $s3, $s3, 0x88
.L80040500:
/* 30D00 80040500 21108002 */  addu       $v0, $s4, $zero
/* 30D04 80040504 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 30D08 80040508 3800B68F */  lw         $s6, 0x38($sp)
/* 30D0C 8004050C 3400B58F */  lw         $s5, 0x34($sp)
/* 30D10 80040510 3000B48F */  lw         $s4, 0x30($sp)
/* 30D14 80040514 2C00B38F */  lw         $s3, 0x2C($sp)
/* 30D18 80040518 2800B28F */  lw         $s2, 0x28($sp)
/* 30D1C 8004051C 2400B18F */  lw         $s1, 0x24($sp)
/* 30D20 80040520 2000B08F */  lw         $s0, 0x20($sp)
/* 30D24 80040524 0800E003 */  jr         $ra
/* 30D28 80040528 4000BD27 */   addiu     $sp, $sp, 0x40
.size FindNearestTrigger, . - FindNearestTrigger
