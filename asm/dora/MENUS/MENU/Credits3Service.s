.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits3Service
/* 18BDC 800283DC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18BE0 800283E0 0180043C */  lui        $a0, %hi(D_80011630)
/* 18BE4 800283E4 30168424 */  addiu      $a0, $a0, %lo(D_80011630)
/* 18BE8 800283E8 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18BEC 800283EC 1000B0AF */  sw         $s0, 0x10($sp)
/* 18BF0 800283F0 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18BF4 800283F4 01000724 */  addiu      $a3, $zero, 0x1
/* 18BF8 800283F8 1400BFAF */  sw         $ra, 0x14($sp)
/* 18BFC 800283FC 30001026 */  addiu      $s0, $s0, 0x30
/* 18C00 80028400 7163010C */  jal        TextAddStringC
/* 18C04 80028404 21300002 */   addu      $a2, $s0, $zero
/* 18C08 80028408 10001026 */  addiu      $s0, $s0, 0x10
/* 18C0C 8002840C 0180043C */  lui        $a0, %hi(D_8001163C)
/* 18C10 80028410 3C168424 */  addiu      $a0, $a0, %lo(D_8001163C)
/* 18C14 80028414 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18C18 80028418 21300002 */  addu       $a2, $s0, $zero
/* 18C1C 8002841C 7163010C */  jal        TextAddStringC
/* 18C20 80028420 01000724 */   addiu     $a3, $zero, 0x1
/* 18C24 80028424 0180043C */  lui        $a0, %hi(D_80011654)
/* 18C28 80028428 54168424 */  addiu      $a0, $a0, %lo(D_80011654)
/* 18C2C 8002842C A0000524 */  addiu      $a1, $zero, 0xA0
/* 18C30 80028430 20000626 */  addiu      $a2, $s0, 0x20
/* 18C34 80028434 7163010C */  jal        TextAddStringC
/* 18C38 80028438 01000724 */   addiu     $a3, $zero, 0x1
/* 18C3C 8002843C 1400BF8F */  lw         $ra, 0x14($sp)
/* 18C40 80028440 1000B08F */  lw         $s0, 0x10($sp)
/* 18C44 80028444 0800E003 */  jr         $ra
/* 18C48 80028448 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits3Service, . - Credits3Service
