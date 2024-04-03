.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_mul_S16
/* 44F44 80054744 00240400 */  sll        $a0, $a0, 16
/* 44F48 80054748 03240400 */  sra        $a0, $a0, 16
/* 44F4C 8005474C 002C0500 */  sll        $a1, $a1, 16
/* 44F50 80054750 032C0500 */  sra        $a1, $a1, 16
/* 44F54 80054754 18008500 */  mult       $a0, $a1
/* 44F58 80054758 12100000 */  mflo       $v0
/* 44F5C 8005475C 02004104 */  bgez       $v0, .L80054768
/* 44F60 80054760 00000000 */   nop
/* 44F64 80054764 FF7F4224 */  addiu      $v0, $v0, 0x7FFF
.L80054768:
/* 44F68 80054768 40100200 */  sll        $v0, $v0, 1
/* 44F6C 8005476C 0800E003 */  jr         $ra
/* 44F70 80054770 03140200 */   sra       $v0, $v0, 16
.size pxm_mul_S16, . - pxm_mul_S16
