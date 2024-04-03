.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel VehicleDraw
/* 385D4 80047DD4 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 385D8 80047DD8 2400B1AF */  sw         $s1, 0x24($sp)
/* 385DC 80047DDC 21888000 */  addu       $s1, $a0, $zero
/* 385E0 80047DE0 0980023C */  lui        $v0, %hi(ETActor)
/* 385E4 80047DE4 B05A438C */  lw         $v1, %lo(ETActor)($v0)
/* 385E8 80047DE8 B05A4624 */  addiu      $a2, $v0, %lo(ETActor)
/* 385EC 80047DEC 3000BFAF */  sw         $ra, 0x30($sp)
/* 385F0 80047DF0 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 385F4 80047DF4 2800B2AF */  sw         $s2, 0x28($sp)
/* 385F8 80047DF8 2000B0AF */  sw         $s0, 0x20($sp)
/* 385FC 80047DFC 0000248E */  lw         $a0, 0x0($s1)
/* 38600 80047E00 2801338E */  lw         $s3, 0x128($s1)
/* 38604 80047E04 0800C58C */  lw         $a1, 0x8($a2)
/* 38608 80047E08 0800228E */  lw         $v0, 0x8($s1)
/* 3860C 80047E0C 23186400 */  subu       $v1, $v1, $a0
/* 38610 80047E10 2328A200 */  subu       $a1, $a1, $v0
/* 38614 80047E14 0880023C */  lui        $v0, %hi(TestWorld)
/* 38618 80047E18 2800728E */  lw         $s2, 0x28($s3)
/* 3861C 80047E1C 8C65508C */  lw         $s0, %lo(TestWorld)($v0)
/* 38620 80047E20 21206000 */  addu       $a0, $v1, $zero
/* 38624 80047E24 1000A3AF */  sw         $v1, 0x10($sp)
/* 38628 80047E28 FEE9000C */  jal        DistApprox_2d
/* 3862C 80047E2C 1800A5AF */   sw        $a1, 0x18($sp)
/* 38630 80047E30 0000438E */  lw         $v1, 0x0($s2)
/* 38634 80047E34 00000000 */  nop
/* 38638 80047E38 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 3863C 80047E3C 0200632C */  sltiu      $v1, $v1, 0x2
/* 38640 80047E40 17006014 */  bnez       $v1, .L80047EA0
/* 38644 80047E44 00000000 */   nop
/* 38648 80047E48 0000238E */  lw         $v1, 0x0($s1)
/* 3864C 80047E4C 00000000 */  nop
/* 38650 80047E50 C3110300 */  sra        $v0, $v1, 7
/* 38654 80047E54 2A105000 */  slt        $v0, $v0, $s0
/* 38658 80047E58 0F004010 */  beqz       $v0, .L80047E98
/* 3865C 80047E5C 01000224 */   addiu     $v0, $zero, 0x1
/* 38660 80047E60 0D006018 */  blez       $v1, .L80047E98
/* 38664 80047E64 00000000 */   nop
/* 38668 80047E68 D10C010C */  jal        InScrollResetRange
/* 3866C 80047E6C 21202002 */   addu      $a0, $s1, $zero
/* 38670 80047E70 09004014 */  bnez       $v0, .L80047E98
/* 38674 80047E74 01000224 */   addiu     $v0, $zero, 0x1
/* 38678 80047E78 2000438E */  lw         $v1, 0x20($s2)
/* 3867C 80047E7C 2C00628E */  lw         $v0, 0x2C($s3)
/* 38680 80047E80 00000000 */  nop
/* 38684 80047E84 04006214 */  bne        $v1, $v0, .L80047E98
/* 38688 80047E88 01000224 */   addiu     $v0, $zero, 0x1
/* 3868C 80047E8C 8525010C */  jal        GenericActorDraw
/* 38690 80047E90 21202002 */   addu      $a0, $s1, $zero
/* 38694 80047E94 01000224 */  addiu      $v0, $zero, 0x1
.L80047E98:
/* 38698 80047E98 0980013C */  lui        $at, %hi(DrawModelFlag)
/* 3869C 80047E9C FC5422AC */  sw         $v0, %lo(DrawModelFlag)($at)
.L80047EA0:
/* 386A0 80047EA0 3000BF8F */  lw         $ra, 0x30($sp)
/* 386A4 80047EA4 2C00B38F */  lw         $s3, 0x2C($sp)
/* 386A8 80047EA8 2800B28F */  lw         $s2, 0x28($sp)
/* 386AC 80047EAC 2400B18F */  lw         $s1, 0x24($sp)
/* 386B0 80047EB0 2000B08F */  lw         $s0, 0x20($sp)
/* 386B4 80047EB4 0800E003 */  jr         $ra
/* 386B8 80047EB8 3800BD27 */   addiu     $sp, $sp, 0x38
.size VehicleDraw, . - VehicleDraw
