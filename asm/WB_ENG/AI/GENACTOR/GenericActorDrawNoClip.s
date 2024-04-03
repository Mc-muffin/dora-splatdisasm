.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GenericActorDrawNoClip
/* 3A8F0 8004A0F0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3A8F4 8004A0F4 1800B2AF */  sw         $s2, 0x18($sp)
/* 3A8F8 8004A0F8 21908000 */  addu       $s2, $a0, $zero
/* 3A8FC 8004A0FC 2000BFAF */  sw         $ra, 0x20($sp)
/* 3A900 8004A100 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 3A904 8004A104 1400B1AF */  sw         $s1, 0x14($sp)
/* 3A908 8004A108 1000B0AF */  sw         $s0, 0x10($sp)
/* 3A90C 8004A10C 4400438E */  lw         $v1, 0x44($s2)
/* 3A910 8004A110 00000000 */  nop
/* 3A914 8004A114 1C00648C */  lw         $a0, 0x1C($v1)
/* 3A918 8004A118 8000023C */  lui        $v0, (0x800000 >> 16)
/* 3A91C 8004A11C 24108200 */  and        $v0, $a0, $v0
/* 3A920 8004A120 07004010 */  beqz       $v0, .L8004A140
/* 3A924 8004A124 21980000 */   addu      $s3, $zero, $zero
/* 3A928 8004A128 2401428E */  lw         $v0, 0x124($s2)
/* 3A92C 8004A12C 00000000 */  nop
/* 3A930 8004A130 2C00438C */  lw         $v1, 0x2C($v0)
/* 3A934 8004A134 3000538C */  lw         $s3, 0x30($v0)
/* 3A938 8004A138 2D006014 */  bnez       $v1, .L8004A1F0
/* 3A93C 8004A13C 00000000 */   nop
.L8004A140:
/* 3A940 8004A140 1000023C */  lui        $v0, (0x100000 >> 16)
/* 3A944 8004A144 24108200 */  and        $v0, $a0, $v0
/* 3A948 8004A148 29004014 */  bnez       $v0, .L8004A1F0
/* 3A94C 8004A14C 21100000 */   addu      $v0, $zero, $zero
/* 3A950 8004A150 1000428E */  lw         $v0, 0x10($s2)
/* 3A954 8004A154 00000000 */  nop
/* 3A958 8004A158 00044230 */  andi       $v0, $v0, 0x400
/* 3A95C 8004A15C 24004010 */  beqz       $v0, .L8004A1F0
/* 3A960 8004A160 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 3A964 8004A164 258C010C */  jal        GetActorDepth
/* 3A968 8004A168 21204002 */   addu      $a0, $s2, $zero
/* 3A96C 8004A16C 21884000 */  addu       $s1, $v0, $zero
/* 3A970 8004A170 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3A974 8004A174 02002216 */  bne        $s1, $v0, .L8004A180
/* 3A978 8004A178 00000000 */   nop
/* 3A97C 8004A17C 21880000 */  addu       $s1, $zero, $zero
.L8004A180:
/* 3A980 8004A180 680051AE */  sw         $s1, 0x68($s2)
/* 3A984 8004A184 21204002 */  addu       $a0, $s2, $zero
/* 3A988 8004A188 B19A010C */  jal        DrawActor
/* 3A98C 8004A18C 21282002 */   addu      $a1, $s1, $zero
/* 3A990 8004A190 21204002 */  addu       $a0, $s2, $zero
/* 3A994 8004A194 3F89010C */  jal        DrawActorShadow
/* 3A998 8004A198 21282002 */   addu      $a1, $s1, $zero
/* 3A99C 8004A19C 13006012 */  beqz       $s3, .L8004A1EC
/* 3A9A0 8004A1A0 21204002 */   addu      $a0, $s2, $zero
/* 3A9A4 8004A1A4 6687010C */  jal        GetSphereCenter
/* 3A9A8 8004A1A8 21280000 */   addu      $a1, $zero, $zero
/* 3A9AC 8004A1AC 6C007026 */  addiu      $s0, $s3, 0x6C
/* 3A9B0 8004A1B0 0000458C */  lw         $a1, 0x0($v0)
/* 3A9B4 8004A1B4 0400468C */  lw         $a2, 0x4($v0)
/* 3A9B8 8004A1B8 0800478C */  lw         $a3, 0x8($v0)
/* 3A9BC 8004A1BC 77FB000C */  jal        MotionPhysics_SetPosition
/* 3A9C0 8004A1C0 21200002 */   addu      $a0, $s0, $zero
/* 3A9C4 8004A1C4 21206002 */  addu       $a0, $s3, $zero
/* 3A9C8 8004A1C8 9B87010C */  jal        UpdateMotionPhysicsToActor
/* 3A9CC 8004A1CC 21280002 */   addu      $a1, $s0, $zero
/* 3A9D0 8004A1D0 21206002 */  addu       $a0, $s3, $zero
/* 3A9D4 8004A1D4 21282002 */  addu       $a1, $s1, $zero
/* 3A9D8 8004A1D8 5400438E */  lw         $v1, 0x54($s2)
/* 3A9DC 8004A1DC 01000224 */  addiu      $v0, $zero, 0x1
/* 3A9E0 8004A1E0 380062AE */  sw         $v0, 0x38($s3)
/* 3A9E4 8004A1E4 B19A010C */  jal        DrawActor
/* 3A9E8 8004A1E8 540063AE */   sw        $v1, 0x54($s3)
.L8004A1EC:
/* 3A9EC 8004A1EC 21102002 */  addu       $v0, $s1, $zero
.L8004A1F0:
/* 3A9F0 8004A1F0 2000BF8F */  lw         $ra, 0x20($sp)
/* 3A9F4 8004A1F4 1C00B38F */  lw         $s3, 0x1C($sp)
/* 3A9F8 8004A1F8 1800B28F */  lw         $s2, 0x18($sp)
/* 3A9FC 8004A1FC 1400B18F */  lw         $s1, 0x14($sp)
/* 3AA00 8004A200 1000B08F */  lw         $s0, 0x10($sp)
/* 3AA04 8004A204 0800E003 */  jr         $ra
/* 3AA08 8004A208 2800BD27 */   addiu     $sp, $sp, 0x28
.size GenericActorDrawNoClip, . - GenericActorDrawNoClip
