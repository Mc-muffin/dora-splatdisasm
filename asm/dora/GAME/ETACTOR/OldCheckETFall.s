.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel OldCheckETFall
/* 7FD8 800177D8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 7FDC 800177DC 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 7FE0 800177E0 21B88000 */  addu       $s7, $a0, $zero
/* 7FE4 800177E4 3400BFAF */  sw         $ra, 0x34($sp)
/* 7FE8 800177E8 3000BEAF */  sw         $fp, 0x30($sp)
/* 7FEC 800177EC 2800B6AF */  sw         $s6, 0x28($sp)
/* 7FF0 800177F0 2400B5AF */  sw         $s5, 0x24($sp)
/* 7FF4 800177F4 2000B4AF */  sw         $s4, 0x20($sp)
/* 7FF8 800177F8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 7FFC 800177FC 1800B2AF */  sw         $s2, 0x18($sp)
/* 8000 80017800 1400B1AF */  sw         $s1, 0x14($sp)
/* 8004 80017804 1000B0AF */  sw         $s0, 0x10($sp)
/* 8008 80017808 8800E28E */  lw         $v0, 0x88($s7)
/* 800C 8001780C 00000000 */  nop
/* 8010 80017810 42004014 */  bnez       $v0, .L8001791C
/* 8014 80017814 00000000 */   nop
/* 8018 80017818 0C00E38E */  lw         $v1, 0xC($s7)
/* 801C 8001781C 06000224 */  addiu      $v0, $zero, 0x6
/* 8020 80017820 3E006210 */  beq        $v1, $v0, .L8001791C
/* 8024 80017824 00000000 */   nop
/* 8028 80017828 05000224 */  addiu      $v0, $zero, 0x5
/* 802C 8001782C 3B006210 */  beq        $v1, $v0, .L8001791C
/* 8030 80017830 00000000 */   nop
/* 8034 80017834 0A000224 */  addiu      $v0, $zero, 0xA
/* 8038 80017838 38006210 */  beq        $v1, $v0, .L8001791C
/* 803C 8001783C 00000000 */   nop
/* 8040 80017840 FC128727 */  addiu      $a3, $gp, %gp_rel(ettempy1)
/* 8044 80017844 F000F08E */  lw         $s0, 0xF0($s7)
/* 8048 80017848 7000F58E */  lw         $s5, 0x70($s7)
/* 804C 8001784C 7400F18E */  lw         $s1, 0x74($s7)
/* 8050 80017850 7800F48E */  lw         $s4, 0x78($s7)
/* 8054 80017854 C2171000 */  srl        $v0, $s0, 31
/* 8058 80017858 21800202 */  addu       $s0, $s0, $v0
/* 805C 8001785C 43801000 */  sra        $s0, $s0, 1
/* 8060 80017860 23B0B002 */  subu       $s6, $s5, $s0
/* 8064 80017864 2120C002 */  addu       $a0, $s6, $zero
/* 8068 80017868 80003126 */  addiu      $s1, $s1, 0x80
/* 806C 8001786C 21282002 */  addu       $a1, $s1, $zero
/* 8070 80017870 23989002 */  subu       $s3, $s4, $s0
/* 8074 80017874 27F0000C */  jal        CheckCollisionCelHeight
/* 8078 80017878 21306002 */   addu      $a2, $s3, $zero
/* 807C 8001787C 2190B002 */  addu       $s2, $s5, $s0
/* 8080 80017880 FFFF5226 */  addiu      $s2, $s2, -0x1
/* 8084 80017884 21204002 */  addu       $a0, $s2, $zero
/* 8088 80017888 21282002 */  addu       $a1, $s1, $zero
/* 808C 8001788C 21306002 */  addu       $a2, $s3, $zero
/* 8090 80017890 00138727 */  addiu      $a3, $gp, %gp_rel(ettempy2)
/* 8094 80017894 27F0000C */  jal        CheckCollisionCelHeight
/* 8098 80017898 21F04000 */   addu      $fp, $v0, $zero
/* 809C 8001789C 2120C002 */  addu       $a0, $s6, $zero
/* 80A0 800178A0 21282002 */  addu       $a1, $s1, $zero
/* 80A4 800178A4 21809002 */  addu       $s0, $s4, $s0
/* 80A8 800178A8 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 80AC 800178AC 21300002 */  addu       $a2, $s0, $zero
/* 80B0 800178B0 04138727 */  addiu      $a3, $gp, %gp_rel(ettempy3)
/* 80B4 800178B4 27F0000C */  jal        CheckCollisionCelHeight
/* 80B8 800178B8 21984000 */   addu      $s3, $v0, $zero
/* 80BC 800178BC 21204002 */  addu       $a0, $s2, $zero
/* 80C0 800178C0 21282002 */  addu       $a1, $s1, $zero
/* 80C4 800178C4 21300002 */  addu       $a2, $s0, $zero
/* 80C8 800178C8 08138727 */  addiu      $a3, $gp, %gp_rel(ettempy4)
/* 80CC 800178CC 27F0000C */  jal        CheckCollisionCelHeight
/* 80D0 800178D0 21904000 */   addu      $s2, $v0, $zero
/* 80D4 800178D4 2120A002 */  addu       $a0, $s5, $zero
/* 80D8 800178D8 21282002 */  addu       $a1, $s1, $zero
/* 80DC 800178DC 21308002 */  addu       $a2, $s4, $zero
/* 80E0 800178E0 0C138727 */  addiu      $a3, $gp, %gp_rel(ettempy5)
/* 80E4 800178E4 27F0000C */  jal        CheckCollisionCelHeight
/* 80E8 800178E8 21804000 */   addu      $s0, $v0, $zero
/* 80EC 800178EC FFFF0324 */  addiu      $v1, $zero, -0x1
/* 80F0 800178F0 0A00C317 */  bne        $fp, $v1, .L8001791C
/* 80F4 800178F4 21100000 */   addu      $v0, $zero, $zero
/* 80F8 800178F8 08007E16 */  bne        $s3, $fp, .L8001791C
/* 80FC 800178FC 00000000 */   nop
/* 8100 80017900 06005316 */  bne        $s2, $s3, .L8001791C
/* 8104 80017904 00000000 */   nop
/* 8108 80017908 04001216 */  bne        $s0, $s2, .L8001791C
/* 810C 8001790C 00000000 */   nop
/* 8110 80017910 07000224 */  addiu      $v0, $zero, 0x7
/* 8114 80017914 0C00E2AE */  sw         $v0, 0xC($s7)
/* 8118 80017918 01000224 */  addiu      $v0, $zero, 0x1
.L8001791C:
/* 811C 8001791C 3400BF8F */  lw         $ra, 0x34($sp)
/* 8120 80017920 3000BE8F */  lw         $fp, 0x30($sp)
/* 8124 80017924 2C00B78F */  lw         $s7, 0x2C($sp)
/* 8128 80017928 2800B68F */  lw         $s6, 0x28($sp)
/* 812C 8001792C 2400B58F */  lw         $s5, 0x24($sp)
/* 8130 80017930 2000B48F */  lw         $s4, 0x20($sp)
/* 8134 80017934 1C00B38F */  lw         $s3, 0x1C($sp)
/* 8138 80017938 1800B28F */  lw         $s2, 0x18($sp)
/* 813C 8001793C 1400B18F */  lw         $s1, 0x14($sp)
/* 8140 80017940 1000B08F */  lw         $s0, 0x10($sp)
/* 8144 80017944 0800E003 */  jr         $ra
/* 8148 80017948 3800BD27 */   addiu     $sp, $sp, 0x38
.size OldCheckETFall, . - OldCheckETFall
