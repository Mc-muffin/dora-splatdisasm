.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_advanceONE
/* 4139C 80050B9C CC15858F */  lw         $a1, %gp_rel(pbag_IDX)($gp)
/* 413A0 80050BA0 D015838F */  lw         $v1, %gp_rel(pbag_BASE)($gp)
/* 413A4 80050BA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 413A8 80050BA8 1000BFAF */  sw         $ra, 0x10($sp)
/* 413AC 80050BAC 80100500 */  sll        $v0, $a1, 2
/* 413B0 80050BB0 21104300 */  addu       $v0, $v0, $v1
/* 413B4 80050BB4 0000428C */  lw         $v0, 0x0($v0)
/* 413B8 80050BB8 FFFF0424 */  addiu      $a0, $zero, -0x1
/* 413BC 80050BBC 03004414 */  bne        $v0, $a0, .L80050BCC
/* 413C0 80050BC0 02160200 */   srl       $v0, $v0, 24
/* 413C4 80050BC4 F7420108 */  j          .L80050BDC
/* 413C8 80050BC8 04000224 */   addiu     $v0, $zero, 0x4
.L80050BCC:
/* 413CC 80050BCC 03004014 */  bnez       $v0, .L80050BDC
/* 413D0 80050BD0 01004224 */   addiu     $v0, $v0, 0x1
/* 413D4 80050BD4 03000224 */  addiu      $v0, $zero, 0x3
/* 413D8 80050BD8 01004224 */  addiu      $v0, $v0, 0x1
.L80050BDC:
/* 413DC 80050BDC 2110A200 */  addu       $v0, $a1, $v0
/* 413E0 80050BE0 CC1582AF */  sw         $v0, %gp_rel(pbag_IDX)($gp)
/* 413E4 80050BE4 1543010C */  jal        pbag_getptr
/* 413E8 80050BE8 00000000 */   nop
/* 413EC 80050BEC 1000BF8F */  lw         $ra, 0x10($sp)
/* 413F0 80050BF0 00000000 */  nop
/* 413F4 80050BF4 0800E003 */  jr         $ra
/* 413F8 80050BF8 1800BD27 */   addiu     $sp, $sp, 0x18
.size pbag_advanceONE, . - pbag_advanceONE
