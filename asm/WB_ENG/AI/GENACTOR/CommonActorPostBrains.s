.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CommonActorPostBrains
/* 39C80 80049480 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 39C84 80049484 1800B0AF */  sw         $s0, 0x18($sp)
/* 39C88 80049488 21808000 */  addu       $s0, $a0, $zero
/* 39C8C 8004948C 2000B2AF */  sw         $s2, 0x20($sp)
/* 39C90 80049490 2800BFAF */  sw         $ra, 0x28($sp)
/* 39C94 80049494 2400B3AF */  sw         $s3, 0x24($sp)
/* 39C98 80049498 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 39C9C 8004949C 2401138E */  lw         $s3, 0x124($s0)
/* 39CA0 800494A0 135C000C */  jal        CheckActorCollideEnv
/* 39CA4 800494A4 6C001226 */   addiu     $s2, $s0, 0x6C
/* 39CA8 800494A8 4400048E */  lw         $a0, 0x44($s0)
/* 39CAC 800494AC 0A80033C */  lui        $v1, %hi(AnimationList)
/* 39CB0 800494B0 1000858C */  lw         $a1, 0x10($a0)
/* 39CB4 800494B4 80516324 */  addiu      $v1, $v1, %lo(AnimationList)
/* 39CB8 800494B8 40110500 */  sll        $v0, $a1, 5
/* 39CBC 800494BC 23104500 */  subu       $v0, $v0, $a1
/* 39CC0 800494C0 80100200 */  sll        $v0, $v0, 2
/* 39CC4 800494C4 21104300 */  addu       $v0, $v0, $v1
/* 39CC8 800494C8 0000448C */  lw         $a0, 0x0($v0)
/* 39CCC 800494CC 00000000 */  nop
/* 39CD0 800494D0 06008010 */  beqz       $a0, .L800494EC
/* 39CD4 800494D4 21880000 */   addu      $s1, $zero, $zero
/* 39CD8 800494D8 65E2000C */  jal        AnimateActor
/* 39CDC 800494DC 21200002 */   addu      $a0, $s0, $zero
/* 39CE0 800494E0 21200002 */  addu       $a0, $s0, $zero
/* 39CE4 800494E4 10DE000C */  jal        CheckNextAnim
/* 39CE8 800494E8 2C010526 */   addiu     $a1, $s0, 0x12C
.L800494EC:
/* 39CEC 800494EC 1000028E */  lw         $v0, 0x10($s0)
/* 39CF0 800494F0 00000000 */  nop
/* 39CF4 800494F4 80004230 */  andi       $v0, $v0, 0x80
/* 39CF8 800494F8 28004014 */  bnez       $v0, .L8004959C
/* 39CFC 800494FC 00000000 */   nop
/* 39D00 80049500 31FB000C */  jal        CheckActorGravity
/* 39D04 80049504 21200002 */   addu      $a0, $s0, $zero
/* 39D08 80049508 21184000 */  addu       $v1, $v0, $zero
/* 39D0C 8004950C 05000224 */  addiu      $v0, $zero, 0x5
/* 39D10 80049510 1A006214 */  bne        $v1, $v0, .L8004957C
/* 39D14 80049514 03000224 */   addiu     $v0, $zero, 0x3
/* 39D18 80049518 21200002 */  addu       $a0, $s0, $zero
/* 39D1C 8004951C 0C00428E */  lw         $v0, 0xC($s2)
/* 39D20 80049520 0400468E */  lw         $a2, 0x4($s2)
/* 39D24 80049524 0800478E */  lw         $a3, 0x8($s2)
/* 39D28 80049528 0B000524 */  addiu      $a1, $zero, 0xB
/* 39D2C 8004952C 69BE000C */  jal        RequestParticle
/* 39D30 80049530 1000A2AF */   sw        $v0, 0x10($sp)
/* 39D34 80049534 4400058E */  lw         $a1, 0x44($s0)
/* 39D38 80049538 640C010C */  jal        SpawnResetScroll
/* 39D3C 8004953C 21200002 */   addu      $a0, $s0, $zero
/* 39D40 80049540 4400048E */  lw         $a0, 0x44($s0)
/* 39D44 80049544 00000000 */  nop
/* 39D48 80049548 1C00838C */  lw         $v1, 0x1C($a0)
/* 39D4C 8004954C 2000023C */  lui        $v0, (0x200000 >> 16)
/* 39D50 80049550 24106200 */  and        $v0, $v1, $v0
/* 39D54 80049554 05004010 */  beqz       $v0, .L8004956C
/* 39D58 80049558 0400113C */   lui       $s1, (0x40000 >> 16)
/* 39D5C 8004955C 4000023C */  lui        $v0, (0x400000 >> 16)
/* 39D60 80049560 25106200 */  or         $v0, $v1, $v0
/* 39D64 80049564 62250108 */  j          .L80049588
/* 39D68 80049568 1C0082AC */   sw        $v0, 0x1C($a0)
.L8004956C:
/* 39D6C 8004956C FBFF0224 */  addiu      $v0, $zero, -0x5
/* 39D70 80049570 24106200 */  and        $v0, $v1, $v0
/* 39D74 80049574 62250108 */  j          .L80049588
/* 39D78 80049578 1C0082AC */   sw        $v0, 0x1C($a0)
.L8004957C:
/* 39D7C 8004957C 02006214 */  bne        $v1, $v0, .L80049588
/* 39D80 80049580 07000224 */   addiu     $v0, $zero, 0x7
/* 39D84 80049584 140062AE */  sw         $v0, 0x14($s3)
.L80049588:
/* 39D88 80049588 A7F7000C */  jal        UpdateMotionPhysics
/* 39D8C 8004958C 21204002 */   addu      $a0, $s2, $zero
/* 39D90 80049590 01004238 */  xori       $v0, $v0, 0x1
/* 39D94 80049594 0100422C */  sltiu      $v0, $v0, 0x1
/* 39D98 80049598 25882202 */  or         $s1, $s1, $v0
.L8004959C:
/* 39D9C 8004959C E885010C */  jal        ActorUpdateDirVelocity
/* 39DA0 800495A0 21200002 */   addu      $a0, $s0, $zero
/* 39DA4 800495A4 21200002 */  addu       $a0, $s0, $zero
/* 39DA8 800495A8 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 39DAC 800495AC 21284002 */   addu      $a1, $s2, $zero
/* 39DB0 800495B0 EB67000C */  jal        CheckActorCollisionWithET
/* 39DB4 800495B4 21200002 */   addu      $a0, $s0, $zero
/* 39DB8 800495B8 00130200 */  sll        $v0, $v0, 12
/* 39DBC 800495BC 25882202 */  or         $s1, $s1, $v0
/* 39DC0 800495C0 09002012 */  beqz       $s1, .L800495E8
/* 39DC4 800495C4 00000000 */   nop
/* 39DC8 800495C8 4400038E */  lw         $v1, 0x44($s0)
/* 39DCC 800495CC 00000000 */  nop
/* 39DD0 800495D0 1C00628C */  lw         $v0, 0x1C($v1)
/* 39DD4 800495D4 00000000 */  nop
/* 39DD8 800495D8 00044230 */  andi       $v0, $v0, 0x400
/* 39DDC 800495DC 02004014 */  bnez       $v0, .L800495E8
/* 39DE0 800495E0 3C000224 */   addiu     $v0, $zero, 0x3C
/* 39DE4 800495E4 1C0062AE */  sw         $v0, 0x1C($s3)
.L800495E8:
/* 39DE8 800495E8 0287010C */  jal        CheckCollisionSpheres
/* 39DEC 800495EC 21200002 */   addu      $a0, $s0, $zero
/* 39DF0 800495F0 00140200 */  sll        $v0, $v0, 16
/* 39DF4 800495F4 25102202 */  or         $v0, $s1, $v0
/* 39DF8 800495F8 2800BF8F */  lw         $ra, 0x28($sp)
/* 39DFC 800495FC 2400B38F */  lw         $s3, 0x24($sp)
/* 39E00 80049600 2000B28F */  lw         $s2, 0x20($sp)
/* 39E04 80049604 1C00B18F */  lw         $s1, 0x1C($sp)
/* 39E08 80049608 1800B08F */  lw         $s0, 0x18($sp)
/* 39E0C 8004960C 0800E003 */  jr         $ra
/* 39E10 80049610 3000BD27 */   addiu     $sp, $sp, 0x30
.size CommonActorPostBrains, . - CommonActorPostBrains
