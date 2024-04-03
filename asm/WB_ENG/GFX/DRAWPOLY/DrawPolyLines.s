.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawPolyLines
/* 502DC 8005FADC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 502E0 8005FAE0 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 502E4 8005FAE4 21A8C000 */  addu       $s5, $a2, $zero
/* 502E8 8005FAE8 80380700 */  sll        $a3, $a3, 2
/* 502EC 8005FAEC 2800B4AF */  sw         $s4, 0x28($sp)
/* 502F0 8005FAF0 3000BFAF */  sw         $ra, 0x30($sp)
/* 502F4 8005FAF4 2400B3AF */  sw         $s3, 0x24($sp)
/* 502F8 8005FAF8 2000B2AF */  sw         $s2, 0x20($sp)
/* 502FC 8005FAFC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 50300 8005FB00 1800B0AF */  sw         $s0, 0x18($sp)
/* 50304 8005FB04 0C00B08C */  lw         $s0, 0xC($a1)
/* 50308 8005FB08 0800A394 */  lhu        $v1, 0x8($a1)
/* 5030C 8005FB0C 0400B28C */  lw         $s2, 0x4($a1)
/* 50310 8005FB10 28006010 */  beqz       $v1, .L8005FBB4
/* 50314 8005FB14 21A08700 */   addu      $s4, $a0, $a3
/* 50318 8005FB18 1000B327 */  addiu      $s3, $sp, 0x10
/* 5031C 8005FB1C 21886000 */  addu       $s1, $v1, $zero
.L8005FB20:
/* 50320 8005FB20 20000626 */  addiu      $a2, $s0, 0x20
/* 50324 8005FB24 00291500 */  sll        $a1, $s5, 4
/* 50328 8005FB28 20000296 */  lhu        $v0, 0x20($s0)
/* 5032C 8005FB2C 21280502 */  addu       $a1, $s0, $a1
/* 50330 8005FB30 C0100200 */  sll        $v0, $v0, 3
/* 50334 8005FB34 21104202 */  addu       $v0, $s2, $v0
/* 50338 8005FB38 000040C8 */  lwc2       $0, 0x0($v0)
/* 5033C 8005FB3C 040041C8 */  lwc2       $1, 0x4($v0)
/* 50340 8005FB40 000042C8 */  lwc2       $2, 0x0($v0)
/* 50344 8005FB44 040043C8 */  lwc2       $3, 0x4($v0)
/* 50348 8005FB48 000044C8 */  lwc2       $4, 0x0($v0)
/* 5034C 8005FB4C 040045C8 */  lwc2       $5, 0x4($v0)
/* 50350 8005FB50 0600C624 */  addiu      $a2, $a2, 0x6
/* 50354 8005FB54 00000000 */  nop
/* 50358 8005FB58 00000000 */  nop
/* 5035C 8005FB5C 3000284A */  RTPT
/* 50360 8005FB60 0800A424 */  addiu      $a0, $a1, 0x8
/* 50364 8005FB64 0C00A324 */  addiu      $v1, $a1, 0xC
/* 50368 8005FB68 00008CE8 */  swc2       $12, 0x0($a0)
/* 5036C 8005FB6C 00006DEA */  swc2       $13, 0x0($s3)
/* 50370 8005FB70 00006EE8 */  swc2       $14, 0x0($v1)
/* 50374 8005FB74 0000C294 */  lhu        $v0, 0x0($a2)
/* 50378 8005FB78 00000000 */  nop
/* 5037C 8005FB7C C0100200 */  sll        $v0, $v0, 3
/* 50380 8005FB80 21104202 */  addu       $v0, $s2, $v0
/* 50384 8005FB84 000040C8 */  lwc2       $0, 0x0($v0)
/* 50388 8005FB88 040041C8 */  lwc2       $1, 0x4($v0)
/* 5038C 8005FB8C 00000000 */  nop
/* 50390 8005FB90 00000000 */  nop
/* 50394 8005FB94 0100184A */  RTPS
/* 50398 8005FB98 1400A227 */  addiu      $v0, $sp, 0x14
/* 5039C 8005FB9C 00004EE8 */  swc2       $14, 0x0($v0)
/* 503A0 8005FBA0 ABE6010C */  jal        AddPrim
/* 503A4 8005FBA4 21208002 */   addu      $a0, $s4, $zero
/* 503A8 8005FBA8 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 503AC 8005FBAC DCFF2016 */  bnez       $s1, .L8005FB20
/* 503B0 8005FBB0 28001026 */   addiu     $s0, $s0, 0x28
.L8005FBB4:
/* 503B4 8005FBB4 3000BF8F */  lw         $ra, 0x30($sp)
/* 503B8 8005FBB8 2C00B58F */  lw         $s5, 0x2C($sp)
/* 503BC 8005FBBC 2800B48F */  lw         $s4, 0x28($sp)
/* 503C0 8005FBC0 2400B38F */  lw         $s3, 0x24($sp)
/* 503C4 8005FBC4 2000B28F */  lw         $s2, 0x20($sp)
/* 503C8 8005FBC8 1C00B18F */  lw         $s1, 0x1C($sp)
/* 503CC 8005FBCC 1800B08F */  lw         $s0, 0x18($sp)
/* 503D0 8005FBD0 0800E003 */  jr         $ra
/* 503D4 8005FBD4 3800BD27 */   addiu     $sp, $sp, 0x38
.size DrawPolyLines, . - DrawPolyLines
