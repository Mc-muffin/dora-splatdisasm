.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCamera
/* 2B984 8003B184 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 2B988 8003B188 1400B1AF */  sw         $s1, 0x14($sp)
/* 2B98C 8003B18C 3800B18F */  lw         $s1, 0x38($sp)
/* 2B990 8003B190 1800B2AF */  sw         $s2, 0x18($sp)
/* 2B994 8003B194 3C00B28F */  lw         $s2, 0x3C($sp)
/* 2B998 8003B198 1000B0AF */  sw         $s0, 0x10($sp)
/* 2B99C 8003B19C 21808000 */  addu       $s0, $a0, $zero
/* 2B9A0 8003B1A0 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 2B9A4 8003B1A4 4000B38F */  lw         $s3, 0x40($sp)
/* 2B9A8 8003B1A8 FFFFE730 */  andi       $a3, $a3, 0xFFFF
/* 2B9AC 8003B1AC 03000016 */  bnez       $s0, .L8003B1BC
/* 2B9B0 8003B1B0 2000BFAF */   sw        $ra, 0x20($sp)
/* 2B9B4 8003B1B4 0A80023C */  lui        $v0, %hi(defaultCamera)
/* 2B9B8 8003B1B8 F0B85024 */  addiu      $s0, $v0, %lo(defaultCamera)
.L8003B1BC:
/* 2B9BC 8003B1BC 860007A6 */  sh         $a3, 0x86($s0)
/* 2B9C0 8003B1C0 FFFFE430 */  andi       $a0, $a3, 0xFFFF
/* 2B9C4 8003B1C4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 2B9C8 8003B1C8 990002A2 */  sb         $v0, 0x99($s0)
/* 2B9CC 8003B1CC 03000224 */  addiu      $v0, $zero, 0x3
/* 2B9D0 8003B1D0 000000A2 */  sb         $zero, 0x0($s0)
/* 2B9D4 8003B1D4 020002A6 */  sh         $v0, 0x2($s0)
/* 2B9D8 8003B1D8 880007AE */  sw         $a3, 0x88($s0)
/* 2B9DC 8003B1DC 8C0000AE */  sw         $zero, 0x8C($s0)
/* 2B9E0 8003B1E0 040002A6 */  sh         $v0, 0x4($s0)
/* 2B9E4 8003B1E4 940000A2 */  sb         $zero, 0x94($s0)
/* 2B9E8 8003B1E8 840000A6 */  sh         $zero, 0x84($s0)
/* 2B9EC 8003B1EC 740006AE */  sw         $a2, 0x74($s0)
/* 2B9F0 8003B1F0 7C0005AE */  sw         $a1, 0x7C($s0)
/* 2B9F4 8003B1F4 080011AE */  sw         $s1, 0x8($s0)
/* 2B9F8 8003B1F8 380011AE */  sw         $s1, 0x38($s0)
/* 2B9FC 8003B1FC 0C0012AE */  sw         $s2, 0xC($s0)
/* 2BA00 8003B200 3C0012AE */  sw         $s2, 0x3C($s0)
/* 2BA04 8003B204 100013AE */  sw         $s3, 0x10($s0)
/* 2BA08 8003B208 8A40010C */  jal        s16Sin
/* 2BA0C 8003B20C 400013AE */   sw        $s3, 0x40($s0)
/* 2BA10 8003B210 7C00038E */  lw         $v1, 0x7C($s0)
/* 2BA14 8003B214 00000000 */  nop
/* 2BA18 8003B218 03190300 */  sra        $v1, $v1, 4
/* 2BA1C 8003B21C 18004300 */  mult       $v0, $v1
/* 2BA20 8003B220 86000496 */  lhu        $a0, 0x86($s0)
/* 2BA24 8003B224 12100000 */  mflo       $v0
/* 2BA28 8003B228 83120200 */  sra        $v0, $v0, 10
/* 2BA2C 8003B22C 21102202 */  addu       $v0, $s1, $v0
/* 2BA30 8003B230 200002AE */  sw         $v0, 0x20($s0)
/* 2BA34 8003B234 AD40010C */  jal        s16Cos
/* 2BA38 8003B238 2C0002AE */   sw        $v0, 0x2C($s0)
/* 2BA3C 8003B23C 7C00038E */  lw         $v1, 0x7C($s0)
/* 2BA40 8003B240 00000000 */  nop
/* 2BA44 8003B244 03190300 */  sra        $v1, $v1, 4
/* 2BA48 8003B248 18004300 */  mult       $v0, $v1
/* 2BA4C 8003B24C 2000BF8F */  lw         $ra, 0x20($sp)
/* 2BA50 8003B250 7400038E */  lw         $v1, 0x74($s0)
/* 2BA54 8003B254 1400B18F */  lw         $s1, 0x14($sp)
/* 2BA58 8003B258 23184302 */  subu       $v1, $s2, $v1
/* 2BA5C 8003B25C 1800B28F */  lw         $s2, 0x18($sp)
/* 2BA60 8003B260 12100000 */  mflo       $v0
/* 2BA64 8003B264 83120200 */  sra        $v0, $v0, 10
/* 2BA68 8003B268 21106202 */  addu       $v0, $s3, $v0
/* 2BA6C 8003B26C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 2BA70 8003B270 01000424 */  addiu      $a0, $zero, 0x1
/* 2BA74 8003B274 5C0000AE */  sw         $zero, 0x5C($s0)
/* 2BA78 8003B278 600000AE */  sw         $zero, 0x60($s0)
/* 2BA7C 8003B27C 640000AE */  sw         $zero, 0x64($s0)
/* 2BA80 8003B280 680000AE */  sw         $zero, 0x68($s0)
/* 2BA84 8003B284 6C0000AE */  sw         $zero, 0x6C($s0)
/* 2BA88 8003B288 700000AE */  sw         $zero, 0x70($s0)
/* 2BA8C 8003B28C 140000AE */  sw         $zero, 0x14($s0)
/* 2BA90 8003B290 180000AE */  sw         $zero, 0x18($s0)
/* 2BA94 8003B294 1C0000AE */  sw         $zero, 0x1C($s0)
/* 2BA98 8003B298 800000AE */  sw         $zero, 0x80($s0)
/* 2BA9C 8003B29C 920000A6 */  sh         $zero, 0x92($s0)
/* 2BAA0 8003B2A0 780000AE */  sw         $zero, 0x78($s0)
/* 2BAA4 8003B2A4 960000A2 */  sb         $zero, 0x96($s0)
/* 2BAA8 8003B2A8 950000A2 */  sb         $zero, 0x95($s0)
/* 2BAAC 8003B2AC 970000A2 */  sb         $zero, 0x97($s0)
/* 2BAB0 8003B2B0 000004A2 */  sb         $a0, 0x0($s0)
/* 2BAB4 8003B2B4 240003AE */  sw         $v1, 0x24($s0)
/* 2BAB8 8003B2B8 300003AE */  sw         $v1, 0x30($s0)
/* 2BABC 8003B2BC 280002AE */  sw         $v0, 0x28($s0)
/* 2BAC0 8003B2C0 340002AE */  sw         $v0, 0x34($s0)
/* 2BAC4 8003B2C4 901490AF */  sw         $s0, %gp_rel(currentCamera)($gp)
/* 2BAC8 8003B2C8 1000B08F */  lw         $s0, 0x10($sp)
/* 2BACC 8003B2CC 0980013C */  lui        $at, %hi(ActivePauseCamera)
/* 2BAD0 8003B2D0 C04C20AC */  sw         $zero, %lo(ActivePauseCamera)($at)
/* 2BAD4 8003B2D4 0800E003 */  jr         $ra
/* 2BAD8 8003B2D8 2800BD27 */   addiu     $sp, $sp, 0x28
.size InitCamera, . - InitCamera
