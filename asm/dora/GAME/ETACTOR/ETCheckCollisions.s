.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ETCheckCollisions
/* 814C 8001794C 0980023C */  lui        $v0, %hi(NumCollisionList)
/* 8150 80017950 1857428C */  lw         $v0, %lo(NumCollisionList)($v0)
/* 8154 80017954 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 8158 80017958 4C00BFAF */  sw         $ra, 0x4C($sp)
/* 815C 8001795C 4800BEAF */  sw         $fp, 0x48($sp)
/* 8160 80017960 4400B7AF */  sw         $s7, 0x44($sp)
/* 8164 80017964 4000B6AF */  sw         $s6, 0x40($sp)
/* 8168 80017968 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 816C 8001796C 3800B4AF */  sw         $s4, 0x38($sp)
/* 8170 80017970 3400B3AF */  sw         $s3, 0x34($sp)
/* 8174 80017974 3000B2AF */  sw         $s2, 0x30($sp)
/* 8178 80017978 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 817C 8001797C 2800B0AF */  sw         $s0, 0x28($sp)
/* 8180 80017980 B1004010 */  beqz       $v0, .L80017C48
/* 8184 80017984 5000A4AF */   sw        $a0, 0x50($sp)
/* 8188 80017988 AE004018 */  blez       $v0, .L80017C44
/* 818C 8001798C 1800A0AF */   sw        $zero, 0x18($sp)
/* 8190 80017990 0A80033C */  lui        $v1, %hi(CollisionList)
/* 8194 80017994 A0B96324 */  addiu      $v1, $v1, %lo(CollisionList)
/* 8198 80017998 2000A3AF */  sw         $v1, 0x20($sp)
.L8001799C:
/* 819C 8001799C 2000A28F */  lw         $v0, 0x20($sp)
/* 81A0 800179A0 00000000 */  nop
/* 81A4 800179A4 0400558C */  lw         $s5, 0x4($v0)
/* 81A8 800179A8 2000A38F */  lw         $v1, 0x20($sp)
/* 81AC 800179AC 1000A28E */  lw         $v0, 0x10($s5)
/* 81B0 800179B0 00007E8C */  lw         $fp, 0x0($v1)
/* 81B4 800179B4 00014230 */  andi       $v0, $v0, 0x100
/* 81B8 800179B8 98004010 */  beqz       $v0, .L80017C1C
/* 81BC 800179BC 01000224 */   addiu     $v0, $zero, 0x1
/* 81C0 800179C0 0300C213 */  beq        $fp, $v0, .L800179D0
/* 81C4 800179C4 03000224 */   addiu     $v0, $zero, 0x3
/* 81C8 800179C8 6B00C217 */  bne        $fp, $v0, .L80017B78
/* 81CC 800179CC 00000000 */   nop
.L800179D0:
/* 81D0 800179D0 4400A38E */  lw         $v1, 0x44($s5)
/* 81D4 800179D4 00000000 */  nop
/* 81D8 800179D8 1C00628C */  lw         $v0, 0x1C($v1)
/* 81DC 800179DC 00000000 */  nop
/* 81E0 800179E0 80004230 */  andi       $v0, $v0, 0x80
/* 81E4 800179E4 47004010 */  beqz       $v0, .L80017B04
/* 81E8 800179E8 6C00B226 */   addiu     $s2, $s5, 0x6C
/* 81EC 800179EC 5000A28F */  lw         $v0, 0x50($sp)
/* 81F0 800179F0 00000000 */  nop
/* 81F4 800179F4 5000438C */  lw         $v1, 0x50($v0)
/* 81F8 800179F8 5000A28E */  lw         $v0, 0x50($s5)
/* 81FC 800179FC 0400448E */  lw         $a0, 0x4($s2)
/* 8200 80017A00 21B06200 */  addu       $s6, $v1, $v0
/* 8204 80017A04 5000A38F */  lw         $v1, 0x50($sp)
/* 8208 80017A08 0C00458E */  lw         $a1, 0xC($s2)
/* 820C 80017A0C 6C007324 */  addiu      $s3, $v1, 0x6C
/* 8210 80017A10 0400748E */  lw         $s4, 0x4($s3)
/* 8214 80017A14 0C00778E */  lw         $s7, 0xC($s3)
/* 8218 80017A18 23208402 */  subu       $a0, $s4, $a0
/* 821C 80017A1C 11EA000C */  jal        DistApprox_2d_actual
/* 8220 80017A20 2328E502 */   subu      $a1, $s7, $a1
/* 8224 80017A24 08004004 */  bltz       $v0, .L80017A48
/* 8228 80017A28 1C00B3AF */   sw        $s3, 0x1C($sp)
/* 822C 80017A2C 0400448E */  lw         $a0, 0x4($s2)
/* 8230 80017A30 0C00458E */  lw         $a1, 0xC($s2)
/* 8234 80017A34 23208402 */  subu       $a0, $s4, $a0
/* 8238 80017A38 11EA000C */  jal        DistApprox_2d_actual
/* 823C 80017A3C 2328E502 */   subu      $a1, $s7, $a1
/* 8240 80017A40 995E0008 */  j          .L80017A64
/* 8244 80017A44 2A10C202 */   slt       $v0, $s6, $v0
.L80017A48:
/* 8248 80017A48 0400448E */  lw         $a0, 0x4($s2)
/* 824C 80017A4C 0C00458E */  lw         $a1, 0xC($s2)
/* 8250 80017A50 23208402 */  subu       $a0, $s4, $a0
/* 8254 80017A54 11EA000C */  jal        DistApprox_2d_actual
/* 8258 80017A58 2328E502 */   subu      $a1, $s7, $a1
/* 825C 80017A5C 23100200 */  negu       $v0, $v0
/* 8260 80017A60 2A10C202 */  slt        $v0, $s6, $v0
.L80017A64:
/* 8264 80017A64 1F004014 */  bnez       $v0, .L80017AE4
/* 8268 80017A68 0100D626 */   addiu     $s6, $s6, 0x1
/* 826C 80017A6C 0C00448E */  lw         $a0, 0xC($s2)
/* 8270 80017A70 0400458E */  lw         $a1, 0x4($s2)
/* 8274 80017A74 23209700 */  subu       $a0, $a0, $s7
/* 8278 80017A78 63EF010C */  jal        ratan2
/* 827C 80017A7C 2328B400 */   subu      $a1, $a1, $s4
/* 8280 80017A80 00085024 */  addiu      $s0, $v0, 0x800
/* 8284 80017A84 FF0F1032 */  andi       $s0, $s0, 0xFFF
/* 8288 80017A88 47EB010C */  jal        rsin
/* 828C 80017A8C 21200002 */   addu      $a0, $s0, $zero
/* 8290 80017A90 21200002 */  addu       $a0, $s0, $zero
/* 8294 80017A94 7BEB010C */  jal        rcos
/* 8298 80017A98 21884000 */   addu      $s1, $v0, $zero
/* 829C 80017A9C 1800C202 */  mult       $s6, $v0
/* 82A0 80017AA0 12100000 */  mflo       $v0
/* 82A4 80017AA4 00000000 */  nop
/* 82A8 80017AA8 00000000 */  nop
/* 82AC 80017AAC 1800D102 */  mult       $s6, $s1
/* 82B0 80017AB0 0400438E */  lw         $v1, 0x4($s2)
/* 82B4 80017AB4 0C00448E */  lw         $a0, 0xC($s2)
/* 82B8 80017AB8 040074AE */  sw         $s4, 0x4($s3)
/* 82BC 80017ABC 0C0077AE */  sw         $s7, 0xC($s3)
/* 82C0 80017AC0 03130200 */  sra        $v0, $v0, 12
/* 82C4 80017AC4 21186200 */  addu       $v1, $v1, $v0
/* 82C8 80017AC8 23187400 */  subu       $v1, $v1, $s4
/* 82CC 80017ACC 200063AE */  sw         $v1, 0x20($s3)
/* 82D0 80017AD0 12880000 */  mflo       $s1
/* 82D4 80017AD4 038B1100 */  sra        $s1, $s1, 12
/* 82D8 80017AD8 21209100 */  addu       $a0, $a0, $s1
/* 82DC 80017ADC 23209700 */  subu       $a0, $a0, $s7
/* 82E0 80017AE0 280064AE */  sw         $a0, 0x28($s3)
.L80017AE4:
/* 82E4 80017AE4 1C00A48F */  lw         $a0, 0x1C($sp)
/* 82E8 80017AE8 A7F7000C */  jal        UpdateMotionPhysics
/* 82EC 80017AEC 00000000 */   nop
/* 82F0 80017AF0 5000A48F */  lw         $a0, 0x50($sp)
/* 82F4 80017AF4 1C00A58F */  lw         $a1, 0x1C($sp)
/* 82F8 80017AF8 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 82FC 80017AFC 00000000 */   nop
/* 8300 80017B00 4400A38E */  lw         $v1, 0x44($s5)
.L80017B04:
/* 8304 80017B04 00000000 */  nop
/* 8308 80017B08 1C00628C */  lw         $v0, 0x1C($v1)
/* 830C 80017B0C 00000000 */  nop
/* 8310 80017B10 20004230 */  andi       $v0, $v0, 0x20
/* 8314 80017B14 03004014 */  bnez       $v0, .L80017B24
/* 8318 80017B18 03000224 */   addiu     $v0, $zero, 0x3
/* 831C 80017B1C 1600C217 */  bne        $fp, $v0, .L80017B78
/* 8320 80017B20 00000000 */   nop
.L80017B24:
/* 8324 80017B24 5000A38F */  lw         $v1, 0x50($sp)
/* 8328 80017B28 00000000 */  nop
/* 832C 80017B2C 0C00628C */  lw         $v0, 0xC($v1)
/* 8330 80017B30 00000000 */  nop
/* 8334 80017B34 FBFF4224 */  addiu      $v0, $v0, -0x5
/* 8338 80017B38 0200422C */  sltiu      $v0, $v0, 0x2
/* 833C 80017B3C 0E004014 */  bnez       $v0, .L80017B78
/* 8340 80017B40 00000000 */   nop
/* 8344 80017B44 1C00A38E */  lw         $v1, 0x1C($s5)
/* 8348 80017B48 5000A58F */  lw         $a1, 0x50($sp)
/* 834C 80017B4C 40100300 */  sll        $v0, $v1, 1
/* 8350 80017B50 21104300 */  addu       $v0, $v0, $v1
/* 8354 80017B54 80100200 */  sll        $v0, $v0, 2
/* 8358 80017B58 23104300 */  subu       $v0, $v0, $v1
/* 835C 80017B5C 80100200 */  sll        $v0, $v0, 2
/* 8360 80017B60 0880033C */  lui        $v1, %hi(MeshIDTable + 0x18)
/* 8364 80017B64 78546324 */  addiu      $v1, $v1, %lo(MeshIDTable + 0x18)
/* 8368 80017B68 21104300 */  addu       $v0, $v0, $v1
/* 836C 80017B6C 0000448C */  lw         $a0, 0x0($v0)
/* 8370 80017B70 A058000C */  jal        EtLoseHealth
/* 8374 80017B74 2130A002 */   addu      $a2, $s5, $zero
.L80017B78:
/* 8378 80017B78 4400A28E */  lw         $v0, 0x44($s5)
/* 837C 80017B7C 00000000 */  nop
/* 8380 80017B80 1C00438C */  lw         $v1, 0x1C($v0)
/* 8384 80017B84 0100043C */  lui        $a0, (0x10000 >> 16)
/* 8388 80017B88 24186400 */  and        $v1, $v1, $a0
/* 838C 80017B8C 22006010 */  beqz       $v1, .L80017C18
/* 8390 80017B90 00000000 */   nop
/* 8394 80017B94 5000A28F */  lw         $v0, 0x50($sp)
/* 8398 80017B98 00000000 */  nop
/* 839C 80017B9C 0C00438C */  lw         $v1, 0xC($v0)
/* 83A0 80017BA0 06000224 */  addiu      $v0, $zero, 0x6
/* 83A4 80017BA4 1C006210 */  beq        $v1, $v0, .L80017C18
/* 83A8 80017BA8 00000000 */   nop
/* 83AC 80017BAC 1000A28E */  lw         $v0, 0x10($s5)
/* 83B0 80017BB0 00000000 */  nop
/* 83B4 80017BB4 00014230 */  andi       $v0, $v0, 0x100
/* 83B8 80017BB8 17004010 */  beqz       $v0, .L80017C18
/* 83BC 80017BBC 6C00A226 */   addiu     $v0, $s5, 0x6C
/* 83C0 80017BC0 0C00438C */  lw         $v1, 0xC($v0)
/* 83C4 80017BC4 2120A002 */  addu       $a0, $s5, $zero
/* 83C8 80017BC8 1000A3AF */  sw         $v1, 0x10($sp)
/* 83CC 80017BCC 0400468C */  lw         $a2, 0x4($v0)
/* 83D0 80017BD0 0800478C */  lw         $a3, 0x8($v0)
/* 83D4 80017BD4 69BE000C */  jal        RequestParticle
/* 83D8 80017BD8 0B000524 */   addiu     $a1, $zero, 0xB
/* 83DC 80017BDC 4B79000C */  jal        AddInventoryItem
/* 83E0 80017BE0 2120A002 */   addu      $a0, $s5, $zero
/* 83E4 80017BE4 0980023C */  lui        $v0, %hi(ETActor)
/* 83E8 80017BE8 4400838F */  lw         $v1, %gp_rel(DoraWaitState)($gp)
/* 83EC 80017BEC 00000000 */  nop
/* 83F0 80017BF0 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 83F4 80017BF4 440083AF */  sw         $v1, %gp_rel(DoraWaitState)($gp)
/* 83F8 80017BF8 0700601C */  bgtz       $v1, .L80017C18
/* 83FC 80017BFC B05A4224 */   addiu     $v0, $v0, %lo(ETActor)
/* 8400 80017C00 0C00438C */  lw         $v1, 0xC($v0)
/* 8404 80017C04 0B000224 */  addiu      $v0, $zero, 0xB
/* 8408 80017C08 440080AF */  sw         $zero, %gp_rel(DoraWaitState)($gp)
/* 840C 80017C0C 02006210 */  beq        $v1, $v0, .L80017C18
/* 8410 80017C10 00000000 */   nop
/* 8414 80017C14 480080AF */  sw         $zero, %gp_rel(PLAYER_WAIT_FLAG)($gp)
.L80017C18:
/* 8418 80017C18 2000A38F */  lw         $v1, 0x20($sp)
.L80017C1C:
/* 841C 80017C1C 00000000 */  nop
/* 8420 80017C20 08006324 */  addiu      $v1, $v1, 0x8
/* 8424 80017C24 2000A3AF */  sw         $v1, 0x20($sp)
/* 8428 80017C28 1800A38F */  lw         $v1, 0x18($sp)
/* 842C 80017C2C 0980023C */  lui        $v0, %hi(NumCollisionList)
/* 8430 80017C30 1857428C */  lw         $v0, %lo(NumCollisionList)($v0)
/* 8434 80017C34 01006324 */  addiu      $v1, $v1, 0x1
/* 8438 80017C38 2A106200 */  slt        $v0, $v1, $v0
/* 843C 80017C3C 57FF4014 */  bnez       $v0, .L8001799C
/* 8440 80017C40 1800A3AF */   sw        $v1, 0x18($sp)
.L80017C44:
/* 8444 80017C44 21100000 */  addu       $v0, $zero, $zero
.L80017C48:
/* 8448 80017C48 4C00BF8F */  lw         $ra, 0x4C($sp)
/* 844C 80017C4C 4800BE8F */  lw         $fp, 0x48($sp)
/* 8450 80017C50 4400B78F */  lw         $s7, 0x44($sp)
/* 8454 80017C54 4000B68F */  lw         $s6, 0x40($sp)
/* 8458 80017C58 3C00B58F */  lw         $s5, 0x3C($sp)
/* 845C 80017C5C 3800B48F */  lw         $s4, 0x38($sp)
/* 8460 80017C60 3400B38F */  lw         $s3, 0x34($sp)
/* 8464 80017C64 3000B28F */  lw         $s2, 0x30($sp)
/* 8468 80017C68 2C00B18F */  lw         $s1, 0x2C($sp)
/* 846C 80017C6C 2800B08F */  lw         $s0, 0x28($sp)
/* 8470 80017C70 0800E003 */  jr         $ra
/* 8474 80017C74 5000BD27 */   addiu     $sp, $sp, 0x50
.size ETCheckCollisions, . - ETCheckCollisions
