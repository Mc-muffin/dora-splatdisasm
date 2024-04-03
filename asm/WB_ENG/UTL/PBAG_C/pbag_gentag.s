.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_gentag
/* 4129C 80050A9C FF00C330 */  andi       $v1, $a2, 0xFF
/* 412A0 80050AA0 FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 412A4 80050AA4 02006014 */  bnez       $v1, .L80050AB0
/* 412A8 80050AA8 FF00A230 */   andi      $v0, $a1, 0xFF
/* 412AC 80050AAC 03000324 */  addiu      $v1, $zero, 0x3
.L80050AB0:
/* 412B0 80050AB0 00140200 */  sll        $v0, $v0, 16
/* 412B4 80050AB4 25108200 */  or         $v0, $a0, $v0
/* 412B8 80050AB8 001E0300 */  sll        $v1, $v1, 24
/* 412BC 80050ABC 0800E003 */  jr         $ra
/* 412C0 80050AC0 25104300 */   or        $v0, $v0, $v1
.size pbag_gentag, . - pbag_gentag
