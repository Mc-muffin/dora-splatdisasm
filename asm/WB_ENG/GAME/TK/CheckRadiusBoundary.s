.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckRadiusBoundary
/* 34A38 80044238 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 34A3C 8004423C 2000B4AF */  sw         $s4, 0x20($sp)
/* 34A40 80044240 21A08000 */  addu       $s4, $a0, $zero
/* 34A44 80044244 0980023C */  lui        $v0, %hi(ETActor + 0x6C)
/* 34A48 80044248 1800B2AF */  sw         $s2, 0x18($sp)
/* 34A4C 8004424C 1C5B5224 */  addiu      $s2, $v0, %lo(ETActor + 0x6C)
/* 34A50 80044250 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 34A54 80044254 2198A000 */  addu       $s3, $a1, $zero
/* 34A58 80044258 2400BFAF */  sw         $ra, 0x24($sp)
/* 34A5C 8004425C 1400B1AF */  sw         $s1, 0x14($sp)
/* 34A60 80044260 1000B0AF */  sw         $s0, 0x10($sp)
/* 34A64 80044264 0400838E */  lw         $v1, 0x4($s4)
/* 34A68 80044268 0400448E */  lw         $a0, 0x4($s2)
/* 34A6C 8004426C 0C00868E */  lw         $a2, 0xC($s4)
/* 34A70 80044270 0C00428E */  lw         $v0, 0xC($s2)
/* 34A74 80044274 23206400 */  subu       $a0, $v1, $a0
/* 34A78 80044278 11EA000C */  jal        DistApprox_2d_actual
/* 34A7C 8004427C 2328C200 */   subu      $a1, $a2, $v0
/* 34A80 80044280 2A106202 */  slt        $v0, $s3, $v0
/* 34A84 80044284 1C004010 */  beqz       $v0, .L800442F8
/* 34A88 80044288 00000000 */   nop
/* 34A8C 8004428C 0400838E */  lw         $v1, 0x4($s4)
/* 34A90 80044290 0400448E */  lw         $a0, 0x4($s2)
/* 34A94 80044294 0C00828E */  lw         $v0, 0xC($s4)
/* 34A98 80044298 0C00458E */  lw         $a1, 0xC($s2)
/* 34A9C 8004429C 23206400 */  subu       $a0, $v1, $a0
/* 34AA0 800442A0 63EF010C */  jal        ratan2
/* 34AA4 800442A4 23284500 */   subu      $a1, $v0, $a1
/* 34AA8 800442A8 FF0F5130 */  andi       $s1, $v0, 0xFFF
/* 34AAC 800442AC 47EB010C */  jal        rsin
/* 34AB0 800442B0 21202002 */   addu      $a0, $s1, $zero
/* 34AB4 800442B4 21202002 */  addu       $a0, $s1, $zero
/* 34AB8 800442B8 7BEB010C */  jal        rcos
/* 34ABC 800442BC 21804000 */   addu      $s0, $v0, $zero
/* 34AC0 800442C0 18007002 */  mult       $s3, $s0
/* 34AC4 800442C4 12800000 */  mflo       $s0
/* 34AC8 800442C8 00000000 */  nop
/* 34ACC 800442CC 00000000 */  nop
/* 34AD0 800442D0 18006202 */  mult       $s3, $v0
/* 34AD4 800442D4 0400438E */  lw         $v1, 0x4($s2)
/* 34AD8 800442D8 03831000 */  sra        $s0, $s0, 12
/* 34ADC 800442DC 21187000 */  addu       $v1, $v1, $s0
/* 34AE0 800442E0 040083AE */  sw         $v1, 0x4($s4)
/* 34AE4 800442E4 0C00448E */  lw         $a0, 0xC($s2)
/* 34AE8 800442E8 12100000 */  mflo       $v0
/* 34AEC 800442EC 03130200 */  sra        $v0, $v0, 12
/* 34AF0 800442F0 21208200 */  addu       $a0, $a0, $v0
/* 34AF4 800442F4 0C0084AE */  sw         $a0, 0xC($s4)
.L800442F8:
/* 34AF8 800442F8 2400BF8F */  lw         $ra, 0x24($sp)
/* 34AFC 800442FC 2000B48F */  lw         $s4, 0x20($sp)
/* 34B00 80044300 1C00B38F */  lw         $s3, 0x1C($sp)
/* 34B04 80044304 1800B28F */  lw         $s2, 0x18($sp)
/* 34B08 80044308 1400B18F */  lw         $s1, 0x14($sp)
/* 34B0C 8004430C 1000B08F */  lw         $s0, 0x10($sp)
/* 34B10 80044310 0800E003 */  jr         $ra
/* 34B14 80044314 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckRadiusBoundary, . - CheckRadiusBoundary
