.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ProjectileDraw
/* 36DD0 800465D0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 36DD4 800465D4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 36DD8 800465D8 21888000 */  addu       $s1, $a0, $zero
/* 36DDC 800465DC 2000BFAF */  sw         $ra, 0x20($sp)
/* 36DE0 800465E0 1800B0AF */  sw         $s0, 0x18($sp)
/* 36DE4 800465E4 2801308E */  lw         $s0, 0x128($s1)
/* 36DE8 800465E8 00000000 */  nop
/* 36DEC 800465EC 6800028E */  lw         $v0, 0x68($s0)
/* 36DF0 800465F0 00000000 */  nop
/* 36DF4 800465F4 07004104 */  bgez       $v0, .L80046614
/* 36DF8 800465F8 00000000 */   nop
/* 36DFC 800465FC F710010C */  jal        GetBillboardInstance
/* 36E00 80046600 21200000 */   addu      $a0, $zero, $zero
/* 36E04 80046604 640D838F */  lw         $v1, %gp_rel(eggprojsize)($gp)
/* 36E08 80046608 680002AE */  sw         $v0, 0x68($s0)
/* 36E0C 8004660C 580020AE */  sw         $zero, 0x58($s1)
/* 36E10 80046610 540023AE */  sw         $v1, 0x54($s1)
.L80046614:
/* 36E14 80046614 6800058E */  lw         $a1, 0x68($s0)
/* 36E18 80046618 3011010C */  jal        BillBoardDraw
/* 36E1C 8004661C 21202002 */   addu      $a0, $s1, $zero
/* 36E20 80046620 2000BF8F */  lw         $ra, 0x20($sp)
/* 36E24 80046624 1C00B18F */  lw         $s1, 0x1C($sp)
/* 36E28 80046628 1800B08F */  lw         $s0, 0x18($sp)
/* 36E2C 8004662C 0800E003 */  jr         $ra
/* 36E30 80046630 2800BD27 */   addiu     $sp, $sp, 0x28
.size ProjectileDraw, . - ProjectileDraw
