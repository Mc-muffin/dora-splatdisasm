.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PlayXA_VO
/* 4F64C 8005EE4C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4F650 8005EE50 0C80073C */  lui        $a3, %hi(XAFiles + 0x1C)
/* 4F654 8005EE54 1000B0AF */  sw         $s0, 0x10($sp)
/* 4F658 8005EE58 44E8F024 */  addiu      $s0, $a3, %lo(XAFiles + 0x1C)
/* 4F65C 8005EE5C 02000224 */  addiu      $v0, $zero, 0x2
/* 4F660 8005EE60 0880033C */  lui        $v1, %hi(XATable)
/* 4F664 8005EE64 E4656324 */  addiu      $v1, $v1, %lo(XATable)
/* 4F668 8005EE68 C0200400 */  sll        $a0, $a0, 3
/* 4F66C 8005EE6C 21308300 */  addu       $a2, $a0, $v1
/* 4F670 8005EE70 21186400 */  addu       $v1, $v1, $a0
/* 4F674 8005EE74 1400BFAF */  sw         $ra, 0x14($sp)
/* 4F678 8005EE78 180002AE */  sw         $v0, 0x18($s0)
/* 4F67C 8005EE7C 0980023C */  lui        $v0, %hi(EffectsVolume)
/* 4F680 8005EE80 A049428C */  lw         $v0, %lo(EffectsVolume)($v0)
/* 4F684 8005EE84 0400658C */  lw         $a1, 0x4($v1)
/* 4F688 8005EE88 40200200 */  sll        $a0, $v0, 1
/* 4F68C 8005EE8C 21208200 */  addu       $a0, $a0, $v0
/* 4F690 8005EE90 C0200400 */  sll        $a0, $a0, 3
/* 4F694 8005EE94 23208200 */  subu       $a0, $a0, $v0
/* 4F698 8005EE98 00230400 */  sll        $a0, $a0, 12
/* 4F69C 8005EE9C 0000C28C */  lw         $v0, 0x0($a2)
/* 4F6A0 8005EEA0 03240400 */  sra        $a0, $a0, 16
/* 4F6A4 8005EEA4 44E8E2AC */  sw         $v0, %lo(XAFiles + 0x1C)($a3)
/* 4F6A8 8005EEA8 1F7B010C */  jal        SetXA_Volume
/* 4F6AC 8005EEAC 040005AE */   sw        $a1, 0x4($s0)
/* 4F6B0 8005EEB0 C47A010C */  jal        PlayXA
/* 4F6B4 8005EEB4 21200002 */   addu      $a0, $s0, $zero
/* 4F6B8 8005EEB8 1400BF8F */  lw         $ra, 0x14($sp)
/* 4F6BC 8005EEBC 1000B08F */  lw         $s0, 0x10($sp)
/* 4F6C0 8005EEC0 0800E003 */  jr         $ra
/* 4F6C4 8005EEC4 1800BD27 */   addiu     $sp, $sp, 0x18
.size PlayXA_VO, . - PlayXA_VO
