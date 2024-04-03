.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ApplyGravity
/* 2D364 8003CB64 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 2D368 8003CB68 2400B3AF */  sw         $s3, 0x24($sp)
/* 2D36C 8003CB6C 21988000 */  addu       $s3, $a0, $zero
/* 2D370 8003CB70 3800BFAF */  sw         $ra, 0x38($sp)
/* 2D374 8003CB74 3400B7AF */  sw         $s7, 0x34($sp)
/* 2D378 8003CB78 3000B6AF */  sw         $s6, 0x30($sp)
/* 2D37C 8003CB7C 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 2D380 8003CB80 2800B4AF */  sw         $s4, 0x28($sp)
/* 2D384 8003CB84 2000B2AF */  sw         $s2, 0x20($sp)
/* 2D388 8003CB88 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 2D38C 8003CB8C 1800B0AF */  sw         $s0, 0x18($sp)
/* 2D390 8003CB90 0800728E */  lw         $s2, 0x8($s3)
/* 2D394 8003CB94 0400768E */  lw         $s6, 0x4($s3)
/* 2D398 8003CB98 8400628E */  lw         $v0, 0x84($s3)
/* 2D39C 8003CB9C 0C00748E */  lw         $s4, 0xC($s3)
/* 2D3A0 8003CBA0 0100C526 */  addiu      $a1, $s6, 0x1
/* 2D3A4 8003CBA4 C21F0200 */  srl        $v1, $v0, 31
/* 2D3A8 8003CBA8 21104300 */  addu       $v0, $v0, $v1
/* 2D3AC 8003CBAC 43800200 */  sra        $s0, $v0, 1
/* 2D3B0 8003CBB0 23B8B000 */  subu       $s7, $a1, $s0
/* 2D3B4 8003CBB4 2128E002 */  addu       $a1, $s7, $zero
/* 2D3B8 8003CBB8 21304002 */  addu       $a2, $s2, $zero
/* 2D3BC 8003CBBC 01008226 */  addiu      $v0, $s4, 0x1
/* 2D3C0 8003CBC0 23885000 */  subu       $s1, $v0, $s0
/* 2D3C4 8003CBC4 7BF0000C */  jal        CheckDoor
/* 2D3C8 8003CBC8 21382002 */   addu      $a3, $s1, $zero
/* 2D3CC 8003CBCC 4C004014 */  bnez       $v0, .L8003CD00
/* 2D3D0 8003CBD0 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2D3D4 8003CBD4 21206002 */  addu       $a0, $s3, $zero
/* 2D3D8 8003CBD8 FFFFC226 */  addiu      $v0, $s6, -0x1
/* 2D3DC 8003CBDC 21A85000 */  addu       $s5, $v0, $s0
/* 2D3E0 8003CBE0 2128A002 */  addu       $a1, $s5, $zero
/* 2D3E4 8003CBE4 21304002 */  addu       $a2, $s2, $zero
/* 2D3E8 8003CBE8 7BF0000C */  jal        CheckDoor
/* 2D3EC 8003CBEC 21382002 */   addu      $a3, $s1, $zero
/* 2D3F0 8003CBF0 43004014 */  bnez       $v0, .L8003CD00
/* 2D3F4 8003CBF4 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2D3F8 8003CBF8 21206002 */  addu       $a0, $s3, $zero
/* 2D3FC 8003CBFC 2128E002 */  addu       $a1, $s7, $zero
/* 2D400 8003CC00 21304002 */  addu       $a2, $s2, $zero
/* 2D404 8003CC04 FFFF8226 */  addiu      $v0, $s4, -0x1
/* 2D408 8003CC08 21885000 */  addu       $s1, $v0, $s0
/* 2D40C 8003CC0C 7BF0000C */  jal        CheckDoor
/* 2D410 8003CC10 21382002 */   addu      $a3, $s1, $zero
/* 2D414 8003CC14 3A004014 */  bnez       $v0, .L8003CD00
/* 2D418 8003CC18 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2D41C 8003CC1C 21206002 */  addu       $a0, $s3, $zero
/* 2D420 8003CC20 2128A002 */  addu       $a1, $s5, $zero
/* 2D424 8003CC24 21304002 */  addu       $a2, $s2, $zero
/* 2D428 8003CC28 7BF0000C */  jal        CheckDoor
/* 2D42C 8003CC2C 21382002 */   addu      $a3, $s1, $zero
/* 2D430 8003CC30 33004014 */  bnez       $v0, .L8003CD00
/* 2D434 8003CC34 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2D438 8003CC38 A40B828F */  lw         $v0, %gp_rel(GRAVITY)($gp)
/* 2D43C 8003CC3C 00000000 */  nop
/* 2D440 8003CC40 21904202 */  addu       $s2, $s2, $v0
/* 2D444 8003CC44 A80B92AF */  sw         $s2, %gp_rel(ACTUALCURRENTY)($gp)
/* 2D448 8003CC48 03004106 */  bgez       $s2, .L8003CC58
/* 2D44C 8003CC4C 21884002 */   addu      $s1, $s2, $zero
/* 2D450 8003CC50 21880000 */  addu       $s1, $zero, $zero
/* 2D454 8003CC54 080060AE */  sw         $zero, 0x8($s3)
.L8003CC58:
/* 2D458 8003CC58 2120C002 */  addu       $a0, $s6, $zero
/* 2D45C 8003CC5C 21308002 */  addu       $a2, $s4, $zero
/* 2D460 8003CC60 94148727 */  addiu      $a3, $gp, %gp_rel(tempyheight1)
/* 2D464 8003CC64 AC0B858F */  lw         $a1, %gp_rel(TV1)($gp)
/* 2D468 8003CC68 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 2D46C 8003CC6C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2D470 8003CC70 1400B3AF */  sw         $s3, 0x14($sp)
/* 2D474 8003CC74 A1F1000C */  jal        CheckCollisionCelHeight4Bottom
/* 2D478 8003CC78 21282502 */   addu      $a1, $s1, $a1
/* 2D47C 8003CC7C 2120C002 */  addu       $a0, $s6, $zero
/* 2D480 8003CC80 21282002 */  addu       $a1, $s1, $zero
/* 2D484 8003CC84 21308002 */  addu       $a2, $s4, $zero
/* 2D488 8003CC88 98148727 */  addiu      $a3, $gp, %gp_rel(tempyheight2)
/* 2D48C 8003CC8C 1000B0AF */  sw         $s0, 0x10($sp)
/* 2D490 8003CC90 21804000 */  addu       $s0, $v0, $zero
/* 2D494 8003CC94 C9F0000C */  jal        CheckCollisionCelHeight4
/* 2D498 8003CC98 1400B3AF */   sw        $s3, 0x14($sp)
/* 2D49C 8003CC9C 21184000 */  addu       $v1, $v0, $zero
/* 2D4A0 8003CCA0 FF030232 */  andi       $v0, $s0, 0x3FF
/* 2D4A4 8003CCA4 FF030424 */  addiu      $a0, $zero, 0x3FF
/* 2D4A8 8003CCA8 9414868F */  lw         $a2, %gp_rel(tempyheight1)($gp)
/* 2D4AC 8003CCAC 9814858F */  lw         $a1, %gp_rel(tempyheight2)($gp)
/* 2D4B0 8003CCB0 03004414 */  bne        $v0, $a0, .L8003CCC0
/* 2D4B4 8003CCB4 FF036230 */   andi      $v0, $v1, 0x3FF
/* 2D4B8 8003CCB8 0E004410 */  beq        $v0, $a0, .L8003CCF4
/* 2D4BC 8003CCBC 00000000 */   nop
.L8003CCC0:
/* 2D4C0 8003CCC0 04004410 */  beq        $v0, $a0, .L8003CCD4
/* 2D4C4 8003CCC4 80FFA224 */   addiu     $v0, $a1, -0x80
/* 2D4C8 8003CCC8 B80B82AF */  sw         $v0, %gp_rel(TV4)($gp)
/* 2D4CC 8003CCCC 36F30008 */  j          .L8003CCD8
/* 2D4D0 8003CCD0 21806000 */   addu      $s0, $v1, $zero
.L8003CCD4:
/* 2D4D4 8003CCD4 B80B86AF */  sw         $a2, %gp_rel(TV4)($gp)
.L8003CCD8:
/* 2D4D8 8003CCD8 0400648E */  lw         $a0, 0x4($s3)
/* 2D4DC 8003CCDC 0800658E */  lw         $a1, 0x8($s3)
/* 2D4E0 8003CCE0 0C00668E */  lw         $a2, 0xC($s3)
/* 2D4E4 8003CCE4 CDEF000C */  jal        GetHeight
/* 2D4E8 8003CCE8 00000000 */   nop
/* 2D4EC 8003CCEC 3FF30008 */  j          .L8003CCFC
/* 2D4F0 8003CCF0 080062AE */   sw        $v0, 0x8($s3)
.L8003CCF4:
/* 2D4F4 8003CCF4 FFFF1024 */  addiu      $s0, $zero, -0x1
/* 2D4F8 8003CCF8 080072AE */  sw         $s2, 0x8($s3)
.L8003CCFC:
/* 2D4FC 8003CCFC 21100002 */  addu       $v0, $s0, $zero
.L8003CD00:
/* 2D500 8003CD00 3800BF8F */  lw         $ra, 0x38($sp)
/* 2D504 8003CD04 3400B78F */  lw         $s7, 0x34($sp)
/* 2D508 8003CD08 3000B68F */  lw         $s6, 0x30($sp)
/* 2D50C 8003CD0C 2C00B58F */  lw         $s5, 0x2C($sp)
/* 2D510 8003CD10 2800B48F */  lw         $s4, 0x28($sp)
/* 2D514 8003CD14 2400B38F */  lw         $s3, 0x24($sp)
/* 2D518 8003CD18 2000B28F */  lw         $s2, 0x20($sp)
/* 2D51C 8003CD1C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 2D520 8003CD20 1800B08F */  lw         $s0, 0x18($sp)
/* 2D524 8003CD24 0800E003 */  jr         $ra
/* 2D528 8003CD28 4000BD27 */   addiu     $sp, $sp, 0x40
.size ApplyGravity, . - ApplyGravity
