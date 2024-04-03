.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits4Service
/* 18C4C 8002844C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18C50 80028450 0180043C */  lui        $a0, %hi(D_80011668)
/* 18C54 80028454 68168424 */  addiu      $a0, $a0, %lo(D_80011668)
/* 18C58 80028458 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18C5C 8002845C 1000B0AF */  sw         $s0, 0x10($sp)
/* 18C60 80028460 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 18C64 80028464 01000724 */  addiu      $a3, $zero, 0x1
/* 18C68 80028468 1400BFAF */  sw         $ra, 0x14($sp)
/* 18C6C 8002846C 30001026 */  addiu      $s0, $s0, 0x30
/* 18C70 80028470 7163010C */  jal        TextAddStringC
/* 18C74 80028474 21300002 */   addu      $a2, $s0, $zero
/* 18C78 80028478 0180043C */  lui        $a0, %hi(D_80011678)
/* 18C7C 8002847C 78168424 */  addiu      $a0, $a0, %lo(D_80011678)
/* 18C80 80028480 A0000524 */  addiu      $a1, $zero, 0xA0
/* 18C84 80028484 20000626 */  addiu      $a2, $s0, 0x20
/* 18C88 80028488 7163010C */  jal        TextAddStringC
/* 18C8C 8002848C 01000724 */   addiu     $a3, $zero, 0x1
/* 18C90 80028490 1400BF8F */  lw         $ra, 0x14($sp)
/* 18C94 80028494 1000B08F */  lw         $s0, 0x10($sp)
/* 18C98 80028498 0800E003 */  jr         $ra
/* 18C9C 8002849C 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits4Service, . - Credits4Service
