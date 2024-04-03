.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits13Service
/* 18FDC 800287DC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18FE0 800287E0 0180043C */  lui        $a0, %hi(D_800117B0)
/* 18FE4 800287E4 B0178424 */  addiu      $a0, $a0, %lo(D_800117B0)
/* 18FE8 800287E8 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18FEC 800287EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 18FF0 800287F0 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18FF4 800287F4 01000724 */  addiu      $a3, $zero, 0x1
/* 18FF8 800287F8 1400BFAF */  sw         $ra, 0x14($sp)
/* 18FFC 800287FC 30001026 */  addiu      $s0, $s0, 0x30
/* 19000 80028800 7163010C */  jal        TextAddStringC
/* 19004 80028804 21300002 */   addu      $a2, $s0, $zero
/* 19008 80028808 0980043C */  lui        $a0, %hi(D_80094A7C)
/* 1900C 8002880C 7C4A8424 */  addiu      $a0, $a0, %lo(D_80094A7C)
/* 19010 80028810 A0000524 */  addiu      $a1, $zero, 0xA0
/* 19014 80028814 20000626 */  addiu      $a2, $s0, 0x20
/* 19018 80028818 7163010C */  jal        TextAddStringC
/* 1901C 8002881C 01000724 */   addiu     $a3, $zero, 0x1
/* 19020 80028820 1400BF8F */  lw         $ra, 0x14($sp)
/* 19024 80028824 1000B08F */  lw         $s0, 0x10($sp)
/* 19028 80028828 0800E003 */  jr         $ra
/* 1902C 8002882C 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits13Service, . - Credits13Service
