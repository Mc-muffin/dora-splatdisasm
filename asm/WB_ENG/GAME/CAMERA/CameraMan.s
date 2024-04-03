.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CameraMan
/* 2AA84 8003A284 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2AA88 8003A288 1400BFAF */  sw         $ra, 0x14($sp)
/* 2AA8C 8003A28C 12ED000C */  jal        GetSourceOverride
/* 2AA90 8003A290 1000B0AF */   sw        $s0, 0x10($sp)
/* 2AA94 8003A294 A0004014 */  bnez       $v0, .L8003A518
/* 2AA98 8003A298 07000224 */   addiu     $v0, $zero, 0x7
/* 2AA9C 8003A29C 4C0A858F */  lw         $a1, %gp_rel(CurrentCameraEnum)($gp)
/* 2AAA0 8003A2A0 00000000 */  nop
/* 2AAA4 8003A2A4 1B00A214 */  bne        $a1, $v0, .L8003A314
/* 2AAA8 8003A2A8 21200000 */   addu      $a0, $zero, $zero
/* 2AAAC 8003A2AC 500A828F */  lw         $v0, %gp_rel(PreviousCameraEnum)($gp)
/* 2AAB0 8003A2B0 00000000 */  nop
/* 2AAB4 8003A2B4 03004510 */  beq        $v0, $a1, .L8003A2C4
/* 2AAB8 8003A2B8 00000000 */   nop
/* 2AABC 8003A2BC 681482AF */  sw         $v0, %gp_rel(ISOEditBACKUPCameraEnum)($gp)
/* 2AAC0 8003A2C0 741482AF */  sw         $v0, %gp_rel(ISOEditCameraEnum)($gp)
.L8003A2C4:
/* 2AAC4 8003A2C4 07ED000C */  jal        SetAggressive
/* 2AAC8 8003A2C8 02000424 */   addiu     $a0, $zero, 0x2
/* 2AACC 8003A2CC F7EC000C */  jal        SetLocaleAggressive
/* 2AAD0 8003A2D0 02000424 */   addiu     $a0, $zero, 0x2
/* 2AAD4 8003A2D4 59ED000C */  jal        SetCameraLock
/* 2AAD8 8003A2D8 21200000 */   addu      $a0, $zero, $zero
/* 2AADC 8003A2DC 51ED000C */  jal        SetTargetLock
/* 2AAE0 8003A2E0 21200000 */   addu      $a0, $zero, $zero
/* 2AAE4 8003A2E4 61ED000C */  jal        SetLocaleLock
/* 2AAE8 8003A2E8 21200000 */   addu      $a0, $zero, $zero
/* 2AAEC 8003A2EC AEE4000C */  jal        EggEditCamera
/* 2AAF0 8003A2F0 00000000 */   nop
/* 2AAF4 8003A2F4 85004010 */  beqz       $v0, .L8003A50C
/* 2AAF8 8003A2F8 00000000 */   nop
/* 2AAFC 8003A2FC 7414828F */  lw         $v0, %gp_rel(ISOEditCameraEnum)($gp)
/* 2AB00 8003A300 00000000 */  nop
/* 2AB04 8003A304 781482AF */  sw         $v0, %gp_rel(DefaultCameraEnum)($gp)
/* 2AB08 8003A308 4C0A82AF */  sw         $v0, %gp_rel(CurrentCameraEnum)($gp)
/* 2AB0C 8003A30C 43E90008 */  j          .L8003A50C
/* 2AB10 8003A310 00000000 */   nop
.L8003A314:
/* 2AB14 8003A314 03000324 */  addiu      $v1, $zero, 0x3
/* 2AB18 8003A318 40100500 */  sll        $v0, $a1, 1
/* 2AB1C 8003A31C 21104500 */  addu       $v0, $v0, $a1
/* 2AB20 8003A320 80100200 */  sll        $v0, $v0, 2
/* 2AB24 8003A324 23104500 */  subu       $v0, $v0, $a1
/* 2AB28 8003A328 80100200 */  sll        $v0, $v0, 2
/* 2AB2C 8003A32C 0980013C */  lui        $at, %hi(MINDIV)
/* 2AB30 8003A330 644323AC */  sw         $v1, %lo(MINDIV)($at)
/* 2AB34 8003A334 0A80033C */  lui        $v1, %hi(SCGGameCam)
/* 2AB38 8003A338 B8B16324 */  addiu      $v1, $v1, %lo(SCGGameCam)
/* 2AB3C 8003A33C 0980013C */  lui        $at, %hi(ScrollR)
/* 2AB40 8003A340 444320AC */  sw         $zero, %lo(ScrollR)($at)
/* 2AB44 8003A344 59ED000C */  jal        SetCameraLock
/* 2AB48 8003A348 21804300 */   addu      $s0, $v0, $v1
/* 2AB4C 8003A34C 51ED000C */  jal        SetTargetLock
/* 2AB50 8003A350 21200000 */   addu      $a0, $zero, $zero
/* 2AB54 8003A354 61ED000C */  jal        SetLocaleLock
/* 2AB58 8003A358 21200000 */   addu      $a0, $zero, $zero
/* 2AB5C 8003A35C 00000296 */  lhu        $v0, 0x0($s0)
/* 2AB60 8003A360 04000496 */  lhu        $a0, 0x4($s0)
/* 2AB64 8003A364 0980013C */  lui        $at, %hi(TESTZ)
/* 2AB68 8003A368 445322AC */  sw         $v0, %lo(TESTZ)($at)
/* 2AB6C 8003A36C E9EC000C */  jal        SetLocale
/* 2AB70 8003A370 00000000 */   nop
/* 2AB74 8003A374 06000486 */  lh         $a0, 0x6($s0)
/* 2AB78 8003A378 2DED000C */  jal        SetDistanceOffset
/* 2AB7C 8003A37C 00000000 */   nop
/* 2AB80 8003A380 02000496 */  lhu        $a0, 0x2($s0)
/* 2AB84 8003A384 1DED000C */  jal        SetTrackAltitude
/* 2AB88 8003A388 00000000 */   nop
/* 2AB8C 8003A38C 08000486 */  lh         $a0, 0x8($s0)
/* 2AB90 8003A390 0A000586 */  lh         $a1, 0xA($s0)
/* 2AB94 8003A394 0C000686 */  lh         $a2, 0xC($s0)
/* 2AB98 8003A398 3DED000C */  jal        SetTrackTargetOffset
/* 2AB9C 8003A39C 00000000 */   nop
/* 2ABA0 8003A3A0 0980023C */  lui        $v0, %hi(ETActor)
/* 2ABA4 8003A3A4 B05A478C */  lw         $a3, %lo(ETActor)($v0)
/* 2ABA8 8003A3A8 B05A4224 */  addiu      $v0, $v0, %lo(ETActor)
/* 2ABAC 8003A3AC 0400458C */  lw         $a1, 0x4($v0)
/* 2ABB0 8003A3B0 18000386 */  lh         $v1, 0x18($s0)
/* 2ABB4 8003A3B4 0800468C */  lw         $a2, 0x8($v0)
/* 2ABB8 8003A3B8 40190300 */  sll        $v1, $v1, 5
/* 2ABBC 8003A3BC 2A10C300 */  slt        $v0, $a2, $v1
/* 2ABC0 8003A3C0 02004010 */  beqz       $v0, .L8003A3CC
/* 2ABC4 8003A3C4 00000000 */   nop
/* 2ABC8 8003A3C8 21306000 */  addu       $a2, $v1, $zero
.L8003A3CC:
/* 2ABCC 8003A3CC 14000286 */  lh         $v0, 0x14($s0)
/* 2ABD0 8003A3D0 00000000 */  nop
/* 2ABD4 8003A3D4 40110200 */  sll        $v0, $v0, 5
/* 2ABD8 8003A3D8 2A18E200 */  slt        $v1, $a3, $v0
/* 2ABDC 8003A3DC 02006010 */  beqz       $v1, .L8003A3E8
/* 2ABE0 8003A3E0 0880083C */   lui       $t0, %hi(TestWorld)
/* 2ABE4 8003A3E4 21384000 */  addu       $a3, $v0, $zero
.L8003A3E8:
/* 2ABE8 8003A3E8 8C650925 */  addiu      $t1, $t0, %lo(TestWorld)
/* 2ABEC 8003A3EC 0800228D */  lw         $v0, 0x8($t1)
/* 2ABF0 8003A3F0 1E000386 */  lh         $v1, 0x1E($s0)
/* 2ABF4 8003A3F4 C0110200 */  sll        $v0, $v0, 7
/* 2ABF8 8003A3F8 40190300 */  sll        $v1, $v1, 5
/* 2ABFC 8003A3FC 23104300 */  subu       $v0, $v0, $v1
/* 2AC00 8003A400 2A204600 */  slt        $a0, $v0, $a2
/* 2AC04 8003A404 02008010 */  beqz       $a0, .L8003A410
/* 2AC08 8003A408 00000000 */   nop
/* 2AC0C 8003A40C 21304000 */  addu       $a2, $v0, $zero
.L8003A410:
/* 2AC10 8003A410 8C65028D */  lw         $v0, %lo(TestWorld)($t0)
/* 2AC14 8003A414 1A000386 */  lh         $v1, 0x1A($s0)
/* 2AC18 8003A418 C0110200 */  sll        $v0, $v0, 7
/* 2AC1C 8003A41C 40190300 */  sll        $v1, $v1, 5
/* 2AC20 8003A420 23104300 */  subu       $v0, $v0, $v1
/* 2AC24 8003A424 2A204700 */  slt        $a0, $v0, $a3
/* 2AC28 8003A428 02008010 */  beqz       $a0, .L8003A434
/* 2AC2C 8003A42C 00000000 */   nop
/* 2AC30 8003A430 21384000 */  addu       $a3, $v0, $zero
.L8003A434:
/* 2AC34 8003A434 0E000286 */  lh         $v0, 0xE($s0)
/* 2AC38 8003A438 00000000 */  nop
/* 2AC3C 8003A43C 03004018 */  blez       $v0, .L8003A44C
/* 2AC40 8003A440 00000000 */   nop
/* 2AC44 8003A444 0980013C */  lui        $at, %hi(ScrollXSize)
/* 2AC48 8003A448 D45922AC */  sw         $v0, %lo(ScrollXSize)($at)
.L8003A44C:
/* 2AC4C 8003A44C 10000286 */  lh         $v0, 0x10($s0)
/* 2AC50 8003A450 00000000 */  nop
/* 2AC54 8003A454 03004018 */  blez       $v0, .L8003A464
/* 2AC58 8003A458 00000000 */   nop
/* 2AC5C 8003A45C 0980013C */  lui        $at, %hi(ScrollYSize)
/* 2AC60 8003A460 D85922AC */  sw         $v0, %lo(ScrollYSize)($at)
.L8003A464:
/* 2AC64 8003A464 12000286 */  lh         $v0, 0x12($s0)
/* 2AC68 8003A468 00000000 */  nop
/* 2AC6C 8003A46C 03004018 */  blez       $v0, .L8003A47C
/* 2AC70 8003A470 00000000 */   nop
/* 2AC74 8003A474 0980013C */  lui        $at, %hi(ScrollZSize)
/* 2AC78 8003A478 DC5922AC */  sw         $v0, %lo(ScrollZSize)($at)
.L8003A47C:
/* 2AC7C 8003A47C 20000286 */  lh         $v0, 0x20($s0)
/* 2AC80 8003A480 00000000 */  nop
/* 2AC84 8003A484 03004018 */  blez       $v0, .L8003A494
/* 2AC88 8003A488 00000000 */   nop
/* 2AC8C 8003A48C 0980013C */  lui        $at, %hi(ScrollXOffset)
/* 2AC90 8003A490 7C5422AC */  sw         $v0, %lo(ScrollXOffset)($at)
.L8003A494:
/* 2AC94 8003A494 22000286 */  lh         $v0, 0x22($s0)
/* 2AC98 8003A498 00000000 */  nop
/* 2AC9C 8003A49C 03004018 */  blez       $v0, .L8003A4AC
/* 2ACA0 8003A4A0 00000000 */   nop
/* 2ACA4 8003A4A4 0980013C */  lui        $at, %hi(ScrollYOffset)
/* 2ACA8 8003A4A8 805422AC */  sw         $v0, %lo(ScrollYOffset)($at)
.L8003A4AC:
/* 2ACAC 8003A4AC 24000286 */  lh         $v0, 0x24($s0)
/* 2ACB0 8003A4B0 00000000 */  nop
/* 2ACB4 8003A4B4 03004018 */  blez       $v0, .L8003A4C4
/* 2ACB8 8003A4B8 00000000 */   nop
/* 2ACBC 8003A4BC 0980013C */  lui        $at, %hi(ScrollZOffset)
/* 2ACC0 8003A4C0 845422AC */  sw         $v0, %lo(ScrollZOffset)($at)
.L8003A4C4:
/* 2ACC4 8003A4C4 0400228D */  lw         $v0, 0x4($t1)
/* 2ACC8 8003A4C8 1C000386 */  lh         $v1, 0x1C($s0)
/* 2ACCC 8003A4CC C0110200 */  sll        $v0, $v0, 7
/* 2ACD0 8003A4D0 40190300 */  sll        $v1, $v1, 5
/* 2ACD4 8003A4D4 23104300 */  subu       $v0, $v0, $v1
/* 2ACD8 8003A4D8 2A204500 */  slt        $a0, $v0, $a1
/* 2ACDC 8003A4DC 02008010 */  beqz       $a0, .L8003A4E8
/* 2ACE0 8003A4E0 00000000 */   nop
/* 2ACE4 8003A4E4 21284000 */  addu       $a1, $v0, $zero
.L8003A4E8:
/* 2ACE8 8003A4E8 16000286 */  lh         $v0, 0x16($s0)
/* 2ACEC 8003A4EC 00000000 */  nop
/* 2ACF0 8003A4F0 40110200 */  sll        $v0, $v0, 5
/* 2ACF4 8003A4F4 2A18A200 */  slt        $v1, $a1, $v0
/* 2ACF8 8003A4F8 02006010 */  beqz       $v1, .L8003A504
/* 2ACFC 8003A4FC 00000000 */   nop
/* 2AD00 8003A500 21284000 */  addu       $a1, $v0, $zero
.L8003A504:
/* 2AD04 8003A504 17ED000C */  jal        SetTrackTarget
/* 2AD08 8003A508 2120E000 */   addu      $a0, $a3, $zero
.L8003A50C:
/* 2AD0C 8003A50C 4C0A828F */  lw         $v0, %gp_rel(CurrentCameraEnum)($gp)
/* 2AD10 8003A510 00000000 */  nop
/* 2AD14 8003A514 500A82AF */  sw         $v0, %gp_rel(PreviousCameraEnum)($gp)
.L8003A518:
/* 2AD18 8003A518 1400BF8F */  lw         $ra, 0x14($sp)
/* 2AD1C 8003A51C 1000B08F */  lw         $s0, 0x10($sp)
/* 2AD20 8003A520 0800E003 */  jr         $ra
/* 2AD24 8003A524 1800BD27 */   addiu     $sp, $sp, 0x18
.size CameraMan, . - CameraMan
