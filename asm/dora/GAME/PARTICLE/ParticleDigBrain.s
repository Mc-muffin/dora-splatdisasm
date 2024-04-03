.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ParticleDigBrain
/* 1F3B8 8002EBB8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1F3BC 8002EBBC 21300000 */  addu       $a2, $zero, $zero
/* 1F3C0 8002EBC0 1000B0AF */  sw         $s0, 0x10($sp)
/* 1F3C4 8002EBC4 21808000 */  addu       $s0, $a0, $zero
/* 1F3C8 8002EBC8 2400BFAF */  sw         $ra, 0x24($sp)
/* 1F3CC 8002EBCC 2000B4AF */  sw         $s4, 0x20($sp)
/* 1F3D0 8002EBD0 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 1F3D4 8002EBD4 1800B2AF */  sw         $s2, 0x18($sp)
/* 1F3D8 8002EBD8 1400B1AF */  sw         $s1, 0x14($sp)
/* 1F3DC 8002EBDC 4000118E */  lw         $s1, 0x40($s0)
/* 1F3E0 8002EBE0 4400028E */  lw         $v0, 0x44($s0)
/* 1F3E4 8002EBE4 0800038E */  lw         $v1, 0x8($s0)
/* 1F3E8 8002EBE8 1400078E */  lw         $a3, 0x14($s0)
/* 1F3EC 8002EBEC 21282002 */  addu       $a1, $s1, $zero
/* 1F3F0 8002EBF0 1F006018 */  blez       $v1, .L8002EC70
/* 1F3F4 8002EBF4 6C005424 */   addiu     $s4, $v0, 0x6C
/* 1F3F8 8002EBF8 01000824 */  addiu      $t0, $zero, 0x1
.L8002EBFC:
/* 1F3FC 8002EBFC 0000A284 */  lh         $v0, 0x0($a1)
/* 1F400 8002EC00 00000000 */  nop
/* 1F404 8002EC04 14004814 */  bne        $v0, $t0, .L8002EC58
/* 1F408 8002EC08 00000000 */   nop
/* 1F40C 8002EC0C 0400A28C */  lw         $v0, 0x4($a1)
/* 1F410 8002EC10 1000A38C */  lw         $v1, 0x10($a1)
/* 1F414 8002EC14 1800A48C */  lw         $a0, 0x18($a1)
/* 1F418 8002EC18 21104300 */  addu       $v0, $v0, $v1
/* 1F41C 8002EC1C 1400A38C */  lw         $v1, 0x14($a1)
/* 1F420 8002EC20 0400A2AC */  sw         $v0, 0x4($a1)
/* 1F424 8002EC24 0800A28C */  lw         $v0, 0x8($a1)
/* 1F428 8002EC28 21186700 */  addu       $v1, $v1, $a3
/* 1F42C 8002EC2C 21104300 */  addu       $v0, $v0, $v1
/* 1F430 8002EC30 0C00A38C */  lw         $v1, 0xC($a1)
/* 1F434 8002EC34 0800A2AC */  sw         $v0, 0x8($a1)
/* 1F438 8002EC38 0200A294 */  lhu        $v0, 0x2($a1)
/* 1F43C 8002EC3C 21186400 */  addu       $v1, $v1, $a0
/* 1F440 8002EC40 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 1F444 8002EC44 0200A2A4 */  sh         $v0, 0x2($a1)
/* 1F448 8002EC48 00140200 */  sll        $v0, $v0, 16
/* 1F44C 8002EC4C 02004014 */  bnez       $v0, .L8002EC58
/* 1F450 8002EC50 0C00A3AC */   sw        $v1, 0xC($a1)
/* 1F454 8002EC54 0000A0A4 */  sh         $zero, 0x0($a1)
.L8002EC58:
/* 1F458 8002EC58 0100C624 */  addiu      $a2, $a2, 0x1
/* 1F45C 8002EC5C 0800028E */  lw         $v0, 0x8($s0)
/* 1F460 8002EC60 00000000 */  nop
/* 1F464 8002EC64 2A10C200 */  slt        $v0, $a2, $v0
/* 1F468 8002EC68 E4FF4014 */  bnez       $v0, .L8002EBFC
/* 1F46C 8002EC6C 7400A524 */   addiu     $a1, $a1, 0x74
.L8002EC70:
/* 1F470 8002EC70 0C00028E */  lw         $v0, 0xC($s0)
/* 1F474 8002EC74 00000000 */  nop
/* 1F478 8002EC78 04004018 */  blez       $v0, .L8002EC8C
/* 1F47C 8002EC7C FFFF4224 */   addiu     $v0, $v0, -0x1
/* 1F480 8002EC80 02004014 */  bnez       $v0, .L8002EC8C
/* 1F484 8002EC84 0C0002AE */   sw        $v0, 0xC($s0)
/* 1F488 8002EC88 000000AE */  sw         $zero, 0x0($s0)
.L8002EC8C:
/* 1F48C 8002EC8C 67010424 */  addiu      $a0, $zero, 0x167
/* 1F490 8002EC90 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 1F494 8002EC94 D140010C */  jal        u32Random
/* 1F498 8002EC98 0C0002AE */   sw        $v0, 0xC($s0)
/* 1F49C 8002EC9C 1000038E */  lw         $v1, 0x10($s0)
/* 1F4A0 8002ECA0 21904000 */  addu       $s2, $v0, $zero
/* 1F4A4 8002ECA4 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 1F4A8 8002ECA8 38006104 */  bgez       $v1, .L8002ED8C
/* 1F4AC 8002ECAC 100003AE */   sw        $v1, 0x10($s0)
/* 1F4B0 8002ECB0 D140010C */  jal        u32Random
/* 1F4B4 8002ECB4 08000424 */   addiu     $a0, $zero, 0x8
/* 1F4B8 8002ECB8 21200000 */  addu       $a0, $zero, $zero
/* 1F4BC 8002ECBC 0800038E */  lw         $v1, 0x8($s0)
/* 1F4C0 8002ECC0 04004224 */  addiu      $v0, $v0, 0x4
/* 1F4C4 8002ECC4 31006018 */  blez       $v1, .L8002ED8C
/* 1F4C8 8002ECC8 100002AE */   sw        $v0, 0x10($s0)
/* 1F4CC 8002ECCC 78001324 */  addiu      $s3, $zero, 0x78
.L8002ECD0:
/* 1F4D0 8002ECD0 00002286 */  lh         $v0, 0x0($s1)
/* 1F4D4 8002ECD4 00000000 */  nop
/* 1F4D8 8002ECD8 27004014 */  bnez       $v0, .L8002ED78
/* 1F4DC 8002ECDC 01008424 */   addiu     $a0, $a0, 0x1
/* 1F4E0 8002ECE0 05000424 */  addiu      $a0, $zero, 0x5
/* 1F4E4 8002ECE4 01000224 */  addiu      $v0, $zero, 0x1
/* 1F4E8 8002ECE8 D140010C */  jal        u32Random
/* 1F4EC 8002ECEC 000022A6 */   sh        $v0, 0x0($s1)
/* 1F4F0 8002ECF0 04000424 */  addiu      $a0, $zero, 0x4
/* 1F4F4 8002ECF4 32004224 */  addiu      $v0, $v0, 0x32
/* 1F4F8 8002ECF8 020022A6 */  sh         $v0, 0x2($s1)
/* 1F4FC 8002ECFC D140010C */  jal        u32Random
/* 1F500 8002ED00 100020AE */   sw        $zero, 0x10($s1)
/* 1F504 8002ED04 21204002 */  addu       $a0, $s2, $zero
/* 1F508 8002ED08 08004224 */  addiu      $v0, $v0, 0x8
/* 1F50C 8002ED0C 140022AE */  sw         $v0, 0x14($s1)
/* 1F510 8002ED10 7BEB010C */  jal        rcos
/* 1F514 8002ED14 180020AE */   sw        $zero, 0x18($s1)
/* 1F518 8002ED18 21204002 */  addu       $a0, $s2, $zero
/* 1F51C 8002ED1C 47EB010C */  jal        rsin
/* 1F520 8002ED20 21804000 */   addu      $s0, $v0, $zero
/* 1F524 8002ED24 18005300 */  mult       $v0, $s3
/* 1F528 8002ED28 12100000 */  mflo       $v0
/* 1F52C 8002ED2C 0400838E */  lw         $v1, 0x4($s4)
/* 1F530 8002ED30 00000000 */  nop
/* 1F534 8002ED34 18001302 */  mult       $s0, $s3
/* 1F538 8002ED38 001A0300 */  sll        $v1, $v1, 8
/* 1F53C 8002ED3C 03110200 */  sra        $v0, $v0, 4
/* 1F540 8002ED40 21186200 */  addu       $v1, $v1, $v0
/* 1F544 8002ED44 040023AE */  sw         $v1, 0x4($s1)
/* 1F548 8002ED48 0800828E */  lw         $v0, 0x8($s4)
/* 1F54C 8002ED4C 00000000 */  nop
/* 1F550 8002ED50 00120200 */  sll        $v0, $v0, 8
/* 1F554 8002ED54 080022AE */  sw         $v0, 0x8($s1)
/* 1F558 8002ED58 0C00838E */  lw         $v1, 0xC($s4)
/* 1F55C 8002ED5C 01000224 */  addiu      $v0, $zero, 0x1
/* 1F560 8002ED60 001A0300 */  sll        $v1, $v1, 8
/* 1F564 8002ED64 12800000 */  mflo       $s0
/* 1F568 8002ED68 03811000 */  sra        $s0, $s0, 4
/* 1F56C 8002ED6C 21187000 */  addu       $v1, $v1, $s0
/* 1F570 8002ED70 63BB0008 */  j          .L8002ED8C
/* 1F574 8002ED74 0C0023AE */   sw        $v1, 0xC($s1)
.L8002ED78:
/* 1F578 8002ED78 0800028E */  lw         $v0, 0x8($s0)
/* 1F57C 8002ED7C 00000000 */  nop
/* 1F580 8002ED80 2A108200 */  slt        $v0, $a0, $v0
/* 1F584 8002ED84 D2FF4014 */  bnez       $v0, .L8002ECD0
/* 1F588 8002ED88 74003126 */   addiu     $s1, $s1, 0x74
.L8002ED8C:
/* 1F58C 8002ED8C 2400BF8F */  lw         $ra, 0x24($sp)
/* 1F590 8002ED90 2000B48F */  lw         $s4, 0x20($sp)
/* 1F594 8002ED94 1C00B38F */  lw         $s3, 0x1C($sp)
/* 1F598 8002ED98 1800B28F */  lw         $s2, 0x18($sp)
/* 1F59C 8002ED9C 1400B18F */  lw         $s1, 0x14($sp)
/* 1F5A0 8002EDA0 1000B08F */  lw         $s0, 0x10($sp)
/* 1F5A4 8002EDA4 0800E003 */  jr         $ra
/* 1F5A8 8002EDA8 2800BD27 */   addiu     $sp, $sp, 0x28
.size ParticleDigBrain, . - ParticleDigBrain
