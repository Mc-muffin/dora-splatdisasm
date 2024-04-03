.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SwiperRestart
/* 27204 80036A04 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 27208 80036A08 1000B0AF */  sw         $s0, 0x10($sp)
/* 2720C 80036A0C 21808000 */  addu       $s0, $a0, $zero
/* 27210 80036A10 1400BFAF */  sw         $ra, 0x14($sp)
/* 27214 80036A14 2801028E */  lw         $v0, 0x128($s0)
/* 27218 80036A18 00000000 */  nop
/* 2721C 80036A1C 000040AC */  sw         $zero, 0x0($v0)
/* 27220 80036A20 080040AC */  sw         $zero, 0x8($v0)
/* 27224 80036A24 0C0040AC */  sw         $zero, 0xC($v0)
/* 27228 80036A28 040040AC */  sw         $zero, 0x4($v0)
/* 2722C 80036A2C 4400038E */  lw         $v1, 0x44($s0)
/* 27230 80036A30 64000224 */  addiu      $v0, $zero, 0x64
/* 27234 80036A34 5C0002AE */  sw         $v0, 0x5C($s0)
/* 27238 80036A38 0000658C */  lw         $a1, 0x0($v1)
/* 2723C 80036A3C 0400668C */  lw         $a2, 0x4($v1)
/* 27240 80036A40 0800678C */  lw         $a3, 0x8($v1)
/* 27244 80036A44 77FB000C */  jal        MotionPhysics_SetPosition
/* 27248 80036A48 6C000426 */   addiu     $a0, $s0, 0x6C
/* 2724C 80036A4C DC28010C */  jal        GenericReInit
/* 27250 80036A50 21200002 */   addu      $a0, $s0, $zero
/* 27254 80036A54 1400BF8F */  lw         $ra, 0x14($sp)
/* 27258 80036A58 1000B08F */  lw         $s0, 0x10($sp)
/* 2725C 80036A5C 0800E003 */  jr         $ra
/* 27260 80036A60 1800BD27 */   addiu     $sp, $sp, 0x18
.size SwiperRestart, . - SwiperRestart
