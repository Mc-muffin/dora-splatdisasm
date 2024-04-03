.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitKeyActor
/* 13348 80022B48 58FFBD27 */  addiu      $sp, $sp, -0xA8
/* 1334C 80022B4C 9C00B3AF */  sw         $s3, 0x9C($sp)
/* 13350 80022B50 21988000 */  addu       $s3, $a0, $zero
/* 13354 80022B54 9800B2AF */  sw         $s2, 0x98($sp)
/* 13358 80022B58 2190A000 */  addu       $s2, $a1, $zero
/* 1335C 80022B5C 21204002 */  addu       $a0, $s2, $zero
/* 13360 80022B60 40000524 */  addiu      $a1, $zero, 0x40
/* 13364 80022B64 A000BFAF */  sw         $ra, 0xA0($sp)
/* 13368 80022B68 9400B1AF */  sw         $s1, 0x94($sp)
/* 1336C 80022B6C BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 13370 80022B70 9000B0AF */   sw        $s0, 0x90($sp)
/* 13374 80022B74 21204002 */  addu       $a0, $s2, $zero
/* 13378 80022B78 BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 1337C 80022B7C 80000524 */   addiu     $a1, $zero, 0x80
/* 13380 80022B80 0880033C */  lui        $v1, %hi(TestWorld)
/* 13384 80022B84 8C657124 */  addiu      $s1, $v1, %lo(TestWorld)
/* 13388 80022B88 2000228E */  lw         $v0, 0x20($s1)
/* 1338C 80022B8C 00811200 */  sll        $s0, $s2, 4
/* 13390 80022B90 21100202 */  addu       $v0, $s0, $v0
/* 13394 80022B94 0C00438C */  lw         $v1, 0xC($v0)
/* 13398 80022B98 00000000 */  nop
/* 1339C 80022B9C 26006010 */  beqz       $v1, .L80022C38
/* 133A0 80022BA0 0980053C */   lui       $a1, %hi(D_800948CC)
/* 133A4 80022BA4 1000A427 */  addiu      $a0, $sp, 0x10
/* 133A8 80022BA8 CC48A524 */  addiu      $a1, $a1, %lo(D_800948CC)
/* 133AC 80022BAC 53C5010C */  jal        sprintf
/* 133B0 80022BB0 21306002 */   addu      $a2, $s3, $zero
/* 133B4 80022BB4 1000A427 */  addiu      $a0, $sp, 0x10
/* 133B8 80022BB8 21280000 */  addu       $a1, $zero, $zero
/* 133BC 80022BBC AA2C010C */  jal        LoadModelAndTextures
/* 133C0 80022BC0 21300000 */   addu      $a2, $zero, $zero
/* 133C4 80022BC4 2000238E */  lw         $v1, 0x20($s1)
/* 133C8 80022BC8 00000000 */  nop
/* 133CC 80022BCC 21180302 */  addu       $v1, $s0, $v1
/* 133D0 80022BD0 000062AC */  sw         $v0, 0x0($v1)
/* 133D4 80022BD4 40111200 */  sll        $v0, $s2, 5
/* 133D8 80022BD8 23105200 */  subu       $v0, $v0, $s2
/* 133DC 80022BDC 80900200 */  sll        $s2, $v0, 2
/* 133E0 80022BE0 2000248E */  lw         $a0, 0x20($s1)
/* 133E4 80022BE4 0A80033C */  lui        $v1, %hi(AnimationList)
/* 133E8 80022BE8 21200402 */  addu       $a0, $s0, $a0
/* 133EC 80022BEC 80517024 */  addiu      $s0, $v1, %lo(AnimationList)
/* 133F0 80022BF0 21885002 */  addu       $s1, $s2, $s0
/* 133F4 80022BF4 040091AC */  sw         $s1, 0x4($a0)
/* 133F8 80022BF8 6004028E */  lw         $v0, 0x460($s0)
/* 133FC 80022BFC 00000000 */  nop
/* 13400 80022C00 06004014 */  bnez       $v0, .L80022C1C
/* 13404 80022C04 04000226 */   addiu     $v0, $s0, 0x4
/* 13408 80022C08 0180043C */  lui        $a0, %hi(D_80010978)
/* 1340C 80022C0C 52E2000C */  jal        LoadAnimations
/* 13410 80022C10 78098424 */   addiu     $a0, $a0, %lo(D_80010978)
/* 13414 80022C14 600402AE */  sw         $v0, 0x460($s0)
/* 13418 80022C18 04000226 */  addiu      $v0, $s0, 0x4
.L80022C1C:
/* 1341C 80022C1C 6004038E */  lw         $v1, 0x460($s0)
/* 13420 80022C20 21104202 */  addu       $v0, $s2, $v0
/* 13424 80022C24 000043AC */  sw         $v1, 0x0($v0)
/* 13428 80022C28 000020AE */  sw         $zero, 0x0($s1)
/* 1342C 80022C2C 0400038E */  lw         $v1, 0x4($s0)
/* 13430 80022C30 00000000 */  nop
/* 13434 80022C34 000043AC */  sw         $v1, 0x0($v0)
.L80022C38:
/* 13438 80022C38 A000BF8F */  lw         $ra, 0xA0($sp)
/* 1343C 80022C3C 9C00B38F */  lw         $s3, 0x9C($sp)
/* 13440 80022C40 9800B28F */  lw         $s2, 0x98($sp)
/* 13444 80022C44 9400B18F */  lw         $s1, 0x94($sp)
/* 13448 80022C48 9000B08F */  lw         $s0, 0x90($sp)
/* 1344C 80022C4C 0800E003 */  jr         $ra
/* 13450 80022C50 A800BD27 */   addiu     $sp, $sp, 0xA8
.size InitKeyActor, . - InitKeyActor
