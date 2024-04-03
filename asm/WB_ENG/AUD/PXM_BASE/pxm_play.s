.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_play
/* 430A0 800528A0 01000224 */  addiu      $v0, $zero, 0x1
/* 430A4 800528A4 C40F82A3 */  sb         $v0, %gp_rel(pxm_transport)($gp)
/* 430A8 800528A8 0800E003 */  jr         $ra
/* 430AC 800528AC 00000000 */   nop
.size pxm_play, . - pxm_play
