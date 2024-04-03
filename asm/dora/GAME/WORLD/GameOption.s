.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GameOption
/* 148E4 800240E4 0800E003 */  jr         $ra
/* 148E8 800240E8 0100822C */   sltiu     $v0, $a0, 0x1
.size GameOption, . - GameOption
