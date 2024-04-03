.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InGenerateRange
/* 33A94 80043294 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 33A98 80043298 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 33A9C 8004329C 0980133C */  lui        $s3, %hi(ScrollCamXPos)
/* 33AA0 800432A0 4843738E */  lw         $s3, %lo(ScrollCamXPos)($s3)
/* 33AA4 800432A4 1400B1AF */  sw         $s1, 0x14($sp)
/* 33AA8 800432A8 21888000 */  addu       $s1, $a0, $zero
/* 33AAC 800432AC 2000B4AF */  sw         $s4, 0x20($sp)
/* 33AB0 800432B0 21A00000 */  addu       $s4, $zero, $zero
/* 33AB4 800432B4 2400BFAF */  sw         $ra, 0x24($sp)
/* 33AB8 800432B8 1800B2AF */  sw         $s2, 0x18($sp)
/* 33ABC 800432BC 1000B0AF */  sw         $s0, 0x10($sp)
/* 33AC0 800432C0 0000248E */  lw         $a0, 0x0($s1)
/* 33AC4 800432C4 0980123C */  lui        $s2, %hi(ScrollCamZPos)
/* 33AC8 800432C8 5043528E */  lw         $s2, %lo(ScrollCamZPos)($s2)
/* 33ACC 800432CC 0800258E */  lw         $a1, 0x8($s1)
/* 33AD0 800432D0 A80C908F */  lw         $s0, %gp_rel(TESTR1)($gp)
/* 33AD4 800432D4 23209300 */  subu       $a0, $a0, $s3
/* 33AD8 800432D8 83200400 */  sra        $a0, $a0, 2
/* 33ADC 800432DC 2328B200 */  subu       $a1, $a1, $s2
/* 33AE0 800432E0 83280500 */  sra        $a1, $a1, 2
/* 33AE4 800432E4 FEE9000C */  jal        DistApprox_2d
/* 33AE8 800432E8 83801000 */   sra       $s0, $s0, 2
/* 33AEC 800432EC 2A105000 */  slt        $v0, $v0, $s0
/* 33AF0 800432F0 0C004014 */  bnez       $v0, .L80043324
/* 33AF4 800432F4 21108002 */   addu      $v0, $s4, $zero
/* 33AF8 800432F8 0000248E */  lw         $a0, 0x0($s1)
/* 33AFC 800432FC 0800258E */  lw         $a1, 0x8($s1)
/* 33B00 80043300 AC0C908F */  lw         $s0, %gp_rel(TESTR2)($gp)
/* 33B04 80043304 23209300 */  subu       $a0, $a0, $s3
/* 33B08 80043308 83200400 */  sra        $a0, $a0, 2
/* 33B0C 8004330C 2328B200 */  subu       $a1, $a1, $s2
/* 33B10 80043310 83280500 */  sra        $a1, $a1, 2
/* 33B14 80043314 FEE9000C */  jal        DistApprox_2d
/* 33B18 80043318 83801000 */   sra       $s0, $s0, 2
/* 33B1C 8004331C 2AA05000 */  slt        $s4, $v0, $s0
/* 33B20 80043320 21108002 */  addu       $v0, $s4, $zero
.L80043324:
/* 33B24 80043324 2400BF8F */  lw         $ra, 0x24($sp)
/* 33B28 80043328 2000B48F */  lw         $s4, 0x20($sp)
/* 33B2C 8004332C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 33B30 80043330 1800B28F */  lw         $s2, 0x18($sp)
/* 33B34 80043334 1400B18F */  lw         $s1, 0x14($sp)
/* 33B38 80043338 1000B08F */  lw         $s0, 0x10($sp)
/* 33B3C 8004333C 0800E003 */  jr         $ra
/* 33B40 80043340 2800BD27 */   addiu     $sp, $sp, 0x28
.size InGenerateRange, . - InGenerateRange
