.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetupHUDCamera
/* EEF4 8001E6F4 88FFBD27 */  addiu      $sp, $sp, -0x78
/* EEF8 8001E6F8 5C00B1AF */  sw         $s1, 0x5C($sp)
/* EEFC 8001E6FC 7804918F */  lw         $s1, %gp_rel(htx)($gp)
/* EF00 8001E700 6C00B5AF */  sw         $s5, 0x6C($sp)
/* EF04 8001E704 0A80153C */  lui        $s5, %hi(GeomEnv)
/* EF08 8001E708 6000B2AF */  sw         $s2, 0x60($sp)
/* EF0C 8001E70C 40B1B226 */  addiu      $s2, $s5, %lo(GeomEnv)
/* EF10 8001E710 7000BFAF */  sw         $ra, 0x70($sp)
/* EF14 8001E714 6800B4AF */  sw         $s4, 0x68($sp)
/* EF18 8001E718 6400B3AF */  sw         $s3, 0x64($sp)
/* EF1C 8001E71C 5800B0AF */  sw         $s0, 0x58($sp)
/* EF20 8001E720 0980013C */  lui        $at, %hi(MoveVec)
/* EF24 8001E724 E44D25A4 */  sh         $a1, %lo(MoveVec)($at)
/* EF28 8001E728 0980013C */  lui        $at, %hi(MoveVec + 0x2)
/* EF2C 8001E72C E64D26A4 */  sh         $a2, %lo(MoveVec + 0x2)($at)
/* EF30 8001E730 0980013C */  lui        $at, %hi(MoveVec + 0x4)
/* EF34 8001E734 E84D27A4 */  sh         $a3, %lo(MoveVec + 0x4)($at)
/* EF38 8001E738 7000828C */  lw         $v0, 0x70($a0)
/* EF3C 8001E73C 7C04938F */  lw         $s3, %gp_rel(hty)($gp)
/* EF40 8001E740 21882202 */  addu       $s1, $s1, $v0
/* EF44 8001E744 080051AE */  sw         $s1, 0x8($s2)
/* EF48 8001E748 7400828C */  lw         $v0, 0x74($a0)
/* EF4C 8001E74C 8004908F */  lw         $s0, %gp_rel(htz)($gp)
/* EF50 8001E750 21986202 */  addu       $s3, $s3, $v0
/* EF54 8001E754 0C0053AE */  sw         $s3, 0xC($s2)
/* EF58 8001E758 7800828C */  lw         $v0, 0x78($a0)
/* EF5C 8001E75C 00000000 */  nop
/* EF60 8001E760 21800202 */  addu       $s0, $s0, $v0
/* EF64 8001E764 100050AE */  sw         $s0, 0x10($s2)
/* EF68 8001E768 7000828C */  lw         $v0, 0x70($a0)
/* EF6C 8001E76C 00000000 */  nop
/* EF70 8001E770 380042AE */  sw         $v0, 0x38($s2)
/* EF74 8001E774 7400948C */  lw         $s4, 0x74($a0)
/* EF78 8001E778 23882202 */  subu       $s1, $s1, $v0
/* EF7C 8001E77C 3C0054AE */  sw         $s4, 0x3C($s2)
/* EF80 8001E780 7800838C */  lw         $v1, 0x78($a0)
/* EF84 8001E784 21282002 */  addu       $a1, $s1, $zero
/* EF88 8001E788 23800302 */  subu       $s0, $s0, $v1
/* EF8C 8001E78C 21200002 */  addu       $a0, $s0, $zero
/* EF90 8001E790 63EF010C */  jal        ratan2
/* EF94 8001E794 400043AE */   sw        $v1, 0x40($s2)
/* EF98 8001E798 02002106 */  bgez       $s1, .L8001E7A4
/* EF9C 8001E79C 21202002 */   addu      $a0, $s1, $zero
/* EFA0 8001E7A0 23200400 */  negu       $a0, $a0
.L8001E7A4:
/* EFA4 8001E7A4 02000106 */  bgez       $s0, .L8001E7B0
/* EFA8 8001E7A8 21280002 */   addu      $a1, $s0, $zero
/* EFAC 8001E7AC 23280500 */  negu       $a1, $a1
.L8001E7B0:
/* EFB0 8001E7B0 00044224 */  addiu      $v0, $v0, 0x400
/* EFB4 8001E7B4 FEE9000C */  jal        DistApprox_2d
/* EFB8 8001E7B8 020042A6 */   sh        $v0, 0x2($s2)
/* EFBC 8001E7BC 21204000 */  addu       $a0, $v0, $zero
/* EFC0 8001E7C0 23987402 */  subu       $s3, $s3, $s4
/* EFC4 8001E7C4 63EF010C */  jal        ratan2
/* EFC8 8001E7C8 43281300 */   sra       $a1, $s3, 1
/* EFCC 8001E7CC 00FC4224 */  addiu      $v0, $v0, -0x400
/* EFD0 8001E7D0 4AE9000C */  jal        UpdateCameraMatrix
/* EFD4 8001E7D4 40B1A2A6 */   sh        $v0, %lo(GeomEnv)($s5)
/* EFD8 8001E7D8 7000BF8F */  lw         $ra, 0x70($sp)
/* EFDC 8001E7DC 6C00B58F */  lw         $s5, 0x6C($sp)
/* EFE0 8001E7E0 6800B48F */  lw         $s4, 0x68($sp)
/* EFE4 8001E7E4 6400B38F */  lw         $s3, 0x64($sp)
/* EFE8 8001E7E8 6000B28F */  lw         $s2, 0x60($sp)
/* EFEC 8001E7EC 5C00B18F */  lw         $s1, 0x5C($sp)
/* EFF0 8001E7F0 5800B08F */  lw         $s0, 0x58($sp)
/* EFF4 8001E7F4 0800E003 */  jr         $ra
/* EFF8 8001E7F8 7800BD27 */   addiu     $sp, $sp, 0x78
.size SetupHUDCamera, . - SetupHUDCamera
