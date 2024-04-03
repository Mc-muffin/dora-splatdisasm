.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitMovieSprite
/* 401B4 8004F9B4 0800E003 */  jr         $ra
/* 401B8 8004F9B8 00000000 */   nop
.size InitMovieSprite, . - InitMovieSprite
