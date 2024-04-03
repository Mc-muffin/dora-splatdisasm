.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DecrementWorld
/* 185BC 80027DBC 8407828F */  lw         $v0, %gp_rel(gmenuworld)($gp)
/* 185C0 80027DC0 00000000 */  nop
/* 185C4 80027DC4 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 185C8 80027DC8 02004104 */  bgez       $v0, .L80027DD4
/* 185CC 80027DCC 00000000 */   nop
/* 185D0 80027DD0 08000224 */  addiu      $v0, $zero, 0x8
.L80027DD4:
/* 185D4 80027DD4 840782AF */  sw         $v0, %gp_rel(gmenuworld)($gp)
/* 185D8 80027DD8 01000224 */  addiu      $v0, $zero, 0x1
/* 185DC 80027DDC 880780AF */  sw         $zero, %gp_rel(gmenulevel)($gp)
/* 185E0 80027DE0 900782AF */  sw         $v0, %gp_rel(levelexists)($gp)
/* 185E4 80027DE4 0800E003 */  jr         $ra
/* 185E8 80027DE8 00000000 */   nop
.size DecrementWorld, . - DecrementWorld
