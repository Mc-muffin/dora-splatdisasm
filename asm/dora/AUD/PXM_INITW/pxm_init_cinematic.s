.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_init_cinematic
/* 24800 80034000 0800E003 */  jr         $ra
/* 24804 80034004 00000000 */   nop
.size pxm_init_cinematic, . - pxm_init_cinematic
