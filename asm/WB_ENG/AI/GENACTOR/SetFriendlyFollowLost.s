.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetFriendlyFollowLost
/* 3AD24 8004A524 B80D84AF */  sw         $a0, %gp_rel(g_friendlylost)($gp)
/* 3AD28 8004A528 0800E003 */  jr         $ra
/* 3AD2C 8004A52C 00000000 */   nop
.size SetFriendlyFollowLost, . - SetFriendlyFollowLost
