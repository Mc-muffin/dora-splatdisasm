.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_rt_noteon_layered
/* 455CC 80054DCC A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 455D0 80054DD0 3800B2AF */  sw         $s2, 0x38($sp)
/* 455D4 80054DD4 FF009230 */  andi       $s2, $a0, 0xFF
/* 455D8 80054DD8 3000B0AF */  sw         $s0, 0x30($sp)
/* 455DC 80054DDC FF00B030 */  andi       $s0, $a1, 0xFF
/* 455E0 80054DE0 FF00C630 */  andi       $a2, $a2, 0xFF
/* 455E4 80054DE4 40101200 */  sll        $v0, $s2, 1
/* 455E8 80054DE8 21105200 */  addu       $v0, $v0, $s2
/* 455EC 80054DEC 80100200 */  sll        $v0, $v0, 2
/* 455F0 80054DF0 23105200 */  subu       $v0, $v0, $s2
/* 455F4 80054DF4 80100200 */  sll        $v0, $v0, 2
/* 455F8 80054DF8 0B80033C */  lui        $v1, %hi(pxm_sndfiles)
/* 455FC 80054DFC E0866324 */  addiu      $v1, $v1, %lo(pxm_sndfiles)
/* 45600 80054E00 3400B1AF */  sw         $s1, 0x34($sp)
/* 45604 80054E04 21884300 */  addu       $s1, $v0, $v1
/* 45608 80054E08 5000BEAF */  sw         $fp, 0x50($sp)
/* 4560C 80054E0C 5400BFAF */  sw         $ra, 0x54($sp)
/* 45610 80054E10 4C00B7AF */  sw         $s7, 0x4C($sp)
/* 45614 80054E14 4800B6AF */  sw         $s6, 0x48($sp)
/* 45618 80054E18 4400B5AF */  sw         $s5, 0x44($sp)
/* 4561C 80054E1C 4000B4AF */  sw         $s4, 0x40($sp)
/* 45620 80054E20 3C00B3AF */  sw         $s3, 0x3C($sp)
/* 45624 80054E24 2000A6AF */  sw         $a2, 0x20($sp)
/* 45628 80054E28 0C00248E */  lw         $a0, 0xC($s1)
/* 4562C 80054E2C 6800B78F */  lw         $s7, 0x68($sp)
/* 45630 80054E30 2B200402 */  sltu       $a0, $s0, $a0
/* 45634 80054E34 03008014 */  bnez       $a0, .L80054E44
/* 45638 80054E38 FF00FE30 */   andi      $fp, $a3, 0xFF
/* 4563C 80054E3C D5530108 */  j          .L80054F54
/* 45640 80054E40 21100000 */   addu      $v0, $zero, $zero
.L80054E44:
/* 45644 80054E44 6855010C */  jal        pxm_get_voice
/* 45648 80054E48 21A00000 */   addu      $s4, $zero, $zero
/* 4564C 80054E4C 21204002 */  addu       $a0, $s2, $zero
/* 45650 80054E50 21280002 */  addu       $a1, $s0, $zero
/* 45654 80054E54 2138C003 */  addu       $a3, $fp, $zero
/* 45658 80054E58 2000A68F */  lw         $a2, 0x20($sp)
/* 4565C 80054E5C 21984000 */  addu       $s3, $v0, $zero
/* 45660 80054E60 8055010C */  jal        pxm_get_zones
/* 45664 80054E64 1000B3AF */   sw        $s3, 0x10($sp)
/* 45668 80054E68 40181000 */  sll        $v1, $s0, 1
/* 4566C 80054E6C 21187000 */  addu       $v1, $v1, $s0
/* 45670 80054E70 80180300 */  sll        $v1, $v1, 2
/* 45674 80054E74 2400228E */  lw         $v0, 0x24($s1)
/* 45678 80054E78 00000000 */  nop
/* 4567C 80054E7C 21104300 */  addu       $v0, $v0, $v1
/* 45680 80054E80 0800448C */  lw         $a0, 0x8($v0)
/* 45684 80054E84 0000768E */  lw         $s6, 0x0($s3)
/* 45688 80054E88 01008430 */  andi       $a0, $a0, 0x1
/* 4568C 80054E8C 02008010 */  beqz       $a0, .L80054E98
/* 45690 80054E90 0100023C */   lui       $v0, (0x10000 >> 16)
/* 45694 80054E94 25B8E202 */  or         $s7, $s7, $v0
.L80054E98:
/* 45698 80054E98 21A80000 */  addu       $s5, $zero, $zero
/* 4569C 80054E9C 00821000 */  sll        $s0, $s0, 8
/* 456A0 80054EA0 2000A28F */  lw         $v0, 0x20($sp)
/* 456A4 80054EA4 001E1E00 */  sll        $v1, $fp, 24
/* 456A8 80054EA8 2C00B0AF */  sw         $s0, 0x2C($sp)
/* 456AC 80054EAC 2800A3AF */  sw         $v1, 0x28($sp)
/* 456B0 80054EB0 00140200 */  sll        $v0, $v0, 16
/* 456B4 80054EB4 1700C012 */  beqz       $s6, .L80054F14
/* 456B8 80054EB8 2400A2AF */   sw        $v0, 0x24($sp)
/* 456BC 80054EBC 04007126 */  addiu      $s1, $s3, 0x4
.L80054EC0:
/* 456C0 80054EC0 3855010C */  jal        pxm_get_spuchan
/* 456C4 80054EC4 2120E002 */   addu      $a0, $s7, $zero
/* 456C8 80054EC8 21804000 */  addu       $s0, $v0, $zero
/* 456CC 80054ECC FFFF0224 */  addiu      $v0, $zero, -0x1
/* 456D0 80054ED0 0C000212 */  beq        $s0, $v0, .L80054F04
/* 456D4 80054ED4 21284002 */   addu      $a1, $s2, $zero
/* 456D8 80054ED8 2138C003 */  addu       $a3, $fp, $zero
/* 456DC 80054EDC 2000A68F */  lw         $a2, 0x20($sp)
/* 456E0 80054EE0 0000248E */  lw         $a0, 0x0($s1)
/* 456E4 80054EE4 FF000324 */  addiu      $v1, $zero, 0xFF
/* 456E8 80054EE8 1000A3AF */  sw         $v1, 0x10($sp)
/* 456EC 80054EEC 1400B0AF */  sw         $s0, 0x14($sp)
/* 456F0 80054EF0 7B54010C */  jal        pxm_attach_zone_to_spu_chan
/* 456F4 80054EF4 1800B7AF */   sw        $s7, 0x18($sp)
/* 456F8 80054EF8 01000324 */  addiu      $v1, $zero, 0x1
/* 456FC 80054EFC 04100302 */  sllv       $v0, $v1, $s0
/* 45700 80054F00 25A08202 */  or         $s4, $s4, $v0
.L80054F04:
/* 45704 80054F04 0100B526 */  addiu      $s5, $s5, 0x1
/* 45708 80054F08 2B10B602 */  sltu       $v0, $s5, $s6
/* 4570C 80054F0C ECFF4014 */  bnez       $v0, .L80054EC0
/* 45710 80054F10 04003126 */   addiu     $s1, $s1, 0x4
.L80054F14:
/* 45714 80054F14 2C00A28F */  lw         $v0, 0x2C($sp)
/* 45718 80054F18 00000000 */  nop
/* 4571C 80054F1C 25184202 */  or         $v1, $s2, $v0
/* 45720 80054F20 2400A28F */  lw         $v0, 0x24($sp)
/* 45724 80054F24 0C10848F */  lw         $a0, %gp_rel(pxm_spuchan_ONmask)($gp)
/* 45728 80054F28 25186200 */  or         $v1, $v1, $v0
/* 4572C 80054F2C 2800A28F */  lw         $v0, 0x28($sp)
/* 45730 80054F30 25209400 */  or         $a0, $a0, $s4
/* 45734 80054F34 1C0074AE */  sw         $s4, 0x1C($s3)
/* 45738 80054F38 25186200 */  or         $v1, $v1, $v0
/* 4573C 80054F3C 200063AE */  sw         $v1, 0x20($s3)
/* 45740 80054F40 1410838F */  lw         $v1, %gp_rel(pxm_chanbits)($gp)
/* 45744 80054F44 21106002 */  addu       $v0, $s3, $zero
/* 45748 80054F48 0C1084AF */  sw         $a0, %gp_rel(pxm_spuchan_ONmask)($gp)
/* 4574C 80054F4C 25187400 */  or         $v1, $v1, $s4
/* 45750 80054F50 141083AF */  sw         $v1, %gp_rel(pxm_chanbits)($gp)
.L80054F54:
/* 45754 80054F54 5400BF8F */  lw         $ra, 0x54($sp)
/* 45758 80054F58 5000BE8F */  lw         $fp, 0x50($sp)
/* 4575C 80054F5C 4C00B78F */  lw         $s7, 0x4C($sp)
/* 45760 80054F60 4800B68F */  lw         $s6, 0x48($sp)
/* 45764 80054F64 4400B58F */  lw         $s5, 0x44($sp)
/* 45768 80054F68 4000B48F */  lw         $s4, 0x40($sp)
/* 4576C 80054F6C 3C00B38F */  lw         $s3, 0x3C($sp)
/* 45770 80054F70 3800B28F */  lw         $s2, 0x38($sp)
/* 45774 80054F74 3400B18F */  lw         $s1, 0x34($sp)
/* 45778 80054F78 3000B08F */  lw         $s0, 0x30($sp)
/* 4577C 80054F7C 0800E003 */  jr         $ra
/* 45780 80054F80 5800BD27 */   addiu     $sp, $sp, 0x58
.size pxm_rt_noteon_layered, . - pxm_rt_noteon_layered
