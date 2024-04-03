.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Is_frame_odd
/* 4BEF0 8005B6F0 F816828F */  lw         $v0, %gp_rel(Frame)($gp)
/* 4BEF4 8005B6F4 00000000 */  nop
/* 4BEF8 8005B6F8 01004238 */  xori       $v0, $v0, 0x1
/* 4BEFC 8005B6FC 0800E003 */  jr         $ra
/* 4BF00 8005B700 0100422C */   sltiu     $v0, $v0, 0x1
.size Is_frame_odd, . - Is_frame_odd
