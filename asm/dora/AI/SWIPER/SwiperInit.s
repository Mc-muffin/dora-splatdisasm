.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SwiperInit
/* 27264 80036A64 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 27268 80036A68 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 2726C 80036A6C 21988000 */  addu       $s3, $a0, $zero
/* 27270 80036A70 1000B0AF */  sw         $s0, 0x10($sp)
/* 27274 80036A74 0980103C */  lui        $s0, %hi(ETActor)
/* 27278 80036A78 B05A1026 */  addiu      $s0, $s0, %lo(ETActor)
/* 2727C 80036A7C 2000B4AF */  sw         $s4, 0x20($sp)
/* 27280 80036A80 6C007426 */  addiu      $s4, $s3, 0x6C
/* 27284 80036A84 2400BFAF */  sw         $ra, 0x24($sp)
/* 27288 80036A88 1800B2AF */  sw         $s2, 0x18($sp)
/* 2728C 80036A8C DA25010C */  jal        GenericActorInit
/* 27290 80036A90 1400B1AF */   sw        $s1, 0x14($sp)
/* 27294 80036A94 2801728E */  lw         $s2, 0x128($s3)
/* 27298 80036A98 2401718E */  lw         $s1, 0x124($s3)
/* 2729C 80036A9C 000040AE */  sw         $zero, 0x0($s2)
/* 272A0 80036AA0 080040AE */  sw         $zero, 0x8($s2)
/* 272A4 80036AA4 0C0040AE */  sw         $zero, 0xC($s2)
/* 272A8 80036AA8 040040AE */  sw         $zero, 0x4($s2)
/* 272AC 80036AAC 4400638E */  lw         $v1, 0x44($s3)
/* 272B0 80036AB0 64000224 */  addiu      $v0, $zero, 0x64
/* 272B4 80036AB4 5C0062AE */  sw         $v0, 0x5C($s3)
/* 272B8 80036AB8 0000658C */  lw         $a1, 0x0($v1)
/* 272BC 80036ABC 0400668C */  lw         $a2, 0x4($v1)
/* 272C0 80036AC0 0800678C */  lw         $a3, 0x8($v1)
/* 272C4 80036AC4 77FB000C */  jal        MotionPhysics_SetPosition
/* 272C8 80036AC8 21208002 */   addu      $a0, $s4, $zero
/* 272CC 80036ACC DC28010C */  jal        GenericReInit
/* 272D0 80036AD0 21206002 */   addu      $a0, $s3, $zero
/* 272D4 80036AD4 21206002 */  addu       $a0, $s3, $zero
/* 272D8 80036AD8 0C0060AE */  sw         $zero, 0xC($s3)
/* 272DC 80036ADC 0400258E */  lw         $a1, 0x4($s1)
/* 272E0 80036AE0 0000268E */  lw         $a2, 0x0($s1)
/* 272E4 80036AE4 9C13010C */  jal        InitPath
/* 272E8 80036AE8 10270724 */   addiu     $a3, $zero, 0x2710
/* 272EC 80036AEC F000028E */  lw         $v0, 0xF0($s0)
/* 272F0 80036AF0 00000000 */  nop
/* 272F4 80036AF4 480062AE */  sw         $v0, 0x48($s3)
/* 272F8 80036AF8 3400458E */  lw         $a1, 0x34($s2)
/* 272FC 80036AFC 00000000 */  nop
/* 27300 80036B00 0500A010 */  beqz       $a1, .L80036B18
/* 27304 80036B04 3C0040AE */   sw        $zero, 0x3C($s2)
/* 27308 80036B08 21206002 */  addu       $a0, $s3, $zero
/* 2730C 80036B0C 0380063C */  lui        $a2, %hi(TriggerSwiperActor1)
/* 27310 80036B10 4B01010C */  jal        LinkAffectedActorToTrigger
/* 27314 80036B14 E067C624 */   addiu     $a2, $a2, %lo(TriggerSwiperActor1)
.L80036B18:
/* 27318 80036B18 3800458E */  lw         $a1, 0x38($s2)
/* 2731C 80036B1C 00000000 */  nop
/* 27320 80036B20 0400A010 */  beqz       $a1, .L80036B34
/* 27324 80036B24 21206002 */   addu      $a0, $s3, $zero
/* 27328 80036B28 0380063C */  lui        $a2, %hi(TriggerSwiperActor2)
/* 2732C 80036B2C 4B01010C */  jal        LinkAffectedActorToTrigger
/* 27330 80036B30 0C68C624 */   addiu     $a2, $a2, %lo(TriggerSwiperActor2)
.L80036B34:
/* 27334 80036B34 1000628E */  lw         $v0, 0x10($s3)
/* 27338 80036B38 2400BF8F */  lw         $ra, 0x24($sp)
/* 2733C 80036B3C 1400B18F */  lw         $s1, 0x14($sp)
/* 27340 80036B40 1000B08F */  lw         $s0, 0x10($sp)
/* 27344 80036B44 FFFB0324 */  addiu      $v1, $zero, -0x401
/* 27348 80036B48 F40980AF */  sw         $zero, %gp_rel(SwiperWaitState)($gp)
/* 2734C 80036B4C 24104300 */  and        $v0, $v0, $v1
/* 27350 80036B50 100062AE */  sw         $v0, 0x10($s3)
/* 27354 80036B54 4C0040AE */  sw         $zero, 0x4C($s2)
/* 27358 80036B58 8000828E */  lw         $v0, 0x80($s4)
/* 2735C 80036B5C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 27360 80036B60 1800B28F */  lw         $s2, 0x18($sp)
/* 27364 80036B64 01004234 */  ori        $v0, $v0, 0x1
/* 27368 80036B68 800082AE */  sw         $v0, 0x80($s4)
/* 2736C 80036B6C 2000B48F */  lw         $s4, 0x20($sp)
/* 27370 80036B70 0800E003 */  jr         $ra
/* 27374 80036B74 2800BD27 */   addiu     $sp, $sp, 0x28
.size SwiperInit, . - SwiperInit
