.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDPCFile_Stop
/* 47C38 80057438 0800E003 */  jr         $ra
/* 47C3C 8005743C 00000000 */   nop
.size CDPCFile_Stop, . - CDPCFile_Stop
