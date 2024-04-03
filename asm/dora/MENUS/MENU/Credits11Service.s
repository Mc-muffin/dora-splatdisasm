.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits11Service
/* 18F18 80028718 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18F1C 8002871C 0180043C */  lui        $a0, %hi(D_80011764)
/* 18F20 80028720 64178424 */  addiu      $a0, $a0, %lo(D_80011764)
/* 18F24 80028724 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18F28 80028728 1000B0AF */  sw         $s0, 0x10($sp)
/* 18F2C 8002872C FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18F30 80028730 01000724 */  addiu      $a3, $zero, 0x1
/* 18F34 80028734 1400BFAF */  sw         $ra, 0x14($sp)
/* 18F38 80028738 30001026 */  addiu      $s0, $s0, 0x30
/* 18F3C 8002873C 7163010C */  jal        TextAddStringC
/* 18F40 80028740 21300002 */   addu      $a2, $s0, $zero
/* 18F44 80028744 0180043C */  lui        $a0, %hi(D_80011770)
/* 18F48 80028748 70178424 */  addiu      $a0, $a0, %lo(D_80011770)
/* 18F4C 8002874C A0000524 */  addiu      $a1, $zero, 0xA0
/* 18F50 80028750 20000626 */  addiu      $a2, $s0, 0x20
/* 18F54 80028754 7163010C */  jal        TextAddStringC
/* 18F58 80028758 01000724 */   addiu     $a3, $zero, 0x1
/* 18F5C 8002875C 1400BF8F */  lw         $ra, 0x14($sp)
/* 18F60 80028760 1000B08F */  lw         $s0, 0x10($sp)
/* 18F64 80028764 0800E003 */  jr         $ra
/* 18F68 80028768 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits11Service, . - Credits11Service
