.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel releaseInit
/* 3896C 8004816C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 38970 80048170 1800B2AF */  sw         $s2, 0x18($sp)
/* 38974 80048174 21908000 */  addu       $s2, $a0, $zero
/* 38978 80048178 2000BFAF */  sw         $ra, 0x20($sp)
/* 3897C 8004817C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 38980 80048180 1400B1AF */  sw         $s1, 0x14($sp)
/* 38984 80048184 DA25010C */  jal        GenericActorInit
/* 38988 80048188 1000B0AF */   sw        $s0, 0x10($sp)
/* 3898C 8004818C 2801538E */  lw         $s3, 0x128($s2)
/* 38990 80048190 2401508E */  lw         $s0, 0x124($s2)
/* 38994 80048194 000060AE */  sw         $zero, 0x0($s3)
/* 38998 80048198 0C0040AE */  sw         $zero, 0xC($s2)
/* 3899C 8004819C 080060AE */  sw         $zero, 0x8($s3)
/* 389A0 800481A0 0C0060AE */  sw         $zero, 0xC($s3)
/* 389A4 800481A4 040060AE */  sw         $zero, 0x4($s3)
/* 389A8 800481A8 4400438E */  lw         $v1, 0x44($s2)
/* 389AC 800481AC 0A000224 */  addiu      $v0, $zero, 0xA
/* 389B0 800481B0 5C0042AE */  sw         $v0, 0x5C($s2)
/* 389B4 800481B4 0000658C */  lw         $a1, 0x0($v1)
/* 389B8 800481B8 0400668C */  lw         $a2, 0x4($v1)
/* 389BC 800481BC 0800678C */  lw         $a3, 0x8($v1)
/* 389C0 800481C0 77FB000C */  jal        MotionPhysics_SetPosition
/* 389C4 800481C4 6C004426 */   addiu     $a0, $s2, 0x6C
/* 389C8 800481C8 DC28010C */  jal        GenericReInit
/* 389CC 800481CC 21204002 */   addu      $a0, $s2, $zero
/* 389D0 800481D0 21204002 */  addu       $a0, $s2, $zero
/* 389D4 800481D4 0C0040AE */  sw         $zero, 0xC($s2)
/* 389D8 800481D8 3000658E */  lw         $a1, 0x30($s3)
/* 389DC 800481DC 4400668E */  lw         $a2, 0x44($s3)
/* 389E0 800481E0 9C13010C */  jal        InitPath
/* 389E4 800481E4 21380000 */   addu      $a3, $zero, $zero
/* 389E8 800481E8 21204002 */  addu       $a0, $s2, $zero
/* 389EC 800481EC 0400058E */  lw         $a1, 0x4($s0)
/* 389F0 800481F0 0000068E */  lw         $a2, 0x0($s0)
/* 389F4 800481F4 9C13010C */  jal        InitPath
/* 389F8 800481F8 21380000 */   addu      $a3, $zero, $zero
/* 389FC 800481FC 3400658E */  lw         $a1, 0x34($s3)
/* 38A00 80048200 00000000 */  nop
/* 38A04 80048204 0500A010 */  beqz       $a1, .L8004821C
/* 38A08 80048208 380060AE */   sw        $zero, 0x38($s3)
/* 38A0C 8004820C 21204002 */  addu       $a0, $s2, $zero
/* 38A10 80048210 0580063C */  lui        $a2, %hi(TriggerReleaseActor)
/* 38A14 80048214 4B01010C */  jal        LinkAffectedActorToTrigger
/* 38A18 80048218 408AC624 */   addiu     $a2, $a2, %lo(TriggerReleaseActor)
.L8004821C:
/* 38A1C 8004821C 4400428E */  lw         $v0, 0x44($s2)
/* 38A20 80048220 00000000 */  nop
/* 38A24 80048224 1000448C */  lw         $a0, 0x10($v0)
/* 38A28 80048228 FD90000C */  jal        AttachActor
/* 38A2C 8004822C 00000000 */   nop
/* 38A30 80048230 23004010 */  beqz       $v0, .L800482C0
/* 38A34 80048234 24000424 */   addiu     $a0, $zero, 0x24
/* 38A38 80048238 0880103C */  lui        $s0, %hi(AttachSpawn)
/* 38A3C 8004823C 2B3F010C */  jal        new_malloc
/* 38A40 80048240 FC7F1026 */   addiu     $s0, $s0, %lo(AttachSpawn)
/* 38A44 80048244 21884000 */  addu       $s1, $v0, $zero
/* 38A48 80048248 20000326 */  addiu      $v1, $s0, 0x20
.L8004824C:
/* 38A4C 8004824C 0000048E */  lw         $a0, 0x0($s0)
/* 38A50 80048250 0400058E */  lw         $a1, 0x4($s0)
/* 38A54 80048254 0800068E */  lw         $a2, 0x8($s0)
/* 38A58 80048258 0C00078E */  lw         $a3, 0xC($s0)
/* 38A5C 8004825C 000044AC */  sw         $a0, 0x0($v0)
/* 38A60 80048260 040045AC */  sw         $a1, 0x4($v0)
/* 38A64 80048264 080046AC */  sw         $a2, 0x8($v0)
/* 38A68 80048268 0C0047AC */  sw         $a3, 0xC($v0)
/* 38A6C 8004826C 10001026 */  addiu      $s0, $s0, 0x10
/* 38A70 80048270 F6FF0316 */  bne        $s0, $v1, .L8004824C
/* 38A74 80048274 10004224 */   addiu     $v0, $v0, 0x10
/* 38A78 80048278 0000038E */  lw         $v1, 0x0($s0)
/* 38A7C 8004827C 00000000 */  nop
/* 38A80 80048280 000043AC */  sw         $v1, 0x0($v0)
/* 38A84 80048284 0000428E */  lw         $v0, 0x0($s2)
/* 38A88 80048288 00000000 */  nop
/* 38A8C 8004828C 000022AE */  sw         $v0, 0x0($s1)
/* 38A90 80048290 0400438E */  lw         $v1, 0x4($s2)
/* 38A94 80048294 21202002 */  addu       $a0, $s1, $zero
/* 38A98 80048298 040023AE */  sw         $v1, 0x4($s1)
/* 38A9C 8004829C 0800428E */  lw         $v0, 0x8($s2)
/* 38AA0 800482A0 21286002 */  addu       $a1, $s3, $zero
/* 38AA4 800482A4 B728010C */  jal        creategenericAI
/* 38AA8 800482A8 080022AE */   sw        $v0, 0x8($s1)
/* 38AAC 800482AC 490A010C */  jal        InitSpawn
/* 38AB0 800482B0 21202002 */   addu      $a0, $s1, $zero
/* 38AB4 800482B4 21204002 */  addu       $a0, $s2, $zero
/* 38AB8 800482B8 D028010C */  jal        AttachActorToCollisionSphere
/* 38ABC 800482BC 21284000 */   addu      $a1, $v0, $zero
.L800482C0:
/* 38AC0 800482C0 2000043C */  lui        $a0, (0x200000 >> 16)
/* 38AC4 800482C4 4400428E */  lw         $v0, 0x44($s2)
/* 38AC8 800482C8 2000BF8F */  lw         $ra, 0x20($sp)
/* 38ACC 800482CC 1C00B38F */  lw         $s3, 0x1C($sp)
/* 38AD0 800482D0 1800B28F */  lw         $s2, 0x18($sp)
/* 38AD4 800482D4 1400B18F */  lw         $s1, 0x14($sp)
/* 38AD8 800482D8 1C00438C */  lw         $v1, 0x1C($v0)
/* 38ADC 800482DC 1000B08F */  lw         $s0, 0x10($sp)
/* 38AE0 800482E0 25186400 */  or         $v1, $v1, $a0
/* 38AE4 800482E4 1C0043AC */  sw         $v1, 0x1C($v0)
/* 38AE8 800482E8 0800E003 */  jr         $ra
/* 38AEC 800482EC 2800BD27 */   addiu     $sp, $sp, 0x28
.size releaseInit, . - releaseInit
