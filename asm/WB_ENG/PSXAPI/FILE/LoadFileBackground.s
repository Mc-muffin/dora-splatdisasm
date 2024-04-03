.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadFileBackground
/* 47A50 80057250 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 47A54 80057254 1800B2AF */  sw         $s2, 0x18($sp)
/* 47A58 80057258 2190A000 */  addu       $s2, $a1, $zero
/* 47A5C 8005725C 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 47A60 80057260 2198C000 */  addu       $s3, $a2, $zero
/* 47A64 80057264 2000BFAF */  sw         $ra, 0x20($sp)
/* 47A68 80057268 1400B1AF */  sw         $s1, 0x14($sp)
/* 47A6C 8005726C F05C010C */  jal        CDPCFile_FileOpen
/* 47A70 80057270 1000B0AF */   sw        $s0, 0x10($sp)
/* 47A74 80057274 05004016 */  bnez       $s2, .L8005728C
/* 47A78 80057278 21884000 */   addu      $s1, $v0, $zero
/* 47A7C 8005727C 2B3F010C */  jal        new_malloc
/* 47A80 80057280 21202002 */   addu      $a0, $s1, $zero
/* 47A84 80057284 A45C0108 */  j          .L80057290
/* 47A88 80057288 21804000 */   addu      $s0, $v0, $zero
.L8005728C:
/* 47A8C 8005728C 21804002 */  addu       $s0, $s2, $zero
.L80057290:
/* 47A90 80057290 21200000 */  addu       $a0, $zero, $zero
/* 47A94 80057294 21280002 */  addu       $a1, $s0, $zero
/* 47A98 80057298 21302002 */  addu       $a2, $s1, $zero
/* 47A9C 8005729C 065D010C */  jal        CDPCFile_Read
/* 47AA0 800572A0 21386002 */   addu      $a3, $s3, $zero
/* 47AA4 800572A4 02004012 */  beqz       $s2, .L800572B0
/* 47AA8 800572A8 21100002 */   addu      $v0, $s0, $zero
/* 47AAC 800572AC 21102002 */  addu       $v0, $s1, $zero
.L800572B0:
/* 47AB0 800572B0 2000BF8F */  lw         $ra, 0x20($sp)
/* 47AB4 800572B4 1C00B38F */  lw         $s3, 0x1C($sp)
/* 47AB8 800572B8 1800B28F */  lw         $s2, 0x18($sp)
/* 47ABC 800572BC 1400B18F */  lw         $s1, 0x14($sp)
/* 47AC0 800572C0 1000B08F */  lw         $s0, 0x10($sp)
/* 47AC4 800572C4 0800E003 */  jr         $ra
/* 47AC8 800572C8 2800BD27 */   addiu     $sp, $sp, 0x28
.size LoadFileBackground, . - LoadFileBackground
