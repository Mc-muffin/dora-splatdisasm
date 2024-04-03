.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetupVideoMode
/* 4AB30 8005A330 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 4AB34 8005A334 3400B1AF */  sw         $s1, 0x34($sp)
/* 4AB38 8005A338 21888000 */  addu       $s1, $a0, $zero
/* 4AB3C 8005A33C 3800BFAF */  sw         $ra, 0x38($sp)
/* 4AB40 8005A340 3000B0AF */  sw         $s0, 0x30($sp)
/* 4AB44 8005A344 D01091AF */  sw         $s1, %gp_rel(ResolutionMode)($gp)
/* 4AB48 8005A348 C81080AF */  sw         $zero, %gp_rel(SuperSlowMo)($gp)
/* 4AB4C 8005A34C 9BD7010C */  jal        VSyncCallback
/* 4AB50 8005A350 21200000 */   addu      $a0, $zero, $zero
/* 4AB54 8005A354 10DB010C */  jal        SetDispMask
/* 4AB58 8005A358 21200000 */   addu      $a0, $zero, $zero
/* 4AB5C 8005A35C 09001024 */  addiu      $s0, $zero, 0x9
.L8005A360:
/* 4AB60 8005A360 EBD6010C */  jal        VSync
/* 4AB64 8005A364 21200000 */   addu      $a0, $zero, $zero
/* 4AB68 8005A368 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 4AB6C 8005A36C FCFF0106 */  bgez       $s0, .L8005A360
/* 4AB70 8005A370 00000000 */   nop
/* 4AB74 8005A374 1E79010C */  jal        ResetHSVService
/* 4AB78 8005A378 00000000 */   nop
/* 4AB7C 8005A37C EBD6010C */  jal        VSync
/* 4AB80 8005A380 21200000 */   addu      $a0, $zero, $zero
/* 4AB84 8005A384 F81680AF */  sw         $zero, %gp_rel(Frame)($gp)
/* 4AB88 8005A388 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4AB8C 8005A38C 00000000 */  nop
/* 4AB90 8005A390 08004014 */  bnez       $v0, .L8005A3B4
/* 4AB94 8005A394 01000324 */   addiu     $v1, $zero, 0x1
.L8005A398:
/* 4AB98 8005A398 8DDE010C */  jal        GetODE
/* 4AB9C 8005A39C 00000000 */   nop
/* 4ABA0 8005A3A0 F81682AF */  sw         $v0, %gp_rel(Frame)($gp)
/* 4ABA4 8005A3A4 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4ABA8 8005A3A8 00000000 */  nop
/* 4ABAC 8005A3AC FAFF4010 */  beqz       $v0, .L8005A398
/* 4ABB0 8005A3B0 01000324 */   addiu     $v1, $zero, 0x1
.L8005A3B4:
/* 4ABB4 8005A3B4 F81683AF */  sw         $v1, %gp_rel(Frame)($gp)
/* 4ABB8 8005A3B8 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4ABBC 8005A3BC 00000000 */  nop
/* 4ABC0 8005A3C0 09004314 */  bne        $v0, $v1, .L8005A3E8
/* 4ABC4 8005A3C4 00000000 */   nop
/* 4ABC8 8005A3C8 01001024 */  addiu      $s0, $zero, 0x1
.L8005A3CC:
/* 4ABCC 8005A3CC 8DDE010C */  jal        GetODE
/* 4ABD0 8005A3D0 00000000 */   nop
/* 4ABD4 8005A3D4 F81682AF */  sw         $v0, %gp_rel(Frame)($gp)
/* 4ABD8 8005A3D8 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4ABDC 8005A3DC 00000000 */  nop
/* 4ABE0 8005A3E0 FAFF5010 */  beq        $v0, $s0, .L8005A3CC
/* 4ABE4 8005A3E4 00000000 */   nop
.L8005A3E8:
/* 4ABE8 8005A3E8 D010828F */  lw         $v0, %gp_rel(ResolutionMode)($gp)
/* 4ABEC 8005A3EC 01000324 */  addiu      $v1, $zero, 0x1
/* 4ABF0 8005A3F0 D41082AF */  sw         $v0, %gp_rel(oldResolutionMode)($gp)
/* 4ABF4 8005A3F4 4F002312 */  beq        $s1, $v1, .L8005A534
/* 4ABF8 8005A3F8 0200222A */   slti      $v0, $s1, 0x2
/* 4ABFC 8005A3FC 05004010 */  beqz       $v0, .L8005A414
/* 4AC00 8005A400 02000224 */   addiu     $v0, $zero, 0x2
/* 4AC04 8005A404 07002012 */  beqz       $s1, .L8005A424
/* 4AC08 8005A408 00000000 */   nop
/* 4AC0C 8005A40C 81690108 */  j          .L8005A604
/* 4AC10 8005A410 00000000 */   nop
.L8005A414:
/* 4AC14 8005A414 79002212 */  beq        $s1, $v0, .L8005A5FC
/* 4AC18 8005A418 0680043C */   lui       $a0, %hi(LowRezVSyncFunc)
/* 4AC1C 8005A41C 81690108 */  j          .L8005A604
/* 4AC20 8005A420 00000000 */   nop
.L8005A424:
/* 4AC24 8005A424 57DA010C */  jal        ResetGraph
/* 4AC28 8005A428 01000424 */   addiu     $a0, $zero, 0x1
.L8005A42C:
/* 4AC2C 8005A42C 36DB010C */  jal        DrawSync
/* 4AC30 8005A430 01000424 */   addiu     $a0, $zero, 0x1
/* 4AC34 8005A434 FDFF4014 */  bnez       $v0, .L8005A42C
/* 4AC38 8005A438 00020424 */   addiu     $a0, $zero, 0x200
/* 4AC3C 8005A43C E0010524 */  addiu      $a1, $zero, 0x1E0
/* 4AC40 8005A440 21300000 */  addu       $a2, $zero, $zero
/* 4AC44 8005A444 21380000 */  addu       $a3, $zero, $zero
/* 4AC48 8005A448 37E8010C */  jal        GsInitGraph2
/* 4AC4C 8005A44C 1000A0AF */   sw        $zero, 0x10($sp)
/* 4AC50 8005A450 8BE9010C */  jal        GsInit3D
/* 4AC54 8005A454 00000000 */   nop
/* 4AC58 8005A458 07EB010C */  jal        GsSetLightMode
/* 4AC5C 8005A45C 21200000 */   addu      $a0, $zero, $zero
/* 4AC60 8005A460 00080424 */  addiu      $a0, $zero, 0x800
/* 4AC64 8005A464 00080524 */  addiu      $a1, $zero, 0x800
/* 4AC68 8005A468 27EB010C */  jal        GsSetAmbient
/* 4AC6C 8005A46C 00080624 */   addiu     $a2, $zero, 0x800
/* 4AC70 8005A470 A5EB010C */  jal        InitGeom
/* 4AC74 8005A474 00000000 */   nop
/* 4AC78 8005A478 00010424 */  addiu      $a0, $zero, 0x100
/* 4AC7C 8005A47C E3ED010C */  jal        SetGeomOffset
/* 4AC80 8005A480 F0000524 */   addiu     $a1, $zero, 0xF0
/* 4AC84 8005A484 EBED010C */  jal        SetGeomScreen
/* 4AC88 8005A488 00040424 */   addiu     $a0, $zero, 0x400
/* 4AC8C 8005A48C 1800A427 */  addiu      $a0, $sp, 0x18
/* 4AC90 8005A490 2000A527 */  addiu      $a1, $sp, 0x20
/* 4AC94 8005A494 2800A627 */  addiu      $a2, $sp, 0x28
/* 4AC98 8005A498 01000724 */  addiu      $a3, $zero, 0x1
/* 4AC9C 8005A49C 00020224 */  addiu      $v0, $zero, 0x200
/* 4ACA0 8005A4A0 E0010324 */  addiu      $v1, $zero, 0x1E0
/* 4ACA4 8005A4A4 1800A2A7 */  sh         $v0, 0x18($sp)
/* 4ACA8 8005A4A8 1A00A0A7 */  sh         $zero, 0x1A($sp)
/* 4ACAC 8005A4AC 1C00A2A7 */  sh         $v0, 0x1C($sp)
/* 4ACB0 8005A4B0 1E00A3A7 */  sh         $v1, 0x1E($sp)
/* 4ACB4 8005A4B4 2000A2A7 */  sh         $v0, 0x20($sp)
/* 4ACB8 8005A4B8 2200A0A7 */  sh         $zero, 0x22($sp)
/* 4ACBC 8005A4BC 2400A2A7 */  sh         $v0, 0x24($sp)
/* 4ACC0 8005A4C0 2600A3A7 */  sh         $v1, 0x26($sp)
/* 4ACC4 8005A4C4 2A00A0A3 */  sb         $zero, 0x2A($sp)
/* 4ACC8 8005A4C8 2900A0A3 */  sb         $zero, 0x29($sp)
/* 4ACCC 8005A4CC A267010C */  jal        SetupScreens2
/* 4ACD0 8005A4D0 2800A0A3 */   sb        $zero, 0x28($sp)
/* 4ACD4 8005A4D4 5D67010C */  jal        InitOrderingTables
/* 4ACD8 8005A4D8 00000000 */   nop
/* 4ACDC 8005A4DC 21200000 */  addu       $a0, $zero, $zero
/* 4ACE0 8005A4E0 DC1080AF */  sw         $zero, %gp_rel(RenderState)($gp)
/* 4ACE4 8005A4E4 EBD6010C */  jal        VSync
/* 4ACE8 8005A4E8 00000000 */   nop
/* 4ACEC 8005A4EC F81680AF */  sw         $zero, %gp_rel(Frame)($gp)
/* 4ACF0 8005A4F0 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4ACF4 8005A4F4 00000000 */  nop
/* 4ACF8 8005A4F8 08004014 */  bnez       $v0, .L8005A51C
/* 4ACFC 8005A4FC 03000224 */   addiu     $v0, $zero, 0x3
.L8005A500:
/* 4AD00 8005A500 8DDE010C */  jal        GetODE
/* 4AD04 8005A504 00000000 */   nop
/* 4AD08 8005A508 F81682AF */  sw         $v0, %gp_rel(Frame)($gp)
/* 4AD0C 8005A50C F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4AD10 8005A510 00000000 */  nop
/* 4AD14 8005A514 FAFF4010 */  beqz       $v0, .L8005A500
/* 4AD18 8005A518 03000224 */   addiu     $v0, $zero, 0x3
.L8005A51C:
/* 4AD1C 8005A51C D81082AF */  sw         $v0, %gp_rel(switchres)($gp)
/* 4AD20 8005A520 0680043C */  lui        $a0, %hi(HighRezVSyncFunc)
/* 4AD24 8005A524 9BD7010C */  jal        VSyncCallback
/* 4AD28 8005A528 FCA08424 */   addiu     $a0, $a0, %lo(HighRezVSyncFunc)
/* 4AD2C 8005A52C 81690108 */  j          .L8005A604
/* 4AD30 8005A530 00000000 */   nop
.L8005A534:
/* 4AD34 8005A534 40010424 */  addiu      $a0, $zero, 0x140
/* 4AD38 8005A538 F0000524 */  addiu      $a1, $zero, 0xF0
/* 4AD3C 8005A53C 21300000 */  addu       $a2, $zero, $zero
/* 4AD40 8005A540 21380000 */  addu       $a3, $zero, $zero
/* 4AD44 8005A544 37E8010C */  jal        GsInitGraph2
/* 4AD48 8005A548 1000A0AF */   sw        $zero, 0x10($sp)
/* 4AD4C 8005A54C 8BE9010C */  jal        GsInit3D
/* 4AD50 8005A550 F0001024 */   addiu     $s0, $zero, 0xF0
/* 4AD54 8005A554 07EB010C */  jal        GsSetLightMode
/* 4AD58 8005A558 21200000 */   addu      $a0, $zero, $zero
/* 4AD5C 8005A55C 00080424 */  addiu      $a0, $zero, 0x800
/* 4AD60 8005A560 00080524 */  addiu      $a1, $zero, 0x800
/* 4AD64 8005A564 27EB010C */  jal        GsSetAmbient
/* 4AD68 8005A568 00080624 */   addiu     $a2, $zero, 0x800
/* 4AD6C 8005A56C A5EB010C */  jal        InitGeom
/* 4AD70 8005A570 00000000 */   nop
/* 4AD74 8005A574 EBED010C */  jal        SetGeomScreen
/* 4AD78 8005A578 EE020424 */   addiu     $a0, $zero, 0x2EE
/* 4AD7C 8005A57C A0000424 */  addiu      $a0, $zero, 0xA0
/* 4AD80 8005A580 E3ED010C */  jal        SetGeomOffset
/* 4AD84 8005A584 78000524 */   addiu     $a1, $zero, 0x78
/* 4AD88 8005A588 5D67010C */  jal        InitOrderingTables
/* 4AD8C 8005A58C 00000000 */   nop
/* 4AD90 8005A590 1800A427 */  addiu      $a0, $sp, 0x18
/* 4AD94 8005A594 2000A527 */  addiu      $a1, $sp, 0x20
/* 4AD98 8005A598 2800A627 */  addiu      $a2, $sp, 0x28
/* 4AD9C 8005A59C 01000724 */  addiu      $a3, $zero, 0x1
/* 4ADA0 8005A5A0 40010224 */  addiu      $v0, $zero, 0x140
/* 4ADA4 8005A5A4 1800A0A7 */  sh         $zero, 0x18($sp)
/* 4ADA8 8005A5A8 1A00A0A7 */  sh         $zero, 0x1A($sp)
/* 4ADAC 8005A5AC 1C00A2A7 */  sh         $v0, 0x1C($sp)
/* 4ADB0 8005A5B0 1E00B0A7 */  sh         $s0, 0x1E($sp)
/* 4ADB4 8005A5B4 2000A0A7 */  sh         $zero, 0x20($sp)
/* 4ADB8 8005A5B8 2200B0A7 */  sh         $s0, 0x22($sp)
/* 4ADBC 8005A5BC 2400A2A7 */  sh         $v0, 0x24($sp)
/* 4ADC0 8005A5C0 2600B0A7 */  sh         $s0, 0x26($sp)
/* 4ADC4 8005A5C4 2A00A0A3 */  sb         $zero, 0x2A($sp)
/* 4ADC8 8005A5C8 2900A0A3 */  sb         $zero, 0x29($sp)
/* 4ADCC 8005A5CC F867010C */  jal        SetupScreens
/* 4ADD0 8005A5D0 2800A0A3 */   sb        $zero, 0x28($sp)
/* 4ADD4 8005A5D4 0680043C */  lui        $a0, %hi(LowRezVSyncFunc)
/* 4ADD8 8005A5D8 ACB58424 */  addiu      $a0, $a0, %lo(LowRezVSyncFunc)
/* 4ADDC 8005A5DC 0B80023C */  lui        $v0, %hi(gDoubleBuffer)
/* 4ADE0 8005A5E0 78B94224 */  addiu      $v0, $v0, %lo(gDoubleBuffer)
/* 4ADE4 8005A5E4 CC1080AF */  sw         $zero, %gp_rel(TellTimerUpdateScreen)($gp)
/* 4ADE8 8005A5E8 EA0050A4 */  sh         $s0, 0xEA($v0)
/* 4ADEC 8005A5EC 9BD7010C */  jal        VSyncCallback
/* 4ADF0 8005A5F0 6A0050A4 */   sh        $s0, 0x6A($v0)
/* 4ADF4 8005A5F4 81690108 */  j          .L8005A604
/* 4ADF8 8005A5F8 00000000 */   nop
.L8005A5FC:
/* 4ADFC 8005A5FC 9BD7010C */  jal        VSyncCallback
/* 4AE00 8005A600 ACB58424 */   addiu     $a0, $a0, %lo(LowRezVSyncFunc)
.L8005A604:
/* 4AE04 8005A604 EBD6010C */  jal        VSync
/* 4AE08 8005A608 21200000 */   addu      $a0, $zero, $zero
/* 4AE0C 8005A60C F81680AF */  sw         $zero, %gp_rel(Frame)($gp)
/* 4AE10 8005A610 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4AE14 8005A614 00000000 */  nop
/* 4AE18 8005A618 08004014 */  bnez       $v0, .L8005A63C
/* 4AE1C 8005A61C 00000000 */   nop
.L8005A620:
/* 4AE20 8005A620 8DDE010C */  jal        GetODE
/* 4AE24 8005A624 00000000 */   nop
/* 4AE28 8005A628 F81682AF */  sw         $v0, %gp_rel(Frame)($gp)
/* 4AE2C 8005A62C F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4AE30 8005A630 00000000 */  nop
/* 4AE34 8005A634 FAFF4010 */  beqz       $v0, .L8005A620
/* 4AE38 8005A638 00000000 */   nop
.L8005A63C:
/* 4AE3C 8005A63C E010848F */  lw         $a0, %gp_rel(TESTZ)($gp)
/* 4AE40 8005A640 EBED010C */  jal        SetGeomScreen
/* 4AE44 8005A644 00000000 */   nop
/* 4AE48 8005A648 3800BF8F */  lw         $ra, 0x38($sp)
/* 4AE4C 8005A64C 3400B18F */  lw         $s1, 0x34($sp)
/* 4AE50 8005A650 3000B08F */  lw         $s0, 0x30($sp)
/* 4AE54 8005A654 0800E003 */  jr         $ra
/* 4AE58 8005A658 4000BD27 */   addiu     $sp, $sp, 0x40
.size SetupVideoMode, . - SetupVideoMode
