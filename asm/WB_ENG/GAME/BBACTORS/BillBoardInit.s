.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BillBoardInit
/* 34CB8 800444B8 0800E003 */  jr         $ra
/* 34CBC 800444BC 00000000 */   nop
.size BillBoardInit, . - BillBoardInit
