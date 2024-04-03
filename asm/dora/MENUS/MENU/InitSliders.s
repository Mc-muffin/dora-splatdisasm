.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitSliders
/* 15EC0 800256C0 21280000 */  addu       $a1, $zero, $zero
/* 15EC4 800256C4 0980023C */  lui        $v0, %hi(AudioSliders)
/* 15EC8 800256C8 F87E5824 */  addiu      $t8, $v0, %lo(AudioSliders)
/* 15ECC 800256CC A0000724 */  addiu      $a3, $zero, 0xA0
/* 15ED0 800256D0 FF000624 */  addiu      $a2, $zero, 0xFF
/* 15ED4 800256D4 3A000D24 */  addiu      $t5, $zero, 0x3A
/* 15ED8 800256D8 10000424 */  addiu      $a0, $zero, 0x10
/* 15EDC 800256DC 08000F24 */  addiu      $t7, $zero, 0x8
/* 15EE0 800256E0 38000E24 */  addiu      $t6, $zero, 0x38
/* 15EE4 800256E4 28078997 */  lhu        $t1, %gp_rel(SliderStartX)($gp)
/* 15EE8 800256E8 2C078897 */  lhu        $t0, %gp_rel(SliderStartY)($gp)
/* 15EEC 800256EC 30078297 */  lhu        $v0, %gp_rel(SliderWidth)($gp)
/* 15EF0 800256F0 34078397 */  lhu        $v1, %gp_rel(SliderHeight)($gp)
/* 15EF4 800256F4 21582201 */  addu       $t3, $t1, $v0
/* 15EF8 800256F8 21500301 */  addu       $t2, $t0, $v1
/* 15EFC 800256FC 0100AC24 */  addiu      $t4, $a1, 0x1
.L80025700:
/* 15F00 80025700 C0100500 */  sll        $v0, $a1, 3
/* 15F04 80025704 21104500 */  addu       $v0, $v0, $a1
/* 15F08 80025708 C0100200 */  sll        $v0, $v0, 3
/* 15F0C 8002570C 21180203 */  addu       $v1, $t8, $v0
/* 15F10 80025710 0200A228 */  slti       $v0, $a1, 0x2
/* 15F14 80025714 01000524 */  addiu      $a1, $zero, 0x1
.L80025718:
/* 15F18 80025718 03006FA0 */  sb         $t7, 0x3($v1)
/* 15F1C 8002571C 0A004010 */  beqz       $v0, .L80025748
/* 15F20 80025720 07006EA0 */   sb        $t6, 0x7($v1)
/* 15F24 80025724 040067A0 */  sb         $a3, 0x4($v1)
/* 15F28 80025728 0C0067A0 */  sb         $a3, 0xC($v1)
/* 15F2C 8002572C 140067A0 */  sb         $a3, 0x14($v1)
/* 15F30 80025730 1C0067A0 */  sb         $a3, 0x1C($v1)
/* 15F34 80025734 050067A0 */  sb         $a3, 0x5($v1)
/* 15F38 80025738 0D0067A0 */  sb         $a3, 0xD($v1)
/* 15F3C 8002573C 150067A0 */  sb         $a3, 0x15($v1)
/* 15F40 80025740 DA950008 */  j          .L80025768
/* 15F44 80025744 1D0067A0 */   sb        $a3, 0x1D($v1)
.L80025748:
/* 15F48 80025748 040064A0 */  sb         $a0, 0x4($v1)
/* 15F4C 8002574C 0C0064A0 */  sb         $a0, 0xC($v1)
/* 15F50 80025750 140064A0 */  sb         $a0, 0x14($v1)
/* 15F54 80025754 1C0064A0 */  sb         $a0, 0x1C($v1)
/* 15F58 80025758 050064A0 */  sb         $a0, 0x5($v1)
/* 15F5C 8002575C 0D0064A0 */  sb         $a0, 0xD($v1)
/* 15F60 80025760 150064A0 */  sb         $a0, 0x15($v1)
/* 15F64 80025764 1D0064A0 */  sb         $a0, 0x1D($v1)
.L80025768:
/* 15F68 80025768 060066A0 */  sb         $a2, 0x6($v1)
/* 15F6C 8002576C 0E0066A0 */  sb         $a2, 0xE($v1)
/* 15F70 80025770 160066A0 */  sb         $a2, 0x16($v1)
/* 15F74 80025774 1E0066A0 */  sb         $a2, 0x1E($v1)
/* 15F78 80025778 07006DA0 */  sb         $t5, 0x7($v1)
/* 15F7C 8002577C 080069A4 */  sh         $t1, 0x8($v1)
/* 15F80 80025780 0A0068A4 */  sh         $t0, 0xA($v1)
/* 15F84 80025784 10006BA4 */  sh         $t3, 0x10($v1)
/* 15F88 80025788 120068A4 */  sh         $t0, 0x12($v1)
/* 15F8C 8002578C 20006BA4 */  sh         $t3, 0x20($v1)
/* 15F90 80025790 22006AA4 */  sh         $t2, 0x22($v1)
/* 15F94 80025794 180069A4 */  sh         $t1, 0x18($v1)
/* 15F98 80025798 1A006AA4 */  sh         $t2, 0x1A($v1)
/* 15F9C 8002579C FFFFA524 */  addiu      $a1, $a1, -0x1
/* 15FA0 800257A0 DDFFA104 */  bgez       $a1, .L80025718
/* 15FA4 800257A4 24006324 */   addiu     $v1, $v1, 0x24
/* 15FA8 800257A8 21288001 */  addu       $a1, $t4, $zero
/* 15FAC 800257AC 0400A228 */  slti       $v0, $a1, 0x4
/* 15FB0 800257B0 D3FF4014 */  bnez       $v0, .L80025700
/* 15FB4 800257B4 0100AC24 */   addiu     $t4, $a1, 0x1
/* 15FB8 800257B8 0800E003 */  jr         $ra
/* 15FBC 800257BC 00000000 */   nop
.size InitSliders, . - InitSliders
