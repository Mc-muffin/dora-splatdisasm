.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawCinematicSprite
/* 32908 80042108 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3290C 8004210C 0980033C */  lui        $v1, %hi(ot_ndx)
/* 32910 80042110 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* 32914 80042114 2C00A88F */  lw         $t0, 0x2C($sp)
/* 32918 80042118 2138A700 */  addu       $a3, $a1, $a3
/* 3291C 8004211C 1400BFAF */  sw         $ra, 0x14($sp)
/* 32920 80042120 1000B0AF */  sw         $s0, 0x10($sp)
/* 32924 80042124 80100300 */  sll        $v0, $v1, 2
/* 32928 80042128 21104300 */  addu       $v0, $v0, $v1
/* 3292C 8004212C C0100200 */  sll        $v0, $v0, 3
/* 32930 80042130 21808200 */  addu       $s0, $a0, $v0
/* 32934 80042134 2800A38F */  lw         $v1, 0x28($sp)
/* 32938 80042138 21200002 */  addu       $a0, $s0, $zero
/* 3293C 8004213C 080005A6 */  sh         $a1, 0x8($s0)
/* 32940 80042140 180005A6 */  sh         $a1, 0x18($s0)
/* 32944 80042144 2B280800 */  sltu       $a1, $zero, $t0
/* 32948 80042148 0A0006A6 */  sh         $a2, 0xA($s0)
/* 3294C 8004214C 100007A6 */  sh         $a3, 0x10($s0)
/* 32950 80042150 120006A6 */  sh         $a2, 0x12($s0)
/* 32954 80042154 200007A6 */  sh         $a3, 0x20($s0)
/* 32958 80042158 2130C300 */  addu       $a2, $a2, $v1
/* 3295C 8004215C 1A0006A6 */  sh         $a2, 0x1A($s0)
/* 32960 80042160 BBE6010C */  jal        SetSemiTrans
/* 32964 80042164 220006A6 */   sh        $a2, 0x22($s0)
/* 32968 80042168 0B80033C */  lui        $v1, %hi(g_nt)
/* 3296C 8004216C 16000296 */  lhu        $v0, 0x16($s0)
/* 32970 80042170 68BB6424 */  addiu      $a0, $v1, %lo(g_nt)
/* 32974 80042174 9FFF4230 */  andi       $v0, $v0, 0xFF9F
/* 32978 80042178 160002A6 */  sh         $v0, 0x16($s0)
/* 3297C 8004217C 68BB628C */  lw         $v0, %lo(g_nt)($v1)
/* 32980 80042180 00000000 */  nop
/* 32984 80042184 09004010 */  beqz       $v0, .L800421AC
/* 32988 80042188 21286000 */   addu      $a1, $v1, $zero
/* 3298C 8004218C 02008388 */  lwl        $v1, 0x2($a0)
/* 32990 80042190 68BBA28C */  lw         $v0, %lo(g_nt)($a1)
/* 32994 80042194 00000000 */  nop
/* 32998 80042198 00120200 */  sll        $v0, $v0, 8
/* 3299C 8004219C 020002AA */  swl        $v0, 0x2($s0)
/* 329A0 800421A0 020003AA */  swl        $v1, 0x2($s0)
/* 329A4 800421A4 6C080108 */  j          .L800421B0
/* 329A8 800421A8 00000000 */   nop
.L800421AC:
/* 329AC 800421AC 040090AC */  sw         $s0, 0x4($a0)
.L800421B0:
/* 329B0 800421B0 1400BF8F */  lw         $ra, 0x14($sp)
/* 329B4 800421B4 68BBB0AC */  sw         $s0, %lo(g_nt)($a1)
/* 329B8 800421B8 1000B08F */  lw         $s0, 0x10($sp)
/* 329BC 800421BC 0800E003 */  jr         $ra
/* 329C0 800421C0 1800BD27 */   addiu     $sp, $sp, 0x18
.size DrawCinematicSprite, . - DrawCinematicSprite