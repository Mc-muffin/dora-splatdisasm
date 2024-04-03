.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ForcePickups
/* C968 8001C168 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* C96C 8001C16C 1C00B1AF */  sw         $s1, 0x1C($sp)
/* C970 8001C170 3813918F */  lw         $s1, %gp_rel(MapPickupList)($gp)
/* C974 8001C174 3C13828F */  lw         $v0, %gp_rel(NumPickupList)($gp)
/* C978 8001C178 2C00B5AF */  sw         $s5, 0x2C($sp)
/* C97C 8001C17C 4C02958F */  lw         $s5, %gp_rel(P2)($gp)
/* C980 8001C180 2000B2AF */  sw         $s2, 0x20($sp)
/* C984 8001C184 21900000 */  addu       $s2, $zero, $zero
/* C988 8001C188 3800BEAF */  sw         $fp, 0x38($sp)
/* C98C 8001C18C 21F08000 */  addu       $fp, $a0, $zero
/* C990 8001C190 3400B7AF */  sw         $s7, 0x34($sp)
/* C994 8001C194 21B8C000 */  addu       $s7, $a2, $zero
/* C998 8001C198 3C00BFAF */  sw         $ra, 0x3C($sp)
/* C99C 8001C19C 3000B6AF */  sw         $s6, 0x30($sp)
/* C9A0 8001C1A0 2800B4AF */  sw         $s4, 0x28($sp)
/* C9A4 8001C1A4 2400B3AF */  sw         $s3, 0x24($sp)
/* C9A8 8001C1A8 6E004018 */  blez       $v0, .L8001C364
/* C9AC 8001C1AC 1800B0AF */   sw        $s0, 0x18($sp)
/* C9B0 8001C1B0 01001624 */  addiu      $s6, $zero, 0x1
.L8001C1B4:
/* C9B4 8001C1B4 0000248E */  lw         $a0, 0x0($s1)
/* C9B8 8001C1B8 0800258E */  lw         $a1, 0x8($s1)
/* C9BC 8001C1BC 23209E00 */  subu       $a0, $a0, $fp
/* C9C0 8001C1C0 FEE9000C */  jal        DistApprox_2d
/* C9C4 8001C1C4 2328B700 */   subu      $a1, $a1, $s7
/* C9C8 8001C1C8 0000248E */  lw         $a0, 0x0($s1)
/* C9CC 8001C1CC 0800258E */  lw         $a1, 0x8($s1)
/* C9D0 8001C1D0 23209E00 */  subu       $a0, $a0, $fp
/* C9D4 8001C1D4 FEE9000C */  jal        DistApprox_2d
/* C9D8 8001C1D8 2328B700 */   subu      $a1, $a1, $s7
/* C9DC 8001C1DC 0C00238E */  lw         $v1, 0xC($s1)
/* C9E0 8001C1E0 00000000 */  nop
/* C9E4 8001C1E4 32006014 */  bnez       $v1, .L8001C2B0
/* C9E8 8001C1E8 2A105500 */   slt       $v0, $v0, $s5
/* C9EC 8001C1EC 30004010 */  beqz       $v0, .L8001C2B0
/* C9F0 8001C1F0 21180000 */   addu      $v1, $zero, $zero
/* C9F4 8001C1F4 0980023C */  lui        $v0, %hi(PickupPool)
/* C9F8 8001C1F8 505D4824 */  addiu      $t0, $v0, %lo(PickupPool)
/* C9FC 8001C1FC 01005426 */  addiu      $s4, $s2, 0x1
/* CA00 8001C200 0000258E */  lw         $a1, 0x0($s1)
/* CA04 8001C204 0400268E */  lw         $a2, 0x4($s1)
/* CA08 8001C208 3413848F */  lw         $a0, %gp_rel(gLevelMaxPool)($gp)
/* CA0C 8001C20C 0800278E */  lw         $a3, 0x8($s1)
/* CA10 8001C210 08008018 */  blez       $a0, .L8001C234
/* CA14 8001C214 14003326 */   addiu     $s3, $s1, 0x14
.L8001C218:
/* CA18 8001C218 0C00028D */  lw         $v0, 0xC($t0)
/* CA1C 8001C21C 00000000 */  nop
/* CA20 8001C220 10004010 */  beqz       $v0, .L8001C264
/* CA24 8001C224 01006324 */   addiu     $v1, $v1, 0x1
/* CA28 8001C228 2A106400 */  slt        $v0, $v1, $a0
/* CA2C 8001C22C FAFF4014 */  bnez       $v0, .L8001C218
/* CA30 8001C230 14000825 */   addiu     $t0, $t0, 0x14
.L8001C234:
/* CA34 8001C234 21280000 */  addu       $a1, $zero, $zero
.L8001C238:
/* CA38 8001C238 4400A010 */  beqz       $a1, .L8001C34C
/* CA3C 8001C23C 80101200 */   sll       $v0, $s2, 2
/* CA40 8001C240 21105200 */  addu       $v0, $v0, $s2
/* CA44 8001C244 3813838F */  lw         $v1, %gp_rel(MapPickupList)($gp)
/* CA48 8001C248 80100200 */  sll        $v0, $v0, 2
/* CA4C 8001C24C 0C0036AE */  sw         $s6, 0xC($s1)
/* CA50 8001C250 100025AE */  sw         $a1, 0x10($s1)
/* CA54 8001C254 4400A48C */  lw         $a0, 0x44($a1)
/* CA58 8001C258 21186200 */  addu       $v1, $v1, $v0
/* CA5C 8001C25C D3700008 */  j          .L8001C34C
/* CA60 8001C260 140083AC */   sw        $v1, 0x14($a0)
.L8001C264:
/* CA64 8001C264 1000108D */  lw         $s0, 0x10($t0)
/* CA68 8001C268 0A000224 */  addiu      $v0, $zero, 0xA
/* CA6C 8001C26C 1000A2AF */  sw         $v0, 0x10($sp)
/* CA70 8001C270 32000224 */  addiu      $v0, $zero, 0x32
/* CA74 8001C274 0C0016AD */  sw         $s6, 0xC($t0)
/* CA78 8001C278 1400A2AF */  sw         $v0, 0x14($sp)
/* CA7C 8001C27C B2F9000C */  jal        InitObjectPhysics
/* CA80 8001C280 6C000426 */   addiu     $a0, $s0, 0x6C
/* CA84 8001C284 1000038E */  lw         $v1, 0x10($s0)
/* CA88 8001C288 96000224 */  addiu      $v0, $zero, 0x96
/* CA8C 8001C28C 5C0002AE */  sw         $v0, 0x5C($s0)
/* CA90 8001C290 3C02828F */  lw         $v0, %gp_rel(NumActivePickupPool)($gp)
/* CA94 8001C294 640000AE */  sw         $zero, 0x64($s0)
/* CA98 8001C298 00016334 */  ori        $v1, $v1, 0x100
/* CA9C 8001C29C 01004224 */  addiu      $v0, $v0, 0x1
/* CAA0 8001C2A0 100003AE */  sw         $v1, 0x10($s0)
/* CAA4 8001C2A4 3C0282AF */  sw         $v0, %gp_rel(NumActivePickupPool)($gp)
/* CAA8 8001C2A8 8E700008 */  j          .L8001C238
/* CAAC 8001C2AC 21280002 */   addu      $a1, $s0, $zero
.L8001C2B0:
/* CAB0 8001C2B0 01005426 */  addiu      $s4, $s2, 0x1
/* CAB4 8001C2B4 1000258E */  lw         $a1, 0x10($s1)
/* CAB8 8001C2B8 14003326 */  addiu      $s3, $s1, 0x14
/* CABC 8001C2BC 7000A48C */  lw         $a0, 0x70($a1)
/* CAC0 8001C2C0 7800A58C */  lw         $a1, 0x78($a1)
/* CAC4 8001C2C4 23209E00 */  subu       $a0, $a0, $fp
/* CAC8 8001C2C8 FEE9000C */  jal        DistApprox_2d
/* CACC 8001C2CC 2328B700 */   subu      $a1, $a1, $s7
/* CAD0 8001C2D0 0C00238E */  lw         $v1, 0xC($s1)
/* CAD4 8001C2D4 00000000 */  nop
/* CAD8 8001C2D8 1C007614 */  bne        $v1, $s6, .L8001C34C
/* CADC 8001C2DC 2A105500 */   slt       $v0, $v0, $s5
/* CAE0 8001C2E0 1B004014 */  bnez       $v0, .L8001C350
/* CAE4 8001C2E4 21908002 */   addu      $s2, $s4, $zero
/* CAE8 8001C2E8 1000308E */  lw         $s0, 0x10($s1)
/* CAEC 8001C2EC 3413928F */  lw         $s2, %gp_rel(gLevelMaxPool)($gp)
/* CAF0 8001C2F0 A972000C */  jal        RestartPickup
/* CAF4 8001C2F4 21200002 */   addu      $a0, $s0, $zero
/* CAF8 8001C2F8 1300401A */  blez       $s2, .L8001C348
/* CAFC 8001C2FC 0980023C */   lui       $v0, %hi(PickupPool)
/* CB00 8001C300 FFFE0624 */  addiu      $a2, $zero, -0x101
/* CB04 8001C304 3C02858F */  lw         $a1, %gp_rel(NumActivePickupPool)($gp)
/* CB08 8001C308 505D4224 */  addiu      $v0, $v0, %lo(PickupPool)
/* CB0C 8001C30C 0C004324 */  addiu      $v1, $v0, 0xC
/* CB10 8001C310 21204002 */  addu       $a0, $s2, $zero
.L8001C314:
/* CB14 8001C314 0400628C */  lw         $v0, 0x4($v1)
/* CB18 8001C318 00000000 */  nop
/* CB1C 8001C31C 06005014 */  bne        $v0, $s0, .L8001C338
/* CB20 8001C320 00000000 */   nop
/* CB24 8001C324 000060AC */  sw         $zero, 0x0($v1)
/* CB28 8001C328 1000028E */  lw         $v0, 0x10($s0)
/* CB2C 8001C32C FFFFA524 */  addiu      $a1, $a1, -0x1
/* CB30 8001C330 24104600 */  and        $v0, $v0, $a2
/* CB34 8001C334 100002AE */  sw         $v0, 0x10($s0)
.L8001C338:
/* CB38 8001C338 FFFF8424 */  addiu      $a0, $a0, -0x1
/* CB3C 8001C33C F5FF8014 */  bnez       $a0, .L8001C314
/* CB40 8001C340 14006324 */   addiu     $v1, $v1, 0x14
/* CB44 8001C344 3C0285AF */  sw         $a1, %gp_rel(NumActivePickupPool)($gp)
.L8001C348:
/* CB48 8001C348 0C0020AE */  sw         $zero, 0xC($s1)
.L8001C34C:
/* CB4C 8001C34C 21908002 */  addu       $s2, $s4, $zero
.L8001C350:
/* CB50 8001C350 3C13828F */  lw         $v0, %gp_rel(NumPickupList)($gp)
/* CB54 8001C354 00000000 */  nop
/* CB58 8001C358 2A104202 */  slt        $v0, $s2, $v0
/* CB5C 8001C35C 95FF4014 */  bnez       $v0, .L8001C1B4
/* CB60 8001C360 21886002 */   addu      $s1, $s3, $zero
.L8001C364:
/* CB64 8001C364 3C00BF8F */  lw         $ra, 0x3C($sp)
/* CB68 8001C368 3800BE8F */  lw         $fp, 0x38($sp)
/* CB6C 8001C36C 3400B78F */  lw         $s7, 0x34($sp)
/* CB70 8001C370 3000B68F */  lw         $s6, 0x30($sp)
/* CB74 8001C374 2C00B58F */  lw         $s5, 0x2C($sp)
/* CB78 8001C378 2800B48F */  lw         $s4, 0x28($sp)
/* CB7C 8001C37C 2400B38F */  lw         $s3, 0x24($sp)
/* CB80 8001C380 2000B28F */  lw         $s2, 0x20($sp)
/* CB84 8001C384 1C00B18F */  lw         $s1, 0x1C($sp)
/* CB88 8001C388 1800B08F */  lw         $s0, 0x18($sp)
/* CB8C 8001C38C 0800E003 */  jr         $ra
/* CB90 8001C390 4000BD27 */   addiu     $sp, $sp, 0x40
.size ForcePickups, . - ForcePickups
