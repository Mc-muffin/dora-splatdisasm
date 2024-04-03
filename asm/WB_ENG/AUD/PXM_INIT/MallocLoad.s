.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MallocLoad
/* 44A50 80054250 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 44A54 80054254 1400B1AF */  sw         $s1, 0x14($sp)
/* 44A58 80054258 21880000 */  addu       $s1, $zero, $zero
/* 44A5C 8005425C 1800B2AF */  sw         $s2, 0x18($sp)
/* 44A60 80054260 21908000 */  addu       $s2, $a0, $zero
/* 44A64 80054264 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 44A68 80054268 2198A000 */  addu       $s3, $a1, $zero
/* 44A6C 8005426C 2000BFAF */  sw         $ra, 0x20($sp)
/* 44A70 80054270 B35C010C */  jal        GetSizeOfFile
/* 44A74 80054274 1000B0AF */   sw        $s0, 0x10($sp)
/* 44A78 80054278 21804000 */  addu       $s0, $v0, $zero
/* 44A7C 8005427C 08000012 */  beqz       $s0, .L800542A0
/* 44A80 80054280 00000000 */   nop
/* 44A84 80054284 2B3F010C */  jal        new_malloc
/* 44A88 80054288 21200002 */   addu      $a0, $s0, $zero
/* 44A8C 8005428C 21884000 */  addu       $s1, $v0, $zero
/* 44A90 80054290 03002012 */  beqz       $s1, .L800542A0
/* 44A94 80054294 21204002 */   addu      $a0, $s2, $zero
/* 44A98 80054298 495C010C */  jal        LoadFile
/* 44A9C 8005429C 21282002 */   addu      $a1, $s1, $zero
.L800542A0:
/* 44AA0 800542A0 02006012 */  beqz       $s3, .L800542AC
/* 44AA4 800542A4 21102002 */   addu      $v0, $s1, $zero
/* 44AA8 800542A8 000070AE */  sw         $s0, 0x0($s3)
.L800542AC:
/* 44AAC 800542AC 2000BF8F */  lw         $ra, 0x20($sp)
/* 44AB0 800542B0 1C00B38F */  lw         $s3, 0x1C($sp)
/* 44AB4 800542B4 1800B28F */  lw         $s2, 0x18($sp)
/* 44AB8 800542B8 1400B18F */  lw         $s1, 0x14($sp)
/* 44ABC 800542BC 1000B08F */  lw         $s0, 0x10($sp)
/* 44AC0 800542C0 0800E003 */  jr         $ra
/* 44AC4 800542C4 2800BD27 */   addiu     $sp, $sp, 0x28
.size MallocLoad, . - MallocLoad
