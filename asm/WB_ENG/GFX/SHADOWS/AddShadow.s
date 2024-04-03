.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AddShadow
/* 52E4C 8006264C D411838F */  lw         $v1, %gp_rel(ShadowOffset)($gp)
/* 52E50 80062650 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 52E54 80062654 2800B2AF */  sw         $s2, 0x28($sp)
/* 52E58 80062658 21908000 */  addu       $s2, $a0, $zero
/* 52E5C 8006265C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 52E60 80062660 2198A000 */  addu       $s3, $a1, $zero
/* 52E64 80062664 3000B4AF */  sw         $s4, 0x30($sp)
/* 52E68 80062668 21A0C000 */  addu       $s4, $a2, $zero
/* 52E6C 8006266C 2400B1AF */  sw         $s1, 0x24($sp)
/* 52E70 80062670 2188E000 */  addu       $s1, $a3, $zero
/* 52E74 80062674 3400BFAF */  sw         $ra, 0x34($sp)
/* 52E78 80062678 14006228 */  slti       $v0, $v1, 0x14
/* 52E7C 8006267C 21004010 */  beqz       $v0, .L80062704
/* 52E80 80062680 2000B0AF */   sw        $s0, 0x20($sp)
/* 52E84 80062684 C0100300 */  sll        $v0, $v1, 3
/* 52E88 80062688 23104300 */  subu       $v0, $v0, $v1
/* 52E8C 8006268C 00110200 */  sll        $v0, $v0, 4
/* 52E90 80062690 0C80103C */  lui        $s0, %hi(ShadowPolyList)
/* 52E94 80062694 00E91026 */  addiu      $s0, $s0, %lo(ShadowPolyList)
/* 52E98 80062698 0980033C */  lui        $v1, %hi(ot_ndx)
/* 52E9C 8006269C 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* 52EA0 800626A0 5000A58F */  lw         $a1, 0x50($sp)
/* 52EA4 800626A4 80200300 */  sll        $a0, $v1, 2
/* 52EA8 800626A8 21208300 */  addu       $a0, $a0, $v1
/* 52EAC 800626AC C0200400 */  sll        $a0, $a0, 3
/* 52EB0 800626B0 21209000 */  addu       $a0, $a0, $s0
/* 52EB4 800626B4 4988010C */  jal        SetupShadow
/* 52EB8 800626B8 21204400 */   addu      $a0, $v0, $a0
/* 52EBC 800626BC 21284002 */  addu       $a1, $s2, $zero
/* 52EC0 800626C0 D411868F */  lw         $a2, %gp_rel(ShadowOffset)($gp)
/* 52EC4 800626C4 4800A28F */  lw         $v0, 0x48($sp)
/* 52EC8 800626C8 4C00A38F */  lw         $v1, 0x4C($sp)
/* 52ECC 800626CC 21388002 */  addu       $a3, $s4, $zero
/* 52ED0 800626D0 1000B1AF */  sw         $s1, 0x10($sp)
/* 52ED4 800626D4 C0200600 */  sll        $a0, $a2, 3
/* 52ED8 800626D8 23208600 */  subu       $a0, $a0, $a2
/* 52EDC 800626DC 00210400 */  sll        $a0, $a0, 4
/* 52EE0 800626E0 21209000 */  addu       $a0, $a0, $s0
/* 52EE4 800626E4 21306002 */  addu       $a2, $s3, $zero
/* 52EE8 800626E8 1400A2AF */  sw         $v0, 0x14($sp)
/* 52EEC 800626EC ED83010C */  jal        DrawShadow
/* 52EF0 800626F0 1800A3AF */   sw        $v1, 0x18($sp)
/* 52EF4 800626F4 D411828F */  lw         $v0, %gp_rel(ShadowOffset)($gp)
/* 52EF8 800626F8 00000000 */  nop
/* 52EFC 800626FC 01004224 */  addiu      $v0, $v0, 0x1
/* 52F00 80062700 D41182AF */  sw         $v0, %gp_rel(ShadowOffset)($gp)
.L80062704:
/* 52F04 80062704 3400BF8F */  lw         $ra, 0x34($sp)
/* 52F08 80062708 3000B48F */  lw         $s4, 0x30($sp)
/* 52F0C 8006270C 2C00B38F */  lw         $s3, 0x2C($sp)
/* 52F10 80062710 2800B28F */  lw         $s2, 0x28($sp)
/* 52F14 80062714 2400B18F */  lw         $s1, 0x24($sp)
/* 52F18 80062718 2000B08F */  lw         $s0, 0x20($sp)
/* 52F1C 8006271C 0800E003 */  jr         $ra
/* 52F20 80062720 3800BD27 */   addiu     $sp, $sp, 0x38
.size AddShadow, . - AddShadow
