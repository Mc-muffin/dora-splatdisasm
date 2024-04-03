.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_getlen
/* 412D8 80050AD8 02160400 */  srl        $v0, $a0, 24
/* 412DC 80050ADC 02004014 */  bnez       $v0, .L80050AE8
/* 412E0 80050AE0 00000000 */   nop
/* 412E4 80050AE4 03000224 */  addiu      $v0, $zero, 0x3
.L80050AE8:
/* 412E8 80050AE8 0800E003 */  jr         $ra
/* 412EC 80050AEC 00000000 */   nop
.size pbag_getlen, . - pbag_getlen
