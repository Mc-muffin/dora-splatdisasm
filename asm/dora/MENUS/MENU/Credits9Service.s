.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits9Service
/* 18E4C 8002864C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18E50 80028650 0180043C */  lui        $a0, %hi(D_80011700)
/* 18E54 80028654 00178424 */  addiu      $a0, $a0, %lo(D_80011700)
/* 18E58 80028658 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18E5C 8002865C 01000724 */  addiu      $a3, $zero, 0x1
/* 18E60 80028660 1000B0AF */  sw         $s0, 0x10($sp)
/* 18E64 80028664 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18E68 80028668 64000224 */  addiu      $v0, $zero, 0x64
/* 18E6C 8002866C 1400BFAF */  sw         $ra, 0x14($sp)
/* 18E70 80028670 080882AF */  sw         $v0, %gp_rel(CreditsTimerMax)($gp)
/* 18E74 80028674 30001026 */  addiu      $s0, $s0, 0x30
/* 18E78 80028678 7163010C */  jal        TextAddStringC
/* 18E7C 8002867C 21300002 */   addu      $a2, $s0, $zero
/* 18E80 80028680 20001026 */  addiu      $s0, $s0, 0x20
/* 18E84 80028684 0180043C */  lui        $a0, %hi(D_80011710)
/* 18E88 80028688 10178424 */  addiu      $a0, $a0, %lo(D_80011710)
/* 18E8C 8002868C A0000524 */  addiu      $a1, $zero, 0xA0
/* 18E90 80028690 21300002 */  addu       $a2, $s0, $zero
/* 18E94 80028694 7163010C */  jal        TextAddStringC
/* 18E98 80028698 01000724 */   addiu     $a3, $zero, 0x1
/* 18E9C 8002869C 0180043C */  lui        $a0, %hi(D_80011720)
/* 18EA0 800286A0 20178424 */  addiu      $a0, $a0, %lo(D_80011720)
/* 18EA4 800286A4 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18EA8 800286A8 10000626 */  addiu      $a2, $s0, 0x10
/* 18EAC 800286AC 7163010C */  jal        TextAddStringC
/* 18EB0 800286B0 01000724 */   addiu     $a3, $zero, 0x1
/* 18EB4 800286B4 1400BF8F */  lw         $ra, 0x14($sp)
/* 18EB8 800286B8 1000B08F */  lw         $s0, 0x10($sp)
/* 18EBC 800286BC 0800E003 */  jr         $ra
/* 18EC0 800286C0 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits9Service, . - Credits9Service
