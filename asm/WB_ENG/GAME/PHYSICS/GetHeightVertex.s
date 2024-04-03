.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetHeightVertex
/* 2F0F0 8003E8F0 02008284 */  lh         $v0, 0x2($a0)
/* 2F0F4 8003E8F4 0800E003 */  jr         $ra
/* 2F0F8 8003E8F8 00000000 */   nop
.size GetHeightVertex, . - GetHeightVertex
