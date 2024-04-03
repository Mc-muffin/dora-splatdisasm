.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DrawLevel_DrawCell
/* 56674 80065E74 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* 56678 80065E78 801F0B3C */  lui        $t3, (0x1F80006C >> 16)
/* 5667C 80065E7C 6C006B35 */  ori        $t3, $t3, (0x1F80006C & 0xFFFF)
/* 56680 80065E80 21C88000 */  addu       $t9, $a0, $zero
/* 56684 80065E84 FF03A530 */  andi       $a1, $a1, 0x3FF
/* 56688 80065E88 80100500 */  sll        $v0, $a1, 2
/* 5668C 80065E8C 21104500 */  addu       $v0, $v0, $a1
/* 56690 80065E90 C0100200 */  sll        $v0, $v0, 3
/* 56694 80065E94 0800B0AF */  sw         $s0, 0x8($sp)
/* 56698 80065E98 0800298F */  lw         $t1, 0x8($t9)
/* 5669C 80065E9C 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 566A0 80065EA0 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 566A4 80065EA4 3800248F */  lw         $a0, 0x38($t9)
/* 566A8 80065EA8 21186200 */  addu       $v1, $v1, $v0
/* 566AC 80065EAC 0000788C */  lw         $t8, 0x0($v1)
/* 566B0 80065EB0 32008018 */  blez       $a0, .L80065F7C
/* 566B4 80065EB4 2170A003 */   addu      $t6, $sp, $zero
/* 566B8 80065EB8 FF000A3C */  lui        $t2, (0xFFFFFF >> 16)
/* 566BC 80065EBC FFFF4A35 */  ori        $t2, $t2, (0xFFFFFF & 0xFFFF)
/* 566C0 80065EC0 00040F3C */  lui        $t7, (0x4000000 >> 16)
/* 566C4 80065EC4 21608000 */  addu       $t4, $a0, $zero
.L80065EC8:
/* 566C8 80065EC8 0000ED90 */  lbu        $t5, 0x0($a3)
/* 566CC 80065ECC 0100E724 */  addiu      $a3, $a3, 0x1
/* 566D0 80065ED0 14002295 */  lhu        $v0, 0x14($t1)
/* 566D4 80065ED4 16002395 */  lhu        $v1, 0x16($t1)
/* 566D8 80065ED8 80100200 */  sll        $v0, $v0, 2
/* 566DC 80065EDC 21206201 */  addu       $a0, $t3, $v0
/* 566E0 80065EE0 80180300 */  sll        $v1, $v1, 2
/* 566E4 80065EE4 21406301 */  addu       $t0, $t3, $v1
/* 566E8 80065EE8 18002295 */  lhu        $v0, 0x18($t1)
/* 566EC 80065EEC 0000848C */  lw         $a0, 0x0($a0)
/* 566F0 80065EF0 0000038D */  lw         $v1, 0x0($t0)
/* 566F4 80065EF4 80100200 */  sll        $v0, $v0, 2
/* 566F8 80065EF8 21286201 */  addu       $a1, $t3, $v0
/* 566FC 80065EFC 0000A28C */  lw         $v0, 0x0($a1)
/* 56700 80065F00 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 56704 80065F04 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 56708 80065F08 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 5670C 80065F0C 00000000 */  nop
/* 56710 80065F10 00000000 */  nop
/* 56714 80065F14 0600404B */  NCLIP
/* 56718 80065F18 0000D8E9 */  swc2       $24, 0x0($t6)
/* 5671C 80065F1C 0000C28D */  lw         $v0, 0x0($t6)
/* 56720 80065F20 00000000 */  nop
/* 56724 80065F24 12004104 */  bgez       $v0, .L80065F70
/* 56728 80065F28 00000000 */   nop
/* 5672C 80065F2C 08002CE9 */  swc2       $12, 0x8($t1)
/* 56730 80065F30 0C002DE9 */  swc2       $13, 0xC($t1)
/* 56734 80065F34 10002EE9 */  swc2       $14, 0x10($t1)
/* 56738 80065F38 C0100D00 */  sll        $v0, $t5, 3
/* 5673C 80065F3C 21284600 */  addu       $a1, $v0, $a2
/* 56740 80065F40 0000A48C */  lw         $a0, 0x0($a1)
/* 56744 80065F44 00000000 */  nop
/* 56748 80065F48 05008010 */  beqz       $a0, .L80065F60
/* 5674C 80065F4C 21184000 */   addu      $v1, $v0, $zero
/* 56750 80065F50 24108A00 */  and        $v0, $a0, $t2
/* 56754 80065F54 25104F00 */  or         $v0, $v0, $t7
/* 56758 80065F58 DA970108 */  j          .L80065F68
/* 5675C 80065F5C 000022AD */   sw        $v0, 0x0($t1)
.L80065F60:
/* 56760 80065F60 00002FAD */  sw         $t7, 0x0($t1)
/* 56764 80065F64 0400A9AC */  sw         $t1, 0x4($a1)
.L80065F68:
/* 56768 80065F68 21106600 */  addu       $v0, $v1, $a2
/* 5676C 80065F6C 000049AC */  sw         $t1, 0x0($v0)
.L80065F70:
/* 56770 80065F70 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 56774 80065F74 D4FF8015 */  bnez       $t4, .L80065EC8
/* 56778 80065F78 1C002925 */   addiu     $t1, $t1, 0x1C
.L80065F7C:
/* 5677C 80065F7C 801F0B3C */  lui        $t3, (0x1F80006C >> 16)
/* 56780 80065F80 6C006B35 */  ori        $t3, $t3, (0x1F80006C & 0xFFFF)
/* 56784 80065F84 3C00248F */  lw         $a0, 0x3C($t9)
/* 56788 80065F88 0C00298F */  lw         $t1, 0xC($t9)
/* 5678C 80065F8C 36008018 */  blez       $a0, .L80066068
/* 56790 80065F90 FF001033 */   andi      $s0, $t8, 0xFF
/* 56794 80065F94 FF000F3C */  lui        $t7, (0xFFFFFF >> 16)
/* 56798 80065F98 FFFFEF35 */  ori        $t7, $t7, (0xFFFFFF & 0xFFFF)
/* 5679C 80065F9C 0005183C */  lui        $t8, (0x5000000 >> 16)
/* 567A0 80065FA0 21608000 */  addu       $t4, $a0, $zero
.L80065FA4:
/* 567A4 80065FA4 0000ED90 */  lbu        $t5, 0x0($a3)
/* 567A8 80065FA8 18002295 */  lhu        $v0, 0x18($t1)
/* 567AC 80065FAC 0100E724 */  addiu      $a3, $a3, 0x1
/* 567B0 80065FB0 80180200 */  sll        $v1, $v0, 2
/* 567B4 80065FB4 21206301 */  addu       $a0, $t3, $v1
/* 567B8 80065FB8 1A002295 */  lhu        $v0, 0x1A($t1)
/* 567BC 80065FBC 1C002395 */  lhu        $v1, 0x1C($t1)
/* 567C0 80065FC0 0000848C */  lw         $a0, 0x0($a0)
/* 567C4 80065FC4 80100200 */  sll        $v0, $v0, 2
/* 567C8 80065FC8 21406201 */  addu       $t0, $t3, $v0
/* 567CC 80065FCC 80180300 */  sll        $v1, $v1, 2
/* 567D0 80065FD0 21286301 */  addu       $a1, $t3, $v1
/* 567D4 80065FD4 1E002295 */  lhu        $v0, 0x1E($t1)
/* 567D8 80065FD8 0000038D */  lw         $v1, 0x0($t0)
/* 567DC 80065FDC 80100200 */  sll        $v0, $v0, 2
/* 567E0 80065FE0 21506201 */  addu       $t2, $t3, $v0
/* 567E4 80065FE4 0000A28C */  lw         $v0, 0x0($a1)
/* 567E8 80065FE8 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 567EC 80065FEC 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 567F0 80065FF0 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 567F4 80065FF4 00000000 */  nop
/* 567F8 80065FF8 00000000 */  nop
/* 567FC 80065FFC 0600404B */  NCLIP
/* 56800 80066000 0000D8E9 */  swc2       $24, 0x0($t6)
/* 56804 80066004 0000C28D */  lw         $v0, 0x0($t6)
/* 56808 80066008 00000000 */  nop
/* 5680C 8006600C 13004104 */  bgez       $v0, .L8006605C
/* 56810 80066010 00000000 */   nop
/* 56814 80066014 08002CE9 */  swc2       $12, 0x8($t1)
/* 56818 80066018 0C002DE9 */  swc2       $13, 0xC($t1)
/* 5681C 8006601C 10002EE9 */  swc2       $14, 0x10($t1)
/* 56820 80066020 C0180D00 */  sll        $v1, $t5, 3
/* 56824 80066024 0000428D */  lw         $v0, 0x0($t2)
/* 56828 80066028 21206600 */  addu       $a0, $v1, $a2
/* 5682C 8006602C 140022AD */  sw         $v0, 0x14($t1)
/* 56830 80066030 0000828C */  lw         $v0, 0x0($a0)
/* 56834 80066034 00000000 */  nop
/* 56838 80066038 04004010 */  beqz       $v0, .L8006604C
/* 5683C 8006603C 24104F00 */   and       $v0, $v0, $t7
/* 56840 80066040 25105800 */  or         $v0, $v0, $t8
/* 56844 80066044 15980108 */  j          .L80066054
/* 56848 80066048 000022AD */   sw        $v0, 0x0($t1)
.L8006604C:
/* 5684C 8006604C 000038AD */  sw         $t8, 0x0($t1)
/* 56850 80066050 040089AC */  sw         $t1, 0x4($a0)
.L80066054:
/* 56854 80066054 21106600 */  addu       $v0, $v1, $a2
/* 56858 80066058 000049AC */  sw         $t1, 0x0($v0)
.L8006605C:
/* 5685C 8006605C FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 56860 80066060 D0FF8015 */  bnez       $t4, .L80065FA4
/* 56864 80066064 20002925 */   addiu     $t1, $t1, 0x20
.L80066068:
/* 56868 80066068 801F0B3C */  lui        $t3, (0x1F80006C >> 16)
/* 5686C 8006606C 4000248F */  lw         $a0, 0x40($t9)
/* 56870 80066070 1000298F */  lw         $t1, 0x10($t9)
/* 56874 80066074 32008018 */  blez       $a0, .L80066140
/* 56878 80066078 6C006B35 */   ori       $t3, $t3, (0x1F80006C & 0xFFFF)
/* 5687C 8006607C FF000A3C */  lui        $t2, (0xFFFFFF >> 16)
/* 56880 80066080 FFFF4A35 */  ori        $t2, $t2, (0xFFFFFF & 0xFFFF)
/* 56884 80066084 00060F3C */  lui        $t7, (0x6000000 >> 16)
/* 56888 80066088 21608000 */  addu       $t4, $a0, $zero
.L8006608C:
/* 5688C 8006608C 0000ED90 */  lbu        $t5, 0x0($a3)
/* 56890 80066090 0100E724 */  addiu      $a3, $a3, 0x1
/* 56894 80066094 1C002295 */  lhu        $v0, 0x1C($t1)
/* 56898 80066098 1E002395 */  lhu        $v1, 0x1E($t1)
/* 5689C 8006609C 80100200 */  sll        $v0, $v0, 2
/* 568A0 800660A0 21206201 */  addu       $a0, $t3, $v0
/* 568A4 800660A4 80180300 */  sll        $v1, $v1, 2
/* 568A8 800660A8 21406301 */  addu       $t0, $t3, $v1
/* 568AC 800660AC 20002295 */  lhu        $v0, 0x20($t1)
/* 568B0 800660B0 0000848C */  lw         $a0, 0x0($a0)
/* 568B4 800660B4 0000038D */  lw         $v1, 0x0($t0)
/* 568B8 800660B8 80100200 */  sll        $v0, $v0, 2
/* 568BC 800660BC 21286201 */  addu       $a1, $t3, $v0
/* 568C0 800660C0 0000A28C */  lw         $v0, 0x0($a1)
/* 568C4 800660C4 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 568C8 800660C8 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 568CC 800660CC 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 568D0 800660D0 00000000 */  nop
/* 568D4 800660D4 00000000 */  nop
/* 568D8 800660D8 0600404B */  NCLIP
/* 568DC 800660DC 0000D8E9 */  swc2       $24, 0x0($t6)
/* 568E0 800660E0 0000C28D */  lw         $v0, 0x0($t6)
/* 568E4 800660E4 00000000 */  nop
/* 568E8 800660E8 12004104 */  bgez       $v0, .L80066134
/* 568EC 800660EC 00000000 */   nop
/* 568F0 800660F0 08002CE9 */  swc2       $12, 0x8($t1)
/* 568F4 800660F4 10002DE9 */  swc2       $13, 0x10($t1)
/* 568F8 800660F8 18002EE9 */  swc2       $14, 0x18($t1)
/* 568FC 800660FC C0100D00 */  sll        $v0, $t5, 3
/* 56900 80066100 21284600 */  addu       $a1, $v0, $a2
/* 56904 80066104 0000A48C */  lw         $a0, 0x0($a1)
/* 56908 80066108 00000000 */  nop
/* 5690C 8006610C 05008010 */  beqz       $a0, .L80066124
/* 56910 80066110 21184000 */   addu      $v1, $v0, $zero
/* 56914 80066114 24108A00 */  and        $v0, $a0, $t2
/* 56918 80066118 25104F00 */  or         $v0, $v0, $t7
/* 5691C 8006611C 4B980108 */  j          .L8006612C
/* 56920 80066120 000022AD */   sw        $v0, 0x0($t1)
.L80066124:
/* 56924 80066124 00002FAD */  sw         $t7, 0x0($t1)
/* 56928 80066128 0400A9AC */  sw         $t1, 0x4($a1)
.L8006612C:
/* 5692C 8006612C 21106600 */  addu       $v0, $v1, $a2
/* 56930 80066130 000049AC */  sw         $t1, 0x0($v0)
.L80066134:
/* 56934 80066134 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 56938 80066138 D4FF8015 */  bnez       $t4, .L8006608C
/* 5693C 8006613C 24002925 */   addiu     $t1, $t1, 0x24
.L80066140:
/* 56940 80066140 801F0B3C */  lui        $t3, (0x1F80006C >> 16)
/* 56944 80066144 4400248F */  lw         $a0, 0x44($t9)
/* 56948 80066148 1400298F */  lw         $t1, 0x14($t9)
/* 5694C 8006614C 36008018 */  blez       $a0, .L80066228
/* 56950 80066150 6C006B35 */   ori       $t3, $t3, (0x1F80006C & 0xFFFF)
/* 56954 80066154 FF000F3C */  lui        $t7, (0xFFFFFF >> 16)
/* 56958 80066158 FFFFEF35 */  ori        $t7, $t7, (0xFFFFFF & 0xFFFF)
/* 5695C 8006615C 0008183C */  lui        $t8, (0x8000000 >> 16)
/* 56960 80066160 21608000 */  addu       $t4, $a0, $zero
.L80066164:
/* 56964 80066164 0000ED90 */  lbu        $t5, 0x0($a3)
/* 56968 80066168 24002295 */  lhu        $v0, 0x24($t1)
/* 5696C 8006616C 0100E724 */  addiu      $a3, $a3, 0x1
/* 56970 80066170 80180200 */  sll        $v1, $v0, 2
/* 56974 80066174 21206301 */  addu       $a0, $t3, $v1
/* 56978 80066178 26002295 */  lhu        $v0, 0x26($t1)
/* 5697C 8006617C 28002395 */  lhu        $v1, 0x28($t1)
/* 56980 80066180 0000848C */  lw         $a0, 0x0($a0)
/* 56984 80066184 80100200 */  sll        $v0, $v0, 2
/* 56988 80066188 21406201 */  addu       $t0, $t3, $v0
/* 5698C 8006618C 80180300 */  sll        $v1, $v1, 2
/* 56990 80066190 21286301 */  addu       $a1, $t3, $v1
/* 56994 80066194 2A002295 */  lhu        $v0, 0x2A($t1)
/* 56998 80066198 0000038D */  lw         $v1, 0x0($t0)
/* 5699C 8006619C 80100200 */  sll        $v0, $v0, 2
/* 569A0 800661A0 21506201 */  addu       $t2, $t3, $v0
/* 569A4 800661A4 0000A28C */  lw         $v0, 0x0($a1)
/* 569A8 800661A8 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 569AC 800661AC 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 569B0 800661B0 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 569B4 800661B4 00000000 */  nop
/* 569B8 800661B8 00000000 */  nop
/* 569BC 800661BC 0600404B */  NCLIP
/* 569C0 800661C0 0000D8E9 */  swc2       $24, 0x0($t6)
/* 569C4 800661C4 0000C28D */  lw         $v0, 0x0($t6)
/* 569C8 800661C8 00000000 */  nop
/* 569CC 800661CC 13004104 */  bgez       $v0, .L8006621C
/* 569D0 800661D0 00000000 */   nop
/* 569D4 800661D4 08002CE9 */  swc2       $12, 0x8($t1)
/* 569D8 800661D8 10002DE9 */  swc2       $13, 0x10($t1)
/* 569DC 800661DC 18002EE9 */  swc2       $14, 0x18($t1)
/* 569E0 800661E0 C0180D00 */  sll        $v1, $t5, 3
/* 569E4 800661E4 0000428D */  lw         $v0, 0x0($t2)
/* 569E8 800661E8 21206600 */  addu       $a0, $v1, $a2
/* 569EC 800661EC 200022AD */  sw         $v0, 0x20($t1)
/* 569F0 800661F0 0000828C */  lw         $v0, 0x0($a0)
/* 569F4 800661F4 00000000 */  nop
/* 569F8 800661F8 04004010 */  beqz       $v0, .L8006620C
/* 569FC 800661FC 24104F00 */   and       $v0, $v0, $t7
/* 56A00 80066200 25105800 */  or         $v0, $v0, $t8
/* 56A04 80066204 85980108 */  j          .L80066214
/* 56A08 80066208 000022AD */   sw        $v0, 0x0($t1)
.L8006620C:
/* 56A0C 8006620C 000038AD */  sw         $t8, 0x0($t1)
/* 56A10 80066210 040089AC */  sw         $t1, 0x4($a0)
.L80066214:
/* 56A14 80066214 21106600 */  addu       $v0, $v1, $a2
/* 56A18 80066218 000049AC */  sw         $t1, 0x0($v0)
.L8006621C:
/* 56A1C 8006621C FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 56A20 80066220 D0FF8015 */  bnez       $t4, .L80066164
/* 56A24 80066224 2C002925 */   addiu     $t1, $t1, 0x2C
.L80066228:
/* 56A28 80066228 801F0B3C */  lui        $t3, (0x1F80006C >> 16)
/* 56A2C 8006622C 4800248F */  lw         $a0, 0x48($t9)
/* 56A30 80066230 1800298F */  lw         $t1, 0x18($t9)
/* 56A34 80066234 32008018 */  blez       $a0, .L80066300
/* 56A38 80066238 6C006B35 */   ori       $t3, $t3, (0x1F80006C & 0xFFFF)
/* 56A3C 8006623C FF000A3C */  lui        $t2, (0xFFFFFF >> 16)
/* 56A40 80066240 FFFF4A35 */  ori        $t2, $t2, (0xFFFFFF & 0xFFFF)
/* 56A44 80066244 00070F3C */  lui        $t7, (0x7000000 >> 16)
/* 56A48 80066248 21608000 */  addu       $t4, $a0, $zero
.L8006624C:
/* 56A4C 8006624C 0000ED90 */  lbu        $t5, 0x0($a3)
/* 56A50 80066250 0100E724 */  addiu      $a3, $a3, 0x1
/* 56A54 80066254 20002295 */  lhu        $v0, 0x20($t1)
/* 56A58 80066258 22002395 */  lhu        $v1, 0x22($t1)
/* 56A5C 8006625C 80100200 */  sll        $v0, $v0, 2
/* 56A60 80066260 21206201 */  addu       $a0, $t3, $v0
/* 56A64 80066264 80180300 */  sll        $v1, $v1, 2
/* 56A68 80066268 21406301 */  addu       $t0, $t3, $v1
/* 56A6C 8006626C 24002295 */  lhu        $v0, 0x24($t1)
/* 56A70 80066270 0000848C */  lw         $a0, 0x0($a0)
/* 56A74 80066274 0000038D */  lw         $v1, 0x0($t0)
/* 56A78 80066278 80100200 */  sll        $v0, $v0, 2
/* 56A7C 8006627C 21286201 */  addu       $a1, $t3, $v0
/* 56A80 80066280 0000A28C */  lw         $v0, 0x0($a1)
/* 56A84 80066284 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 56A88 80066288 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 56A8C 8006628C 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 56A90 80066290 00000000 */  nop
/* 56A94 80066294 00000000 */  nop
/* 56A98 80066298 0600404B */  NCLIP
/* 56A9C 8006629C 0000D8E9 */  swc2       $24, 0x0($t6)
/* 56AA0 800662A0 0000C28D */  lw         $v0, 0x0($t6)
/* 56AA4 800662A4 00000000 */  nop
/* 56AA8 800662A8 12004104 */  bgez       $v0, .L800662F4
/* 56AAC 800662AC 00000000 */   nop
/* 56AB0 800662B0 08002CE9 */  swc2       $12, 0x8($t1)
/* 56AB4 800662B4 10002DE9 */  swc2       $13, 0x10($t1)
/* 56AB8 800662B8 18002EE9 */  swc2       $14, 0x18($t1)
/* 56ABC 800662BC C0100D00 */  sll        $v0, $t5, 3
/* 56AC0 800662C0 21284600 */  addu       $a1, $v0, $a2
/* 56AC4 800662C4 0000A48C */  lw         $a0, 0x0($a1)
/* 56AC8 800662C8 00000000 */  nop
/* 56ACC 800662CC 05008010 */  beqz       $a0, .L800662E4
/* 56AD0 800662D0 21184000 */   addu      $v1, $v0, $zero
/* 56AD4 800662D4 24108A00 */  and        $v0, $a0, $t2
/* 56AD8 800662D8 25104F00 */  or         $v0, $v0, $t7
/* 56ADC 800662DC BB980108 */  j          .L800662EC
/* 56AE0 800662E0 000022AD */   sw        $v0, 0x0($t1)
.L800662E4:
/* 56AE4 800662E4 00002FAD */  sw         $t7, 0x0($t1)
/* 56AE8 800662E8 0400A9AC */  sw         $t1, 0x4($a1)
.L800662EC:
/* 56AEC 800662EC 21106600 */  addu       $v0, $v1, $a2
/* 56AF0 800662F0 000049AC */  sw         $t1, 0x0($v0)
.L800662F4:
/* 56AF4 800662F4 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 56AF8 800662F8 D4FF8015 */  bnez       $t4, .L8006624C
/* 56AFC 800662FC 28002925 */   addiu     $t1, $t1, 0x28
.L80066300:
/* 56B00 80066300 801F0B3C */  lui        $t3, (0x1F80006C >> 16)
/* 56B04 80066304 4C00248F */  lw         $a0, 0x4C($t9)
/* 56B08 80066308 1C00298F */  lw         $t1, 0x1C($t9)
/* 56B0C 8006630C 36008018 */  blez       $a0, .L800663E8
/* 56B10 80066310 6C006B35 */   ori       $t3, $t3, (0x1F80006C & 0xFFFF)
/* 56B14 80066314 FF000F3C */  lui        $t7, (0xFFFFFF >> 16)
/* 56B18 80066318 FFFFEF35 */  ori        $t7, $t7, (0xFFFFFF & 0xFFFF)
/* 56B1C 8006631C 0009183C */  lui        $t8, (0x9000000 >> 16)
/* 56B20 80066320 21608000 */  addu       $t4, $a0, $zero
.L80066324:
/* 56B24 80066324 0000ED90 */  lbu        $t5, 0x0($a3)
/* 56B28 80066328 28002295 */  lhu        $v0, 0x28($t1)
/* 56B2C 8006632C 0100E724 */  addiu      $a3, $a3, 0x1
/* 56B30 80066330 80180200 */  sll        $v1, $v0, 2
/* 56B34 80066334 21206301 */  addu       $a0, $t3, $v1
/* 56B38 80066338 2A002295 */  lhu        $v0, 0x2A($t1)
/* 56B3C 8006633C 2C002395 */  lhu        $v1, 0x2C($t1)
/* 56B40 80066340 0000848C */  lw         $a0, 0x0($a0)
/* 56B44 80066344 80100200 */  sll        $v0, $v0, 2
/* 56B48 80066348 21406201 */  addu       $t0, $t3, $v0
/* 56B4C 8006634C 80180300 */  sll        $v1, $v1, 2
/* 56B50 80066350 21286301 */  addu       $a1, $t3, $v1
/* 56B54 80066354 2E002295 */  lhu        $v0, 0x2E($t1)
/* 56B58 80066358 0000038D */  lw         $v1, 0x0($t0)
/* 56B5C 8006635C 80100200 */  sll        $v0, $v0, 2
/* 56B60 80066360 21506201 */  addu       $t2, $t3, $v0
/* 56B64 80066364 0000A28C */  lw         $v0, 0x0($a1)
/* 56B68 80066368 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 56B6C 8006636C 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 56B70 80066370 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 56B74 80066374 00000000 */  nop
/* 56B78 80066378 00000000 */  nop
/* 56B7C 8006637C 0600404B */  NCLIP
/* 56B80 80066380 0000D8E9 */  swc2       $24, 0x0($t6)
/* 56B84 80066384 0000C28D */  lw         $v0, 0x0($t6)
/* 56B88 80066388 00000000 */  nop
/* 56B8C 8006638C 13004104 */  bgez       $v0, .L800663DC
/* 56B90 80066390 00000000 */   nop
/* 56B94 80066394 08002CE9 */  swc2       $12, 0x8($t1)
/* 56B98 80066398 10002DE9 */  swc2       $13, 0x10($t1)
/* 56B9C 8006639C 18002EE9 */  swc2       $14, 0x18($t1)
/* 56BA0 800663A0 C0180D00 */  sll        $v1, $t5, 3
/* 56BA4 800663A4 0000428D */  lw         $v0, 0x0($t2)
/* 56BA8 800663A8 21206600 */  addu       $a0, $v1, $a2
/* 56BAC 800663AC 200022AD */  sw         $v0, 0x20($t1)
/* 56BB0 800663B0 0000828C */  lw         $v0, 0x0($a0)
/* 56BB4 800663B4 00000000 */  nop
/* 56BB8 800663B8 04004010 */  beqz       $v0, .L800663CC
/* 56BBC 800663BC 24104F00 */   and       $v0, $v0, $t7
/* 56BC0 800663C0 25105800 */  or         $v0, $v0, $t8
/* 56BC4 800663C4 F5980108 */  j          .L800663D4
/* 56BC8 800663C8 000022AD */   sw        $v0, 0x0($t1)
.L800663CC:
/* 56BCC 800663CC 000038AD */  sw         $t8, 0x0($t1)
/* 56BD0 800663D0 040089AC */  sw         $t1, 0x4($a0)
.L800663D4:
/* 56BD4 800663D4 21106600 */  addu       $v0, $v1, $a2
/* 56BD8 800663D8 000049AC */  sw         $t1, 0x0($v0)
.L800663DC:
/* 56BDC 800663DC FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 56BE0 800663E0 D0FF8015 */  bnez       $t4, .L80066324
/* 56BE4 800663E4 34002925 */   addiu     $t1, $t1, 0x34
.L800663E8:
/* 56BE8 800663E8 801F0B3C */  lui        $t3, (0x1F80006C >> 16)
/* 56BEC 800663EC 5000248F */  lw         $a0, 0x50($t9)
/* 56BF0 800663F0 2000298F */  lw         $t1, 0x20($t9)
/* 56BF4 800663F4 32008018 */  blez       $a0, .L800664C0
/* 56BF8 800663F8 6C006B35 */   ori       $t3, $t3, (0x1F80006C & 0xFFFF)
/* 56BFC 800663FC FF000A3C */  lui        $t2, (0xFFFFFF >> 16)
/* 56C00 80066400 FFFF4A35 */  ori        $t2, $t2, (0xFFFFFF & 0xFFFF)
/* 56C04 80066404 00090F3C */  lui        $t7, (0x9000000 >> 16)
/* 56C08 80066408 21608000 */  addu       $t4, $a0, $zero
.L8006640C:
/* 56C0C 8006640C 0000ED90 */  lbu        $t5, 0x0($a3)
/* 56C10 80066410 0100E724 */  addiu      $a3, $a3, 0x1
/* 56C14 80066414 28002295 */  lhu        $v0, 0x28($t1)
/* 56C18 80066418 2A002395 */  lhu        $v1, 0x2A($t1)
/* 56C1C 8006641C 80100200 */  sll        $v0, $v0, 2
/* 56C20 80066420 21206201 */  addu       $a0, $t3, $v0
/* 56C24 80066424 80180300 */  sll        $v1, $v1, 2
/* 56C28 80066428 21406301 */  addu       $t0, $t3, $v1
/* 56C2C 8006642C 2C002295 */  lhu        $v0, 0x2C($t1)
/* 56C30 80066430 0000848C */  lw         $a0, 0x0($a0)
/* 56C34 80066434 0000038D */  lw         $v1, 0x0($t0)
/* 56C38 80066438 80100200 */  sll        $v0, $v0, 2
/* 56C3C 8006643C 21286201 */  addu       $a1, $t3, $v0
/* 56C40 80066440 0000A28C */  lw         $v0, 0x0($a1)
/* 56C44 80066444 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 56C48 80066448 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 56C4C 8006644C 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 56C50 80066450 00000000 */  nop
/* 56C54 80066454 00000000 */  nop
/* 56C58 80066458 0600404B */  NCLIP
/* 56C5C 8006645C 0000D8E9 */  swc2       $24, 0x0($t6)
/* 56C60 80066460 0000C28D */  lw         $v0, 0x0($t6)
/* 56C64 80066464 00000000 */  nop
/* 56C68 80066468 12004104 */  bgez       $v0, .L800664B4
/* 56C6C 8006646C 00000000 */   nop
/* 56C70 80066470 08002CE9 */  swc2       $12, 0x8($t1)
/* 56C74 80066474 14002DE9 */  swc2       $13, 0x14($t1)
/* 56C78 80066478 20002EE9 */  swc2       $14, 0x20($t1)
/* 56C7C 8006647C C0100D00 */  sll        $v0, $t5, 3
/* 56C80 80066480 21284600 */  addu       $a1, $v0, $a2
/* 56C84 80066484 0000A48C */  lw         $a0, 0x0($a1)
/* 56C88 80066488 00000000 */  nop
/* 56C8C 8006648C 05008010 */  beqz       $a0, .L800664A4
/* 56C90 80066490 21184000 */   addu      $v1, $v0, $zero
/* 56C94 80066494 24108A00 */  and        $v0, $a0, $t2
/* 56C98 80066498 25104F00 */  or         $v0, $v0, $t7
/* 56C9C 8006649C 2B990108 */  j          .L800664AC
/* 56CA0 800664A0 000022AD */   sw        $v0, 0x0($t1)
.L800664A4:
/* 56CA4 800664A4 00002FAD */  sw         $t7, 0x0($t1)
/* 56CA8 800664A8 0400A9AC */  sw         $t1, 0x4($a1)
.L800664AC:
/* 56CAC 800664AC 21106600 */  addu       $v0, $v1, $a2
/* 56CB0 800664B0 000049AC */  sw         $t1, 0x0($v0)
.L800664B4:
/* 56CB4 800664B4 FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 56CB8 800664B8 D4FF8015 */  bnez       $t4, .L8006640C
/* 56CBC 800664BC 30002925 */   addiu     $t1, $t1, 0x30
.L800664C0:
/* 56CC0 800664C0 801F0B3C */  lui        $t3, (0x1F80006C >> 16)
/* 56CC4 800664C4 5400248F */  lw         $a0, 0x54($t9)
/* 56CC8 800664C8 2400298F */  lw         $t1, 0x24($t9)
/* 56CCC 800664CC 36008018 */  blez       $a0, .L800665A8
/* 56CD0 800664D0 6C006B35 */   ori       $t3, $t3, (0x1F80006C & 0xFFFF)
/* 56CD4 800664D4 FF000F3C */  lui        $t7, (0xFFFFFF >> 16)
/* 56CD8 800664D8 FFFFEF35 */  ori        $t7, $t7, (0xFFFFFF & 0xFFFF)
/* 56CDC 800664DC 000C183C */  lui        $t8, (0xC000000 >> 16)
/* 56CE0 800664E0 21608000 */  addu       $t4, $a0, $zero
.L800664E4:
/* 56CE4 800664E4 34002295 */  lhu        $v0, 0x34($t1)
/* 56CE8 800664E8 0000ED90 */  lbu        $t5, 0x0($a3)
/* 56CEC 800664EC 0100E724 */  addiu      $a3, $a3, 0x1
/* 56CF0 800664F0 80180200 */  sll        $v1, $v0, 2
/* 56CF4 800664F4 21206301 */  addu       $a0, $t3, $v1
/* 56CF8 800664F8 36002295 */  lhu        $v0, 0x36($t1)
/* 56CFC 800664FC 38002395 */  lhu        $v1, 0x38($t1)
/* 56D00 80066500 0000848C */  lw         $a0, 0x0($a0)
/* 56D04 80066504 80100200 */  sll        $v0, $v0, 2
/* 56D08 80066508 21406201 */  addu       $t0, $t3, $v0
/* 56D0C 8006650C 80180300 */  sll        $v1, $v1, 2
/* 56D10 80066510 21286301 */  addu       $a1, $t3, $v1
/* 56D14 80066514 3A002295 */  lhu        $v0, 0x3A($t1)
/* 56D18 80066518 0000038D */  lw         $v1, 0x0($t0)
/* 56D1C 8006651C 80100200 */  sll        $v0, $v0, 2
/* 56D20 80066520 21506201 */  addu       $t2, $t3, $v0
/* 56D24 80066524 0000A28C */  lw         $v0, 0x0($a1)
/* 56D28 80066528 00608448 */  mtc2       $a0, $12 /* handwritten instruction */
/* 56D2C 8006652C 00708248 */  mtc2       $v0, $14 /* handwritten instruction */
/* 56D30 80066530 00688348 */  mtc2       $v1, $13 /* handwritten instruction */
/* 56D34 80066534 00000000 */  nop
/* 56D38 80066538 00000000 */  nop
/* 56D3C 8006653C 0600404B */  NCLIP
/* 56D40 80066540 0000D8E9 */  swc2       $24, 0x0($t6)
/* 56D44 80066544 0000C28D */  lw         $v0, 0x0($t6)
/* 56D48 80066548 00000000 */  nop
/* 56D4C 8006654C 13004104 */  bgez       $v0, .L8006659C
/* 56D50 80066550 00000000 */   nop
/* 56D54 80066554 08002CE9 */  swc2       $12, 0x8($t1)
/* 56D58 80066558 14002DE9 */  swc2       $13, 0x14($t1)
/* 56D5C 8006655C 20002EE9 */  swc2       $14, 0x20($t1)
/* 56D60 80066560 C0180D00 */  sll        $v1, $t5, 3
/* 56D64 80066564 0000428D */  lw         $v0, 0x0($t2)
/* 56D68 80066568 21206600 */  addu       $a0, $v1, $a2
/* 56D6C 8006656C 2C0022AD */  sw         $v0, 0x2C($t1)
/* 56D70 80066570 0000828C */  lw         $v0, 0x0($a0)
/* 56D74 80066574 00000000 */  nop
/* 56D78 80066578 04004010 */  beqz       $v0, .L8006658C
/* 56D7C 8006657C 24104F00 */   and       $v0, $v0, $t7
/* 56D80 80066580 25105800 */  or         $v0, $v0, $t8
/* 56D84 80066584 65990108 */  j          .L80066594
/* 56D88 80066588 000022AD */   sw        $v0, 0x0($t1)
.L8006658C:
/* 56D8C 8006658C 000038AD */  sw         $t8, 0x0($t1)
/* 56D90 80066590 040089AC */  sw         $t1, 0x4($a0)
.L80066594:
/* 56D94 80066594 21106600 */  addu       $v0, $v1, $a2
/* 56D98 80066598 000049AC */  sw         $t1, 0x0($v0)
.L8006659C:
/* 56D9C 8006659C FFFF8C25 */  addiu      $t4, $t4, -0x1
/* 56DA0 800665A0 D0FF8015 */  bnez       $t4, .L800664E4
/* 56DA4 800665A4 40002925 */   addiu     $t1, $t1, 0x40
.L800665A8:
/* 56DA8 800665A8 21100002 */  addu       $v0, $s0, $zero
/* 56DAC 800665AC 0800B08F */  lw         $s0, 0x8($sp)
/* 56DB0 800665B0 0800E003 */  jr         $ra
/* 56DB4 800665B4 1000BD27 */   addiu     $sp, $sp, 0x10
.size DrawLevel_DrawCell, . - DrawLevel_DrawCell