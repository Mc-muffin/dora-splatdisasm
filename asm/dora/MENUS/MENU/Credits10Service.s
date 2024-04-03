.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits10Service
/* 18EC4 800286C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18EC8 800286C8 0180043C */  lui        $a0, %hi(D_80011734)
/* 18ECC 800286CC 34178424 */  addiu      $a0, $a0, %lo(D_80011734)
/* 18ED0 800286D0 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18ED4 800286D4 1000B0AF */  sw         $s0, 0x10($sp)
/* 18ED8 800286D8 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18EDC 800286DC 01000724 */  addiu      $a3, $zero, 0x1
/* 18EE0 800286E0 1400BFAF */  sw         $ra, 0x14($sp)
/* 18EE4 800286E4 30001026 */  addiu      $s0, $s0, 0x30
/* 18EE8 800286E8 7163010C */  jal        TextAddStringC
/* 18EEC 800286EC 21300002 */   addu      $a2, $s0, $zero
/* 18EF0 800286F0 0180043C */  lui        $a0, %hi(D_80011750)
/* 18EF4 800286F4 50178424 */  addiu      $a0, $a0, %lo(D_80011750)
/* 18EF8 800286F8 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18EFC 800286FC 20000626 */  addiu      $a2, $s0, 0x20
/* 18F00 80028700 7163010C */  jal        TextAddStringC
/* 18F04 80028704 01000724 */   addiu     $a3, $zero, 0x1
/* 18F08 80028708 1400BF8F */  lw         $ra, 0x14($sp)
/* 18F0C 8002870C 1000B08F */  lw         $s0, 0x10($sp)
/* 18F10 80028710 0800E003 */  jr         $ra
/* 18F14 80028714 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits10Service, . - Credits10Service
