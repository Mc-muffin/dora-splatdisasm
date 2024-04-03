.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SelectColour
/* 3F148 8004E948 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3F14C 8004E94C FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 3F150 8004E950 08008010 */  beqz       $a0, .L8004E974
/* 3F154 8004E954 1000BFAF */   sw        $ra, 0x10($sp)
/* 3F158 8004E958 980E8493 */  lbu        $a0, %gp_rel(ISOHL_R)($gp)
/* 3F15C 8004E95C 990E8593 */  lbu        $a1, %gp_rel(ISOHL_G)($gp)
/* 3F160 8004E960 9A0E8693 */  lbu        $a2, %gp_rel(ISOHL_B)($gp)
/* 3F164 8004E964 5363010C */  jal        TextSetTextColor
/* 3F168 8004E968 00000000 */   nop
/* 3F16C 8004E96C 623A0108 */  j          .L8004E988
/* 3F170 8004E970 00000000 */   nop
.L8004E974:
/* 3F174 8004E974 9B0E8493 */  lbu        $a0, %gp_rel(ISO_R)($gp)
/* 3F178 8004E978 9C0E8593 */  lbu        $a1, %gp_rel(ISO_G)($gp)
/* 3F17C 8004E97C 9D0E8693 */  lbu        $a2, %gp_rel(ISO_B)($gp)
/* 3F180 8004E980 5363010C */  jal        TextSetTextColor
/* 3F184 8004E984 00000000 */   nop
.L8004E988:
/* 3F188 8004E988 1000BF8F */  lw         $ra, 0x10($sp)
/* 3F18C 8004E98C 00000000 */  nop
/* 3F190 8004E990 0800E003 */  jr         $ra
/* 3F194 8004E994 1800BD27 */   addiu     $sp, $sp, 0x18
.size SelectColour, . - SelectColour
