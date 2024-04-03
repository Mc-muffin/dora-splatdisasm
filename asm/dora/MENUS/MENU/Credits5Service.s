.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits5Service
/* 18CA0 800284A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18CA4 800284A4 0180043C */  lui        $a0, %hi(D_80011690)
/* 18CA8 800284A8 90168424 */  addiu      $a0, $a0, %lo(D_80011690)
/* 18CAC 800284AC A0000524 */  addiu      $a1, $zero, 0xA0
/* 18CB0 800284B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 18CB4 800284B4 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18CB8 800284B8 01000724 */  addiu      $a3, $zero, 0x1
/* 18CBC 800284BC 1400BFAF */  sw         $ra, 0x14($sp)
/* 18CC0 800284C0 30001026 */  addiu      $s0, $s0, 0x30
/* 18CC4 800284C4 7163010C */  jal        TextAddStringC
/* 18CC8 800284C8 21300002 */   addu      $a2, $s0, $zero
/* 18CCC 800284CC 0180043C */  lui        $a0, %hi(D_800116A0)
/* 18CD0 800284D0 A0168424 */  addiu      $a0, $a0, %lo(D_800116A0)
/* 18CD4 800284D4 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18CD8 800284D8 20000626 */  addiu      $a2, $s0, 0x20
/* 18CDC 800284DC 7163010C */  jal        TextAddStringC
/* 18CE0 800284E0 01000724 */   addiu     $a3, $zero, 0x1
/* 18CE4 800284E4 1400BF8F */  lw         $ra, 0x14($sp)
/* 18CE8 800284E8 1000B08F */  lw         $s0, 0x10($sp)
/* 18CEC 800284EC 0800E003 */  jr         $ra
/* 18CF0 800284F0 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits5Service, . - Credits5Service
