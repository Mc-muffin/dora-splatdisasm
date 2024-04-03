.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AnimateActorBackward
/* 298A4 800390A4 0800E003 */  jr         $ra
/* 298A8 800390A8 00000000 */   nop
.size AnimateActorBackward, . - AnimateActorBackward
