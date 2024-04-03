.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strInit
/* 3FE40 8004F640 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 3FE44 8004F644 1800B0AF */  sw         $s0, 0x18($sp)
/* 3FE48 8004F648 21808000 */  addu       $s0, $a0, $zero
/* 3FE4C 8004F64C 21200000 */  addu       $a0, $zero, $zero
/* 3FE50 8004F650 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 3FE54 8004F654 2000BFAF */  sw         $ra, 0x20($sp)
/* 3FE58 8004F658 CFFD010C */  jal        DecDCTReset
/* 3FE5C 8004F65C 2188A000 */   addu      $s1, $a1, $zero
/* 3FE60 8004F660 76FE010C */  jal        DecDCToutCallback
/* 3FE64 8004F664 21202002 */   addu      $a0, $s1, $zero
/* 3FE68 8004F668 2C0F848F */  lw         $a0, %gp_rel(Ring_Buff)($gp)
/* 3FE6C 8004F66C BFC7010C */  jal        StSetRing
/* 3FE70 8004F670 10000524 */   addiu     $a1, $zero, 0x10
/* 3FE74 8004F674 03C9010C */  jal        StClearRing
/* 3FE78 8004F678 00000000 */   nop
/* 3FE7C 8004F67C 21200000 */  addu       $a0, $zero, $zero
/* 3FE80 8004F680 A015828F */  lw         $v0, %gp_rel(this_movie)($gp)
/* 3FE84 8004F684 FFFF0624 */  addiu      $a2, $zero, -0x1
/* 3FE88 8004F688 1000A0AF */  sw         $zero, 0x10($sp)
/* 3FE8C 8004F68C 0400458C */  lw         $a1, 0x4($v0)
/* 3FE90 8004F690 7FC9010C */  jal        StSetStream
/* 3FE94 8004F694 21380000 */   addu      $a3, $zero, $zero
/* 3FE98 8004F698 323E010C */  jal        strKickCD
/* 3FE9C 8004F69C 21200002 */   addu      $a0, $s0, $zero
/* 3FEA0 8004F6A0 2000BF8F */  lw         $ra, 0x20($sp)
/* 3FEA4 8004F6A4 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3FEA8 8004F6A8 1800B08F */  lw         $s0, 0x18($sp)
/* 3FEAC 8004F6AC 0800E003 */  jr         $ra
/* 3FEB0 8004F6B0 2800BD27 */   addiu     $sp, $sp, 0x28
.size strInit, . - strInit
