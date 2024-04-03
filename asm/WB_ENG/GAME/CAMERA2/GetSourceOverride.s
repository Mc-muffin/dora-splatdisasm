.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetSourceOverride
/* 2BC48 8003B448 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2BC4C 8003B44C 00000000 */  nop
/* 2BC50 8003B450 01006290 */  lbu        $v0, 0x1($v1)
/* 2BC54 8003B454 0800E003 */  jr         $ra
/* 2BC58 8003B458 00000000 */   nop
.size GetSourceOverride, . - GetSourceOverride
