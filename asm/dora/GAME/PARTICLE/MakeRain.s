.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MakeRain
/* 200F4 8002F8F4 4008828F */  lw         $v0, %gp_rel(RainTimer)($gp)
/* 200F8 8002F8F8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 200FC 8002F8FC 1800BFAF */  sw         $ra, 0x18($sp)
/* 20100 8002F900 1400B1AF */  sw         $s1, 0x14($sp)
/* 20104 8002F904 1000B0AF */  sw         $s0, 0x10($sp)
/* 20108 8002F908 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 2010C 8002F90C 400882AF */  sw         $v0, %gp_rel(RainTimer)($gp)
/* 20110 8002F910 1F004104 */  bgez       $v0, .L8002F990
/* 20114 8002F914 0A80043C */   lui       $a0, %hi(ParticleTypeTable)
/* 20118 8002F918 D0848524 */  addiu      $a1, $a0, %lo(ParticleTypeTable)
/* 2011C 8002F91C 0980023C */  lui        $v0, %hi(ETActor)
/* 20120 8002F920 B05A5124 */  addiu      $s1, $v0, %lo(ETActor)
/* 20124 8002F924 21480000 */  addu       $t1, $zero, $zero
/* 20128 8002F928 A400A88C */  lw         $t0, 0xA4($a1)
/* 2012C 8002F92C 4408838F */  lw         $v1, %gp_rel(MaxRainTimer)($gp)
/* 20130 8002F930 7400228E */  lw         $v0, 0x74($s1)
/* 20134 8002F934 70002A8E */  lw         $t2, 0x70($s1)
/* 20138 8002F938 A000A58C */  lw         $a1, 0xA0($a1)
/* 2013C 8002F93C 7800278E */  lw         $a3, 0x78($s1)
/* 20140 8002F940 400883AF */  sw         $v1, %gp_rel(RainTimer)($gp)
/* 20144 8002F944 0900A018 */  blez       $a1, .L8002F96C
/* 20148 8002F948 00FE4624 */   addiu     $a2, $v0, -0x200
.L8002F94C:
/* 2014C 8002F94C 0000028D */  lw         $v0, 0x0($t0)
/* 20150 8002F950 00000000 */  nop
/* 20154 8002F954 06004010 */  beqz       $v0, .L8002F970
/* 20158 8002F958 21800001 */   addu      $s0, $t0, $zero
/* 2015C 8002F95C 01002925 */  addiu      $t1, $t1, 0x1
/* 20160 8002F960 2A102501 */  slt        $v0, $t1, $a1
/* 20164 8002F964 F9FF4014 */  bnez       $v0, .L8002F94C
/* 20168 8002F968 50000825 */   addiu     $t0, $t0, 0x50
.L8002F96C:
/* 2016C 8002F96C 21800000 */  addu       $s0, $zero, $zero
.L8002F970:
/* 20170 8002F970 07000012 */  beqz       $s0, .L8002F990
/* 20174 8002F974 D0848324 */   addiu     $v1, $a0, %lo(ParticleTypeTable)
/* 20178 8002F978 21200002 */  addu       $a0, $s0, $zero
/* 2017C 8002F97C AC00628C */  lw         $v0, 0xAC($v1)
/* 20180 8002F980 00000000 */  nop
/* 20184 8002F984 09F84000 */  jalr       $v0
/* 20188 8002F988 21284001 */   addu      $a1, $t2, $zero
/* 2018C 8002F98C 440011AE */  sw         $s1, 0x44($s0)
.L8002F990:
/* 20190 8002F990 1800BF8F */  lw         $ra, 0x18($sp)
/* 20194 8002F994 1400B18F */  lw         $s1, 0x14($sp)
/* 20198 8002F998 1000B08F */  lw         $s0, 0x10($sp)
/* 2019C 8002F99C 0800E003 */  jr         $ra
/* 201A0 8002F9A0 2000BD27 */   addiu     $sp, $sp, 0x20
.size MakeRain, . - MakeRain
