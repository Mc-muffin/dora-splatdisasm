.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MA_CalcAltitude
/* 2C1F4 8003B9F4 9014838F */  lw         $v1, %gp_rel(currentCamera)($gp)
/* 2C1F8 8003B9F8 00000000 */  nop
/* 2C1FC 8003B9FC 0C00628C */  lw         $v0, 0xC($v1)
/* 2C200 8003BA00 1800648C */  lw         $a0, 0x18($v1)
/* 2C204 8003BA04 2400658C */  lw         $a1, 0x24($v1)
/* 2C208 8003BA08 21104400 */  addu       $v0, $v0, $a0
/* 2C20C 8003BA0C 0800E003 */  jr         $ra
/* 2C210 8003BA10 23104500 */   subu      $v0, $v0, $a1
.size MA_CalcAltitude, . - MA_CalcAltitude
