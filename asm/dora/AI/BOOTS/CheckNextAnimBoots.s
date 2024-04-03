.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckNextAnimBoots
/* 26258 80035A58 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 2625C 80035A5C 2800B2AF */  sw         $s2, 0x28($sp)
/* 26260 80035A60 2190A000 */  addu       $s2, $a1, $zero
/* 26264 80035A64 3000BFAF */  sw         $ra, 0x30($sp)
/* 26268 80035A68 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 2626C 80035A6C 2400B1AF */  sw         $s1, 0x24($sp)
/* 26270 80035A70 2000B0AF */  sw         $s0, 0x20($sp)
/* 26274 80035A74 2800428E */  lw         $v0, 0x28($s2)
/* 26278 80035A78 00000000 */  nop
/* 2627C 80035A7C 14004104 */  bgez       $v0, .L80035AD0
/* 26280 80035A80 21988000 */   addu      $s3, $a0, $zero
/* 26284 80035A84 1800508E */  lw         $s0, 0x18($s2)
/* 26288 80035A88 1000428E */  lw         $v0, 0x10($s2)
/* 2628C 80035A8C 10000424 */  addiu      $a0, $zero, 0x10
/* 26290 80035A90 26180202 */  xor        $v1, $s0, $v0
/* 26294 80035A94 2B180300 */  sltu       $v1, $zero, $v1
/* 26298 80035A98 02004414 */  bne        $v0, $a0, .L80035AA4
/* 2629C 80035A9C 80880300 */   sll       $s1, $v1, 2
/* 262A0 80035AA0 21880000 */  addu       $s1, $zero, $zero
.L80035AA4:
/* 262A4 80035AA4 21206002 */  addu       $a0, $s3, $zero
/* 262A8 80035AA8 28E3000C */  jal        GetSeqNumFrames
/* 262AC 80035AAC 21280002 */   addu      $a1, $s0, $zero
/* 262B0 80035AB0 21206002 */  addu       $a0, $s3, $zero
/* 262B4 80035AB4 21280002 */  addu       $a1, $s0, $zero
/* 262B8 80035AB8 21300000 */  addu       $a2, $zero, $zero
/* 262BC 80035ABC 21384000 */  addu       $a3, $v0, $zero
/* 262C0 80035AC0 1000B1AF */  sw         $s1, 0x10($sp)
/* 262C4 80035AC4 1400A0AF */  sw         $zero, 0x14($sp)
/* 262C8 80035AC8 72E2000C */  jal        RequestAnim
/* 262CC 80035ACC 1800B2AF */   sw        $s2, 0x18($sp)
.L80035AD0:
/* 262D0 80035AD0 3000BF8F */  lw         $ra, 0x30($sp)
/* 262D4 80035AD4 2C00B38F */  lw         $s3, 0x2C($sp)
/* 262D8 80035AD8 2800B28F */  lw         $s2, 0x28($sp)
/* 262DC 80035ADC 2400B18F */  lw         $s1, 0x24($sp)
/* 262E0 80035AE0 2000B08F */  lw         $s0, 0x20($sp)
/* 262E4 80035AE4 0800E003 */  jr         $ra
/* 262E8 80035AE8 3800BD27 */   addiu     $sp, $sp, 0x38
.size CheckNextAnimBoots, . - CheckNextAnimBoots
