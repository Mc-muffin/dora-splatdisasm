.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckActorCollideEnv
/* 784C 8001704C F012828F */  lw         $v0, %gp_rel(NumEnvRadiusCollisions)($gp)
/* 7850 80017050 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 7854 80017054 3000BEAF */  sw         $fp, 0x30($sp)
/* 7858 80017058 21F00000 */  addu       $fp, $zero, $zero
/* 785C 8001705C 3400BFAF */  sw         $ra, 0x34($sp)
/* 7860 80017060 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 7864 80017064 2800B6AF */  sw         $s6, 0x28($sp)
/* 7868 80017068 2400B5AF */  sw         $s5, 0x24($sp)
/* 786C 8001706C 2000B4AF */  sw         $s4, 0x20($sp)
/* 7870 80017070 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 7874 80017074 1800B2AF */  sw         $s2, 0x18($sp)
/* 7878 80017078 1400B1AF */  sw         $s1, 0x14($sp)
/* 787C 8001707C 1000B0AF */  sw         $s0, 0x10($sp)
/* 7880 80017080 3D004018 */  blez       $v0, .L80017178
/* 7884 80017084 3800A4AF */   sw        $a0, 0x38($sp)
/* 7888 80017088 6C009524 */  addiu      $s5, $a0, 0x6C
/* 788C 8001708C 00111E00 */  sll        $v0, $fp, 4
.L80017090:
/* 7890 80017090 F412838F */  lw         $v1, %gp_rel(EnvRadiusCollisionsPtr)($gp)
/* 7894 80017094 3800A58F */  lw         $a1, 0x38($sp)
/* 7898 80017098 0400B38E */  lw         $s3, 0x4($s5)
/* 789C 8001709C 0C00B48E */  lw         $s4, 0xC($s5)
/* 78A0 800170A0 21104300 */  addu       $v0, $v0, $v1
/* 78A4 800170A4 0000578C */  lw         $s7, 0x0($v0)
/* 78A8 800170A8 0C00448C */  lw         $a0, 0xC($v0)
/* 78AC 800170AC 5000A38C */  lw         $v1, 0x50($a1)
/* 78B0 800170B0 0800568C */  lw         $s6, 0x8($v0)
/* 78B4 800170B4 21906400 */  addu       $s2, $v1, $a0
/* 78B8 800170B8 23887702 */  subu       $s1, $s3, $s7
/* 78BC 800170BC 21202002 */  addu       $a0, $s1, $zero
/* 78C0 800170C0 23809602 */  subu       $s0, $s4, $s6
/* 78C4 800170C4 11EA000C */  jal        DistApprox_2d_actual
/* 78C8 800170C8 21280002 */   addu      $a1, $s0, $zero
/* 78CC 800170CC 05004004 */  bltz       $v0, .L800170E4
/* 78D0 800170D0 21202002 */   addu      $a0, $s1, $zero
/* 78D4 800170D4 11EA000C */  jal        DistApprox_2d_actual
/* 78D8 800170D8 21280002 */   addu      $a1, $s0, $zero
/* 78DC 800170DC 3D5C0008 */  j          .L800170F4
/* 78E0 800170E0 2A105200 */   slt       $v0, $v0, $s2
.L800170E4:
/* 78E4 800170E4 11EA000C */  jal        DistApprox_2d_actual
/* 78E8 800170E8 21280002 */   addu      $a1, $s0, $zero
/* 78EC 800170EC 23100200 */  negu       $v0, $v0
/* 78F0 800170F0 2A105200 */  slt        $v0, $v0, $s2
.L800170F4:
/* 78F4 800170F4 1B004010 */  beqz       $v0, .L80017164
/* 78F8 800170F8 2320D402 */   subu      $a0, $s6, $s4
/* 78FC 800170FC 63EF010C */  jal        ratan2
/* 7900 80017100 2328F302 */   subu      $a1, $s7, $s3
/* 7904 80017104 00085024 */  addiu      $s0, $v0, 0x800
/* 7908 80017108 FF0F1032 */  andi       $s0, $s0, 0xFFF
/* 790C 8001710C 47EB010C */  jal        rsin
/* 7910 80017110 21200002 */   addu      $a0, $s0, $zero
/* 7914 80017114 21200002 */  addu       $a0, $s0, $zero
/* 7918 80017118 7BEB010C */  jal        rcos
/* 791C 8001711C 21884000 */   addu      $s1, $v0, $zero
/* 7920 80017120 01005226 */  addiu      $s2, $s2, 0x1
/* 7924 80017124 18004202 */  mult       $s2, $v0
/* 7928 80017128 12100000 */  mflo       $v0
/* 792C 8001712C 00000000 */  nop
/* 7930 80017130 00000000 */  nop
/* 7934 80017134 18005102 */  mult       $s2, $s1
/* 7938 80017138 0400B3AE */  sw         $s3, 0x4($s5)
/* 793C 8001713C 0C00B4AE */  sw         $s4, 0xC($s5)
/* 7940 80017140 03130200 */  sra        $v0, $v0, 12
/* 7944 80017144 2110E202 */  addu       $v0, $s7, $v0
/* 7948 80017148 23105300 */  subu       $v0, $v0, $s3
/* 794C 8001714C 2000A2AE */  sw         $v0, 0x20($s5)
/* 7950 80017150 12880000 */  mflo       $s1
/* 7954 80017154 038B1100 */  sra        $s1, $s1, 12
/* 7958 80017158 2188D102 */  addu       $s1, $s6, $s1
/* 795C 8001715C 23883402 */  subu       $s1, $s1, $s4
/* 7960 80017160 2800B1AE */  sw         $s1, 0x28($s5)
.L80017164:
/* 7964 80017164 F012828F */  lw         $v0, %gp_rel(NumEnvRadiusCollisions)($gp)
/* 7968 80017168 0100DE27 */  addiu      $fp, $fp, 0x1
/* 796C 8001716C 2A10C203 */  slt        $v0, $fp, $v0
/* 7970 80017170 C7FF4014 */  bnez       $v0, .L80017090
/* 7974 80017174 00111E00 */   sll       $v0, $fp, 4
.L80017178:
/* 7978 80017178 3400BF8F */  lw         $ra, 0x34($sp)
/* 797C 8001717C 3000BE8F */  lw         $fp, 0x30($sp)
/* 7980 80017180 2C00B78F */  lw         $s7, 0x2C($sp)
/* 7984 80017184 2800B68F */  lw         $s6, 0x28($sp)
/* 7988 80017188 2400B58F */  lw         $s5, 0x24($sp)
/* 798C 8001718C 2000B48F */  lw         $s4, 0x20($sp)
/* 7990 80017190 1C00B38F */  lw         $s3, 0x1C($sp)
/* 7994 80017194 1800B28F */  lw         $s2, 0x18($sp)
/* 7998 80017198 1400B18F */  lw         $s1, 0x14($sp)
/* 799C 8001719C 1000B08F */  lw         $s0, 0x10($sp)
/* 79A0 800171A0 21100000 */  addu       $v0, $zero, $zero
/* 79A4 800171A4 0800E003 */  jr         $ra
/* 79A8 800171A8 3800BD27 */   addiu     $sp, $sp, 0x38
.size CheckActorCollideEnv, . - CheckActorCollideEnv