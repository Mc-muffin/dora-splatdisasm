.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits2Service
/* 18B88 80028388 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18B8C 8002838C 0180043C */  lui        $a0, %hi(D_8001160C)
/* 18B90 80028390 0C168424 */  addiu      $a0, $a0, %lo(D_8001160C)
/* 18B94 80028394 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18B98 80028398 1000B0AF */  sw         $s0, 0x10($sp)
/* 18B9C 8002839C FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18BA0 800283A0 01000724 */  addiu      $a3, $zero, 0x1
/* 18BA4 800283A4 1400BFAF */  sw         $ra, 0x14($sp)
/* 18BA8 800283A8 30001026 */  addiu      $s0, $s0, 0x30
/* 18BAC 800283AC 7163010C */  jal        TextAddStringC
/* 18BB0 800283B0 21300002 */   addu      $a2, $s0, $zero
/* 18BB4 800283B4 0180043C */  lui        $a0, %hi(D_8001161C)
/* 18BB8 800283B8 1C168424 */  addiu      $a0, $a0, %lo(D_8001161C)
/* 18BBC 800283BC A0000524 */  addiu      $a1, $zero, 0xA0
/* 18BC0 800283C0 20000626 */  addiu      $a2, $s0, 0x20
/* 18BC4 800283C4 7163010C */  jal        TextAddStringC
/* 18BC8 800283C8 01000724 */   addiu     $a3, $zero, 0x1
/* 18BCC 800283CC 1400BF8F */  lw         $ra, 0x14($sp)
/* 18BD0 800283D0 1000B08F */  lw         $s0, 0x10($sp)
/* 18BD4 800283D4 0800E003 */  jr         $ra
/* 18BD8 800283D8 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits2Service, . - Credits2Service
