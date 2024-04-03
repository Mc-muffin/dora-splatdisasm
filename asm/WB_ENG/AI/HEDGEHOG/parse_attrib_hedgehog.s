.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_hedgehog
/* 37A70 80047270 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 37A74 80047274 1000B0AF */  sw         $s0, 0x10($sp)
/* 37A78 80047278 21808000 */  addu       $s0, $a0, $zero
/* 37A7C 8004727C 2800BFAF */  sw         $ra, 0x28($sp)
/* 37A80 80047280 2400B5AF */  sw         $s5, 0x24($sp)
/* 37A84 80047284 2000B4AF */  sw         $s4, 0x20($sp)
/* 37A88 80047288 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 37A8C 8004728C 1800B2AF */  sw         $s2, 0x18($sp)
/* 37A90 80047290 4E26010C */  jal        parse_attrib_generic
/* 37A94 80047294 1400B1AF */   sw        $s1, 0x14($sp)
/* 37A98 80047298 34000424 */  addiu      $a0, $zero, 0x34
/* 37A9C 8004729C 2B3F010C */  jal        new_malloc
/* 37AA0 800472A0 21A04000 */   addu      $s4, $v0, $zero
/* 37AA4 800472A4 21200002 */  addu       $a0, $s0, $zero
/* 37AA8 800472A8 21884000 */  addu       $s1, $v0, $zero
/* 37AAC 800472AC BC42010C */  jal        pbag_init
/* 37AB0 800472B0 380091AE */   sw        $s1, 0x38($s4)
/* 37AB4 800472B4 1543010C */  jal        pbag_getptr
/* 37AB8 800472B8 00000000 */   nop
/* 37ABC 800472BC 21804000 */  addu       $s0, $v0, $zero
/* 37AC0 800472C0 300020AE */  sw         $zero, 0x30($s1)
/* 37AC4 800472C4 0000048E */  lw         $a0, 0x0($s0)
/* 37AC8 800472C8 B142010C */  jal        pbag_getenum
/* 37ACC 800472CC 00000000 */   nop
/* 37AD0 800472D0 21184000 */  addu       $v1, $v0, $zero
/* 37AD4 800472D4 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 37AD8 800472D8 16006210 */  beq        $v1, $v0, .L80047334
/* 37ADC 800472DC FF801534 */   ori       $s5, $zero, 0x80FF
/* 37AE0 800472E0 00811334 */  ori        $s3, $zero, 0x8100
/* 37AE4 800472E4 FFFF1234 */  ori        $s2, $zero, 0xFFFF
/* 37AE8 800472E8 2B10A302 */  sltu       $v0, $s5, $v1
.L800472EC:
/* 37AEC 800472EC 08004010 */  beqz       $v0, .L80047310
/* 37AF0 800472F0 00000000 */   nop
/* 37AF4 800472F4 06007314 */  bne        $v1, $s3, .L80047310
/* 37AF8 800472F8 00000000 */   nop
/* 37AFC 800472FC 0800028E */  lw         $v0, 0x8($s0)
/* 37B00 80047300 00000000 */  nop
/* 37B04 80047304 0000438C */  lw         $v1, 0x0($v0)
/* 37B08 80047308 00000000 */  nop
/* 37B0C 8004730C 300023AE */  sw         $v1, 0x30($s1)
.L80047310:
/* 37B10 80047310 E742010C */  jal        pbag_advanceONE
/* 37B14 80047314 00000000 */   nop
/* 37B18 80047318 21804000 */  addu       $s0, $v0, $zero
/* 37B1C 8004731C 0000048E */  lw         $a0, 0x0($s0)
/* 37B20 80047320 B142010C */  jal        pbag_getenum
/* 37B24 80047324 00000000 */   nop
/* 37B28 80047328 21184000 */  addu       $v1, $v0, $zero
/* 37B2C 8004732C EFFF7214 */  bne        $v1, $s2, .L800472EC
/* 37B30 80047330 2B10A302 */   sltu      $v0, $s5, $v1
.L80047334:
/* 37B34 80047334 21108002 */  addu       $v0, $s4, $zero
/* 37B38 80047338 2800BF8F */  lw         $ra, 0x28($sp)
/* 37B3C 8004733C 2400B58F */  lw         $s5, 0x24($sp)
/* 37B40 80047340 2000B48F */  lw         $s4, 0x20($sp)
/* 37B44 80047344 1C00B38F */  lw         $s3, 0x1C($sp)
/* 37B48 80047348 1800B28F */  lw         $s2, 0x18($sp)
/* 37B4C 8004734C 1400B18F */  lw         $s1, 0x14($sp)
/* 37B50 80047350 1000B08F */  lw         $s0, 0x10($sp)
/* 37B54 80047354 0800E003 */  jr         $ra
/* 37B58 80047358 3000BD27 */   addiu     $sp, $sp, 0x30
.size parse_attrib_hedgehog, . - parse_attrib_hedgehog
