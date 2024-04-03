.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel IceBoss
/* 33EDC 800436DC 0800E003 */  jr         $ra
/* 33EE0 800436E0 00000000 */   nop
.size IceBoss, . - IceBoss
