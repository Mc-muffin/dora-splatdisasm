.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PlayFullScreenMovie
/* 40358 8004FB58 01000224 */  addiu      $v0, $zero, 0x1
/* 4035C 8004FB5C 1C0F82AF */  sw         $v0, %gp_rel(requestMovieFlag)($gp)
/* 40360 8004FB60 200F84AF */  sw         $a0, %gp_rel(requestMovieIndex)($gp)
/* 40364 8004FB64 0800E003 */  jr         $ra
/* 40368 8004FB68 00000000 */   nop
.size PlayFullScreenMovie, . - PlayFullScreenMovie
