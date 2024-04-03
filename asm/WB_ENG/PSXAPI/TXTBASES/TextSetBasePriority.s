.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextSetBasePriority
/* 49814 80059014 981084AF */  sw         $a0, %gp_rel(gpTextBasePriority)($gp)
/* 49818 80059018 0800E003 */  jr         $ra
/* 4981C 8005901C 00000000 */   nop
.size TextSetBasePriority, . - TextSetBasePriority
