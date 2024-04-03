.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetHeightVertex4
/* 2F0E8 8003E8E8 0800E003 */  jr         $ra
/* 2F0EC 8003E8EC 00000000 */   nop
.size GetHeightVertex4, . - GetHeightVertex4
