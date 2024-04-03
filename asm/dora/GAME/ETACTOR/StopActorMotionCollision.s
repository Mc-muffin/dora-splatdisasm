.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StopActorMotionCollision
/* B1AC 8001A9AC D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B1B0 8001A9B0 2800B6AF */  sw         $s6, 0x28($sp)
/* B1B4 8001A9B4 21B0C000 */  addu       $s6, $a2, $zero
/* B1B8 8001A9B8 1800B2AF */  sw         $s2, 0x18($sp)
/* B1BC 8001A9BC 2190E000 */  addu       $s2, $a3, $zero
/* B1C0 8001A9C0 2C00BFAF */  sw         $ra, 0x2C($sp)
/* B1C4 8001A9C4 2400B5AF */  sw         $s5, 0x24($sp)
/* B1C8 8001A9C8 2000B4AF */  sw         $s4, 0x20($sp)
/* B1CC 8001A9CC 1C00B3AF */  sw         $s3, 0x1C($sp)
/* B1D0 8001A9D0 1400B1AF */  sw         $s1, 0x14($sp)
/* B1D4 8001A9D4 1000B0AF */  sw         $s0, 0x10($sp)
/* B1D8 8001A9D8 5000838C */  lw         $v1, 0x50($a0)
/* B1DC 8001A9DC 5000A28C */  lw         $v0, 0x50($a1)
/* B1E0 8001A9E0 0400D38E */  lw         $s3, 0x4($s6)
/* B1E4 8001A9E4 0C00D58E */  lw         $s5, 0xC($s6)
/* B1E8 8001A9E8 0400448E */  lw         $a0, 0x4($s2)
/* B1EC 8001A9EC 0C00458E */  lw         $a1, 0xC($s2)
/* B1F0 8001A9F0 21A06200 */  addu       $s4, $v1, $v0
/* B1F4 8001A9F4 23206402 */  subu       $a0, $s3, $a0
/* B1F8 8001A9F8 11EA000C */  jal        DistApprox_2d_actual
/* B1FC 8001A9FC 2328A502 */   subu      $a1, $s5, $a1
/* B200 8001AA00 08004004 */  bltz       $v0, .L8001AA24
/* B204 8001AA04 00000000 */   nop
/* B208 8001AA08 0400448E */  lw         $a0, 0x4($s2)
/* B20C 8001AA0C 0C00458E */  lw         $a1, 0xC($s2)
/* B210 8001AA10 23206402 */  subu       $a0, $s3, $a0
/* B214 8001AA14 11EA000C */  jal        DistApprox_2d_actual
/* B218 8001AA18 2328A502 */   subu      $a1, $s5, $a1
/* B21C 8001AA1C 906A0008 */  j          .L8001AA40
/* B220 8001AA20 2A108202 */   slt       $v0, $s4, $v0
.L8001AA24:
/* B224 8001AA24 0400448E */  lw         $a0, 0x4($s2)
/* B228 8001AA28 0C00458E */  lw         $a1, 0xC($s2)
/* B22C 8001AA2C 23206402 */  subu       $a0, $s3, $a0
/* B230 8001AA30 11EA000C */  jal        DistApprox_2d_actual
/* B234 8001AA34 2328A502 */   subu      $a1, $s5, $a1
/* B238 8001AA38 23100200 */  negu       $v0, $v0
/* B23C 8001AA3C 2A108202 */  slt        $v0, $s4, $v0
.L8001AA40:
/* B240 8001AA40 21004014 */  bnez       $v0, .L8001AAC8
/* B244 8001AA44 21100000 */   addu      $v0, $zero, $zero
/* B248 8001AA48 01009426 */  addiu      $s4, $s4, 0x1
/* B24C 8001AA4C 0C00448E */  lw         $a0, 0xC($s2)
/* B250 8001AA50 0400458E */  lw         $a1, 0x4($s2)
/* B254 8001AA54 23209500 */  subu       $a0, $a0, $s5
/* B258 8001AA58 63EF010C */  jal        ratan2
/* B25C 8001AA5C 2328B300 */   subu      $a1, $a1, $s3
/* B260 8001AA60 00085024 */  addiu      $s0, $v0, 0x800
/* B264 8001AA64 FF0F1032 */  andi       $s0, $s0, 0xFFF
/* B268 8001AA68 47EB010C */  jal        rsin
/* B26C 8001AA6C 21200002 */   addu      $a0, $s0, $zero
/* B270 8001AA70 21200002 */  addu       $a0, $s0, $zero
/* B274 8001AA74 7BEB010C */  jal        rcos
/* B278 8001AA78 21884000 */   addu      $s1, $v0, $zero
/* B27C 8001AA7C 18008202 */  mult       $s4, $v0
/* B280 8001AA80 12280000 */  mflo       $a1
/* B284 8001AA84 00000000 */  nop
/* B288 8001AA88 00000000 */  nop
/* B28C 8001AA8C 18009102 */  mult       $s4, $s1
/* B290 8001AA90 0400438E */  lw         $v1, 0x4($s2)
/* B294 8001AA94 0C00448E */  lw         $a0, 0xC($s2)
/* B298 8001AA98 01000224 */  addiu      $v0, $zero, 0x1
/* B29C 8001AA9C 0400D3AE */  sw         $s3, 0x4($s6)
/* B2A0 8001AAA0 0C00D5AE */  sw         $s5, 0xC($s6)
/* B2A4 8001AAA4 032B0500 */  sra        $a1, $a1, 12
/* B2A8 8001AAA8 21186500 */  addu       $v1, $v1, $a1
/* B2AC 8001AAAC 23187300 */  subu       $v1, $v1, $s3
/* B2B0 8001AAB0 2000C3AE */  sw         $v1, 0x20($s6)
/* B2B4 8001AAB4 12880000 */  mflo       $s1
/* B2B8 8001AAB8 038B1100 */  sra        $s1, $s1, 12
/* B2BC 8001AABC 21209100 */  addu       $a0, $a0, $s1
/* B2C0 8001AAC0 23209500 */  subu       $a0, $a0, $s5
/* B2C4 8001AAC4 2800C4AE */  sw         $a0, 0x28($s6)
.L8001AAC8:
/* B2C8 8001AAC8 2C00BF8F */  lw         $ra, 0x2C($sp)
/* B2CC 8001AACC 2800B68F */  lw         $s6, 0x28($sp)
/* B2D0 8001AAD0 2400B58F */  lw         $s5, 0x24($sp)
/* B2D4 8001AAD4 2000B48F */  lw         $s4, 0x20($sp)
/* B2D8 8001AAD8 1C00B38F */  lw         $s3, 0x1C($sp)
/* B2DC 8001AADC 1800B28F */  lw         $s2, 0x18($sp)
/* B2E0 8001AAE0 1400B18F */  lw         $s1, 0x14($sp)
/* B2E4 8001AAE4 1000B08F */  lw         $s0, 0x10($sp)
/* B2E8 8001AAE8 0800E003 */  jr         $ra
/* B2EC 8001AAEC 3000BD27 */   addiu     $sp, $sp, 0x30
.size StopActorMotionCollision, . - StopActorMotionCollision
