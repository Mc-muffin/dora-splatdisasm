.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetHeightVertex1
/* 2F0D0 8003E8D0 0800E003 */  jr         $ra
/* 2F0D4 8003E8D4 00000000 */   nop
.size GetHeightVertex1, . - GetHeightVertex1
