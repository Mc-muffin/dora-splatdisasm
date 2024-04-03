.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EditLevel
/* 3EEA0 8004E6A0 980E8493 */  lbu        $a0, %gp_rel(ISOHL_R)($gp)
/* 3EEA4 8004E6A4 990E8593 */  lbu        $a1, %gp_rel(ISOHL_G)($gp)
/* 3EEA8 8004E6A8 9A0E8693 */  lbu        $a2, %gp_rel(ISOHL_B)($gp)
/* 3EEAC 8004E6AC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3EEB0 8004E6B0 1000BFAF */  sw         $ra, 0x10($sp)
/* 3EEB4 8004E6B4 5363010C */  jal        TextSetTextColor
/* 3EEB8 8004E6B8 00000000 */   nop
/* 3EEBC 8004E6BC 0980033C */  lui        $v1, %hi(Trg1)
/* 3EEC0 8004E6C0 32596394 */  lhu        $v1, %lo(Trg1)($v1)
/* 3EEC4 8004E6C4 00000000 */  nop
/* 3EEC8 8004E6C8 01006330 */  andi       $v1, $v1, 0x1
/* 3EECC 8004E6CC 05006010 */  beqz       $v1, .L8004E6E4
/* 3EED0 8004E6D0 00000000 */   nop
/* 3EED4 8004E6D4 2C0E828F */  lw         $v0, %gp_rel(EditMode)($gp)
/* 3EED8 8004E6D8 00000000 */  nop
/* 3EEDC 8004E6DC 01004238 */  xori       $v0, $v0, 0x1
/* 3EEE0 8004E6E0 2C0E82AF */  sw         $v0, %gp_rel(EditMode)($gp)
.L8004E6E4:
/* 3EEE4 8004E6E4 0C0E838F */  lw         $v1, %gp_rel(EditLevelState)($gp)
/* 3EEE8 8004E6E8 00000000 */  nop
/* 3EEEC 8004E6EC 05006010 */  beqz       $v1, .L8004E704
/* 3EEF0 8004E6F0 01000224 */   addiu     $v0, $zero, 0x1
/* 3EEF4 8004E6F4 07006210 */  beq        $v1, $v0, .L8004E714
/* 3EEF8 8004E6F8 00000000 */   nop
/* 3EEFC 8004E6FC D7390108 */  j          .L8004E75C
/* 3EF00 8004E700 00000000 */   nop
.L8004E704:
/* 3EF04 8004E704 9637010C */  jal        EditLevelMainMenu
/* 3EF08 8004E708 00000000 */   nop
/* 3EF0C 8004E70C D7390108 */  j          .L8004E75C
/* 3EF10 8004E710 00000000 */   nop
.L8004E714:
/* 3EF14 8004E714 2C0E828F */  lw         $v0, %gp_rel(EditMode)($gp)
/* 3EF18 8004E718 00000000 */  nop
/* 3EF1C 8004E71C 08004010 */  beqz       $v0, .L8004E740
/* 3EF20 8004E720 A0000424 */   addiu     $a0, $zero, 0xA0
/* 3EF24 8004E724 25000524 */  addiu      $a1, $zero, 0x25
/* 3EF28 8004E728 21300000 */  addu       $a2, $zero, $zero
/* 3EF2C 8004E72C 0180073C */  lui        $a3, %hi(D_80012F08)
/* 3EF30 8004E730 3063010C */  jal        Print
/* 3EF34 8004E734 082FE724 */   addiu     $a3, $a3, %lo(D_80012F08)
/* 3EF38 8004E738 D5390108 */  j          .L8004E754
/* 3EF3C 8004E73C 00000000 */   nop
.L8004E740:
/* 3EF40 8004E740 25000524 */  addiu      $a1, $zero, 0x25
/* 3EF44 8004E744 21300000 */  addu       $a2, $zero, $zero
/* 3EF48 8004E748 0180073C */  lui        $a3, %hi(D_80012F18)
/* 3EF4C 8004E74C 3063010C */  jal        Print
/* 3EF50 8004E750 182FE724 */   addiu     $a3, $a3, %lo(D_80012F18)
.L8004E754:
/* 3EF54 8004E754 4138010C */  jal        EditLevelPaintMenu
/* 3EF58 8004E758 00000000 */   nop
.L8004E75C:
/* 3EF5C 8004E75C 1000BF8F */  lw         $ra, 0x10($sp)
/* 3EF60 8004E760 00000000 */  nop
/* 3EF64 8004E764 0800E003 */  jr         $ra
/* 3EF68 8004E768 1800BD27 */   addiu     $sp, $sp, 0x18
.size EditLevel, . - EditLevel
