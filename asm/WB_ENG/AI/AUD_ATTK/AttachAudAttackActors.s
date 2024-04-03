.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AttachAudAttackActors
/* 351B4 800449B4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 351B8 800449B8 1000B0AF */  sw         $s0, 0x10($sp)
/* 351BC 800449BC 21808000 */  addu       $s0, $a0, $zero
/* 351C0 800449C0 20000424 */  addiu      $a0, $zero, 0x20
/* 351C4 800449C4 2000B4AF */  sw         $s4, 0x20($sp)
/* 351C8 800449C8 21A0A000 */  addu       $s4, $a1, $zero
/* 351CC 800449CC 2400BFAF */  sw         $ra, 0x24($sp)
/* 351D0 800449D0 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 351D4 800449D4 1800B2AF */  sw         $s2, 0x18($sp)
/* 351D8 800449D8 2B3F010C */  jal        new_malloc
/* 351DC 800449DC 1400B1AF */   sw        $s1, 0x14($sp)
/* 351E0 800449E0 21884000 */  addu       $s1, $v0, $zero
/* 351E4 800449E4 21900000 */  addu       $s2, $zero, $zero
/* 351E8 800449E8 0880133C */  lui        $s3, %hi(AudAttackSpawn)
/* 351EC 800449EC 000030AE */  sw         $s0, 0x0($s1)
/* 351F0 800449F0 04003026 */  addiu      $s0, $s1, 0x4
.L800449F4:
/* 351F4 800449F4 490A010C */  jal        InitSpawn
/* 351F8 800449F8 907F6426 */   addiu     $a0, $s3, %lo(AudAttackSpawn)
/* 351FC 800449FC 000002AE */  sw         $v0, 0x0($s0)
/* 35200 80044A00 280151AC */  sw         $s1, 0x128($v0)
/* 35204 80044A04 140034AE */  sw         $s4, 0x14($s1)
/* 35208 80044A08 640052AC */  sw         $s2, 0x64($v0)
/* 3520C 80044A0C 01005226 */  addiu      $s2, $s2, 0x1
/* 35210 80044A10 0300422A */  slti       $v0, $s2, 0x3
/* 35214 80044A14 F7FF4014 */  bnez       $v0, .L800449F4
/* 35218 80044A18 04001026 */   addiu     $s0, $s0, 0x4
/* 3521C 80044A1C 21102002 */  addu       $v0, $s1, $zero
/* 35220 80044A20 2400BF8F */  lw         $ra, 0x24($sp)
/* 35224 80044A24 2000B48F */  lw         $s4, 0x20($sp)
/* 35228 80044A28 1C00B38F */  lw         $s3, 0x1C($sp)
/* 3522C 80044A2C 1800B28F */  lw         $s2, 0x18($sp)
/* 35230 80044A30 1400B18F */  lw         $s1, 0x14($sp)
/* 35234 80044A34 1000B08F */  lw         $s0, 0x10($sp)
/* 35238 80044A38 0800E003 */  jr         $ra
/* 3523C 80044A3C 2800BD27 */   addiu     $sp, $sp, 0x28
.size AttachAudAttackActors, . - AttachAudAttackActors
