.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_clip_S32
/* 44F1C 8005471C 2A10C400 */  slt        $v0, $a2, $a0
/* 44F20 80054720 03004010 */  beqz       $v0, .L80054730
/* 44F24 80054724 2A108500 */   slt       $v0, $a0, $a1
/* 44F28 80054728 CF510108 */  j          .L8005473C
/* 44F2C 8005472C 2120C000 */   addu      $a0, $a2, $zero
.L80054730:
/* 44F30 80054730 02004010 */  beqz       $v0, .L8005473C
/* 44F34 80054734 00000000 */   nop
/* 44F38 80054738 2120A000 */  addu       $a0, $a1, $zero
.L8005473C:
/* 44F3C 8005473C 0800E003 */  jr         $ra
/* 44F40 80054740 21108000 */   addu      $v0, $a0, $zero
.size pxm_clip_S32, . - pxm_clip_S32
