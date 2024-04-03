.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EndRide
/* 9148 80018948 18FFBD27 */  addiu      $sp, $sp, -0xE8
/* 914C 8001894C D400B3AF */  sw         $s3, 0xD4($sp)
/* 9150 80018950 21988000 */  addu       $s3, $a0, $zero
/* 9154 80018954 D800B4AF */  sw         $s4, 0xD8($sp)
/* 9158 80018958 0980143C */  lui        $s4, %hi(ETActor)
/* 915C 8001895C C800B0AF */  sw         $s0, 0xC8($sp)
/* 9160 80018960 B05A9026 */  addiu      $s0, $s4, %lo(ETActor)
/* 9164 80018964 DC00B5AF */  sw         $s5, 0xDC($sp)
/* 9168 80018968 0A80153C */  lui        $s5, %hi(BootsActor)
/* 916C 8001896C CC00B1AF */  sw         $s1, 0xCC($sp)
/* 9170 80018970 E000BFAF */  sw         $ra, 0xE0($sp)
/* 9174 80018974 D000B2AF */  sw         $s2, 0xD0($sp)
/* 9178 80018978 3C01038E */  lw         $v1, 0x13C($s0)
/* 917C 8001897C 09000224 */  addiu      $v0, $zero, 0x9
/* 9180 80018980 23006210 */  beq        $v1, $v0, .L80018A10
/* 9184 80018984 988DB126 */   addiu     $s1, $s5, %lo(BootsActor)
/* 9188 80018988 21200002 */  addu       $a0, $s0, $zero
/* 918C 8001898C 09000524 */  addiu      $a1, $zero, 0x9
/* 9190 80018990 2C010626 */  addiu      $a2, $s0, 0x12C
/* 9194 80018994 0D000224 */  addiu      $v0, $zero, 0xD
/* 9198 80018998 DCE2000C */  jal        ForceAnim
/* 919C 8001899C 440102AE */   sw        $v0, 0x144($s0)
/* 91A0 800189A0 21200002 */  addu       $a0, $s0, $zero
/* 91A4 800189A4 FFE3000C */  jal        AnimateActorOverlay
/* 91A8 800189A8 2C0160AE */   sw        $zero, 0x12C($s3)
/* 91AC 800189AC FFE3000C */  jal        AnimateActorOverlay
/* 91B0 800189B0 21200002 */   addu      $a0, $s0, $zero
/* 91B4 800189B4 000E0424 */  addiu      $a0, $zero, 0xE00
/* 91B8 800189B8 21280000 */  addu       $a1, $zero, $zero
/* 91BC 800189BC 000E0224 */  addiu      $v0, $zero, 0xE00
/* 91C0 800189C0 580004AE */  sw         $a0, 0x58($s0)
/* 91C4 800189C4 08004414 */  bne        $v0, $a0, .L800189E8
/* 91C8 800189C8 540004AE */   sw        $a0, 0x54($s0)
/* 91CC 800189CC 5C00038E */  lw         $v1, 0x5C($s0)
/* 91D0 800189D0 00000000 */  nop
/* 91D4 800189D4 2A106500 */  slt        $v0, $v1, $a1
/* 91D8 800189D8 0B004010 */  beqz       $v0, .L80018A08
/* 91DC 800189DC 000E6224 */   addiu     $v0, $v1, 0xE00
/* 91E0 800189E0 82620008 */  j          .L80018A08
/* 91E4 800189E4 540002AE */   sw        $v0, 0x54($s0)
.L800189E8:
/* 91E8 800189E8 5C00038E */  lw         $v1, 0x5C($s0)
/* 91EC 800189EC 00000000 */  nop
/* 91F0 800189F0 2A106500 */  slt        $v0, $v1, $a1
/* 91F4 800189F4 03004010 */  beqz       $v0, .L80018A04
/* 91F8 800189F8 23108300 */   subu      $v0, $a0, $v1
/* 91FC 800189FC 82620008 */  j          .L80018A08
/* 9200 80018A00 540002AE */   sw        $v0, 0x54($s0)
.L80018A04:
/* 9204 80018A04 540004AE */  sw         $a0, 0x54($s0)
.L80018A08:
/* 9208 80018A08 DE620008 */  j          .L80018B78
/* 920C 80018A0C 21900000 */   addu      $s2, $zero, $zero
.L80018A10:
/* 9210 80018A10 0980023C */  lui        $v0, %hi(ETEndLevelpath)
/* 9214 80018A14 385C458C */  lw         $a1, %lo(ETEndLevelpath)($v0)
/* 9218 80018A18 00000000 */  nop
/* 921C 80018A1C 0800A38C */  lw         $v1, 0x8($a1)
/* 9220 80018A20 00000000 */  nop
/* 9224 80018A24 0000628C */  lw         $v0, 0x0($v1)
/* 9228 80018A28 00000000 */  nop
/* 922C 80018A2C B800A2AF */  sw         $v0, 0xB8($sp)
/* 9230 80018A30 0800A38C */  lw         $v1, 0x8($a1)
/* 9234 80018A34 00000000 */  nop
/* 9238 80018A38 0400628C */  lw         $v0, 0x4($v1)
/* 923C 80018A3C 00000000 */  nop
/* 9240 80018A40 BC00A2AF */  sw         $v0, 0xBC($sp)
/* 9244 80018A44 0800A38C */  lw         $v1, 0x8($a1)
/* 9248 80018A48 00000000 */  nop
/* 924C 80018A4C 0800628C */  lw         $v0, 0x8($v1)
/* 9250 80018A50 00000000 */  nop
/* 9254 80018A54 80FF4224 */  addiu      $v0, $v0, -0x80
/* 9258 80018A58 C000A2AF */  sw         $v0, 0xC0($sp)
/* 925C 80018A5C 0800A68C */  lw         $a2, 0x8($a1)
/* 9260 80018A60 C8128527 */  addiu      $a1, $gp, %gp_rel(g_jump_decision)
/* 9264 80018A64 A826010C */  jal        ActorJump
/* 9268 80018A68 21200002 */   addu      $a0, $s0, $zero
/* 926C 80018A6C 01005230 */  andi       $s2, $v0, 0x1
/* 9270 80018A70 21202002 */  addu       $a0, $s1, $zero
/* 9274 80018A74 D4128527 */  addiu      $a1, $gp, %gp_rel(g_bootsjump_decision)
/* 9278 80018A78 A826010C */  jal        ActorJump
/* 927C 80018A7C B800A627 */   addiu     $a2, $sp, 0xB8
/* 9280 80018A80 24904202 */  and        $s2, $s2, $v0
/* 9284 80018A84 3D004012 */  beqz       $s2, .L80018B7C
/* 9288 80018A88 21104002 */   addu      $v0, $s2, $zero
/* 928C 80018A8C 880080AF */  sw         $zero, %gp_rel(BootsAndDoraRidingFlag)($gp)
/* 9290 80018A90 5876000C */  jal        RemoveInventoryItem
/* 9294 80018A94 00000000 */   nop
/* 9298 80018A98 6C006426 */  addiu      $a0, $s3, 0x6C
/* 929C 80018A9C 1000028E */  lw         $v0, 0x10($s0)
/* 92A0 80018AA0 1000238E */  lw         $v1, 0x10($s1)
/* 92A4 80018AA4 00084234 */  ori        $v0, $v0, 0x800
/* 92A8 80018AA8 00086334 */  ori        $v1, $v1, 0x800
/* 92AC 80018AAC 100002AE */  sw         $v0, 0x10($s0)
/* 92B0 80018AB0 73FB000C */  jal        MotionPhysics_Halt
/* 92B4 80018AB4 100023AE */   sw        $v1, 0x10($s1)
/* 92B8 80018AB8 21200002 */  addu       $a0, $s0, $zero
/* 92BC 80018ABC 0D000524 */  addiu      $a1, $zero, 0xD
/* 92C0 80018AC0 DCE2000C */  jal        ForceAnim
/* 92C4 80018AC4 2C010626 */   addiu     $a2, $s0, 0x12C
/* 92C8 80018AC8 FFE3000C */  jal        AnimateActorOverlay
/* 92CC 80018ACC 21200002 */   addu      $a0, $s0, $zero
/* 92D0 80018AD0 FFE3000C */  jal        AnimateActorOverlay
/* 92D4 80018AD4 21200002 */   addu      $a0, $s0, $zero
/* 92D8 80018AD8 13000324 */  addiu      $v1, $zero, 0x13
/* 92DC 80018ADC F0D5000C */  jal        EndBootsRide
/* 92E0 80018AE0 0C0003AE */   sw        $v1, 0xC($s0)
/* 92E4 80018AE4 B05A858E */  lw         $a1, %lo(ETActor)($s4)
/* 92E8 80018AE8 0400068E */  lw         $a2, 0x4($s0)
/* 92EC 80018AEC 0800078E */  lw         $a3, 0x8($s0)
/* 92F0 80018AF0 6C000426 */  addiu      $a0, $s0, 0x6C
/* 92F4 80018AF4 77FB000C */  jal        MotionPhysics_SetPosition
/* 92F8 80018AF8 440100AE */   sw        $zero, 0x144($s0)
/* 92FC 80018AFC 1000A827 */  addiu      $t0, $sp, 0x10
/* 9300 80018B00 7C002926 */  addiu      $t1, $s1, 0x7C
/* 9304 80018B04 988DA28E */  lw         $v0, %lo(BootsActor)($s5)
/* 9308 80018B08 0400238E */  lw         $v1, 0x4($s1)
/* 930C 80018B0C 0800248E */  lw         $a0, 0x8($s1)
/* 9310 80018B10 0C012526 */  addiu      $a1, $s1, 0x10C
/* 9314 80018B14 AC00A2AF */  sw         $v0, 0xAC($sp)
/* 9318 80018B18 B000A3AF */  sw         $v1, 0xB0($sp)
/* 931C 80018B1C B400A4AF */  sw         $a0, 0xB4($sp)
.L80018B20:
/* 9320 80018B20 0000228D */  lw         $v0, 0x0($t1)
/* 9324 80018B24 0400238D */  lw         $v1, 0x4($t1)
/* 9328 80018B28 0800248D */  lw         $a0, 0x8($t1)
/* 932C 80018B2C 0C00268D */  lw         $a2, 0xC($t1)
/* 9330 80018B30 000002AD */  sw         $v0, 0x0($t0)
/* 9334 80018B34 040003AD */  sw         $v1, 0x4($t0)
/* 9338 80018B38 080004AD */  sw         $a0, 0x8($t0)
/* 933C 80018B3C 0C0006AD */  sw         $a2, 0xC($t0)
/* 9340 80018B40 10002925 */  addiu      $t1, $t1, 0x10
/* 9344 80018B44 F6FF2515 */  bne        $t1, $a1, .L80018B20
/* 9348 80018B48 10000825 */   addiu     $t0, $t0, 0x10
/* 934C 80018B4C 6C00248E */  lw         $a0, 0x6C($s1)
/* 9350 80018B50 7000258E */  lw         $a1, 0x70($s1)
/* 9354 80018B54 7400268E */  lw         $a2, 0x74($s1)
/* 9358 80018B58 7800278E */  lw         $a3, 0x78($s1)
/* 935C 80018B5C 00002A8D */  lw         $t2, 0x0($t1)
/* 9360 80018B60 04002B8D */  lw         $t3, 0x4($t1)
/* 9364 80018B64 0800228D */  lw         $v0, 0x8($t1)
/* 9368 80018B68 00000AAD */  sw         $t2, 0x0($t0)
/* 936C 80018B6C 04000BAD */  sw         $t3, 0x4($t0)
/* 9370 80018B70 77FB000C */  jal        MotionPhysics_SetPosition
/* 9374 80018B74 080002AD */   sw        $v0, 0x8($t0)
.L80018B78:
/* 9378 80018B78 21104002 */  addu       $v0, $s2, $zero
.L80018B7C:
/* 937C 80018B7C E000BF8F */  lw         $ra, 0xE0($sp)
/* 9380 80018B80 DC00B58F */  lw         $s5, 0xDC($sp)
/* 9384 80018B84 D800B48F */  lw         $s4, 0xD8($sp)
/* 9388 80018B88 D400B38F */  lw         $s3, 0xD4($sp)
/* 938C 80018B8C D000B28F */  lw         $s2, 0xD0($sp)
/* 9390 80018B90 CC00B18F */  lw         $s1, 0xCC($sp)
/* 9394 80018B94 C800B08F */  lw         $s0, 0xC8($sp)
/* 9398 80018B98 0800E003 */  jr         $ra
/* 939C 80018B9C E800BD27 */   addiu     $sp, $sp, 0xE8
.size EndRide, . - EndRide
