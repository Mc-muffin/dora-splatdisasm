.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_gettype
/* 412CC 80050ACC 02140400 */  srl        $v0, $a0, 16
/* 412D0 80050AD0 0800E003 */  jr         $ra
/* 412D4 80050AD4 FF004230 */   andi      $v0, $v0, 0xFF
.size pbag_gettype, . - pbag_gettype
