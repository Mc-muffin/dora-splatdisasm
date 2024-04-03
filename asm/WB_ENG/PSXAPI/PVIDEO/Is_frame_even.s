.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Is_frame_even
/* 4BEE4 8005B6E4 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4BEE8 8005B6E8 0800E003 */  jr         $ra
/* 4BEEC 8005B6EC 0100422C */   sltiu     $v0, $v0, 0x1
.size Is_frame_even, . - Is_frame_even
