.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetHeightVertex2
/* 2F0D8 8003E8D8 0800E003 */  jr         $ra
/* 2F0DC 8003E8DC 00000000 */   nop
.size GetHeightVertex2, . - GetHeightVertex2
