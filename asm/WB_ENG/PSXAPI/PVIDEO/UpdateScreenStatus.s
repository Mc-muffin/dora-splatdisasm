.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UpdateScreenStatus
/* 4C08C 8005B88C E810828F */  lw         $v0, %gp_rel(UpdateScreenFlag)($gp)
/* 4C090 8005B890 0800E003 */  jr         $ra
/* 4C094 8005B894 00000000 */   nop
.size UpdateScreenStatus, . - UpdateScreenStatus
