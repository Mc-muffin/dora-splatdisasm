.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits8Service
/* 18D9C 8002859C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18DA0 800285A0 0180043C */  lui        $a0, %hi(D_800116D8)
/* 18DA4 800285A4 D8168424 */  addiu      $a0, $a0, %lo(D_800116D8)
/* 18DA8 800285A8 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18DAC 800285AC 01000724 */  addiu      $a3, $zero, 0x1
/* 18DB0 800285B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 18DB4 800285B4 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18DB8 800285B8 C8000224 */  addiu      $v0, $zero, 0xC8
/* 18DBC 800285BC 1400BFAF */  sw         $ra, 0x14($sp)
/* 18DC0 800285C0 080882AF */  sw         $v0, %gp_rel(CreditsTimerMax)($gp)
/* 18DC4 800285C4 30001026 */  addiu      $s0, $s0, 0x30
/* 18DC8 800285C8 7163010C */  jal        TextAddStringC
/* 18DCC 800285CC 21300002 */   addu      $a2, $s0, $zero
/* 18DD0 800285D0 20001026 */  addiu      $s0, $s0, 0x20
/* 18DD4 800285D4 0180043C */  lui        $a0, %hi(D_800116A0)
/* 18DD8 800285D8 A0168424 */  addiu      $a0, $a0, %lo(D_800116A0)
/* 18DDC 800285DC A0000524 */  addiu      $a1, $zero, 0xA0
/* 18DE0 800285E0 21300002 */  addu       $a2, $s0, $zero
/* 18DE4 800285E4 7163010C */  jal        TextAddStringC
/* 18DE8 800285E8 01000724 */   addiu     $a3, $zero, 0x1
/* 18DEC 800285EC 10001026 */  addiu      $s0, $s0, 0x10
/* 18DF0 800285F0 0180043C */  lui        $a0, %hi(D_800116E8)
/* 18DF4 800285F4 E8168424 */  addiu      $a0, $a0, %lo(D_800116E8)
/* 18DF8 800285F8 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18DFC 800285FC 21300002 */  addu       $a2, $s0, $zero
/* 18E00 80028600 7163010C */  jal        TextAddStringC
/* 18E04 80028604 01000724 */   addiu     $a3, $zero, 0x1
/* 18E08 80028608 10001026 */  addiu      $s0, $s0, 0x10
/* 18E0C 8002860C 0180043C */  lui        $a0, %hi(D_800116C0)
/* 18E10 80028610 C0168424 */  addiu      $a0, $a0, %lo(D_800116C0)
/* 18E14 80028614 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18E18 80028618 21300002 */  addu       $a2, $s0, $zero
/* 18E1C 8002861C 7163010C */  jal        TextAddStringC
/* 18E20 80028620 01000724 */   addiu     $a3, $zero, 0x1
/* 18E24 80028624 0180043C */  lui        $a0, %hi(D_80011678)
/* 18E28 80028628 78168424 */  addiu      $a0, $a0, %lo(D_80011678)
/* 18E2C 8002862C A0000524 */  addiu      $a1, $zero, 0xA0
/* 18E30 80028630 10000626 */  addiu      $a2, $s0, 0x10
/* 18E34 80028634 7163010C */  jal        TextAddStringC
/* 18E38 80028638 01000724 */   addiu     $a3, $zero, 0x1
/* 18E3C 8002863C 1400BF8F */  lw         $ra, 0x14($sp)
/* 18E40 80028640 1000B08F */  lw         $s0, 0x10($sp)
/* 18E44 80028644 0800E003 */  jr         $ra
/* 18E48 80028648 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits8Service, . - Credits8Service
