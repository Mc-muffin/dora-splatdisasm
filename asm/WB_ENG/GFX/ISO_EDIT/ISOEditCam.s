.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ISOEditCam
/* 3E4C0 8004DCC0 840E848F */  lw         $a0, %gp_rel(CamDepth)($gp)
/* 3E4C4 8004DCC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3E4C8 8004DCC8 1000BFAF */  sw         $ra, 0x10($sp)
/* 3E4CC 8004DCCC EBED010C */  jal        SetGeomScreen
/* 3E4D0 8004DCD0 00000000 */   nop
/* 3E4D4 8004DCD4 0C0E838F */  lw         $v1, %gp_rel(EditLevelState)($gp)
/* 3E4D8 8004DCD8 01000224 */  addiu      $v0, $zero, 0x1
/* 3E4DC 8004DCDC 3C006210 */  beq        $v1, $v0, .L8004DDD0
/* 3E4E0 8004DCE0 00000000 */   nop
/* 3E4E4 8004DCE4 0980033C */  lui        $v1, %hi(Pad1)
/* 3E4E8 8004DCE8 2E596384 */  lh         $v1, %lo(Pad1)($v1)
/* 3E4EC 8004DCEC 00000000 */  nop
/* 3E4F0 8004DCF0 00806230 */  andi       $v0, $v1, 0x8000
/* 3E4F4 8004DCF4 06004010 */  beqz       $v0, .L8004DD10
/* 3E4F8 8004DCF8 00206230 */   andi      $v0, $v1, 0x2000
/* 3E4FC 8004DCFC 6C0E828F */  lw         $v0, %gp_rel(TESTLC)($gp)
/* 3E500 8004DD00 00000000 */  nop
/* 3E504 8004DD04 80004224 */  addiu      $v0, $v0, 0x80
/* 3E508 8004DD08 6C0E82AF */  sw         $v0, %gp_rel(TESTLC)($gp)
/* 3E50C 8004DD0C 00206230 */  andi       $v0, $v1, 0x2000
.L8004DD10:
/* 3E510 8004DD10 06004010 */  beqz       $v0, .L8004DD2C
/* 3E514 8004DD14 00106230 */   andi      $v0, $v1, 0x1000
/* 3E518 8004DD18 6C0E828F */  lw         $v0, %gp_rel(TESTLC)($gp)
/* 3E51C 8004DD1C 00000000 */  nop
/* 3E520 8004DD20 80FF4224 */  addiu      $v0, $v0, -0x80
/* 3E524 8004DD24 6C0E82AF */  sw         $v0, %gp_rel(TESTLC)($gp)
/* 3E528 8004DD28 00106230 */  andi       $v0, $v1, 0x1000
.L8004DD2C:
/* 3E52C 8004DD2C 06004010 */  beqz       $v0, .L8004DD48
/* 3E530 8004DD30 00406230 */   andi      $v0, $v1, 0x4000
/* 3E534 8004DD34 700E828F */  lw         $v0, %gp_rel(TESTDIST)($gp)
/* 3E538 8004DD38 00000000 */  nop
/* 3E53C 8004DD3C E0FF4224 */  addiu      $v0, $v0, -0x20
/* 3E540 8004DD40 700E82AF */  sw         $v0, %gp_rel(TESTDIST)($gp)
/* 3E544 8004DD44 00406230 */  andi       $v0, $v1, 0x4000
.L8004DD48:
/* 3E548 8004DD48 06004010 */  beqz       $v0, .L8004DD64
/* 3E54C 8004DD4C 00046230 */   andi      $v0, $v1, 0x400
/* 3E550 8004DD50 700E828F */  lw         $v0, %gp_rel(TESTDIST)($gp)
/* 3E554 8004DD54 00000000 */  nop
/* 3E558 8004DD58 20004224 */  addiu      $v0, $v0, 0x20
/* 3E55C 8004DD5C 700E82AF */  sw         $v0, %gp_rel(TESTDIST)($gp)
/* 3E560 8004DD60 00046230 */  andi       $v0, $v1, 0x400
.L8004DD64:
/* 3E564 8004DD64 06004010 */  beqz       $v0, .L8004DD80
/* 3E568 8004DD68 00016230 */   andi      $v0, $v1, 0x100
/* 3E56C 8004DD6C 740E828F */  lw         $v0, %gp_rel(TESTALT)($gp)
/* 3E570 8004DD70 00000000 */  nop
/* 3E574 8004DD74 10004224 */  addiu      $v0, $v0, 0x10
/* 3E578 8004DD78 740E82AF */  sw         $v0, %gp_rel(TESTALT)($gp)
/* 3E57C 8004DD7C 00016230 */  andi       $v0, $v1, 0x100
.L8004DD80:
/* 3E580 8004DD80 06004010 */  beqz       $v0, .L8004DD9C
/* 3E584 8004DD84 00086230 */   andi      $v0, $v1, 0x800
/* 3E588 8004DD88 740E828F */  lw         $v0, %gp_rel(TESTALT)($gp)
/* 3E58C 8004DD8C 00000000 */  nop
/* 3E590 8004DD90 F0FF4224 */  addiu      $v0, $v0, -0x10
/* 3E594 8004DD94 740E82AF */  sw         $v0, %gp_rel(TESTALT)($gp)
/* 3E598 8004DD98 00086230 */  andi       $v0, $v1, 0x800
.L8004DD9C:
/* 3E59C 8004DD9C 06004010 */  beqz       $v0, .L8004DDB8
/* 3E5A0 8004DDA0 00026230 */   andi      $v0, $v1, 0x200
/* 3E5A4 8004DDA4 580E828F */  lw         $v0, %gp_rel(ObjectYPos)($gp)
/* 3E5A8 8004DDA8 00000000 */  nop
/* 3E5AC 8004DDAC C0FF4224 */  addiu      $v0, $v0, -0x40
/* 3E5B0 8004DDB0 580E82AF */  sw         $v0, %gp_rel(ObjectYPos)($gp)
/* 3E5B4 8004DDB4 00026230 */  andi       $v0, $v1, 0x200
.L8004DDB8:
/* 3E5B8 8004DDB8 05004010 */  beqz       $v0, .L8004DDD0
/* 3E5BC 8004DDBC 00000000 */   nop
/* 3E5C0 8004DDC0 580E828F */  lw         $v0, %gp_rel(ObjectYPos)($gp)
/* 3E5C4 8004DDC4 00000000 */  nop
/* 3E5C8 8004DDC8 40004224 */  addiu      $v0, $v0, 0x40
/* 3E5CC 8004DDCC 580E82AF */  sw         $v0, %gp_rel(ObjectYPos)($gp)
.L8004DDD0:
/* 3E5D0 8004DDD0 880E848F */  lw         $a0, %gp_rel(TESTCameraLock)($gp)
/* 3E5D4 8004DDD4 59ED000C */  jal        SetCameraLock
/* 3E5D8 8004DDD8 00000000 */   nop
/* 3E5DC 8004DDDC 8C0E848F */  lw         $a0, %gp_rel(TESTTargetLock)($gp)
/* 3E5E0 8004DDE0 51ED000C */  jal        SetTargetLock
/* 3E5E4 8004DDE4 00000000 */   nop
/* 3E5E8 8004DDE8 900E848F */  lw         $a0, %gp_rel(TESTLocaleLock)($gp)
/* 3E5EC 8004DDEC 61ED000C */  jal        SetLocaleLock
/* 3E5F0 8004DDF0 00000000 */   nop
/* 3E5F4 8004DDF4 6C0E848F */  lw         $a0, %gp_rel(TESTLC)($gp)
/* 3E5F8 8004DDF8 E9EC000C */  jal        SetLocale
/* 3E5FC 8004DDFC 00000000 */   nop
/* 3E600 8004DE00 700E848F */  lw         $a0, %gp_rel(TESTDIST)($gp)
/* 3E604 8004DE04 2DED000C */  jal        SetDistanceOffset
/* 3E608 8004DE08 00000000 */   nop
/* 3E60C 8004DE0C 740E848F */  lw         $a0, %gp_rel(TESTALT)($gp)
/* 3E610 8004DE10 1DED000C */  jal        SetTrackAltitude
/* 3E614 8004DE14 00000000 */   nop
/* 3E618 8004DE18 780E848F */  lw         $a0, %gp_rel(CameraXOffset)($gp)
/* 3E61C 8004DE1C 7C0E858F */  lw         $a1, %gp_rel(CameraYOffset)($gp)
/* 3E620 8004DE20 800E868F */  lw         $a2, %gp_rel(CameraZOffset)($gp)
/* 3E624 8004DE24 3DED000C */  jal        SetTrackTargetOffset
/* 3E628 8004DE28 00000000 */   nop
/* 3E62C 8004DE2C 0980033C */  lui        $v1, %hi(ETActor)
/* 3E630 8004DE30 B05A648C */  lw         $a0, %lo(ETActor)($v1)
/* 3E634 8004DE34 B05A6324 */  addiu      $v1, $v1, %lo(ETActor)
/* 3E638 8004DE38 0400658C */  lw         $a1, 0x4($v1)
/* 3E63C 8004DE3C 0800668C */  lw         $a2, 0x8($v1)
/* 3E640 8004DE40 17ED000C */  jal        SetTrackTarget
/* 3E644 8004DE44 00000000 */   nop
/* 3E648 8004DE48 1000BF8F */  lw         $ra, 0x10($sp)
/* 3E64C 8004DE4C 00000000 */  nop
/* 3E650 8004DE50 0800E003 */  jr         $ra
/* 3E654 8004DE54 1800BD27 */   addiu     $sp, $sp, 0x18
.size ISOEditCam, . - ISOEditCam
