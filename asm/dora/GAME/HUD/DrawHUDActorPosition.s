.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawHUDActorPosition
/* E850 8001E050 88FFBD27 */  addiu      $sp, $sp, -0x78
/* E854 8001E054 5C00B1AF */  sw         $s1, 0x5C($sp)
/* E858 8001E058 7804918F */  lw         $s1, %gp_rel(htx)($gp)
/* E85C 8001E05C 6400B3AF */  sw         $s3, 0x64($sp)
/* E860 8001E060 21988000 */  addu       $s3, $a0, $zero
/* E864 8001E064 7000B6AF */  sw         $s6, 0x70($sp)
/* E868 8001E068 0A80163C */  lui        $s6, %hi(GeomEnv)
/* E86C 8001E06C 6000B2AF */  sw         $s2, 0x60($sp)
/* E870 8001E070 40B1D226 */  addiu      $s2, $s6, %lo(GeomEnv)
/* E874 8001E074 7400BFAF */  sw         $ra, 0x74($sp)
/* E878 8001E078 6C00B5AF */  sw         $s5, 0x6C($sp)
/* E87C 8001E07C 6800B4AF */  sw         $s4, 0x68($sp)
/* E880 8001E080 5800B0AF */  sw         $s0, 0x58($sp)
/* E884 8001E084 0980013C */  lui        $at, %hi(MoveVec)
/* E888 8001E088 E44D25A4 */  sh         $a1, %lo(MoveVec)($at)
/* E88C 8001E08C 0980013C */  lui        $at, %hi(MoveVec + 0x2)
/* E890 8001E090 E64D26A4 */  sh         $a2, %lo(MoveVec + 0x2)($at)
/* E894 8001E094 0980013C */  lui        $at, %hi(MoveVec + 0x4)
/* E898 8001E098 E84D27A4 */  sh         $a3, %lo(MoveVec + 0x4)($at)
/* E89C 8001E09C 7000628E */  lw         $v0, 0x70($s3)
/* E8A0 8001E0A0 7C04948F */  lw         $s4, %gp_rel(hty)($gp)
/* E8A4 8001E0A4 21882202 */  addu       $s1, $s1, $v0
/* E8A8 8001E0A8 080051AE */  sw         $s1, 0x8($s2)
/* E8AC 8001E0AC 7400628E */  lw         $v0, 0x74($s3)
/* E8B0 8001E0B0 8004908F */  lw         $s0, %gp_rel(htz)($gp)
/* E8B4 8001E0B4 21A08202 */  addu       $s4, $s4, $v0
/* E8B8 8001E0B8 0C0054AE */  sw         $s4, 0xC($s2)
/* E8BC 8001E0BC 7800628E */  lw         $v0, 0x78($s3)
/* E8C0 8001E0C0 00000000 */  nop
/* E8C4 8001E0C4 21800202 */  addu       $s0, $s0, $v0
/* E8C8 8001E0C8 100050AE */  sw         $s0, 0x10($s2)
/* E8CC 8001E0CC 7000628E */  lw         $v0, 0x70($s3)
/* E8D0 8001E0D0 00000000 */  nop
/* E8D4 8001E0D4 380042AE */  sw         $v0, 0x38($s2)
/* E8D8 8001E0D8 7400758E */  lw         $s5, 0x74($s3)
/* E8DC 8001E0DC 23882202 */  subu       $s1, $s1, $v0
/* E8E0 8001E0E0 3C0055AE */  sw         $s5, 0x3C($s2)
/* E8E4 8001E0E4 7800638E */  lw         $v1, 0x78($s3)
/* E8E8 8001E0E8 21282002 */  addu       $a1, $s1, $zero
/* E8EC 8001E0EC 23800302 */  subu       $s0, $s0, $v1
/* E8F0 8001E0F0 21200002 */  addu       $a0, $s0, $zero
/* E8F4 8001E0F4 63EF010C */  jal        ratan2
/* E8F8 8001E0F8 400043AE */   sw        $v1, 0x40($s2)
/* E8FC 8001E0FC 02002106 */  bgez       $s1, .L8001E108
/* E900 8001E100 21202002 */   addu      $a0, $s1, $zero
/* E904 8001E104 23200400 */  negu       $a0, $a0
.L8001E108:
/* E908 8001E108 02000106 */  bgez       $s0, .L8001E114
/* E90C 8001E10C 21280002 */   addu      $a1, $s0, $zero
/* E910 8001E110 23280500 */  negu       $a1, $a1
.L8001E114:
/* E914 8001E114 00044224 */  addiu      $v0, $v0, 0x400
/* E918 8001E118 FEE9000C */  jal        DistApprox_2d
/* E91C 8001E11C 020042A6 */   sh        $v0, 0x2($s2)
/* E920 8001E120 21204000 */  addu       $a0, $v0, $zero
/* E924 8001E124 23A09502 */  subu       $s4, $s4, $s5
/* E928 8001E128 63EF010C */  jal        ratan2
/* E92C 8001E12C 43281400 */   sra       $a1, $s4, 1
/* E930 8001E130 00FC4224 */  addiu      $v0, $v0, -0x400
/* E934 8001E134 4AE9000C */  jal        UpdateCameraMatrix
/* E938 8001E138 40B1C2A6 */   sh        $v0, %lo(GeomEnv)($s6)
/* E93C 8001E13C FF79000C */  jal        DrawHUDActor
/* E940 8001E140 21206002 */   addu      $a0, $s3, $zero
/* E944 8001E144 7400BF8F */  lw         $ra, 0x74($sp)
/* E948 8001E148 7000B68F */  lw         $s6, 0x70($sp)
/* E94C 8001E14C 6C00B58F */  lw         $s5, 0x6C($sp)
/* E950 8001E150 6800B48F */  lw         $s4, 0x68($sp)
/* E954 8001E154 6400B38F */  lw         $s3, 0x64($sp)
/* E958 8001E158 6000B28F */  lw         $s2, 0x60($sp)
/* E95C 8001E15C 5C00B18F */  lw         $s1, 0x5C($sp)
/* E960 8001E160 5800B08F */  lw         $s0, 0x58($sp)
/* E964 8001E164 0800E003 */  jr         $ra
/* E968 8001E168 7800BD27 */   addiu     $sp, $sp, 0x78
.size DrawHUDActorPosition, . - DrawHUDActorPosition
