.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_stop
/* 430B0 800528B0 C40F80A3 */  sb         $zero, %gp_rel(pxm_transport)($gp)
/* 430B4 800528B4 0800E003 */  jr         $ra
/* 430B8 800528B8 00000000 */   nop
.size pxm_stop, . - pxm_stop
