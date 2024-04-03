.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits7Service
/* 18D48 80028548 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18D4C 8002854C 0180043C */  lui        $a0, %hi(D_800116CC)
/* 18D50 80028550 CC168424 */  addiu      $a0, $a0, %lo(D_800116CC)
/* 18D54 80028554 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18D58 80028558 1000B0AF */  sw         $s0, 0x10($sp)
/* 18D5C 8002855C FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18D60 80028560 01000724 */  addiu      $a3, $zero, 0x1
/* 18D64 80028564 1400BFAF */  sw         $ra, 0x14($sp)
/* 18D68 80028568 30001026 */  addiu      $s0, $s0, 0x30
/* 18D6C 8002856C 7163010C */  jal        TextAddStringC
/* 18D70 80028570 21300002 */   addu      $a2, $s0, $zero
/* 18D74 80028574 0180043C */  lui        $a0, %hi(D_800116A0)
/* 18D78 80028578 A0168424 */  addiu      $a0, $a0, %lo(D_800116A0)
/* 18D7C 8002857C A0000524 */  addiu      $a1, $zero, 0xA0
/* 18D80 80028580 10000626 */  addiu      $a2, $s0, 0x10
/* 18D84 80028584 7163010C */  jal        TextAddStringC
/* 18D88 80028588 01000724 */   addiu     $a3, $zero, 0x1
/* 18D8C 8002858C 1400BF8F */  lw         $ra, 0x14($sp)
/* 18D90 80028590 1000B08F */  lw         $s0, 0x10($sp)
/* 18D94 80028594 0800E003 */  jr         $ra
/* 18D98 80028598 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits7Service, . - Credits7Service
