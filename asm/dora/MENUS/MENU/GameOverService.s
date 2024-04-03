.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GameOverService
/* 18A34 80028234 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 18A38 80028238 0180043C */  lui        $a0, %hi(D_800115C4)
/* 18A3C 8002823C C4158424 */  addiu      $a0, $a0, %lo(D_800115C4)
/* 18A40 80028240 64000524 */  addiu      $a1, $zero, 0x64
/* 18A44 80028244 64000624 */  addiu      $a2, $zero, 0x64
/* 18A48 80028248 1000BFAF */  sw         $ra, 0x10($sp)
/* 18A4C 8002824C 7163010C */  jal        TextAddStringC
/* 18A50 80028250 01000724 */   addiu     $a3, $zero, 0x1
/* 18A54 80028254 0980043C */  lui        $a0, %hi(D_80094A58)
/* 18A58 80028258 584A8424 */  addiu      $a0, $a0, %lo(D_80094A58)
/* 18A5C 8002825C 64000524 */  addiu      $a1, $zero, 0x64
/* 18A60 80028260 74000624 */  addiu      $a2, $zero, 0x74
/* 18A64 80028264 7163010C */  jal        TextAddStringC
/* 18A68 80028268 01000724 */   addiu     $a3, $zero, 0x1
/* 18A6C 8002826C 0980043C */  lui        $a0, %hi(D_80094A5C)
/* 18A70 80028270 5C4A8424 */  addiu      $a0, $a0, %lo(D_80094A5C)
/* 18A74 80028274 64000524 */  addiu      $a1, $zero, 0x64
/* 18A78 80028278 84000624 */  addiu      $a2, $zero, 0x84
/* 18A7C 8002827C 7163010C */  jal        TextAddStringC
/* 18A80 80028280 01000724 */   addiu     $a3, $zero, 0x1
/* 18A84 80028284 0980033C */  lui        $v1, %hi(Trg0)
/* 18A88 80028288 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 18A8C 8002828C 00000000 */  nop
/* 18A90 80028290 08406330 */  andi       $v1, $v1, 0x4008
/* 18A94 80028294 02006010 */  beqz       $v1, .L800282A0
/* 18A98 80028298 00000000 */   nop
/* 18A9C 8002829C 440780AF */  sw         $zero, %gp_rel(MainMenuState)($gp)
.L800282A0:
/* 18AA0 800282A0 1000BF8F */  lw         $ra, 0x10($sp)
/* 18AA4 800282A4 00000000 */  nop
/* 18AA8 800282A8 0800E003 */  jr         $ra
/* 18AAC 800282AC 1800BD27 */   addiu     $sp, $sp, 0x18
.size GameOverService, . - GameOverService
