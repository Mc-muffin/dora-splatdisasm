.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitGroundPlane
/* 500E4 8005F8E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 500E8 8005F8E8 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 500EC 8005F8EC 20031324 */  addiu      $s3, $zero, 0x320
/* 500F0 8005F8F0 2000B4AF */  sw         $s4, 0x20($sp)
/* 500F4 8005F8F4 0C80143C */  lui        $s4, %hi(GroundPlaneVertices)
/* 500F8 8005F8F8 1400B1AF */  sw         $s1, 0x14($sp)
/* 500FC 8005F8FC FF001124 */  addiu      $s1, $zero, 0xFF
/* 50100 8005F900 0C80023C */  lui        $v0, %hi(GroundPlane)
/* 50104 8005F904 1000B0AF */  sw         $s0, 0x10($sp)
/* 50108 8005F908 90E85024 */  addiu      $s0, $v0, %lo(GroundPlane)
/* 5010C 8005F90C 1800B2AF */  sw         $s2, 0x18($sp)
/* 50110 8005F910 01001224 */  addiu      $s2, $zero, 0x1
/* 50114 8005F914 2400BFAF */  sw         $ra, 0x24($sp)
.L8005F918:
/* 50118 8005F918 03E7010C */  jal        SetPolyG4
/* 5011C 8005F91C 21200002 */   addu      $a0, $s0, $zero
/* 50120 8005F920 040011A2 */  sb         $s1, 0x4($s0)
/* 50124 8005F924 050000A2 */  sb         $zero, 0x5($s0)
/* 50128 8005F928 060000A2 */  sb         $zero, 0x6($s0)
/* 5012C 8005F92C 0C0011A2 */  sb         $s1, 0xC($s0)
/* 50130 8005F930 0D0000A2 */  sb         $zero, 0xD($s0)
/* 50134 8005F934 0E0000A2 */  sb         $zero, 0xE($s0)
/* 50138 8005F938 140000A2 */  sb         $zero, 0x14($s0)
/* 5013C 8005F93C 150000A2 */  sb         $zero, 0x15($s0)
/* 50140 8005F940 160011A2 */  sb         $s1, 0x16($s0)
/* 50144 8005F944 1C0000A2 */  sb         $zero, 0x1C($s0)
/* 50148 8005F948 1D0000A2 */  sb         $zero, 0x1D($s0)
/* 5014C 8005F94C 1E0011A2 */  sb         $s1, 0x1E($s0)
/* 50150 8005F950 FFFF5226 */  addiu      $s2, $s2, -0x1
/* 50154 8005F954 F0FF4106 */  bgez       $s2, .L8005F918
/* 50158 8005F958 24001026 */   addiu     $s0, $s0, 0x24
/* 5015C 8005F95C E0E88226 */  addiu      $v0, $s4, %lo(GroundPlaneVertices)
/* 50160 8005F960 E0E893A6 */  sh         $s3, %lo(GroundPlaneVertices)($s4)
/* 50164 8005F964 020040A4 */  sh         $zero, 0x2($v0)
/* 50168 8005F968 040053A4 */  sh         $s3, 0x4($v0)
/* 5016C 8005F96C 08004224 */  addiu      $v0, $v0, 0x8
/* 50170 8005F970 2400BF8F */  lw         $ra, 0x24($sp)
/* 50174 8005F974 2000B48F */  lw         $s4, 0x20($sp)
/* 50178 8005F978 23181300 */  negu       $v1, $s3
/* 5017C 8005F97C 000043A4 */  sh         $v1, 0x0($v0)
/* 50180 8005F980 020040A4 */  sh         $zero, 0x2($v0)
/* 50184 8005F984 040053A4 */  sh         $s3, 0x4($v0)
/* 50188 8005F988 08004224 */  addiu      $v0, $v0, 0x8
/* 5018C 8005F98C 000053A4 */  sh         $s3, 0x0($v0)
/* 50190 8005F990 1C00B38F */  lw         $s3, 0x1C($sp)
/* 50194 8005F994 1800B28F */  lw         $s2, 0x18($sp)
/* 50198 8005F998 1400B18F */  lw         $s1, 0x14($sp)
/* 5019C 8005F99C 1000B08F */  lw         $s0, 0x10($sp)
/* 501A0 8005F9A0 020040A4 */  sh         $zero, 0x2($v0)
/* 501A4 8005F9A4 040043A4 */  sh         $v1, 0x4($v0)
/* 501A8 8005F9A8 08004224 */  addiu      $v0, $v0, 0x8
/* 501AC 8005F9AC 000043A4 */  sh         $v1, 0x0($v0)
/* 501B0 8005F9B0 020040A4 */  sh         $zero, 0x2($v0)
/* 501B4 8005F9B4 040043A4 */  sh         $v1, 0x4($v0)
/* 501B8 8005F9B8 0800E003 */  jr         $ra
/* 501BC 8005F9BC 2800BD27 */   addiu     $sp, $sp, 0x28
.size InitGroundPlane, . - InitGroundPlane
