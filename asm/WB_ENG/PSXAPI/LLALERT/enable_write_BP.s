.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel enable_write_BP
/* 48708 80057F08 A41684AF */  sw         $a0, %gp_rel(HWBP_temp0)($gp)
/* 4870C 80057F0C A81685AF */  sw         $a1, %gp_rel(HWBP_temp1)($gp)
/* 48710 80057F10 A416828F */  lw         $v0, %gp_rel(HWBP_temp0)($gp)
/* 48714 80057F14 00000000 */  nop
/* 48718 80057F18 00188240 */  mtc0       $v0, $3 /* handwritten instruction */
/* 4871C 80057F1C 00288240 */  mtc0       $v0, $5 /* handwritten instruction */
/* 48720 80057F20 00308240 */  mtc0       $v0, $6 /* handwritten instruction */
/* 48724 80057F24 A816828F */  lw         $v0, %gp_rel(HWBP_temp1)($gp)
/* 48728 80057F28 00000000 */  nop
/* 4872C 80057F2C 00488240 */  mtc0       $v0, $9 /* handwritten instruction */
/* 48730 80057F30 80EA023C */  lui        $v0, (0xEA800000 >> 16)
/* 48734 80057F34 00388240 */  mtc0       $v0, $7 /* handwritten instruction */
/* 48738 80057F38 0800E003 */  jr         $ra
/* 4873C 80057F3C 00000000 */   nop
.size enable_write_BP, . - enable_write_BP
