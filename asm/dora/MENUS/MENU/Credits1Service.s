.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits1Service
/* 18AC0 800282C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 18AC4 800282C4 0180043C */  lui        $a0, %hi(D_800115D0)
/* 18AC8 800282C8 D0158424 */  addiu      $a0, $a0, %lo(D_800115D0)
/* 18ACC 800282CC A0000524 */  addiu      $a1, $zero, 0xA0
/* 18AD0 800282D0 1000B0AF */  sw         $s0, 0x10($sp)
/* 18AD4 800282D4 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18AD8 800282D8 01000724 */  addiu      $a3, $zero, 0x1
/* 18ADC 800282DC 1800BFAF */  sw         $ra, 0x18($sp)
/* 18AE0 800282E0 1400B1AF */  sw         $s1, 0x14($sp)
/* 18AE4 800282E4 10001026 */  addiu      $s0, $s0, 0x10
/* 18AE8 800282E8 7163010C */  jal        TextAddStringC
/* 18AEC 800282EC 21300002 */   addu      $a2, $s0, $zero
/* 18AF0 800282F0 10001026 */  addiu      $s0, $s0, 0x10
/* 18AF4 800282F4 0180043C */  lui        $a0, %hi(D_800115E0)
/* 18AF8 800282F8 E0158424 */  addiu      $a0, $a0, %lo(D_800115E0)
/* 18AFC 800282FC A0000524 */  addiu      $a1, $zero, 0xA0
/* 18B00 80028300 21300002 */  addu       $a2, $s0, $zero
/* 18B04 80028304 7163010C */  jal        TextAddStringC
/* 18B08 80028308 01000724 */   addiu     $a3, $zero, 0x1
/* 18B0C 8002830C 20001026 */  addiu      $s0, $s0, 0x20
/* 18B10 80028310 0180043C */  lui        $a0, %hi(D_800115F4)
/* 18B14 80028314 F4158424 */  addiu      $a0, $a0, %lo(D_800115F4)
/* 18B18 80028318 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18B1C 8002831C 21300002 */  addu       $a2, $s0, $zero
/* 18B20 80028320 7163010C */  jal        TextAddStringC
/* 18B24 80028324 01000724 */   addiu     $a3, $zero, 0x1
/* 18B28 80028328 20001026 */  addiu      $s0, $s0, 0x20
/* 18B2C 8002832C 0980113C */  lui        $s1, %hi(D_80094A70)
/* 18B30 80028330 704A3126 */  addiu      $s1, $s1, %lo(D_80094A70)
/* 18B34 80028334 21202002 */  addu       $a0, $s1, $zero
/* 18B38 80028338 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18B3C 8002833C 21300002 */  addu       $a2, $s0, $zero
/* 18B40 80028340 7163010C */  jal        TextAddStringC
/* 18B44 80028344 01000724 */   addiu     $a3, $zero, 0x1
/* 18B48 80028348 10001026 */  addiu      $s0, $s0, 0x10
/* 18B4C 8002834C 21202002 */  addu       $a0, $s1, $zero
/* 18B50 80028350 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18B54 80028354 21300002 */  addu       $a2, $s0, $zero
/* 18B58 80028358 7163010C */  jal        TextAddStringC
/* 18B5C 8002835C 01000724 */   addiu     $a3, $zero, 0x1
/* 18B60 80028360 21202002 */  addu       $a0, $s1, $zero
/* 18B64 80028364 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18B68 80028368 10000626 */  addiu      $a2, $s0, 0x10
/* 18B6C 8002836C 7163010C */  jal        TextAddStringC
/* 18B70 80028370 01000724 */   addiu     $a3, $zero, 0x1
/* 18B74 80028374 1800BF8F */  lw         $ra, 0x18($sp)
/* 18B78 80028378 1400B18F */  lw         $s1, 0x14($sp)
/* 18B7C 8002837C 1000B08F */  lw         $s0, 0x10($sp)
/* 18B80 80028380 0800E003 */  jr         $ra
/* 18B84 80028384 2000BD27 */   addiu     $sp, $sp, 0x20
.size Credits1Service, . - Credits1Service
