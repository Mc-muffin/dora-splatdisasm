.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_calloc
/* 41230 80050A30 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 41234 80050A34 1000B0AF */  sw         $s0, 0x10($sp)
/* 41238 80050A38 21808000 */  addu       $s0, $a0, $zero
/* 4123C 80050A3C 1400B1AF */  sw         $s1, 0x14($sp)
/* 41240 80050A40 1800BFAF */  sw         $ra, 0x18($sp)
/* 41244 80050A44 2B3F010C */  jal        new_malloc
/* 41248 80050A48 FF00B130 */   andi      $s1, $a1, 0xFF
/* 4124C 80050A4C 0600001A */  blez       $s0, .L80050A68
/* 41250 80050A50 21184000 */   addu      $v1, $v0, $zero
/* 41254 80050A54 21200002 */  addu       $a0, $s0, $zero
.L80050A58:
/* 41258 80050A58 000071A0 */  sb         $s1, 0x0($v1)
/* 4125C 80050A5C FFFF8424 */  addiu      $a0, $a0, -0x1
/* 41260 80050A60 FDFF8014 */  bnez       $a0, .L80050A58
/* 41264 80050A64 01006324 */   addiu     $v1, $v1, 0x1
.L80050A68:
/* 41268 80050A68 1800BF8F */  lw         $ra, 0x18($sp)
/* 4126C 80050A6C 1400B18F */  lw         $s1, 0x14($sp)
/* 41270 80050A70 1000B08F */  lw         $s0, 0x10($sp)
/* 41274 80050A74 0800E003 */  jr         $ra
/* 41278 80050A78 2000BD27 */   addiu     $sp, $sp, 0x20
.size chunk_calloc, . - chunk_calloc
