.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitPlayerTrack
/* 3AE14 8004A614 201580AF */  sw         $zero, %gp_rel(current_track_index)($gp)
/* 3AE18 8004A618 0800E003 */  jr         $ra
/* 3AE1C 8004A61C 00000000 */   nop
.size InitPlayerTrack, . - InitPlayerTrack
