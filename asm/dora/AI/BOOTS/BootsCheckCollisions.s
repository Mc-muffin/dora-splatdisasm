.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BootsCheckCollisions
/* 260E4 800358E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 260E8 800358E8 1400B1AF */  sw         $s1, 0x14($sp)
/* 260EC 800358EC 21888000 */  addu       $s1, $a0, $zero
/* 260F0 800358F0 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 260F4 800358F4 2198A000 */  addu       $s3, $a1, $zero
/* 260F8 800358F8 21206002 */  addu       $a0, $s3, $zero
/* 260FC 800358FC 21282002 */  addu       $a1, $s1, $zero
/* 26100 80035900 2000BFAF */  sw         $ra, 0x20($sp)
/* 26104 80035904 1800B2AF */  sw         $s2, 0x18($sp)
/* 26108 80035908 3AFC000C */  jal        CollisionCheck
/* 2610C 8003590C 1000B0AF */   sw        $s0, 0x10($sp)
/* 26110 80035910 21204000 */  addu       $a0, $v0, $zero
/* 26114 80035914 6C003026 */  addiu      $s0, $s1, 0x6C
/* 26118 80035918 0A80023C */  lui        $v0, %hi(boots_aidata)
/* 2611C 8003591C 0980033C */  lui        $v1, %hi(BootsAndDoraRidingFlag)
/* 26120 80035920 EC42638C */  lw         $v1, %lo(BootsAndDoraRidingFlag)($v1)
/* 26124 80035924 00000000 */  nop
/* 26128 80035928 1E006014 */  bnez       $v1, .L800359A4
/* 2612C 8003592C 588F5224 */   addiu     $s2, $v0, %lo(boots_aidata)
/* 26130 80035930 1C008010 */  beqz       $a0, .L800359A4
/* 26134 80035934 21202002 */   addu      $a0, $s1, $zero
/* 26138 80035938 21286002 */  addu       $a1, $s3, $zero
/* 2613C 8003593C 21300002 */  addu       $a2, $s0, $zero
/* 26140 80035940 6B6A000C */  jal        StopActorMotionCollision
/* 26144 80035944 6C00A724 */   addiu     $a3, $a1, 0x6C
/* 26148 80035948 16004010 */  beqz       $v0, .L800359A4
/* 2614C 8003594C 21200002 */   addu      $a0, $s0, $zero
/* 26150 80035950 9C0020AE */  sw         $zero, 0x9C($s1)
/* 26154 80035954 A40020AE */  sw         $zero, 0xA4($s1)
/* 26158 80035958 8000028E */  lw         $v0, 0x80($s0)
/* 2615C 8003595C FEFF0324 */  addiu      $v1, $zero, -0x2
/* 26160 80035960 24104300 */  and        $v0, $v0, $v1
/* 26164 80035964 A7F7000C */  jal        UpdateMotionPhysics
/* 26168 80035968 800002AE */   sw        $v0, 0x80($s0)
/* 2616C 8003596C 21202002 */  addu       $a0, $s1, $zero
/* 26170 80035970 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 26174 80035974 21280002 */   addu      $a1, $s0, $zero
/* 26178 80035978 3000438E */  lw         $v1, 0x30($s2)
/* 2617C 8003597C 02000224 */  addiu      $v0, $zero, 0x2
/* 26180 80035980 05006210 */  beq        $v1, $v0, .L80035998
/* 26184 80035984 21202002 */   addu      $a0, $s1, $zero
/* 26188 80035988 01000524 */  addiu      $a1, $zero, 0x1
/* 2618C 8003598C 21300000 */  addu       $a2, $zero, $zero
/* 26190 80035990 60DE000C */  jal        CheckAnimLoop
/* 26194 80035994 2C018724 */   addiu     $a3, $a0, 0x12C
.L80035998:
/* 26198 80035998 01000224 */  addiu      $v0, $zero, 0x1
/* 2619C 8003599C 6ED60008 */  j          .L800359B8
/* 261A0 800359A0 300042AE */   sw        $v0, 0x30($s2)
.L800359A4:
/* 261A4 800359A4 300040AE */  sw         $zero, 0x30($s2)
/* 261A8 800359A8 8000028E */  lw         $v0, 0x80($s0)
/* 261AC 800359AC 00000000 */  nop
/* 261B0 800359B0 01004234 */  ori        $v0, $v0, 0x1
/* 261B4 800359B4 800002AE */  sw         $v0, 0x80($s0)
.L800359B8:
/* 261B8 800359B8 2000BF8F */  lw         $ra, 0x20($sp)
/* 261BC 800359BC 1C00B38F */  lw         $s3, 0x1C($sp)
/* 261C0 800359C0 1800B28F */  lw         $s2, 0x18($sp)
/* 261C4 800359C4 1400B18F */  lw         $s1, 0x14($sp)
/* 261C8 800359C8 1000B08F */  lw         $s0, 0x10($sp)
/* 261CC 800359CC 0800E003 */  jr         $ra
/* 261D0 800359D0 2800BD27 */   addiu     $sp, $sp, 0x28
.size BootsCheckCollisions, . - BootsCheckCollisions
