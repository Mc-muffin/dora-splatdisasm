.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleConfettiInit
/* 1E144 8002D944 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 1E148 8002D948 2000B4AF */  sw         $s4, 0x20($sp)
/* 1E14C 8002D94C 21A00000 */  addu       $s4, $zero, $zero
/* 1E150 8002D950 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 1E154 8002D954 21988000 */  addu       $s3, $a0, $zero
/* 1E158 8002D958 F0000224 */  addiu      $v0, $zero, 0xF0
/* 1E15C 8002D95C 3400BFAF */  sw         $ra, 0x34($sp)
/* 1E160 8002D960 3000BEAF */  sw         $fp, 0x30($sp)
/* 1E164 8002D964 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 1E168 8002D968 2800B6AF */  sw         $s6, 0x28($sp)
/* 1E16C 8002D96C 2400B5AF */  sw         $s5, 0x24($sp)
/* 1E170 8002D970 1800B2AF */  sw         $s2, 0x18($sp)
/* 1E174 8002D974 1400B1AF */  sw         $s1, 0x14($sp)
/* 1E178 8002D978 1000B0AF */  sw         $s0, 0x10($sp)
/* 1E17C 8002D97C 4000728E */  lw         $s2, 0x40($s3)
/* 1E180 8002D980 FF0F0324 */  addiu      $v1, $zero, 0xFFF
/* 1E184 8002D984 C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 1E188 8002D988 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 1E18C 8002D98C BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1E190 8002D990 80000224 */  addiu      $v0, $zero, 0x80
/* 1E194 8002D994 39001524 */  addiu      $s5, $zero, 0x39
/* 1E198 8002D998 4000A524 */  addiu      $a1, $a1, 0x40
/* 1E19C 8002D99C 80FEC624 */  addiu      $a2, $a2, -0x180
/* 1E1A0 8002D9A0 300060AE */  sw         $zero, 0x30($s3)
/* 1E1A4 8002D9A4 340063AE */  sw         $v1, 0x34($s3)
/* 1E1A8 8002D9A8 380060AE */  sw         $zero, 0x38($s3)
/* 1E1AC 8002D9AC 3C0063AE */  sw         $v1, 0x3C($s3)
/* 1E1B0 8002D9B0 C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 1E1B4 8002D9B4 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 1E1B8 8002D9B8 BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 1E1BC 8002D9BC 0800628E */  lw         $v0, 0x8($s3)
/* 1E1C0 8002D9C0 4000E724 */  addiu      $a3, $a3, 0x40
/* 1E1C4 8002D9C4 0C0075AE */  sw         $s5, 0xC($s3)
/* 1E1C8 8002D9C8 240065AE */  sw         $a1, 0x24($s3)
/* 1E1CC 8002D9CC 280066AE */  sw         $a2, 0x28($s3)
/* 1E1D0 8002D9D0 2E004018 */  blez       $v0, .L8002DA8C
/* 1E1D4 8002D9D4 2C0067AE */   sw        $a3, 0x2C($s3)
/* 1E1D8 8002D9D8 00F20500 */  sll        $fp, $a1, 8
/* 1E1DC 8002D9DC 00BA0600 */  sll        $s7, $a2, 8
/* 1E1E0 8002D9E0 00B20700 */  sll        $s6, $a3, 8
.L8002D9E4:
/* 1E1E4 8002D9E4 D140010C */  jal        u32Random
/* 1E1E8 8002D9E8 C0000424 */   addiu     $a0, $zero, 0xC0
/* 1E1EC 8002D9EC C0000424 */  addiu      $a0, $zero, 0xC0
/* 1E1F0 8002D9F0 008A0200 */  sll        $s1, $v0, 8
/* 1E1F4 8002D9F4 2188D103 */  addu       $s1, $fp, $s1
/* 1E1F8 8002D9F8 D140010C */  jal        u32Random
/* 1E1FC 8002D9FC 00A03126 */   addiu     $s1, $s1, -0x6000
/* 1E200 8002DA00 1C004626 */  addiu      $a2, $s2, 0x1C
/* 1E204 8002DA04 4C006492 */  lbu        $a0, 0x4C($s3)
/* 1E208 8002DA08 01009426 */  addiu      $s4, $s4, 0x1
/* 1E20C 8002DA0C 0400C4A0 */  sb         $a0, 0x4($a2)
/* 1E210 8002DA10 4D006392 */  lbu        $v1, 0x4D($s3)
/* 1E214 8002DA14 00820200 */  sll        $s0, $v0, 8
/* 1E218 8002DA18 0500C3A0 */  sb         $v1, 0x5($a2)
/* 1E21C 8002DA1C 4E006492 */  lbu        $a0, 0x4E($s3)
/* 1E220 8002DA20 2180D002 */  addu       $s0, $s6, $s0
/* 1E224 8002DA24 0600C4A0 */  sb         $a0, 0x6($a2)
/* 1E228 8002DA28 4C006392 */  lbu        $v1, 0x4C($s3)
/* 1E22C 8002DA2C 44004626 */  addiu      $a2, $s2, 0x44
/* 1E230 8002DA30 0400C3A0 */  sb         $v1, 0x4($a2)
/* 1E234 8002DA34 4D006592 */  lbu        $a1, 0x4D($s3)
/* 1E238 8002DA38 00A01026 */  addiu      $s0, $s0, -0x6000
/* 1E23C 8002DA3C 0500C5A0 */  sb         $a1, 0x5($a2)
/* 1E240 8002DA40 4E006392 */  lbu        $v1, 0x4E($s3)
/* 1E244 8002DA44 03000424 */  addiu      $a0, $zero, 0x3
/* 1E248 8002DA48 D140010C */  jal        u32Random
/* 1E24C 8002DA4C 0600C3A0 */   sb        $v1, 0x6($a2)
/* 1E250 8002DA50 01000324 */  addiu      $v1, $zero, 0x1
/* 1E254 8002DA54 2310A202 */  subu       $v0, $s5, $v0
/* 1E258 8002DA58 000043A6 */  sh         $v1, 0x0($s2)
/* 1E25C 8002DA5C 040051AE */  sw         $s1, 0x4($s2)
/* 1E260 8002DA60 080057AE */  sw         $s7, 0x8($s2)
/* 1E264 8002DA64 0C0050AE */  sw         $s0, 0xC($s2)
/* 1E268 8002DA68 100040AE */  sw         $zero, 0x10($s2)
/* 1E26C 8002DA6C 140040AE */  sw         $zero, 0x14($s2)
/* 1E270 8002DA70 180040AE */  sw         $zero, 0x18($s2)
/* 1E274 8002DA74 020042A6 */  sh         $v0, 0x2($s2)
/* 1E278 8002DA78 0800628E */  lw         $v0, 0x8($s3)
/* 1E27C 8002DA7C 00000000 */  nop
/* 1E280 8002DA80 2A108202 */  slt        $v0, $s4, $v0
/* 1E284 8002DA84 D7FF4014 */  bnez       $v0, .L8002D9E4
/* 1E288 8002DA88 74005226 */   addiu     $s2, $s2, 0x74
.L8002DA8C:
/* 1E28C 8002DA8C D140010C */  jal        u32Random
/* 1E290 8002DA90 08000424 */   addiu     $a0, $zero, 0x8
/* 1E294 8002DA94 3400BF8F */  lw         $ra, 0x34($sp)
/* 1E298 8002DA98 3000BE8F */  lw         $fp, 0x30($sp)
/* 1E29C 8002DA9C 2C00B78F */  lw         $s7, 0x2C($sp)
/* 1E2A0 8002DAA0 2800B68F */  lw         $s6, 0x28($sp)
/* 1E2A4 8002DAA4 2400B58F */  lw         $s5, 0x24($sp)
/* 1E2A8 8002DAA8 2000B48F */  lw         $s4, 0x20($sp)
/* 1E2AC 8002DAAC F0004224 */  addiu      $v0, $v0, 0xF0
/* 1E2B0 8002DAB0 4A0062A6 */  sh         $v0, 0x4A($s3)
/* 1E2B4 8002DAB4 000060AE */  sw         $zero, 0x0($s3)
/* 1E2B8 8002DAB8 1C00B38F */  lw         $s3, 0x1C($sp)
/* 1E2BC 8002DABC 1800B28F */  lw         $s2, 0x18($sp)
/* 1E2C0 8002DAC0 1400B18F */  lw         $s1, 0x14($sp)
/* 1E2C4 8002DAC4 1000B08F */  lw         $s0, 0x10($sp)
/* 1E2C8 8002DAC8 0800E003 */  jr         $ra
/* 1E2CC 8002DACC 3800BD27 */   addiu     $sp, $sp, 0x38
.size ParticleConfettiInit, . - ParticleConfettiInit
