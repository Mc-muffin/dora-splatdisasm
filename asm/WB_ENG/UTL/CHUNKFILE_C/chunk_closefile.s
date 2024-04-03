.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel chunk_closefile
/* 411C0 800509C0 0800E003 */  jr         $ra
/* 411C4 800509C4 00000000 */   nop
.size chunk_closefile, . - chunk_closefile
