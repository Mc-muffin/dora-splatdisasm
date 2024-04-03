.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DistApprox_2d_actual
/* 2B044 8003A844 18008400 */  mult       $a0, $a0
/* 2B048 8003A848 12200000 */  mflo       $a0
/* 2B04C 8003A84C 00000000 */  nop
/* 2B050 8003A850 00000000 */  nop
/* 2B054 8003A854 1800A500 */  mult       $a1, $a1
/* 2B058 8003A858 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2B05C 8003A85C 1000BFAF */  sw         $ra, 0x10($sp)
/* 2B060 8003A860 12280000 */  mflo       $a1
/* 2B064 8003A864 C7EB010C */  jal        SquareRoot0
/* 2B068 8003A868 21208500 */   addu      $a0, $a0, $a1
/* 2B06C 8003A86C 1000BF8F */  lw         $ra, 0x10($sp)
/* 2B070 8003A870 00000000 */  nop
/* 2B074 8003A874 0800E003 */  jr         $ra
/* 2B078 8003A878 1800BD27 */   addiu     $sp, $sp, 0x18
.size DistApprox_2d_actual, . - DistApprox_2d_actual
