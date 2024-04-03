.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ETMenuBrains
/* 182E8 80027AE8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 182EC 80027AEC 1400B1AF */  sw         $s1, 0x14($sp)
/* 182F0 80027AF0 21888000 */  addu       $s1, $a0, $zero
/* 182F4 80027AF4 1800BFAF */  sw         $ra, 0x18($sp)
/* 182F8 80027AF8 65E2000C */  jal        AnimateActor
/* 182FC 80027AFC 1000B0AF */   sw        $s0, 0x10($sp)
/* 18300 80027B00 0980033C */  lui        $v1, %hi(CheckIdle)
/* 18304 80027B04 6843638C */  lw         $v1, %lo(CheckIdle)($v1)
/* 18308 80027B08 00000000 */  nop
/* 1830C 80027B0C FFFF6324 */  addiu      $v1, $v1, -0x1
/* 18310 80027B10 0980013C */  lui        $at, %hi(CheckIdle)
/* 18314 80027B14 684323AC */  sw         $v1, %lo(CheckIdle)($at)
/* 18318 80027B18 10006104 */  bgez       $v1, .L80027B5C
/* 1831C 80027B1C 00000000 */   nop
/* 18320 80027B20 D140010C */  jal        u32Random
/* 18324 80027B24 2C010424 */   addiu     $a0, $zero, 0x12C
/* 18328 80027B28 03000424 */  addiu      $a0, $zero, 0x3
/* 1832C 80027B2C F4014224 */  addiu      $v0, $v0, 0x1F4
/* 18330 80027B30 0880103C */  lui        $s0, %hi(IdleAnimTable)
/* 18334 80027B34 0980013C */  lui        $at, %hi(CheckIdle)
/* 18338 80027B38 684322AC */  sw         $v0, %lo(CheckIdle)($at)
/* 1833C 80027B3C D140010C */  jal        u32Random
/* 18340 80027B40 48691026 */   addiu     $s0, $s0, %lo(IdleAnimTable)
/* 18344 80027B44 21202002 */  addu       $a0, $s1, $zero
/* 18348 80027B48 80100200 */  sll        $v0, $v0, 2
/* 1834C 80027B4C 21105000 */  addu       $v0, $v0, $s0
/* 18350 80027B50 0000458C */  lw         $a1, 0x0($v0)
/* 18354 80027B54 60DE000C */  jal        CheckAnimLoop
/* 18358 80027B58 21300000 */   addu      $a2, $zero, $zero
.L80027B5C:
/* 1835C 80027B5C 10DE000C */  jal        CheckNextAnim
/* 18360 80027B60 21202002 */   addu      $a0, $s1, $zero
/* 18364 80027B64 0980043C */  lui        $a0, %hi(ETActor)
/* 18368 80027B68 4B6A000C */  jal        ETLookat
/* 1836C 80027B6C B05A8424 */   addiu     $a0, $a0, %lo(ETActor)
/* 18370 80027B70 1800BF8F */  lw         $ra, 0x18($sp)
/* 18374 80027B74 1400B18F */  lw         $s1, 0x14($sp)
/* 18378 80027B78 1000B08F */  lw         $s0, 0x10($sp)
/* 1837C 80027B7C 0800E003 */  jr         $ra
/* 18380 80027B80 2000BD27 */   addiu     $sp, $sp, 0x20
.size ETMenuBrains, . - ETMenuBrains
