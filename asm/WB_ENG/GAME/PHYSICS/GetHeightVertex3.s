.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetHeightVertex3
/* 2F0E0 8003E8E0 0800E003 */  jr         $ra
/* 2F0E4 8003E8E4 00000000 */   nop
.size GetHeightVertex3, . - GetHeightVertex3
