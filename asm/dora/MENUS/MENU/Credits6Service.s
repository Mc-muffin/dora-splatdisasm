.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits6Service
/* 18CF4 800284F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18CF8 800284F8 0180043C */  lui        $a0, %hi(D_800116B4)
/* 18CFC 800284FC B4168424 */  addiu      $a0, $a0, %lo(D_800116B4)
/* 18D00 80028500 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18D04 80028504 1000B0AF */  sw         $s0, 0x10($sp)
/* 18D08 80028508 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18D0C 8002850C 01000724 */  addiu      $a3, $zero, 0x1
/* 18D10 80028510 1400BFAF */  sw         $ra, 0x14($sp)
/* 18D14 80028514 30001026 */  addiu      $s0, $s0, 0x30
/* 18D18 80028518 7163010C */  jal        TextAddStringC
/* 18D1C 8002851C 21300002 */   addu      $a2, $s0, $zero
/* 18D20 80028520 0180043C */  lui        $a0, %hi(D_800116C0)
/* 18D24 80028524 C0168424 */  addiu      $a0, $a0, %lo(D_800116C0)
/* 18D28 80028528 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18D2C 8002852C 20000626 */  addiu      $a2, $s0, 0x20
/* 18D30 80028530 7163010C */  jal        TextAddStringC
/* 18D34 80028534 01000724 */   addiu     $a3, $zero, 0x1
/* 18D38 80028538 1400BF8F */  lw         $ra, 0x14($sp)
/* 18D3C 8002853C 1000B08F */  lw         $s0, 0x10($sp)
/* 18D40 80028540 0800E003 */  jr         $ra
/* 18D44 80028544 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits6Service, . - Credits6Service
