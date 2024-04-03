.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckXAService
/* 4F8B8 8005F0B8 0800E003 */  jr         $ra
/* 4F8BC 8005F0BC 00000000 */   nop
.size CheckXAService, . - CheckXAService
