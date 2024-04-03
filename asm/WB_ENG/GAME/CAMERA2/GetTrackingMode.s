.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetTrackingMode
/* 2BDB0 8003B5B0 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BDB4 8003B5B4 00000000 */  nop
/* 2BDB8 8003B5B8 97006290 */  lbu        $v0, 0x97($v1)
/* 2BDBC 8003B5BC 0800E003 */  jr         $ra
/* 2BDC0 8003B5C0 00000000 */   nop
.size GetTrackingMode, . - GetTrackingMode
