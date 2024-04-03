.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleSnowReInit
/* 213A0 80030BA0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 213A4 80030BA4 2800B4AF */  sw         $s4, 0x28($sp)
/* 213A8 80030BA8 21A00000 */  addu       $s4, $zero, $zero
/* 213AC 80030BAC 2400B3AF */  sw         $s3, 0x24($sp)
/* 213B0 80030BB0 21988000 */  addu       $s3, $a0, $zero
/* 213B4 80030BB4 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 213B8 80030BB8 3800BEAF */  sw         $fp, 0x38($sp)
/* 213BC 80030BBC 3400B7AF */  sw         $s7, 0x34($sp)
/* 213C0 80030BC0 3000B6AF */  sw         $s6, 0x30($sp)
/* 213C4 80030BC4 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 213C8 80030BC8 2000B2AF */  sw         $s2, 0x20($sp)
/* 213CC 80030BCC 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 213D0 80030BD0 1800B0AF */  sw         $s0, 0x18($sp)
/* 213D4 80030BD4 4000728E */  lw         $s2, 0x40($s3)
/* 213D8 80030BD8 80000224 */  addiu      $v0, $zero, 0x80
/* 213DC 80030BDC C41382AF */  sw         $v0, %gp_rel(TEMPR)($gp)
/* 213E0 80030BE0 C01382AF */  sw         $v0, %gp_rel(TEMPG)($gp)
/* 213E4 80030BE4 BC1382AF */  sw         $v0, %gp_rel(TEMPB)($gp)
/* 213E8 80030BE8 0800628E */  lw         $v0, 0x8($s3)
/* 213EC 80030BEC 50001624 */  addiu      $s6, $zero, 0x50
/* 213F0 80030BF0 0C0076AE */  sw         $s6, 0xC($s3)
/* 213F4 80030BF4 240065AE */  sw         $a1, 0x24($s3)
/* 213F8 80030BF8 280066AE */  sw         $a2, 0x28($s3)
/* 213FC 80030BFC 31004018 */  blez       $v0, .L80030CC4
/* 21400 80030C00 2C0067AE */   sw        $a3, 0x2C($s3)
/* 21404 80030C04 002A0500 */  sll        $a1, $a1, 8
/* 21408 80030C08 1000A5AF */  sw         $a1, 0x10($sp)
/* 2140C 80030C0C 0200153C */  lui        $s5, (0x20000 >> 16)
/* 21410 80030C10 00F20600 */  sll        $fp, $a2, 8
/* 21414 80030C14 00BA0700 */  sll        $s7, $a3, 8
.L80030C18:
/* 21418 80030C18 D140010C */  jal        u32Random
/* 2141C 80030C1C 00040424 */   addiu     $a0, $zero, 0x400
/* 21420 80030C20 008A0200 */  sll        $s1, $v0, 8
/* 21424 80030C24 1000A28F */  lw         $v0, 0x10($sp)
/* 21428 80030C28 00040424 */  addiu      $a0, $zero, 0x400
/* 2142C 80030C2C 21885100 */  addu       $s1, $v0, $s1
/* 21430 80030C30 D140010C */  jal        u32Random
/* 21434 80030C34 23883502 */   subu      $s1, $s1, $s5
/* 21438 80030C38 1C004626 */  addiu      $a2, $s2, 0x1C
/* 2143C 80030C3C 4C006492 */  lbu        $a0, 0x4C($s3)
/* 21440 80030C40 01009426 */  addiu      $s4, $s4, 0x1
/* 21444 80030C44 0400C4A0 */  sb         $a0, 0x4($a2)
/* 21448 80030C48 4D006392 */  lbu        $v1, 0x4D($s3)
/* 2144C 80030C4C 00820200 */  sll        $s0, $v0, 8
/* 21450 80030C50 0500C3A0 */  sb         $v1, 0x5($a2)
/* 21454 80030C54 4E006492 */  lbu        $a0, 0x4E($s3)
/* 21458 80030C58 2180F002 */  addu       $s0, $s7, $s0
/* 2145C 80030C5C 0600C4A0 */  sb         $a0, 0x6($a2)
/* 21460 80030C60 4C006392 */  lbu        $v1, 0x4C($s3)
/* 21464 80030C64 44004626 */  addiu      $a2, $s2, 0x44
/* 21468 80030C68 0400C3A0 */  sb         $v1, 0x4($a2)
/* 2146C 80030C6C 4D006592 */  lbu        $a1, 0x4D($s3)
/* 21470 80030C70 23801502 */  subu       $s0, $s0, $s5
/* 21474 80030C74 0500C5A0 */  sb         $a1, 0x5($a2)
/* 21478 80030C78 4E006392 */  lbu        $v1, 0x4E($s3)
/* 2147C 80030C7C 01000424 */  addiu      $a0, $zero, 0x1
/* 21480 80030C80 D140010C */  jal        u32Random
/* 21484 80030C84 0600C3A0 */   sb        $v1, 0x6($a2)
/* 21488 80030C88 01000324 */  addiu      $v1, $zero, 0x1
/* 2148C 80030C8C 2310C202 */  subu       $v0, $s6, $v0
/* 21490 80030C90 000043A6 */  sh         $v1, 0x0($s2)
/* 21494 80030C94 040051AE */  sw         $s1, 0x4($s2)
/* 21498 80030C98 08005EAE */  sw         $fp, 0x8($s2)
/* 2149C 80030C9C 0C0050AE */  sw         $s0, 0xC($s2)
/* 214A0 80030CA0 100040AE */  sw         $zero, 0x10($s2)
/* 214A4 80030CA4 140040AE */  sw         $zero, 0x14($s2)
/* 214A8 80030CA8 180040AE */  sw         $zero, 0x18($s2)
/* 214AC 80030CAC 020042A6 */  sh         $v0, 0x2($s2)
/* 214B0 80030CB0 0800628E */  lw         $v0, 0x8($s3)
/* 214B4 80030CB4 00000000 */  nop
/* 214B8 80030CB8 2A108202 */  slt        $v0, $s4, $v0
/* 214BC 80030CBC D6FF4014 */  bnez       $v0, .L80030C18
/* 214C0 80030CC0 74005226 */   addiu     $s2, $s2, 0x74
.L80030CC4:
/* 214C4 80030CC4 D140010C */  jal        u32Random
/* 214C8 80030CC8 08000424 */   addiu     $a0, $zero, 0x8
/* 214CC 80030CCC 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 214D0 80030CD0 3800BE8F */  lw         $fp, 0x38($sp)
/* 214D4 80030CD4 3400B78F */  lw         $s7, 0x34($sp)
/* 214D8 80030CD8 3000B68F */  lw         $s6, 0x30($sp)
/* 214DC 80030CDC 2C00B58F */  lw         $s5, 0x2C($sp)
/* 214E0 80030CE0 2800B48F */  lw         $s4, 0x28($sp)
/* 214E4 80030CE4 F0004224 */  addiu      $v0, $v0, 0xF0
/* 214E8 80030CE8 4A0062A6 */  sh         $v0, 0x4A($s3)
/* 214EC 80030CEC 01000224 */  addiu      $v0, $zero, 0x1
/* 214F0 80030CF0 000062AE */  sw         $v0, 0x0($s3)
/* 214F4 80030CF4 2400B38F */  lw         $s3, 0x24($sp)
/* 214F8 80030CF8 2000B28F */  lw         $s2, 0x20($sp)
/* 214FC 80030CFC 1C00B18F */  lw         $s1, 0x1C($sp)
/* 21500 80030D00 1800B08F */  lw         $s0, 0x18($sp)
/* 21504 80030D04 0800E003 */  jr         $ra
/* 21508 80030D08 4000BD27 */   addiu     $sp, $sp, 0x40
.size ParticleSnowReInit, . - ParticleSnowReInit
