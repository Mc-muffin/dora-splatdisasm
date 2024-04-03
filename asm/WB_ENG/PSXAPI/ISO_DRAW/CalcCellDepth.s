.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel CalcCellDepth
/* 56F04 80066704 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 56F08 80066708 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 56F0C 8006670C ADBA113C */  lui        $s1, (0xBAADF00D >> 16)
/* 56F10 80066710 0DF03136 */  ori        $s1, $s1, (0xBAADF00D & 0xFFFF)
/* 56F14 80066714 2000B2AF */  sw         $s2, 0x20($sp)
/* 56F18 80066718 21908000 */  addu       $s2, $a0, $zero
/* 56F1C 8006671C 21200000 */  addu       $a0, $zero, $zero
/* 56F20 80066720 2400BFAF */  sw         $ra, 0x24($sp)
/* 56F24 80066724 656D010C */  jal        GraphicsSetAutoClear
/* 56F28 80066728 1800B0AF */   sw        $s0, 0x18($sp)
/* 56F2C 8006672C 3C89010C */  jal        ResetShadows
/* 56F30 80066730 00000000 */   nop
/* 56F34 80066734 0164010C */  jal        TextResetText
/* 56F38 80066738 00000000 */   nop
/* 56F3C 8006673C 9549010C */  jal        ResetBoxes
/* 56F40 80066740 00000000 */   nop
/* 56F44 80066744 0A80033C */  lui        $v1, %hi(GeomEnv + 0x18)
/* 56F48 80066748 58B16324 */  addiu      $v1, $v1, %lo(GeomEnv + 0x18)
/* 56F4C 8006674C 00006C8C */  lw         $t4, 0x0($v1)
/* 56F50 80066750 04006D8C */  lw         $t5, 0x4($v1)
/* 56F54 80066754 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 56F58 80066758 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 56F5C 8006675C 08006C8C */  lw         $t4, 0x8($v1)
/* 56F60 80066760 0C006D8C */  lw         $t5, 0xC($v1)
/* 56F64 80066764 10006E8C */  lw         $t6, 0x10($v1)
/* 56F68 80066768 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 56F6C 8006676C 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 56F70 80066770 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 56F74 80066774 14006C8C */  lw         $t4, 0x14($v1)
/* 56F78 80066778 18006D8C */  lw         $t5, 0x18($v1)
/* 56F7C 8006677C 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
/* 56F80 80066780 1C006E8C */  lw         $t6, 0x1C($v1)
/* 56F84 80066784 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
/* 56F88 80066788 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
/* 56F8C 8006678C 0880023C */  lui        $v0, %hi(TestWorld + 0x18)
/* 56F90 80066790 A465508C */  lw         $s0, %lo(TestWorld + 0x18)($v0)
/* 56F94 80066794 0980013C */  lui        $at, %hi(ScrollCamXPos)
/* 56F98 80066798 484320AC */  sw         $zero, %lo(ScrollCamXPos)($at)
/* 56F9C 8006679C 0980013C */  lui        $at, %hi(ScrollCamYPos)
/* 56FA0 800667A0 4C4320AC */  sw         $zero, %lo(ScrollCamYPos)($at)
/* 56FA4 800667A4 0980013C */  lui        $at, %hi(ScrollCamZPos)
/* 56FA8 800667A8 504320AC */  sw         $zero, %lo(ScrollCamZPos)($at)
/* 56FAC 800667AC 893A010C */  jal        ResetCelMem
/* 56FB0 800667B0 00000000 */   nop
/* 56FB4 800667B4 FF034232 */  andi       $v0, $s2, 0x3FF
/* 56FB8 800667B8 80100200 */  sll        $v0, $v0, 2
/* 56FBC 800667BC 21105000 */  addu       $v0, $v0, $s0
/* 56FC0 800667C0 0000478C */  lw         $a3, 0x0($v0)
/* 56FC4 800667C4 00000000 */  nop
/* 56FC8 800667C8 0600E010 */  beqz       $a3, .L800667E4
/* 56FCC 800667CC 80010424 */   addiu     $a0, $zero, 0x180
/* 56FD0 800667D0 1000B2AF */  sw         $s2, 0x10($sp)
/* 56FD4 800667D4 21280000 */  addu       $a1, $zero, $zero
/* 56FD8 800667D8 7A8E010C */  jal        CreateCelDepth
/* 56FDC 800667DC 80010624 */   addiu     $a2, $zero, 0x180
/* 56FE0 800667E0 21884000 */  addu       $s1, $v0, $zero
.L800667E4:
/* 56FE4 800667E4 21102002 */  addu       $v0, $s1, $zero
/* 56FE8 800667E8 2400BF8F */  lw         $ra, 0x24($sp)
/* 56FEC 800667EC 2000B28F */  lw         $s2, 0x20($sp)
/* 56FF0 800667F0 1C00B18F */  lw         $s1, 0x1C($sp)
/* 56FF4 800667F4 1800B08F */  lw         $s0, 0x18($sp)
/* 56FF8 800667F8 0800E003 */  jr         $ra
/* 56FFC 800667FC 2800BD27 */   addiu     $sp, $sp, 0x28
.size CalcCellDepth, . - CalcCellDepth
