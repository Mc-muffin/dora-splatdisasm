.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EtLoseHealth
/* 6A80 80016280 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 6A84 80016284 01000224 */  addiu      $v0, $zero, 0x1
/* 6A88 80016288 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 6A8C 8001628C 2198A000 */  addu       $s3, $a1, $zero
/* 6A90 80016290 2000BFAF */  sw         $ra, 0x20($sp)
/* 6A94 80016294 1800B2AF */  sw         $s2, 0x18($sp)
/* 6A98 80016298 1400B1AF */  sw         $s1, 0x14($sp)
/* 6A9C 8001629C 1000B0AF */  sw         $s0, 0x10($sp)
/* 6AA0 800162A0 200082AF */  sw         $v0, %gp_rel(UpdateETHSV)($gp)
/* 6AA4 800162A4 1000628E */  lw         $v0, 0x10($s3)
/* 6AA8 800162A8 00000000 */  nop
/* 6AAC 800162AC 00024230 */  andi       $v0, $v0, 0x200
/* 6AB0 800162B0 58004014 */  bnez       $v0, .L80016414
/* 6AB4 800162B4 6C007226 */   addiu     $s2, $s3, 0x6C
/* 6AB8 800162B8 6C00C224 */  addiu      $v0, $a2, 0x6C
/* 6ABC 800162BC 0400468E */  lw         $a2, 0x4($s2)
/* 6AC0 800162C0 0400448C */  lw         $a0, 0x4($v0)
/* 6AC4 800162C4 0C00438E */  lw         $v1, 0xC($s2)
/* 6AC8 800162C8 0C00458C */  lw         $a1, 0xC($v0)
/* 6ACC 800162CC 2320C400 */  subu       $a0, $a2, $a0
/* 6AD0 800162D0 63EF010C */  jal        ratan2
/* 6AD4 800162D4 23286500 */   subu      $a1, $v1, $a1
/* 6AD8 800162D8 21804000 */  addu       $s0, $v0, $zero
/* 6ADC 800162DC 47EB010C */  jal        rsin
/* 6AE0 800162E0 21200002 */   addu      $a0, $s0, $zero
/* 6AE4 800162E4 21200002 */  addu       $a0, $s0, $zero
/* 6AE8 800162E8 7BEB010C */  jal        rcos
/* 6AEC 800162EC 21884000 */   addu      $s1, $v0, $zero
/* 6AF0 800162F0 21200000 */  addu       $a0, $zero, $zero
/* 6AF4 800162F4 01000524 */  addiu      $a1, $zero, 0x1
/* 6AF8 800162F8 1E000624 */  addiu      $a2, $zero, 0x1E
/* 6AFC 800162FC 40191100 */  sll        $v1, $s1, 5
/* 6B00 80016300 23187100 */  subu       $v1, $v1, $s1
/* 6B04 80016304 80180300 */  sll        $v1, $v1, 2
/* 6B08 80016308 21187100 */  addu       $v1, $v1, $s1
/* 6B0C 8001630C 00190300 */  sll        $v1, $v1, 4
/* 6B10 80016310 031A0300 */  sra        $v1, $v1, 8
/* 6B14 80016314 300043AE */  sw         $v1, 0x30($s2)
/* 6B18 80016318 40190200 */  sll        $v1, $v0, 5
/* 6B1C 8001631C 23186200 */  subu       $v1, $v1, $v0
/* 6B20 80016320 80180300 */  sll        $v1, $v1, 2
/* 6B24 80016324 21186200 */  addu       $v1, $v1, $v0
/* 6B28 80016328 00190300 */  sll        $v1, $v1, 4
/* 6B2C 8001632C 031A0300 */  sra        $v1, $v1, 8
/* 6B30 80016330 8666010C */  jal        Sys_VibrationBuzzWork
/* 6B34 80016334 380043AE */   sw        $v1, 0x38($s2)
/* 6B38 80016338 21200000 */  addu       $a0, $zero, $zero
/* 6B3C 8001633C FF000524 */  addiu      $a1, $zero, 0xFF
/* 6B40 80016340 6266010C */  jal        Sys_VibrationWaveWork
/* 6B44 80016344 1E000624 */   addiu     $a2, $zero, 0x1E
/* 6B48 80016348 0C00638E */  lw         $v1, 0xC($s3)
/* 6B4C 8001634C 00000000 */  nop
/* 6B50 80016350 1300622C */  sltiu      $v0, $v1, 0x13
/* 6B54 80016354 0A004010 */  beqz       $v0, .L80016380
/* 6B58 80016358 0180023C */   lui       $v0, %hi(jtbl_80010058)
/* 6B5C 8001635C 58004224 */  addiu      $v0, $v0, %lo(jtbl_80010058)
/* 6B60 80016360 80180300 */  sll        $v1, $v1, 2
/* 6B64 80016364 21186200 */  addu       $v1, $v1, $v0
/* 6B68 80016368 0000648C */  lw         $a0, 0x0($v1)
/* 6B6C 8001636C 00000000 */  nop
/* 6B70 80016370 08008000 */  jr         $a0
/* 6B74 80016374 00000000 */   nop
jlabel .L80016378
/* 6B78 80016378 E30F010C */  jal        EndTK
/* 6B7C 8001637C 21206002 */   addu      $a0, $s3, $zero
jlabel .L80016380
/* 6B80 80016380 1000638E */  lw         $v1, 0x10($s3)
/* 6B84 80016384 05000224 */  addiu      $v0, $zero, 0x5
/* 6B88 80016388 0C0062AE */  sw         $v0, 0xC($s3)
/* 6B8C 8001638C 2800828F */  lw         $v0, %gp_rel(Game_Health)($gp)
/* 6B90 80016390 040160AE */  sw         $zero, 0x104($s3)
/* 6B94 80016394 00026334 */  ori        $v1, $v1, 0x200
/* 6B98 80016398 64004228 */  slti       $v0, $v0, 0x64
/* 6B9C 8001639C 03004014 */  bnez       $v0, .L800163AC
/* 6BA0 800163A0 100063AE */   sw        $v1, 0x10($s3)
/* 6BA4 800163A4 63000224 */  addiu      $v0, $zero, 0x63
/* 6BA8 800163A8 280082AF */  sw         $v0, %gp_rel(Game_Health)($gp)
.L800163AC:
/* 6BAC 800163AC 2800828F */  lw         $v0, %gp_rel(Game_Health)($gp)
/* 6BB0 800163B0 00000000 */  nop
/* 6BB4 800163B4 ECFF4224 */  addiu      $v0, $v0, -0x14
/* 6BB8 800163B8 280082AF */  sw         $v0, %gp_rel(Game_Health)($gp)
/* 6BBC 800163BC 0A00401C */  bgtz       $v0, .L800163E8
/* 6BC0 800163C0 06000224 */   addiu     $v0, $zero, 0x6
/* 6BC4 800163C4 280080AF */  sw         $zero, %gp_rel(Game_Health)($gp)
/* 6BC8 800163C8 1F79000C */  jal        HudTakeLives
/* 6BCC 800163CC 0C0062AE */   sw        $v0, 0xC($s3)
/* 6BD0 800163D0 0B000424 */  addiu      $a0, $zero, 0xB
/* 6BD4 800163D4 21280000 */  addu       $a1, $zero, $zero
/* 6BD8 800163D8 6F4A010C */  jal        pxm_sendevent
/* 6BDC 800163DC 21300000 */   addu      $a2, $zero, $zero
/* 6BE0 800163E0 01590008 */  j          .L80016404
/* 6BE4 800163E4 21206002 */   addu      $a0, $s3, $zero
.L800163E8:
/* 6BE8 800163E8 E078000C */  jal        HudTakeHealth
/* 6BEC 800163EC 00000000 */   nop
/* 6BF0 800163F0 0A000424 */  addiu      $a0, $zero, 0xA
/* 6BF4 800163F4 21280000 */  addu       $a1, $zero, $zero
/* 6BF8 800163F8 6F4A010C */  jal        pxm_sendevent
/* 6BFC 800163FC 21300000 */   addu      $a2, $zero, $zero
/* 6C00 80016400 21206002 */  addu       $a0, $s3, $zero
.L80016404:
/* 6C04 80016404 03000524 */  addiu      $a1, $zero, 0x3
/* 6C08 80016408 01000624 */  addiu      $a2, $zero, 0x1
/* 6C0C 8001640C 8FE2000C */  jal        SetAnimWithInterp
/* 6C10 80016410 2C016726 */   addiu     $a3, $s3, 0x12C
jlabel .L80016414
/* 6C14 80016414 0C00638E */  lw         $v1, 0xC($s3)
/* 6C18 80016418 00000000 */  nop
/* 6C1C 8001641C 1300622C */  sltiu      $v0, $v1, 0x13
/* 6C20 80016420 0B004010 */  beqz       $v0, .L80016450
/* 6C24 80016424 040160AE */   sw        $zero, 0x104($s3)
/* 6C28 80016428 0180023C */  lui        $v0, %hi(jtbl_800100A8)
/* 6C2C 8001642C A8004224 */  addiu      $v0, $v0, %lo(jtbl_800100A8)
/* 6C30 80016430 80180300 */  sll        $v1, $v1, 2
/* 6C34 80016434 21186200 */  addu       $v1, $v1, $v0
/* 6C38 80016438 0000648C */  lw         $a0, 0x0($v1)
/* 6C3C 8001643C 00000000 */  nop
/* 6C40 80016440 08008000 */  jr         $a0
/* 6C44 80016444 00000000 */   nop
jlabel .L80016448
/* 6C48 80016448 E30F010C */  jal        EndTK
/* 6C4C 8001644C 21206002 */   addu      $a0, $s3, $zero
jlabel .L80016450
/* 6C50 80016450 2000BF8F */  lw         $ra, 0x20($sp)
/* 6C54 80016454 1C00B38F */  lw         $s3, 0x1C($sp)
/* 6C58 80016458 1800B28F */  lw         $s2, 0x18($sp)
/* 6C5C 8001645C 1400B18F */  lw         $s1, 0x14($sp)
/* 6C60 80016460 1000B08F */  lw         $s0, 0x10($sp)
/* 6C64 80016464 0800E003 */  jr         $ra
/* 6C68 80016468 2800BD27 */   addiu     $sp, $sp, 0x28
.size EtLoseHealth, . - EtLoseHealth
