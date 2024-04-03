.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_pad4
/* 44A34 80054234 03008430 */  andi       $a0, $a0, 0x3
/* 44A38 80054238 03008010 */  beqz       $a0, .L80054248
/* 44A3C 8005423C 21100000 */   addu      $v0, $zero, $zero
/* 44A40 80054240 04000224 */  addiu      $v0, $zero, 0x4
/* 44A44 80054244 23104400 */  subu       $v0, $v0, $a0
.L80054248:
/* 44A48 80054248 0800E003 */  jr         $ra
/* 44A4C 8005424C 00000000 */   nop
.size pxm_pad4, . - pxm_pad4
