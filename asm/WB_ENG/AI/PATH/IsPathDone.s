.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel IsPathDone
/* 35764 80044F64 0000838C */  lw         $v1, 0x0($a0)
/* 35768 80044F68 00000000 */  nop
/* 3576C 80044F6C 0400628C */  lw         $v0, 0x4($v1)
/* 35770 80044F70 0800E003 */  jr         $ra
/* 35774 80044F74 0100422C */   sltiu     $v0, $v0, 0x1
.size IsPathDone, . - IsPathDone
