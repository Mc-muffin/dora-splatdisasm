.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DisplayFollowMECinematic
/* 24040 80033840 0800E003 */  jr         $ra
/* 24044 80033844 00000000 */   nop
.size DisplayFollowMECinematic, . - DisplayFollowMECinematic
