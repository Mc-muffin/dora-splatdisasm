.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CommonActorPostBrainsBoots
/* 25428 80034C28 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 2542C 80034C2C 2400B1AF */  sw         $s1, 0x24($sp)
/* 25430 80034C30 21888000 */  addu       $s1, $a0, $zero
/* 25434 80034C34 0A80033C */  lui        $v1, %hi(boots_aidata)
/* 25438 80034C38 3000B4AF */  sw         $s4, 0x30($sp)
/* 2543C 80034C3C 6C003426 */  addiu      $s4, $s1, 0x6C
/* 25440 80034C40 2000B0AF */  sw         $s0, 0x20($sp)
/* 25444 80034C44 3800BFAF */  sw         $ra, 0x38($sp)
/* 25448 80034C48 3400B5AF */  sw         $s5, 0x34($sp)
/* 2544C 80034C4C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 25450 80034C50 2800B2AF */  sw         $s2, 0x28($sp)
/* 25454 80034C54 8000828E */  lw         $v0, 0x80($s4)
/* 25458 80034C58 2401358E */  lw         $s5, 0x124($s1)
/* 2545C 80034C5C 02004230 */  andi       $v0, $v0, 0x2
/* 25460 80034C60 03004014 */  bnez       $v0, .L80034C70
/* 25464 80034C64 588F7024 */   addiu     $s0, $v1, %lo(boots_aidata)
/* 25468 80034C68 135C000C */  jal        CheckActorCollideEnv
/* 2546C 80034C6C 00000000 */   nop
.L80034C70:
/* 25470 80034C70 3C01228E */  lw         $v0, 0x13C($s1)
/* 25474 80034C74 00000000 */  nop
/* 25478 80034C78 03004014 */  bnez       $v0, .L80034C88
/* 2547C 80034C7C 00000000 */   nop
/* 25480 80034C80 300080AE */  sw         $zero, 0x30($s4)
/* 25484 80034C84 380080AE */  sw         $zero, 0x38($s4)
.L80034C88:
/* 25488 80034C88 3000028E */  lw         $v0, 0x30($s0)
/* 2548C 80034C8C 00000000 */  nop
/* 25490 80034C90 03004010 */  beqz       $v0, .L80034CA0
/* 25494 80034C94 00000000 */   nop
/* 25498 80034C98 EB67000C */  jal        CheckActorCollisionWithET
/* 2549C 80034C9C 21202002 */   addu      $a0, $s1, $zero
.L80034CA0:
/* 254A0 80034CA0 1000228E */  lw         $v0, 0x10($s1)
/* 254A4 80034CA4 00000000 */  nop
/* 254A8 80034CA8 80004230 */  andi       $v0, $v0, 0x80
/* 254AC 80034CAC 61004014 */  bnez       $v0, .L80034E34
/* 254B0 80034CB0 00000000 */   nop
/* 254B4 80034CB4 E9D1000C */  jal        CheckBootsGravity
/* 254B8 80034CB8 21208002 */   addu      $a0, $s4, $zero
/* 254BC 80034CBC 21804000 */  addu       $s0, $v0, $zero
/* 254C0 80034CC0 01000224 */  addiu      $v0, $zero, 0x1
/* 254C4 80034CC4 17000216 */  bne        $s0, $v0, .L80034D24
/* 254C8 80034CC8 00000000 */   nop
/* 254CC 80034CCC EC09828F */  lw         $v0, %gp_rel(BootsSlideFlag)($gp)
/* 254D0 80034CD0 00000000 */  nop
/* 254D4 80034CD4 0D004014 */  bnez       $v0, .L80034D0C
/* 254D8 80034CD8 21202002 */   addu      $a0, $s1, $zero
/* 254DC 80034CDC 11000524 */  addiu      $a1, $zero, 0x11
/* 254E0 80034CE0 02000624 */  addiu      $a2, $zero, 0x2
/* 254E4 80034CE4 60DE000C */  jal        CheckAnimLoop
/* 254E8 80034CE8 2C012726 */   addiu     $a3, $s1, 0x12C
/* 254EC 80034CEC 1D004010 */  beqz       $v0, .L80034D64
/* 254F0 80034CF0 26000424 */   addiu     $a0, $zero, 0x26
/* 254F4 80034CF4 21280000 */  addu       $a1, $zero, $zero
/* 254F8 80034CF8 6F4A010C */  jal        pxm_sendevent
/* 254FC 80034CFC 21300000 */   addu      $a2, $zero, $zero
/* 25500 80034D00 EC0990AF */  sw         $s0, %gp_rel(BootsSlideFlag)($gp)
/* 25504 80034D04 5AD30008 */  j          .L80034D68
/* 25508 80034D08 6C002226 */   addiu     $v0, $s1, 0x6C
.L80034D0C:
/* 2550C 80034D0C 11000524 */  addiu      $a1, $zero, 0x11
/* 25510 80034D10 02000624 */  addiu      $a2, $zero, 0x2
/* 25514 80034D14 60DE000C */  jal        CheckAnimLoop
/* 25518 80034D18 2C012726 */   addiu     $a3, $s1, 0x12C
/* 2551C 80034D1C 5AD30008 */  j          .L80034D68
/* 25520 80034D20 6C002226 */   addiu     $v0, $s1, 0x6C
.L80034D24:
/* 25524 80034D24 EC09828F */  lw         $v0, %gp_rel(BootsSlideFlag)($gp)
/* 25528 80034D28 00000000 */  nop
/* 2552C 80034D2C 0D004010 */  beqz       $v0, .L80034D64
/* 25530 80034D30 26000424 */   addiu     $a0, $zero, 0x26
/* 25534 80034D34 01000524 */  addiu      $a1, $zero, 0x1
/* 25538 80034D38 5401228E */  lw         $v0, 0x154($s1)
/* 2553C 80034D3C FDFF0324 */  addiu      $v1, $zero, -0x3
/* 25540 80034D40 24104300 */  and        $v0, $v0, $v1
/* 25544 80034D44 540122AE */  sw         $v0, 0x154($s1)
/* 25548 80034D48 EC0980AF */  sw         $zero, %gp_rel(BootsSlideFlag)($gp)
/* 2554C 80034D4C 6F4A010C */  jal        pxm_sendevent
/* 25550 80034D50 21300000 */   addu      $a2, $zero, $zero
/* 25554 80034D54 5401238E */  lw         $v1, 0x154($s1)
/* 25558 80034D58 0080023C */  lui        $v0, (0x80000000 >> 16)
/* 2555C 80034D5C 25186200 */  or         $v1, $v1, $v0
/* 25560 80034D60 540123AE */  sw         $v1, 0x154($s1)
.L80034D64:
/* 25564 80034D64 6C002226 */  addiu      $v0, $s1, 0x6C
.L80034D68:
/* 25568 80034D68 0800448C */  lw         $a0, 0x8($v0)
/* 2556C 80034D6C 1400438C */  lw         $v1, 0x14($v0)
/* 25570 80034D70 00000000 */  nop
/* 25574 80034D74 23108300 */  subu       $v0, $a0, $v1
/* 25578 80034D78 05004004 */  bltz       $v0, .L80034D90
/* 2557C 80034D7C 41004228 */   slti      $v0, $v0, 0x41
/* 25580 80034D80 07004010 */  beqz       $v0, .L80034DA0
/* 25584 80034D84 05000224 */   addiu     $v0, $zero, 0x5
/* 25588 80034D88 6ED30008 */  j          .L80034DB8
/* 2558C 80034D8C 00000000 */   nop
.L80034D90:
/* 25590 80034D90 23106400 */  subu       $v0, $v1, $a0
/* 25594 80034D94 41004228 */  slti       $v0, $v0, 0x41
/* 25598 80034D98 07004014 */  bnez       $v0, .L80034DB8
/* 2559C 80034D9C 05000224 */   addiu     $v0, $zero, 0x5
.L80034DA0:
/* 255A0 80034DA0 21202002 */  addu       $a0, $s1, $zero
/* 255A4 80034DA4 12000524 */  addiu      $a1, $zero, 0x12
/* 255A8 80034DA8 02000624 */  addiu      $a2, $zero, 0x2
/* 255AC 80034DAC 60DE000C */  jal        CheckAnimLoop
/* 255B0 80034DB0 2C012726 */   addiu     $a3, $s1, 0x12C
/* 255B4 80034DB4 05000224 */  addiu      $v0, $zero, 0x5
.L80034DB8:
/* 255B8 80034DB8 19000216 */  bne        $s0, $v0, .L80034E20
/* 255BC 80034DBC 03000224 */   addiu     $v0, $zero, 0x3
/* 255C0 80034DC0 21202002 */  addu       $a0, $s1, $zero
/* 255C4 80034DC4 0400868E */  lw         $a2, 0x4($s4)
/* 255C8 80034DC8 0800878E */  lw         $a3, 0x8($s4)
/* 255CC 80034DCC 0C00828E */  lw         $v0, 0xC($s4)
/* 255D0 80034DD0 0B000524 */  addiu      $a1, $zero, 0xB
/* 255D4 80034DD4 69BE000C */  jal        RequestParticle
/* 255D8 80034DD8 1000A2AF */   sw        $v0, 0x10($sp)
/* 255DC 80034DDC 4400258E */  lw         $a1, 0x44($s1)
/* 255E0 80034DE0 640C010C */  jal        SpawnResetScroll
/* 255E4 80034DE4 21202002 */   addu      $a0, $s1, $zero
/* 255E8 80034DE8 4400248E */  lw         $a0, 0x44($s1)
/* 255EC 80034DEC 00000000 */  nop
/* 255F0 80034DF0 1C00838C */  lw         $v1, 0x1C($a0)
/* 255F4 80034DF4 2000023C */  lui        $v0, (0x200000 >> 16)
/* 255F8 80034DF8 24106200 */  and        $v0, $v1, $v0
/* 255FC 80034DFC 04004010 */  beqz       $v0, .L80034E10
/* 25600 80034E00 4000023C */   lui       $v0, (0x400000 >> 16)
/* 25604 80034E04 25106200 */  or         $v0, $v1, $v0
/* 25608 80034E08 8BD30008 */  j          .L80034E2C
/* 2560C 80034E0C 1C0082AC */   sw        $v0, 0x1C($a0)
.L80034E10:
/* 25610 80034E10 FBFF0224 */  addiu      $v0, $zero, -0x5
/* 25614 80034E14 24106200 */  and        $v0, $v1, $v0
/* 25618 80034E18 8BD30008 */  j          .L80034E2C
/* 2561C 80034E1C 1C0082AC */   sw        $v0, 0x1C($a0)
.L80034E20:
/* 25620 80034E20 02000216 */  bne        $s0, $v0, .L80034E2C
/* 25624 80034E24 07000224 */   addiu     $v0, $zero, 0x7
/* 25628 80034E28 1400A2AE */  sw         $v0, 0x14($s5)
.L80034E2C:
/* 2562C 80034E2C A7F7000C */  jal        UpdateMotionPhysics
/* 25630 80034E30 21208002 */   addu      $a0, $s4, $zero
.L80034E34:
/* 25634 80034E34 4400228E */  lw         $v0, 0x44($s1)
/* 25638 80034E38 0A80043C */  lui        $a0, %hi(AnimationList)
/* 2563C 80034E3C 1000438C */  lw         $v1, 0x10($v0)
/* 25640 80034E40 80518424 */  addiu      $a0, $a0, %lo(AnimationList)
/* 25644 80034E44 40110300 */  sll        $v0, $v1, 5
/* 25648 80034E48 23104300 */  subu       $v0, $v0, $v1
/* 2564C 80034E4C 80100200 */  sll        $v0, $v0, 2
/* 25650 80034E50 21104400 */  addu       $v0, $v0, $a0
/* 25654 80034E54 0000438C */  lw         $v1, 0x0($v0)
/* 25658 80034E58 00000000 */  nop
/* 2565C 80034E5C 1B006010 */  beqz       $v1, .L80034ECC
/* 25660 80034E60 00000000 */   nop
/* 25664 80034E64 65E2000C */  jal        AnimateActor
/* 25668 80034E68 21202002 */   addu      $a0, $s1, $zero
/* 2566C 80034E6C 2C013226 */  addiu      $s2, $s1, 0x12C
/* 25670 80034E70 2800428E */  lw         $v0, 0x28($s2)
/* 25674 80034E74 00000000 */  nop
/* 25678 80034E78 14004104 */  bgez       $v0, .L80034ECC
/* 2567C 80034E7C 10000424 */   addiu     $a0, $zero, 0x10
/* 25680 80034E80 1800508E */  lw         $s0, 0x18($s2)
/* 25684 80034E84 1000428E */  lw         $v0, 0x10($s2)
/* 25688 80034E88 00000000 */  nop
/* 2568C 80034E8C 26180202 */  xor        $v1, $s0, $v0
/* 25690 80034E90 2B180300 */  sltu       $v1, $zero, $v1
/* 25694 80034E94 02004414 */  bne        $v0, $a0, .L80034EA0
/* 25698 80034E98 80980300 */   sll       $s3, $v1, 2
/* 2569C 80034E9C 21980000 */  addu       $s3, $zero, $zero
.L80034EA0:
/* 256A0 80034EA0 21202002 */  addu       $a0, $s1, $zero
/* 256A4 80034EA4 28E3000C */  jal        GetSeqNumFrames
/* 256A8 80034EA8 21280002 */   addu      $a1, $s0, $zero
/* 256AC 80034EAC 21202002 */  addu       $a0, $s1, $zero
/* 256B0 80034EB0 21280002 */  addu       $a1, $s0, $zero
/* 256B4 80034EB4 21300000 */  addu       $a2, $zero, $zero
/* 256B8 80034EB8 21384000 */  addu       $a3, $v0, $zero
/* 256BC 80034EBC 1000B3AF */  sw         $s3, 0x10($sp)
/* 256C0 80034EC0 1400A0AF */  sw         $zero, 0x14($sp)
/* 256C4 80034EC4 72E2000C */  jal        RequestAnim
/* 256C8 80034EC8 1800B2AF */   sw        $s2, 0x18($sp)
.L80034ECC:
/* 256CC 80034ECC E885010C */  jal        ActorUpdateDirVelocity
/* 256D0 80034ED0 21202002 */   addu      $a0, $s1, $zero
/* 256D4 80034ED4 21202002 */  addu       $a0, $s1, $zero
/* 256D8 80034ED8 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 256DC 80034EDC 21288002 */   addu      $a1, $s4, $zero
/* 256E0 80034EE0 21202002 */  addu       $a0, $s1, $zero
/* 256E4 80034EE4 0980053C */  lui        $a1, %hi(ETActor)
/* 256E8 80034EE8 3AFC000C */  jal        CollisionCheck
/* 256EC 80034EEC B05AA524 */   addiu     $a1, $a1, %lo(ETActor)
/* 256F0 80034EF0 00830200 */  sll        $s0, $v0, 12
/* 256F4 80034EF4 09000012 */  beqz       $s0, .L80034F1C
/* 256F8 80034EF8 00000000 */   nop
/* 256FC 80034EFC 4400238E */  lw         $v1, 0x44($s1)
/* 25700 80034F00 00000000 */  nop
/* 25704 80034F04 1C00628C */  lw         $v0, 0x1C($v1)
/* 25708 80034F08 00000000 */  nop
/* 2570C 80034F0C 00044230 */  andi       $v0, $v0, 0x400
/* 25710 80034F10 02004014 */  bnez       $v0, .L80034F1C
/* 25714 80034F14 3C000224 */   addiu     $v0, $zero, 0x3C
/* 25718 80034F18 1C00A2AE */  sw         $v0, 0x1C($s5)
.L80034F1C:
/* 2571C 80034F1C 0287010C */  jal        CheckCollisionSpheres
/* 25720 80034F20 21202002 */   addu      $a0, $s1, $zero
/* 25724 80034F24 00140200 */  sll        $v0, $v0, 16
/* 25728 80034F28 25100202 */  or         $v0, $s0, $v0
/* 2572C 80034F2C 3800BF8F */  lw         $ra, 0x38($sp)
/* 25730 80034F30 3400B58F */  lw         $s5, 0x34($sp)
/* 25734 80034F34 3000B48F */  lw         $s4, 0x30($sp)
/* 25738 80034F38 2C00B38F */  lw         $s3, 0x2C($sp)
/* 2573C 80034F3C 2800B28F */  lw         $s2, 0x28($sp)
/* 25740 80034F40 2400B18F */  lw         $s1, 0x24($sp)
/* 25744 80034F44 2000B08F */  lw         $s0, 0x20($sp)
/* 25748 80034F48 0800E003 */  jr         $ra
/* 2574C 80034F4C 4000BD27 */   addiu     $sp, $sp, 0x40
.size CommonActorPostBrainsBoots, . - CommonActorPostBrainsBoots
