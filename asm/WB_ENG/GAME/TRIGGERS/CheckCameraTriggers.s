.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCameraTriggers
/* 31328 80040B28 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 3132C 80040B2C 0980023C */  lui        $v0, %hi(ETActor)
/* 31330 80040B30 B05A448C */  lw         $a0, %lo(ETActor)($v0)
/* 31334 80040B34 B05A4324 */  addiu      $v1, $v0, %lo(ETActor)
/* 31338 80040B38 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 3133C 80040B3C 2800B2AF */  sw         $s2, 0x28($sp)
/* 31340 80040B40 2400B1AF */  sw         $s1, 0x24($sp)
/* 31344 80040B44 2000B0AF */  sw         $s0, 0x20($sp)
/* 31348 80040B48 0800628C */  lw         $v0, 0x8($v1)
/* 3134C 80040B4C 0400658C */  lw         $a1, 0x4($v1)
/* 31350 80040B50 340C928F */  lw         $s2, %gp_rel(NumCameraTriggers)($gp)
/* 31354 80040B54 1800A2AF */  sw         $v0, 0x18($sp)
/* 31358 80040B58 0980023C */  lui        $v0, %hi(CurrentCameraEnum)
/* 3135C 80040B5C B04C428C */  lw         $v0, %lo(CurrentCameraEnum)($v0)
/* 31360 80040B60 07000324 */  addiu      $v1, $zero, 0x7
/* 31364 80040B64 1000A4AF */  sw         $a0, 0x10($sp)
/* 31368 80040B68 17004310 */  beq        $v0, $v1, .L80040BC8
/* 3136C 80040B6C 1400A5AF */   sw        $a1, 0x14($sp)
/* 31370 80040B70 FEEA000C */  jal        SetGameAggressive
/* 31374 80040B74 21880000 */   addu      $s1, $zero, $zero
/* 31378 80040B78 0980033C */  lui        $v1, %hi(DefaultCameraEnum)
/* 3137C 80040B7C DC56638C */  lw         $v1, %lo(DefaultCameraEnum)($v1)
/* 31380 80040B80 0980013C */  lui        $at, %hi(CurrentCameraEnum)
/* 31384 80040B84 B04C23AC */  sw         $v1, %lo(CurrentCameraEnum)($at)
/* 31388 80040B88 E5020108 */  j          .L80040B94
/* 3138C 80040B8C 2A103202 */   slt       $v0, $s1, $s2
.L80040B90:
/* 31390 80040B90 2A103202 */  slt        $v0, $s1, $s2
.L80040B94:
/* 31394 80040B94 0C004010 */  beqz       $v0, .L80040BC8
/* 31398 80040B98 00000000 */   nop
/* 3139C 80040B9C CC14838F */  lw         $v1, %gp_rel(CameraTriggersList)($gp)
/* 313A0 80040BA0 C0101100 */  sll        $v0, $s1, 3
/* 313A4 80040BA4 21806200 */  addu       $s0, $v1, $v0
/* 313A8 80040BA8 0000048E */  lw         $a0, 0x0($s0)
/* 313AC 80040BAC 0F14010C */  jal        PointInPoly
/* 313B0 80040BB0 1000A527 */   addiu     $a1, $sp, 0x10
/* 313B4 80040BB4 F6FF4010 */  beqz       $v0, .L80040B90
/* 313B8 80040BB8 01003126 */   addiu     $s1, $s1, 0x1
/* 313BC 80040BBC 0400028E */  lw         $v0, 0x4($s0)
/* 313C0 80040BC0 0980013C */  lui        $at, %hi(CurrentCameraEnum)
/* 313C4 80040BC4 B04C22AC */  sw         $v0, %lo(CurrentCameraEnum)($at)
.L80040BC8:
/* 313C8 80040BC8 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 313CC 80040BCC 2800B28F */  lw         $s2, 0x28($sp)
/* 313D0 80040BD0 2400B18F */  lw         $s1, 0x24($sp)
/* 313D4 80040BD4 2000B08F */  lw         $s0, 0x20($sp)
/* 313D8 80040BD8 0800E003 */  jr         $ra
/* 313DC 80040BDC 3000BD27 */   addiu     $sp, $sp, 0x30
.size CheckCameraTriggers, . - CheckCameraTriggers
