.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TKCheckHeight
/* 34918 80044118 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 3491C 8004411C 21108000 */  addu       $v0, $a0, $zero
/* 34920 80044120 3000BFAF */  sw         $ra, 0x30($sp)
/* 34924 80044124 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 34928 80044128 2800B6AF */  sw         $s6, 0x28($sp)
/* 3492C 8004412C 2400B5AF */  sw         $s5, 0x24($sp)
/* 34930 80044130 2000B4AF */  sw         $s4, 0x20($sp)
/* 34934 80044134 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 34938 80044138 1800B2AF */  sw         $s2, 0x18($sp)
/* 3493C 8004413C 1400B1AF */  sw         $s1, 0x14($sp)
/* 34940 80044140 1000B0AF */  sw         $s0, 0x10($sp)
/* 34944 80044144 0400528C */  lw         $s2, 0x4($v0)
/* 34948 80044148 0800538C */  lw         $s3, 0x8($v0)
/* 3494C 8004414C 0C00518C */  lw         $s1, 0xC($v0)
/* 34950 80044150 CC0C908F */  lw         $s0, %gp_rel(TESTTKSIZE)($gp)
/* 34954 80044154 21204002 */  addu       $a0, $s2, $zero
/* 34958 80044158 21286002 */  addu       $a1, $s3, $zero
/* 3495C 8004415C CDEF000C */  jal        GetHeight
/* 34960 80044160 21302002 */   addu      $a2, $s1, $zero
/* 34964 80044164 21B04000 */  addu       $s6, $v0, $zero
/* 34968 80044168 21A05002 */  addu       $s4, $s2, $s0
/* 3496C 8004416C 21208002 */  addu       $a0, $s4, $zero
/* 34970 80044170 21286002 */  addu       $a1, $s3, $zero
/* 34974 80044174 21A83002 */  addu       $s5, $s1, $s0
/* 34978 80044178 CDEF000C */  jal        GetHeight
/* 3497C 8004417C 2130A002 */   addu      $a2, $s5, $zero
/* 34980 80044180 23905002 */  subu       $s2, $s2, $s0
/* 34984 80044184 21204002 */  addu       $a0, $s2, $zero
/* 34988 80044188 21286002 */  addu       $a1, $s3, $zero
/* 3498C 8004418C 23883002 */  subu       $s1, $s1, $s0
/* 34990 80044190 21302002 */  addu       $a2, $s1, $zero
/* 34994 80044194 CDEF000C */  jal        GetHeight
/* 34998 80044198 21B84000 */   addu      $s7, $v0, $zero
/* 3499C 8004419C 21208002 */  addu       $a0, $s4, $zero
/* 349A0 800441A0 21286002 */  addu       $a1, $s3, $zero
/* 349A4 800441A4 21302002 */  addu       $a2, $s1, $zero
/* 349A8 800441A8 CDEF000C */  jal        GetHeight
/* 349AC 800441AC 21884000 */   addu      $s1, $v0, $zero
/* 349B0 800441B0 21204002 */  addu       $a0, $s2, $zero
/* 349B4 800441B4 21286002 */  addu       $a1, $s3, $zero
/* 349B8 800441B8 2130A002 */  addu       $a2, $s5, $zero
/* 349BC 800441BC CDEF000C */  jal        GetHeight
/* 349C0 800441C0 21804000 */   addu      $s0, $v0, $zero
/* 349C4 800441C4 21184000 */  addu       $v1, $v0, $zero
/* 349C8 800441C8 2A10F602 */  slt        $v0, $s7, $s6
/* 349CC 800441CC 03004010 */  beqz       $v0, .L800441DC
/* 349D0 800441D0 2A103602 */   slt       $v0, $s1, $s6
/* 349D4 800441D4 21B0E002 */  addu       $s6, $s7, $zero
/* 349D8 800441D8 2A103602 */  slt        $v0, $s1, $s6
.L800441DC:
/* 349DC 800441DC 03004010 */  beqz       $v0, .L800441EC
/* 349E0 800441E0 2A101602 */   slt       $v0, $s0, $s6
/* 349E4 800441E4 21B02002 */  addu       $s6, $s1, $zero
/* 349E8 800441E8 2A101602 */  slt        $v0, $s0, $s6
.L800441EC:
/* 349EC 800441EC 03004010 */  beqz       $v0, .L800441FC
/* 349F0 800441F0 2A107600 */   slt       $v0, $v1, $s6
/* 349F4 800441F4 21B00002 */  addu       $s6, $s0, $zero
/* 349F8 800441F8 2A107600 */  slt        $v0, $v1, $s6
.L800441FC:
/* 349FC 800441FC 03004010 */  beqz       $v0, .L8004420C
/* 34A00 80044200 2110C002 */   addu      $v0, $s6, $zero
/* 34A04 80044204 21B06000 */  addu       $s6, $v1, $zero
/* 34A08 80044208 2110C002 */  addu       $v0, $s6, $zero
.L8004420C:
/* 34A0C 8004420C 3000BF8F */  lw         $ra, 0x30($sp)
/* 34A10 80044210 2C00B78F */  lw         $s7, 0x2C($sp)
/* 34A14 80044214 2800B68F */  lw         $s6, 0x28($sp)
/* 34A18 80044218 2400B58F */  lw         $s5, 0x24($sp)
/* 34A1C 8004421C 2000B48F */  lw         $s4, 0x20($sp)
/* 34A20 80044220 1C00B38F */  lw         $s3, 0x1C($sp)
/* 34A24 80044224 1800B28F */  lw         $s2, 0x18($sp)
/* 34A28 80044228 1400B18F */  lw         $s1, 0x14($sp)
/* 34A2C 8004422C 1000B08F */  lw         $s0, 0x10($sp)
/* 34A30 80044230 0800E003 */  jr         $ra
/* 34A34 80044234 3800BD27 */   addiu     $sp, $sp, 0x38
.size TKCheckHeight, . - TKCheckHeight
