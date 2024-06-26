.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel releaseBrains
/* 38AF0 800482F0 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 38AF4 800482F4 5C00B3AF */  sw         $s3, 0x5C($sp)
/* 38AF8 800482F8 21988000 */  addu       $s3, $a0, $zero
/* 38AFC 800482FC 6C00BFAF */  sw         $ra, 0x6C($sp)
/* 38B00 80048300 6800B6AF */  sw         $s6, 0x68($sp)
/* 38B04 80048304 6400B5AF */  sw         $s5, 0x64($sp)
/* 38B08 80048308 6000B4AF */  sw         $s4, 0x60($sp)
/* 38B0C 8004830C 5800B2AF */  sw         $s2, 0x58($sp)
/* 38B10 80048310 5400B1AF */  sw         $s1, 0x54($sp)
/* 38B14 80048314 5000B0AF */  sw         $s0, 0x50($sp)
/* 38B18 80048318 2801718E */  lw         $s1, 0x128($s3)
/* 38B1C 8004831C 2401758E */  lw         $s5, 0x124($s3)
/* 38B20 80048320 D140010C */  jal        u32Random
/* 38B24 80048324 0100043C */   lui       $a0, (0x10000 >> 16)
/* 38B28 80048328 9228010C */  jal        CommonActorPreBrains
/* 38B2C 8004832C 21206002 */   addu      $a0, $s3, $zero
/* 38B30 80048330 0980033C */  lui        $v1, %hi(ETActor)
/* 38B34 80048334 B05A7624 */  addiu      $s6, $v1, %lo(ETActor)
/* 38B38 80048338 37014010 */  beqz       $v0, .L80048818
/* 38B3C 8004833C 21806000 */   addu      $s0, $v1, $zero
/* 38B40 80048340 4400628E */  lw         $v0, 0x44($s3)
/* 38B44 80048344 00000000 */  nop
/* 38B48 80048348 1000448C */  lw         $a0, 0x10($v0)
/* 38B4C 8004834C FD90000C */  jal        AttachActor
/* 38B50 80048350 00000000 */   nop
/* 38B54 80048354 0A004010 */  beqz       $v0, .L80048380
/* 38B58 80048358 00000000 */   nop
/* 38B5C 8004835C D528010C */  jal        GetAttachedActor
/* 38B60 80048360 21206002 */   addu      $a0, $s3, $zero
/* 38B64 80048364 21184000 */  addu       $v1, $v0, $zero
/* 38B68 80048368 05006010 */  beqz       $v1, .L80048380
/* 38B6C 8004836C 00000000 */   nop
/* 38B70 80048370 1000628C */  lw         $v0, 0x10($v1)
/* 38B74 80048374 00000000 */  nop
/* 38B78 80048378 00014234 */  ori        $v0, $v0, 0x100
/* 38B7C 8004837C 100062AC */  sw         $v0, 0x10($v1)
.L80048380:
/* 38B80 80048380 3B90000C */  jal        GetDirSpeed
/* 38B84 80048384 21206002 */   addu      $a0, $s3, $zero
/* 38B88 80048388 0000238E */  lw         $v1, 0x0($s1)
/* 38B8C 8004838C 00000000 */  nop
/* 38B90 80048390 49006014 */  bnez       $v1, .L800484B8
/* 38B94 80048394 05000224 */   addiu     $v0, $zero, 0x5
/* 38B98 80048398 3400228E */  lw         $v0, 0x34($s1)
/* 38B9C 8004839C 00000000 */  nop
/* 38BA0 800483A0 06004010 */  beqz       $v0, .L800483BC
/* 38BA4 800483A4 00000000 */   nop
/* 38BA8 800483A8 7C24010C */  jal        GenericAIMove
/* 38BAC 800483AC 21206002 */   addu      $a0, $s3, $zero
/* 38BB0 800483B0 3800228E */  lw         $v0, 0x38($s1)
/* 38BB4 800483B4 F1200108 */  j          .L800483C4
/* 38BB8 800483B8 00000000 */   nop
.L800483BC:
/* 38BBC 800483BC 7C24010C */  jal        GenericAIMove
/* 38BC0 800483C0 21206002 */   addu      $a0, $s3, $zero
.L800483C4:
/* 38BC4 800483C4 3A004010 */  beqz       $v0, .L800484B0
/* 38BC8 800483C8 00000000 */   nop
/* 38BCC 800483CC 3000248E */  lw         $a0, 0x30($s1)
/* 38BD0 800483D0 00000000 */  nop
/* 38BD4 800483D4 0400A4AE */  sw         $a0, 0x4($s5)
/* 38BD8 800483D8 0000838C */  lw         $v1, 0x0($a0)
/* 38BDC 800483DC 00000000 */  nop
/* 38BE0 800483E0 0400628C */  lw         $v0, 0x4($v1)
/* 38BE4 800483E4 00000000 */  nop
/* 38BE8 800483E8 08004230 */  andi       $v0, $v0, 0x8
/* 38BEC 800483EC 03004010 */  beqz       $v0, .L800483FC
/* 38BF0 800483F0 02000224 */   addiu     $v0, $zero, 0x2
/* 38BF4 800483F4 2C210108 */  j          .L800484B0
/* 38BF8 800483F8 000022AE */   sw        $v0, 0x0($s1)
.L800483FC:
/* 38BFC 800483FC 5400228E */  lw         $v0, 0x54($s1)
/* 38C00 80048400 00000000 */  nop
/* 38C04 80048404 0E004010 */  beqz       $v0, .L80048440
/* 38C08 80048408 0E100424 */   addiu     $a0, $zero, 0x100E
/* 38C0C 8004840C 21286002 */  addu       $a1, $s3, $zero
/* 38C10 80048410 6F4A010C */  jal        pxm_sendevent
/* 38C14 80048414 21300000 */   addu      $a2, $zero, $zero
/* 38C18 80048418 21206002 */  addu       $a0, $s3, $zero
/* 38C1C 8004841C 01000524 */  addiu      $a1, $zero, 0x1
/* 38C20 80048420 DCE2000C */  jal        ForceAnim
/* 38C24 80048424 2C016626 */   addiu     $a2, $s3, 0x12C
/* 38C28 80048428 05000324 */  addiu      $v1, $zero, 0x5
/* 38C2C 8004842C 000023AE */  sw         $v1, 0x0($s1)
/* 38C30 80048430 10CE000C */  jal        DisplayFollowMECinematic
/* 38C34 80048434 040020AE */   sw        $zero, 0x4($s1)
/* 38C38 80048438 26210108 */  j          .L80048498
/* 38C3C 8004843C 00000000 */   nop
.L80048440:
/* 38C40 80048440 5800228E */  lw         $v0, 0x58($s1)
/* 38C44 80048444 00000000 */  nop
/* 38C48 80048448 08004010 */  beqz       $v0, .L8004846C
/* 38C4C 8004844C 03000224 */   addiu     $v0, $zero, 0x3
/* 38C50 80048450 000022AE */  sw         $v0, 0x0($s1)
/* 38C54 80048454 0000A38E */  lw         $v1, 0x0($s5)
/* 38C58 80048458 21206002 */  addu       $a0, $s3, $zero
/* 38C5C 8004845C 9267000C */  jal        StartRide
/* 38C60 80048460 480023AE */   sw        $v1, 0x48($s1)
/* 38C64 80048464 2C210108 */  j          .L800484B0
/* 38C68 80048468 00000000 */   nop
.L8004846C:
/* 38C6C 8004846C 0E100424 */  addiu      $a0, $zero, 0x100E
/* 38C70 80048470 21286002 */  addu       $a1, $s3, $zero
/* 38C74 80048474 6F4A010C */  jal        pxm_sendevent
/* 38C78 80048478 21300000 */   addu      $a2, $zero, $zero
/* 38C7C 8004847C 21206002 */  addu       $a0, $s3, $zero
/* 38C80 80048480 01000524 */  addiu      $a1, $zero, 0x1
/* 38C84 80048484 DCE2000C */  jal        ForceAnim
/* 38C88 80048488 2C016626 */   addiu     $a2, $s3, 0x12C
/* 38C8C 8004848C 01000324 */  addiu      $v1, $zero, 0x1
/* 38C90 80048490 F1CD000C */  jal        DisplayReleaseAICinematic
/* 38C94 80048494 000023AE */   sw        $v1, 0x0($s1)
.L80048498:
/* 38C98 80048498 0980033C */  lui        $v1, %hi(LevelNumReleaseActorsCollected)
/* 38C9C 8004849C A447638C */  lw         $v1, %lo(LevelNumReleaseActorsCollected)($v1)
/* 38CA0 800484A0 00000000 */  nop
/* 38CA4 800484A4 01006324 */  addiu      $v1, $v1, 0x1
/* 38CA8 800484A8 0980013C */  lui        $at, %hi(LevelNumReleaseActorsCollected)
/* 38CAC 800484AC A44723AC */  sw         $v1, %lo(LevelNumReleaseActorsCollected)($at)
.L800484B0:
/* 38CB0 800484B0 0000238E */  lw         $v1, 0x0($s1)
/* 38CB4 800484B4 05000224 */  addiu      $v0, $zero, 0x5
.L800484B8:
/* 38CB8 800484B8 30006214 */  bne        $v1, $v0, .L8004857C
/* 38CBC 800484BC B05A0526 */   addiu     $a1, $s0, %lo(ETActor)
/* 38CC0 800484C0 B05A038E */  lw         $v1, %lo(ETActor)($s0)
/* 38CC4 800484C4 0000648E */  lw         $a0, 0x0($s3)
/* 38CC8 800484C8 0800A28C */  lw         $v0, 0x8($a1)
/* 38CCC 800484CC 0800668E */  lw         $a2, 0x8($s3)
/* 38CD0 800484D0 23186400 */  subu       $v1, $v1, $a0
/* 38CD4 800484D4 21206000 */  addu       $a0, $v1, $zero
/* 38CD8 800484D8 23104600 */  subu       $v0, $v0, $a2
/* 38CDC 800484DC 21284000 */  addu       $a1, $v0, $zero
/* 38CE0 800484E0 4000A3AF */  sw         $v1, 0x40($sp)
/* 38CE4 800484E4 FEE9000C */  jal        DistApprox_2d
/* 38CE8 800484E8 4800A2AF */   sw        $v0, 0x48($sp)
/* 38CEC 800484EC 0400238E */  lw         $v1, 0x4($s1)
/* 38CF0 800484F0 00000000 */  nop
/* 38CF4 800484F4 12006014 */  bnez       $v1, .L80048540
/* 38CF8 800484F8 21904000 */   addu      $s2, $v0, $zero
/* 38CFC 800484FC 7C24010C */  jal        GenericAIMove
/* 38D00 80048500 21206002 */   addu      $a0, $s3, $zero
/* 38D04 80048504 C301432A */  slti       $v1, $s2, 0x1C3
/* 38D08 80048508 0D006014 */  bnez       $v1, .L80048540
/* 38D0C 8004850C 21206002 */   addu      $a0, $s3, $zero
/* 38D10 80048510 21280000 */  addu       $a1, $zero, $zero
/* 38D14 80048514 2C016626 */  addiu      $a2, $s3, 0x12C
/* 38D18 80048518 01000224 */  addiu      $v0, $zero, 0x1
/* 38D1C 8004851C EEE2000C */  jal        SetAnim
/* 38D20 80048520 040022AE */   sw        $v0, 0x4($s1)
/* 38D24 80048524 6C006426 */  addiu      $a0, $s3, 0x6C
/* 38D28 80048528 73FB000C */  jal        MotionPhysics_Halt
/* 38D2C 8004852C 440160AE */   sw        $zero, 0x144($s3)
/* 38D30 80048530 13100424 */  addiu      $a0, $zero, 0x1013
/* 38D34 80048534 21286002 */  addu       $a1, $s3, $zero
/* 38D38 80048538 6F4A010C */  jal        pxm_sendevent
/* 38D3C 8004853C 21300000 */   addu      $a2, $zero, $zero
.L80048540:
/* 38D40 80048540 0400308E */  lw         $s0, 0x4($s1)
/* 38D44 80048544 01000224 */  addiu      $v0, $zero, 0x1
/* 38D48 80048548 0C000216 */  bne        $s0, $v0, .L8004857C
/* 38D4C 8004854C 00000000 */   nop
/* 38D50 80048550 2025010C */  jal        CommonActorPostBrains
/* 38D54 80048554 21206002 */   addu      $a0, $s3, $zero
/* 38D58 80048558 C800432A */  slti       $v1, $s2, 0xC8
/* 38D5C 8004855C 07006010 */  beqz       $v1, .L8004857C
/* 38D60 80048560 21206002 */   addu      $a0, $s3, $zero
/* 38D64 80048564 01000524 */  addiu      $a1, $zero, 0x1
/* 38D68 80048568 04000624 */  addiu      $a2, $zero, 0x4
/* 38D6C 8004856C 2C016726 */  addiu      $a3, $s3, 0x12C
/* 38D70 80048570 8FE2000C */  jal        SetAnimWithInterp
/* 38D74 80048574 040020AE */   sw        $zero, 0x4($s1)
/* 38D78 80048578 440170AE */  sw         $s0, 0x144($s3)
.L8004857C:
/* 38D7C 8004857C 0000348E */  lw         $s4, 0x0($s1)
/* 38D80 80048580 02000224 */  addiu      $v0, $zero, 0x2
/* 38D84 80048584 42008216 */  bne        $s4, $v0, .L80048690
/* 38D88 80048588 00000000 */   nop
/* 38D8C 8004858C 0400A28E */  lw         $v0, 0x4($s5)
/* 38D90 80048590 00000000 */  nop
/* 38D94 80048594 0000528C */  lw         $s2, 0x0($v0)
/* 38D98 80048598 00000000 */  nop
/* 38D9C 8004859C 0800438E */  lw         $v1, 0x8($s2)
/* 38DA0 800485A0 0000628E */  lw         $v0, 0x0($s3)
/* 38DA4 800485A4 1000648C */  lw         $a0, 0x10($v1)
/* 38DA8 800485A8 00000000 */  nop
/* 38DAC 800485AC 23208200 */  subu       $a0, $a0, $v0
/* 38DB0 800485B0 4000A4AF */  sw         $a0, 0x40($sp)
/* 38DB4 800485B4 0800428E */  lw         $v0, 0x8($s2)
/* 38DB8 800485B8 0800658E */  lw         $a1, 0x8($s3)
/* 38DBC 800485BC 1800438C */  lw         $v1, 0x18($v0)
/* 38DC0 800485C0 00000000 */  nop
/* 38DC4 800485C4 23186500 */  subu       $v1, $v1, $a1
/* 38DC8 800485C8 21286000 */  addu       $a1, $v1, $zero
/* 38DCC 800485CC FEE9000C */  jal        DistApprox_2d
/* 38DD0 800485D0 4800A3AF */   sw        $v1, 0x48($sp)
/* 38DD4 800485D4 21206002 */  addu       $a0, $s3, $zero
/* 38DD8 800485D8 7C24010C */  jal        GenericAIMove
/* 38DDC 800485DC 21804000 */   addu      $s0, $v0, $zero
/* 38DE0 800485E0 0002102A */  slti       $s0, $s0, 0x200
/* 38DE4 800485E4 2A000012 */  beqz       $s0, .L80048690
/* 38DE8 800485E8 03000224 */   addiu     $v0, $zero, 0x3
/* 38DEC 800485EC 0000438E */  lw         $v1, 0x0($s2)
/* 38DF0 800485F0 00000000 */  nop
/* 38DF4 800485F4 0F006214 */  bne        $v1, $v0, .L80048634
/* 38DF8 800485F8 00000000 */   nop
/* 38DFC 800485FC 0800428E */  lw         $v0, 0x8($s2)
/* 38E00 80048600 000054AE */  sw         $s4, 0x0($s2)
/* 38E04 80048604 2000458C */  lw         $a1, 0x20($v0)
/* 38E08 80048608 2400468C */  lw         $a2, 0x24($v0)
/* 38E0C 8004860C 2800478C */  lw         $a3, 0x28($v0)
/* 38E10 80048610 5129010C */  jal        GenericKeyRelease
/* 38E14 80048614 21206002 */   addu      $a0, $s3, $zero
/* 38E18 80048618 10004010 */  beqz       $v0, .L8004865C
/* 38E1C 8004861C 2F000424 */   addiu     $a0, $zero, 0x2F
/* 38E20 80048620 55000524 */  addiu      $a1, $zero, 0x55
/* 38E24 80048624 6F4A010C */  jal        pxm_sendevent
/* 38E28 80048628 21300000 */   addu      $a2, $zero, $zero
/* 38E2C 8004862C 98210108 */  j          .L80048660
/* 38E30 80048630 0E100424 */   addiu     $a0, $zero, 0x100E
.L80048634:
/* 38E34 80048634 0000C58E */  lw         $a1, 0x0($s6)
/* 38E38 80048638 0400C68E */  lw         $a2, 0x4($s6)
/* 38E3C 8004863C 0800678E */  lw         $a3, 0x8($s3)
/* 38E40 80048640 5129010C */  jal        GenericKeyRelease
/* 38E44 80048644 21206002 */   addu      $a0, $s3, $zero
/* 38E48 80048648 04004010 */  beqz       $v0, .L8004865C
/* 38E4C 8004864C 2F000424 */   addiu     $a0, $zero, 0x2F
/* 38E50 80048650 55000524 */  addiu      $a1, $zero, 0x55
/* 38E54 80048654 6F4A010C */  jal        pxm_sendevent
/* 38E58 80048658 21300000 */   addu      $a2, $zero, $zero
.L8004865C:
/* 38E5C 8004865C 0E100424 */  addiu      $a0, $zero, 0x100E
.L80048660:
/* 38E60 80048660 21286002 */  addu       $a1, $s3, $zero
/* 38E64 80048664 6F4A010C */  jal        pxm_sendevent
/* 38E68 80048668 21300000 */   addu      $a2, $zero, $zero
/* 38E6C 8004866C 01000324 */  addiu      $v1, $zero, 0x1
/* 38E70 80048670 F1CD000C */  jal        DisplayReleaseAICinematic
/* 38E74 80048674 000023AE */   sw        $v1, 0x0($s1)
/* 38E78 80048678 0980033C */  lui        $v1, %hi(LevelNumReleaseActorsCollected)
/* 38E7C 8004867C A447638C */  lw         $v1, %lo(LevelNumReleaseActorsCollected)($v1)
/* 38E80 80048680 00000000 */  nop
/* 38E84 80048684 01006324 */  addiu      $v1, $v1, 0x1
/* 38E88 80048688 0980013C */  lui        $at, %hi(LevelNumReleaseActorsCollected)
/* 38E8C 8004868C A44723AC */  sw         $v1, %lo(LevelNumReleaseActorsCollected)($at)
.L80048690:
/* 38E90 80048690 0000238E */  lw         $v1, 0x0($s1)
/* 38E94 80048694 01000224 */  addiu      $v0, $zero, 0x1
/* 38E98 80048698 1C006214 */  bne        $v1, $v0, .L8004870C
/* 38E9C 8004869C 03000224 */   addiu     $v0, $zero, 0x3
/* 38EA0 800486A0 0400A28E */  lw         $v0, 0x4($s5)
/* 38EA4 800486A4 00000000 */  nop
/* 38EA8 800486A8 0000458C */  lw         $a1, 0x0($v0)
/* 38EAC 800486AC 21206002 */  addu       $a0, $s3, $zero
/* 38EB0 800486B0 0400A28C */  lw         $v0, 0x4($a1)
/* 38EB4 800486B4 F7FF0324 */  addiu      $v1, $zero, -0x9
/* 38EB8 800486B8 24104300 */  and        $v0, $v0, $v1
/* 38EBC 800486BC 7C24010C */  jal        GenericAIMove
/* 38EC0 800486C0 0400A2AC */   sw        $v0, 0x4($a1)
/* 38EC4 800486C4 5000238E */  lw         $v1, 0x50($s1)
/* 38EC8 800486C8 00000000 */  nop
/* 38ECC 800486CC 0D006014 */  bnez       $v1, .L80048704
/* 38ED0 800486D0 FBFF0324 */   addiu     $v1, $zero, -0x5
/* 38ED4 800486D4 4400648E */  lw         $a0, 0x44($s3)
/* 38ED8 800486D8 00000000 */  nop
/* 38EDC 800486DC 1C00828C */  lw         $v0, 0x1C($a0)
/* 38EE0 800486E0 00000000 */  nop
/* 38EE4 800486E4 24104300 */  and        $v0, $v0, $v1
/* 38EE8 800486E8 1C0082AC */  sw         $v0, 0x1C($a0)
/* 38EEC 800486EC 4400638E */  lw         $v1, 0x44($s3)
/* 38EF0 800486F0 00000000 */  nop
/* 38EF4 800486F4 1C00628C */  lw         $v0, 0x1C($v1)
/* 38EF8 800486F8 00000000 */  nop
/* 38EFC 800486FC 02004234 */  ori        $v0, $v0, 0x2
/* 38F00 80048700 1C0062AC */  sw         $v0, 0x1C($v1)
.L80048704:
/* 38F04 80048704 0000238E */  lw         $v1, 0x0($s1)
/* 38F08 80048708 03000224 */  addiu      $v0, $zero, 0x3
.L8004870C:
/* 38F0C 8004870C 08006214 */  bne        $v1, $v0, .L80048730
/* 38F10 80048710 04000224 */   addiu     $v0, $zero, 0x4
/* 38F14 80048714 CE6C000C */  jal        RiderMount
/* 38F18 80048718 21206002 */   addu      $a0, $s3, $zero
/* 38F1C 8004871C 3E004010 */  beqz       $v0, .L80048818
/* 38F20 80048720 00000000 */   nop
/* 38F24 80048724 04000224 */  addiu      $v0, $zero, 0x4
/* 38F28 80048728 06220108 */  j          .L80048818
/* 38F2C 8004872C 000022AE */   sw        $v0, 0x0($s1)
.L80048730:
/* 38F30 80048730 39006214 */  bne        $v1, $v0, .L80048818
/* 38F34 80048734 00000000 */   nop
/* 38F38 80048738 3000248E */  lw         $a0, 0x30($s1)
/* 38F3C 8004873C D913010C */  jal        IsPathDone
/* 38F40 80048740 00000000 */   nop
/* 38F44 80048744 08004010 */  beqz       $v0, .L80048768
/* 38F48 80048748 00000000 */   nop
/* 38F4C 8004874C 5262000C */  jal        EndRide
/* 38F50 80048750 21206002 */   addu      $a0, $s3, $zero
/* 38F54 80048754 30004010 */  beqz       $v0, .L80048818
/* 38F58 80048758 00000000 */   nop
/* 38F5C 8004875C 01000224 */  addiu      $v0, $zero, 0x1
/* 38F60 80048760 06220108 */  j          .L80048818
/* 38F64 80048764 000022AE */   sw        $v0, 0x0($s1)
.L80048768:
/* 38F68 80048768 0980023C */  lui        $v0, %hi(Trg0)
/* 38F6C 8004876C 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 38F70 80048770 00000000 */  nop
/* 38F74 80048774 05004010 */  beqz       $v0, .L8004878C
/* 38F78 80048778 00000000 */   nop
/* 38F7C 8004877C 4800228E */  lw         $v0, 0x48($s1)
/* 38F80 80048780 9C0D838F */  lw         $v1, %gp_rel(eggacc)($gp)
/* 38F84 80048784 E7210108 */  j          .L8004879C
/* 38F88 80048788 21104300 */   addu      $v0, $v0, $v1
.L8004878C:
/* 38F8C 8004878C 4800228E */  lw         $v0, 0x48($s1)
/* 38F90 80048790 A00D838F */  lw         $v1, %gp_rel(eggdcc)($gp)
/* 38F94 80048794 00000000 */  nop
/* 38F98 80048798 23104300 */  subu       $v0, $v0, $v1
.L8004879C:
/* 38F9C 8004879C 480022AE */  sw         $v0, 0x48($s1)
/* 38FA0 800487A0 4800228E */  lw         $v0, 0x48($s1)
/* 38FA4 800487A4 4400238E */  lw         $v1, 0x44($s1)
/* 38FA8 800487A8 00000000 */  nop
/* 38FAC 800487AC 2A106200 */  slt        $v0, $v1, $v0
/* 38FB0 800487B0 02004010 */  beqz       $v0, .L800487BC
/* 38FB4 800487B4 00000000 */   nop
/* 38FB8 800487B8 480023AE */  sw         $v1, 0x48($s1)
.L800487BC:
/* 38FBC 800487BC 4800228E */  lw         $v0, 0x48($s1)
/* 38FC0 800487C0 00000000 */  nop
/* 38FC4 800487C4 A0024228 */  slti       $v0, $v0, 0x2A0
/* 38FC8 800487C8 02004010 */  beqz       $v0, .L800487D4
/* 38FCC 800487CC A0020224 */   addiu     $v0, $zero, 0x2A0
/* 38FD0 800487D0 480022AE */  sw         $v0, 0x48($s1)
.L800487D4:
/* 38FD4 800487D4 3000238E */  lw         $v1, 0x30($s1)
/* 38FD8 800487D8 4800228E */  lw         $v0, 0x48($s1)
/* 38FDC 800487DC 00000000 */  nop
/* 38FE0 800487E0 200062AC */  sw         $v0, 0x20($v1)
/* 38FE4 800487E4 0400A58E */  lw         $a1, 0x4($s5)
/* 38FE8 800487E8 AF12010C */  jal        PathBrain
/* 38FEC 800487EC 21206002 */   addu      $a0, $s3, $zero
/* 38FF0 800487F0 2025010C */  jal        CommonActorPostBrains
/* 38FF4 800487F4 21206002 */   addu      $a0, $s3, $zero
/* 38FF8 800487F8 14100424 */  addiu      $a0, $zero, 0x1014
/* 38FFC 800487FC 3401668E */  lw         $a2, 0x134($s3)
/* 39000 80048800 21286002 */  addu       $a1, $s3, $zero
/* 39004 80048804 03320600 */  sra        $a2, $a2, 8
/* 39008 80048808 6F4A010C */  jal        pxm_sendevent
/* 3900C 8004880C 0100C62C */   sltiu     $a2, $a2, 0x1
/* 39010 80048810 076D000C */  jal        RideActor
/* 39014 80048814 21206002 */   addu      $a0, $s3, $zero
.L80048818:
/* 39018 80048818 6C00BF8F */  lw         $ra, 0x6C($sp)
/* 3901C 8004881C 6800B68F */  lw         $s6, 0x68($sp)
/* 39020 80048820 6400B58F */  lw         $s5, 0x64($sp)
/* 39024 80048824 6000B48F */  lw         $s4, 0x60($sp)
/* 39028 80048828 5C00B38F */  lw         $s3, 0x5C($sp)
/* 3902C 8004882C 5800B28F */  lw         $s2, 0x58($sp)
/* 39030 80048830 5400B18F */  lw         $s1, 0x54($sp)
/* 39034 80048834 5000B08F */  lw         $s0, 0x50($sp)
/* 39038 80048838 0800E003 */  jr         $ra
/* 3903C 8004883C 7000BD27 */   addiu     $sp, $sp, 0x70
.size releaseBrains, . - releaseBrains
