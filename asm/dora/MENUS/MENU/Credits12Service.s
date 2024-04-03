.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits12Service
/* 18F6C 8002876C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18F70 80028770 0180043C */  lui        $a0, %hi(D_80011780)
/* 18F74 80028774 80178424 */  addiu      $a0, $a0, %lo(D_80011780)
/* 18F78 80028778 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18F7C 8002877C 1000B0AF */  sw         $s0, 0x10($sp)
/* 18F80 80028780 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18F84 80028784 01000724 */  addiu      $a3, $zero, 0x1
/* 18F88 80028788 1400BFAF */  sw         $ra, 0x14($sp)
/* 18F8C 8002878C 30001026 */  addiu      $s0, $s0, 0x30
/* 18F90 80028790 7163010C */  jal        TextAddStringC
/* 18F94 80028794 21300002 */   addu      $a2, $s0, $zero
/* 18F98 80028798 10001026 */  addiu      $s0, $s0, 0x10
/* 18F9C 8002879C 0180043C */  lui        $a0, %hi(D_800117A4)
/* 18FA0 800287A0 A4178424 */  addiu      $a0, $a0, %lo(D_800117A4)
/* 18FA4 800287A4 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18FA8 800287A8 21300002 */  addu       $a2, $s0, $zero
/* 18FAC 800287AC 7163010C */  jal        TextAddStringC
/* 18FB0 800287B0 01000724 */   addiu     $a3, $zero, 0x1
/* 18FB4 800287B4 0980043C */  lui        $a0, %hi(D_80094A74)
/* 18FB8 800287B8 744A8424 */  addiu      $a0, $a0, %lo(D_80094A74)
/* 18FBC 800287BC A0000524 */  addiu      $a1, $zero, 0xA0
/* 18FC0 800287C0 20000626 */  addiu      $a2, $s0, 0x20
/* 18FC4 800287C4 7163010C */  jal        TextAddStringC
/* 18FC8 800287C8 01000724 */   addiu     $a3, $zero, 0x1
/* 18FCC 800287CC 1400BF8F */  lw         $ra, 0x14($sp)
/* 18FD0 800287D0 1000B08F */  lw         $s0, 0x10($sp)
/* 18FD4 800287D4 0800E003 */  jr         $ra
/* 18FD8 800287D8 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits12Service, . - Credits12Service
