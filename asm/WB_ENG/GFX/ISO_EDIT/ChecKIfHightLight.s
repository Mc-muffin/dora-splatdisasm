.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ChecKIfHightLight
/* 3F198 8004E998 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3F19C 8004E99C 08008510 */  beq        $a0, $a1, .L8004E9C0
/* 3F1A0 8004E9A0 1000BFAF */   sw        $ra, 0x10($sp)
/* 3F1A4 8004E9A4 9B0E8493 */  lbu        $a0, %gp_rel(ISO_R)($gp)
/* 3F1A8 8004E9A8 9C0E8593 */  lbu        $a1, %gp_rel(ISO_G)($gp)
/* 3F1AC 8004E9AC 9D0E8693 */  lbu        $a2, %gp_rel(ISO_B)($gp)
/* 3F1B0 8004E9B0 5363010C */  jal        TextSetTextColor
/* 3F1B4 8004E9B4 00000000 */   nop
/* 3F1B8 8004E9B8 763A0108 */  j          .L8004E9D8
/* 3F1BC 8004E9BC 21100000 */   addu      $v0, $zero, $zero
.L8004E9C0:
/* 3F1C0 8004E9C0 980E8493 */  lbu        $a0, %gp_rel(ISOHL_R)($gp)
/* 3F1C4 8004E9C4 990E8593 */  lbu        $a1, %gp_rel(ISOHL_G)($gp)
/* 3F1C8 8004E9C8 9A0E8693 */  lbu        $a2, %gp_rel(ISOHL_B)($gp)
/* 3F1CC 8004E9CC 5363010C */  jal        TextSetTextColor
/* 3F1D0 8004E9D0 00000000 */   nop
/* 3F1D4 8004E9D4 01000224 */  addiu      $v0, $zero, 0x1
.L8004E9D8:
/* 3F1D8 8004E9D8 1000BF8F */  lw         $ra, 0x10($sp)
/* 3F1DC 8004E9DC 00000000 */  nop
/* 3F1E0 8004E9E0 0800E003 */  jr         $ra
/* 3F1E4 8004E9E4 1800BD27 */   addiu     $sp, $sp, 0x18
.size ChecKIfHightLight, . - ChecKIfHightLight
