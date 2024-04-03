.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericActorDraw
/* 39E14 80049614 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 39E18 80049618 1400B1AF */  sw         $s1, 0x14($sp)
/* 39E1C 8004961C 21888000 */  addu       $s1, $a0, $zero
/* 39E20 80049620 2000BFAF */  sw         $ra, 0x20($sp)
/* 39E24 80049624 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 39E28 80049628 1800B2AF */  sw         $s2, 0x18($sp)
/* 39E2C 8004962C 1000B0AF */  sw         $s0, 0x10($sp)
/* 39E30 80049630 4400238E */  lw         $v1, 0x44($s1)
/* 39E34 80049634 00000000 */  nop
/* 39E38 80049638 1C00648C */  lw         $a0, 0x1C($v1)
/* 39E3C 8004963C 8000023C */  lui        $v0, (0x800000 >> 16)
/* 39E40 80049640 24108200 */  and        $v0, $a0, $v0
/* 39E44 80049644 07004010 */  beqz       $v0, .L80049664
/* 39E48 80049648 21980000 */   addu      $s3, $zero, $zero
/* 39E4C 8004964C 2401228E */  lw         $v0, 0x124($s1)
/* 39E50 80049650 00000000 */  nop
/* 39E54 80049654 2C00438C */  lw         $v1, 0x2C($v0)
/* 39E58 80049658 3000538C */  lw         $s3, 0x30($v0)
/* 39E5C 8004965C 3B006014 */  bnez       $v1, .L8004974C
/* 39E60 80049660 00000000 */   nop
.L80049664:
/* 39E64 80049664 1000023C */  lui        $v0, (0x100000 >> 16)
/* 39E68 80049668 24108200 */  and        $v0, $a0, $v0
/* 39E6C 8004966C 37004014 */  bnez       $v0, .L8004974C
/* 39E70 80049670 21100000 */   addu      $v0, $zero, $zero
/* 39E74 80049674 1000228E */  lw         $v0, 0x10($s1)
/* 39E78 80049678 00000000 */  nop
/* 39E7C 8004967C 00044230 */  andi       $v0, $v0, 0x400
/* 39E80 80049680 32004010 */  beqz       $v0, .L8004974C
/* 39E84 80049684 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 39E88 80049688 258C010C */  jal        GetActorDepth
/* 39E8C 8004968C 21202002 */   addu      $a0, $s1, $zero
/* 39E90 80049690 21904000 */  addu       $s2, $v0, $zero
/* 39E94 80049694 2C004006 */  bltz       $s2, .L80049748
/* 39E98 80049698 680032AE */   sw        $s2, 0x68($s1)
/* 39E9C 8004969C 0980023C */  lui        $v0, %hi(ETActor)
/* 39EA0 800496A0 B05A4424 */  addiu      $a0, $v0, %lo(ETActor)
/* 39EA4 800496A4 6800838C */  lw         $v1, 0x68($a0)
/* 39EA8 800496A8 00000000 */  nop
/* 39EAC 800496AC 0E007214 */  bne        $v1, $s2, .L800496E8
/* 39EB0 800496B0 00000000 */   nop
/* 39EB4 800496B4 0980023C */  lui        $v0, %hi(BootsAndDoraRidingFlag)
/* 39EB8 800496B8 EC42428C */  lw         $v0, %lo(BootsAndDoraRidingFlag)($v0)
/* 39EBC 800496BC 00000000 */  nop
/* 39EC0 800496C0 09004014 */  bnez       $v0, .L800496E8
/* 39EC4 800496C4 00000000 */   nop
/* 39EC8 800496C8 7800838C */  lw         $v1, 0x78($a0)
/* 39ECC 800496CC 7800228E */  lw         $v0, 0x78($s1)
/* 39ED0 800496D0 00000000 */  nop
/* 39ED4 800496D4 2A104300 */  slt        $v0, $v0, $v1
/* 39ED8 800496D8 03004010 */  beqz       $v0, .L800496E8
/* 39EDC 800496DC 01000224 */   addiu     $v0, $zero, 0x1
/* 39EE0 800496E0 380022AE */  sw         $v0, 0x38($s1)
/* 39EE4 800496E4 380080AC */  sw         $zero, 0x38($a0)
.L800496E8:
/* 39EE8 800496E8 21202002 */  addu       $a0, $s1, $zero
/* 39EEC 800496EC B19A010C */  jal        DrawActor
/* 39EF0 800496F0 21284002 */   addu      $a1, $s2, $zero
/* 39EF4 800496F4 21202002 */  addu       $a0, $s1, $zero
/* 39EF8 800496F8 3F89010C */  jal        DrawActorShadow
/* 39EFC 800496FC 21284002 */   addu      $a1, $s2, $zero
/* 39F00 80049700 11006012 */  beqz       $s3, .L80049748
/* 39F04 80049704 21202002 */   addu      $a0, $s1, $zero
/* 39F08 80049708 6687010C */  jal        GetSphereCenter
/* 39F0C 8004970C 21280000 */   addu      $a1, $zero, $zero
/* 39F10 80049710 6C007026 */  addiu      $s0, $s3, 0x6C
/* 39F14 80049714 0000458C */  lw         $a1, 0x0($v0)
/* 39F18 80049718 0400468C */  lw         $a2, 0x4($v0)
/* 39F1C 8004971C 0800478C */  lw         $a3, 0x8($v0)
/* 39F20 80049720 77FB000C */  jal        MotionPhysics_SetPosition
/* 39F24 80049724 21200002 */   addu      $a0, $s0, $zero
/* 39F28 80049728 21206002 */  addu       $a0, $s3, $zero
/* 39F2C 8004972C 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 39F30 80049730 21280002 */   addu      $a1, $s0, $zero
/* 39F34 80049734 21206002 */  addu       $a0, $s3, $zero
/* 39F38 80049738 5400228E */  lw         $v0, 0x54($s1)
/* 39F3C 8004973C 21284002 */  addu       $a1, $s2, $zero
/* 39F40 80049740 B19A010C */  jal        DrawActor
/* 39F44 80049744 540062AE */   sw        $v0, 0x54($s3)
.L80049748:
/* 39F48 80049748 21104002 */  addu       $v0, $s2, $zero
.L8004974C:
/* 39F4C 8004974C 2000BF8F */  lw         $ra, 0x20($sp)
/* 39F50 80049750 1C00B38F */  lw         $s3, 0x1C($sp)
/* 39F54 80049754 1800B28F */  lw         $s2, 0x18($sp)
/* 39F58 80049758 1400B18F */  lw         $s1, 0x14($sp)
/* 39F5C 8004975C 1000B08F */  lw         $s0, 0x10($sp)
/* 39F60 80049760 0800E003 */  jr         $ra
/* 39F64 80049764 2800BD27 */   addiu     $sp, $sp, 0x28
.size GenericActorDraw, . - GenericActorDraw
