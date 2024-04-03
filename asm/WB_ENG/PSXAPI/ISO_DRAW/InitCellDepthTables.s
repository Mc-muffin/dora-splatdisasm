.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel InitCellDepthTables
/* 55700 80064F00 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 55704 80064F04 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 55708 80064F08 0880113C */  lui        $s1, %hi(TestWorld)
/* 5570C 80064F0C 1800B0AF */  sw         $s0, 0x18($sp)
/* 55710 80064F10 8C653026 */  addiu      $s0, $s1, %lo(TestWorld)
/* 55714 80064F14 3400BFAF */  sw         $ra, 0x34($sp)
/* 55718 80064F18 3000B6AF */  sw         $s6, 0x30($sp)
/* 5571C 80064F1C 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 55720 80064F20 2800B4AF */  sw         $s4, 0x28($sp)
/* 55724 80064F24 2400B3AF */  sw         $s3, 0x24($sp)
/* 55728 80064F28 2000B2AF */  sw         $s2, 0x20($sp)
/* 5572C 80064F2C 0C00148E */  lw         $s4, 0xC($s0)
/* 55730 80064F30 D389010C */  jal        CalcGoodScrollSize_Offset
/* 55734 80064F34 02000424 */   addiu     $a0, $zero, 0x2
/* 55738 80064F38 21900000 */  addu       $s2, $zero, $zero
/* 5573C 80064F3C 2B3F010C */  jal        new_malloc
/* 55740 80064F40 80201400 */   sll       $a0, $s4, 2
/* 55744 80064F44 21984000 */  addu       $s3, $v0, $zero
/* 55748 80064F48 21B02002 */  addu       $s6, $s1, $zero
/* 5574C 80064F4C 3800801A */  blez       $s4, .L80065030
/* 55750 80064F50 240013AE */   sw        $s3, 0x24($s0)
/* 55754 80064F54 0A80023C */  lui        $v0, %hi(GeomEnv + 0x18)
/* 55758 80064F58 58B15524 */  addiu      $s5, $v0, %lo(GeomEnv + 0x18)
.L80064F5C:
/* 5575C 80064F5C ADBA113C */  lui        $s1, (0xBAADF00D >> 16)
/* 55760 80064F60 0DF03136 */  ori        $s1, $s1, (0xBAADF00D & 0xFFFF)
/* 55764 80064F64 656D010C */  jal        GraphicsSetAutoClear
/* 55768 80064F68 21200000 */   addu      $a0, $zero, $zero
/* 5576C 80064F6C 3C89010C */  jal        ResetShadows
/* 55770 80064F70 00000000 */   nop
/* 55774 80064F74 0164010C */  jal        TextResetText
/* 55778 80064F78 00000000 */   nop
/* 5577C 80064F7C 9549010C */  jal        ResetBoxes
/* 55780 80064F80 00000000 */   nop
/* 55784 80064F84 0000AC8E */  lw         $t4, 0x0($s5)
/* 55788 80064F88 0400AD8E */  lw         $t5, 0x4($s5)
/* 5578C 80064F8C 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
/* 55790 80064F90 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
/* 55794 80064F94 0800AC8E */  lw         $t4, 0x8($s5)
/* 55798 80064F98 0C00AD8E */  lw         $t5, 0xC($s5)
/* 5579C 80064F9C 1000AE8E */  lw         $t6, 0x10($s5)
/* 557A0 80064FA0 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
/* 557A4 80064FA4 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
/* 557A8 80064FA8 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
/* 557AC 80064FAC 1400AC8E */  lw         $t4, 0x14($s5)
/* 557B0 80064FB0 1800AD8E */  lw         $t5, 0x18($s5)
/* 557B4 80064FB4 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
/* 557B8 80064FB8 1C00AE8E */  lw         $t6, 0x1C($s5)
/* 557BC 80064FBC 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
/* 557C0 80064FC0 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
/* 557C4 80064FC4 8C65C226 */  addiu      $v0, $s6, %lo(TestWorld)
/* 557C8 80064FC8 1800508C */  lw         $s0, 0x18($v0)
/* 557CC 80064FCC 0980013C */  lui        $at, %hi(ScrollCamXPos)
/* 557D0 80064FD0 484320AC */  sw         $zero, %lo(ScrollCamXPos)($at)
/* 557D4 80064FD4 0980013C */  lui        $at, %hi(ScrollCamYPos)
/* 557D8 80064FD8 4C4320AC */  sw         $zero, %lo(ScrollCamYPos)($at)
/* 557DC 80064FDC 0980013C */  lui        $at, %hi(ScrollCamZPos)
/* 557E0 80064FE0 504320AC */  sw         $zero, %lo(ScrollCamZPos)($at)
/* 557E4 80064FE4 893A010C */  jal        ResetCelMem
/* 557E8 80064FE8 00000000 */   nop
/* 557EC 80064FEC FF034232 */  andi       $v0, $s2, 0x3FF
/* 557F0 80064FF0 80100200 */  sll        $v0, $v0, 2
/* 557F4 80064FF4 21105000 */  addu       $v0, $v0, $s0
/* 557F8 80064FF8 0000478C */  lw         $a3, 0x0($v0)
/* 557FC 80064FFC 00000000 */  nop
/* 55800 80065000 0600E010 */  beqz       $a3, .L8006501C
/* 55804 80065004 80010424 */   addiu     $a0, $zero, 0x180
/* 55808 80065008 1000B2AF */  sw         $s2, 0x10($sp)
/* 5580C 8006500C 21280000 */  addu       $a1, $zero, $zero
/* 55810 80065010 7A8E010C */  jal        CreateCelDepth
/* 55814 80065014 80010624 */   addiu     $a2, $zero, 0x180
/* 55818 80065018 21884000 */  addu       $s1, $v0, $zero
.L8006501C:
/* 5581C 8006501C 000071AE */  sw         $s1, 0x0($s3)
/* 55820 80065020 01005226 */  addiu      $s2, $s2, 0x1
/* 55824 80065024 2A105402 */  slt        $v0, $s2, $s4
/* 55828 80065028 CCFF4014 */  bnez       $v0, .L80064F5C
/* 5582C 8006502C 04007326 */   addiu     $s3, $s3, 0x4
.L80065030:
/* 55830 80065030 3400BF8F */  lw         $ra, 0x34($sp)
/* 55834 80065034 3000B68F */  lw         $s6, 0x30($sp)
/* 55838 80065038 2C00B58F */  lw         $s5, 0x2C($sp)
/* 5583C 8006503C 2800B48F */  lw         $s4, 0x28($sp)
/* 55840 80065040 2400B38F */  lw         $s3, 0x24($sp)
/* 55844 80065044 2000B28F */  lw         $s2, 0x20($sp)
/* 55848 80065048 1C00B18F */  lw         $s1, 0x1C($sp)
/* 5584C 8006504C 1800B08F */  lw         $s0, 0x18($sp)
/* 55850 80065050 0800E003 */  jr         $ra
/* 55854 80065054 3800BD27 */   addiu     $sp, $sp, 0x38
.size InitCellDepthTables, . - InitCellDepthTables
