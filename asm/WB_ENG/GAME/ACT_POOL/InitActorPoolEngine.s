.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitActorPoolEngine
/* 27428 80036C28 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 2742C 80036C2C 0880023C */  lui        $v0, %hi(WorldActorPoolList)
/* 27430 80036C30 2400B3AF */  sw         $s3, 0x24($sp)
/* 27434 80036C34 587D5324 */  addiu      $s3, $v0, %lo(WorldActorPoolList)
/* 27438 80036C38 5414828F */  lw         $v0, %gp_rel(g_number_of_actorsinlist)($gp)
/* 2743C 80036C3C 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 27440 80036C40 3800BEAF */  sw         $fp, 0x38($sp)
/* 27444 80036C44 3400B7AF */  sw         $s7, 0x34($sp)
/* 27448 80036C48 3000B6AF */  sw         $s6, 0x30($sp)
/* 2744C 80036C4C 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 27450 80036C50 2800B4AF */  sw         $s4, 0x28($sp)
/* 27454 80036C54 2000B2AF */  sw         $s2, 0x20($sp)
/* 27458 80036C58 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 2745C 80036C5C 1800B0AF */  sw         $s0, 0x18($sp)
/* 27460 80036C60 EEDA000C */  jal        ResetDynamicPoolList
/* 27464 80036C64 1000A2AF */   sw        $v0, 0x10($sp)
/* 27468 80036C68 1000A38F */  lw         $v1, 0x10($sp)
/* 2746C 80036C6C 00000000 */  nop
/* 27470 80036C70 48006018 */  blez       $v1, .L80036D94
/* 27474 80036C74 21900000 */   addu      $s2, $zero, $zero
.L80036C78:
/* 27478 80036C78 0400718E */  lw         $s1, 0x4($s3)
/* 2747C 80036C7C 0000708E */  lw         $s0, 0x0($s3)
/* 27480 80036C80 10002012 */  beqz       $s1, .L80036CC4
/* 27484 80036C84 21200002 */   addu      $a0, $s0, $zero
/* 27488 80036C88 40101000 */  sll        $v0, $s0, 1
/* 2748C 80036C8C 21105000 */  addu       $v0, $v0, $s0
/* 27490 80036C90 C0100200 */  sll        $v0, $v0, 3
/* 27494 80036C94 23105000 */  subu       $v0, $v0, $s0
/* 27498 80036C98 80100200 */  sll        $v0, $v0, 2
/* 2749C 80036C9C 0A80033C */  lui        $v1, %hi(ActorDynamicPool)
/* 274A0 80036CA0 88906324 */  addiu      $v1, $v1, %lo(ActorDynamicPool)
/* 274A4 80036CA4 21284300 */  addu       $a1, $v0, $v1
/* 274A8 80036CA8 01000324 */  addiu      $v1, $zero, 0x1
/* 274AC 80036CAC 0000A3AC */  sw         $v1, 0x0($a1)
/* 274B0 80036CB0 0A80033C */  lui        $v1, %hi(ActorDynamicPool + 0x8)
/* 274B4 80036CB4 90906324 */  addiu      $v1, $v1, %lo(ActorDynamicPool + 0x8)
/* 274B8 80036CB8 21104300 */  addu       $v0, $v0, $v1
/* 274BC 80036CBC 2A6F000C */  jal        meshname
/* 274C0 80036CC0 000051AC */   sw        $s1, 0x0($v0)
.L80036CC4:
/* 274C4 80036CC4 01005E26 */  addiu      $fp, $s2, 0x1
/* 274C8 80036CC8 2C00201A */  blez       $s1, .L80036D7C
/* 274CC 80036CCC 0C007726 */   addiu     $s7, $s3, 0xC
/* 274D0 80036CD0 0880023C */  lui        $v0, %hi(TestWorld)
/* 274D4 80036CD4 8C655524 */  addiu      $s5, $v0, %lo(TestWorld)
/* 274D8 80036CD8 00A11000 */  sll        $s4, $s0, 4
/* 274DC 80036CDC 0A80043C */  lui        $a0, %hi(ActorDynamicPool)
/* 274E0 80036CE0 88908424 */  addiu      $a0, $a0, %lo(ActorDynamicPool)
/* 274E4 80036CE4 40101000 */  sll        $v0, $s0, 1
/* 274E8 80036CE8 21105000 */  addu       $v0, $v0, $s0
/* 274EC 80036CEC C0100200 */  sll        $v0, $v0, 3
/* 274F0 80036CF0 23105000 */  subu       $v0, $v0, $s0
/* 274F4 80036CF4 80100200 */  sll        $v0, $v0, 2
/* 274F8 80036CF8 10008324 */  addiu      $v1, $a0, 0x10
/* 274FC 80036CFC 21984300 */  addu       $s3, $v0, $v1
/* 27500 80036D00 21904000 */  addu       $s2, $v0, $zero
/* 27504 80036D04 0C009624 */  addiu      $s6, $a0, 0xC
.L80036D08:
/* 27508 80036D08 2000A28E */  lw         $v0, 0x20($s5)
/* 2750C 80036D0C 00000000 */  nop
/* 27510 80036D10 21108202 */  addu       $v0, $s4, $v0
/* 27514 80036D14 0800438C */  lw         $v1, 0x8($v0)
/* 27518 80036D18 00000000 */  nop
/* 2751C 80036D1C 04006014 */  bnez       $v1, .L80036D30
/* 27520 80036D20 00000000 */   nop
/* 27524 80036D24 0000438C */  lw         $v1, 0x0($v0)
/* 27528 80036D28 51DB0008 */  j          .L80036D44
/* 2752C 80036D2C 21206000 */   addu      $a0, $v1, $zero
.L80036D30:
/* 27530 80036D30 0000448C */  lw         $a0, 0x0($v0)
/* 27534 80036D34 3B2F010C */  jal        CreateModelInstance
/* 27538 80036D38 21280002 */   addu      $a1, $s0, $zero
/* 2753C 80036D3C 21184000 */  addu       $v1, $v0, $zero
/* 27540 80036D40 21206000 */  addu       $a0, $v1, $zero
.L80036D44:
/* 27544 80036D44 21105602 */  addu       $v0, $s2, $s6
/* 27548 80036D48 000040AC */  sw         $zero, 0x0($v0)
/* 2754C 80036D4C 000063AE */  sw         $v1, 0x0($s3)
/* 27550 80036D50 08007326 */  addiu      $s3, $s3, 0x8
/* 27554 80036D54 2000A38E */  lw         $v1, 0x20($s5)
/* 27558 80036D58 08005226 */  addiu      $s2, $s2, 0x8
/* 2755C 80036D5C 21188302 */  addu       $v1, $s4, $v1
/* 27560 80036D60 0800628C */  lw         $v0, 0x8($v1)
/* 27564 80036D64 FFFF3126 */  addiu      $s1, $s1, -0x1
/* 27568 80036D68 01004224 */  addiu      $v0, $v0, 0x1
/* 2756C 80036D6C 82E3000C */  jal        InitModelJointsBuffer
/* 27570 80036D70 080062AC */   sw        $v0, 0x8($v1)
/* 27574 80036D74 E4FF2016 */  bnez       $s1, .L80036D08
/* 27578 80036D78 00000000 */   nop
.L80036D7C:
/* 2757C 80036D7C 2190C003 */  addu       $s2, $fp, $zero
/* 27580 80036D80 1000A38F */  lw         $v1, 0x10($sp)
/* 27584 80036D84 00000000 */  nop
/* 27588 80036D88 2A104302 */  slt        $v0, $s2, $v1
/* 2758C 80036D8C BAFF4014 */  bnez       $v0, .L80036C78
/* 27590 80036D90 2198E002 */   addu      $s3, $s7, $zero
.L80036D94:
/* 27594 80036D94 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 27598 80036D98 3800BE8F */  lw         $fp, 0x38($sp)
/* 2759C 80036D9C 3400B78F */  lw         $s7, 0x34($sp)
/* 275A0 80036DA0 3000B68F */  lw         $s6, 0x30($sp)
/* 275A4 80036DA4 2C00B58F */  lw         $s5, 0x2C($sp)
/* 275A8 80036DA8 2800B48F */  lw         $s4, 0x28($sp)
/* 275AC 80036DAC 2400B38F */  lw         $s3, 0x24($sp)
/* 275B0 80036DB0 2000B28F */  lw         $s2, 0x20($sp)
/* 275B4 80036DB4 1C00B18F */  lw         $s1, 0x1C($sp)
/* 275B8 80036DB8 1800B08F */  lw         $s0, 0x18($sp)
/* 275BC 80036DBC 0800E003 */  jr         $ra
/* 275C0 80036DC0 4000BD27 */   addiu     $sp, $sp, 0x40
.size InitActorPoolEngine, . - InitActorPoolEngine
