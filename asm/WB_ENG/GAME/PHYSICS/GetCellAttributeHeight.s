.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetCellAttributeHeight
/* 2F020 8003E820 21408000 */  addu       $t0, $a0, $zero
/* 2F024 8003E824 0800028D */  lw         $v0, 0x8($t0)
/* 2F028 8003E828 00000000 */  nop
/* 2F02C 8003E82C 00014230 */  andi       $v0, $v0, 0x100
/* 2F030 8003E830 09004014 */  bnez       $v0, .L8003E858
/* 2F034 8003E834 2130A000 */   addu      $a2, $a1, $zero
/* 2F038 8003E838 1400028D */  lw         $v0, 0x14($t0)
/* 2F03C 8003E83C 00000000 */  nop
/* 2F040 8003E840 05004014 */  bnez       $v0, .L8003E858
/* 2F044 8003E844 00000000 */   nop
/* 2F048 8003E848 1800028D */  lw         $v0, 0x18($t0)
/* 2F04C 8003E84C 00000000 */  nop
/* 2F050 8003E850 1C004010 */  beqz       $v0, .L8003E8C4
/* 2F054 8003E854 00000000 */   nop
.L8003E858:
/* 2F058 8003E858 18000585 */  lh         $a1, 0x18($t0)
/* 2F05C 8003E85C 1A000385 */  lh         $v1, 0x1A($t0)
/* 2F060 8003E860 7F00C630 */  andi       $a2, $a2, 0x7F
/* 2F064 8003E864 23186500 */  subu       $v1, $v1, $a1
/* 2F068 8003E868 18006600 */  mult       $v1, $a2
/* 2F06C 8003E86C 14000485 */  lh         $a0, 0x14($t0)
/* 2F070 8003E870 16000285 */  lh         $v0, 0x16($t0)
/* 2F074 8003E874 12180000 */  mflo       $v1
/* 2F078 8003E878 23104400 */  subu       $v0, $v0, $a0
/* 2F07C 8003E87C 00000000 */  nop
/* 2F080 8003E880 18004600 */  mult       $v0, $a2
/* 2F084 8003E884 7F00E730 */  andi       $a3, $a3, 0x7F
/* 2F088 8003E888 C3190300 */  sra        $v1, $v1, 7
/* 2F08C 8003E88C 2128A300 */  addu       $a1, $a1, $v1
/* 2F090 8003E890 12100000 */  mflo       $v0
/* 2F094 8003E894 C3110200 */  sra        $v0, $v0, 7
/* 2F098 8003E898 21208200 */  addu       $a0, $a0, $v0
/* 2F09C 8003E89C 23208500 */  subu       $a0, $a0, $a1
/* 2F0A0 8003E8A0 18008700 */  mult       $a0, $a3
/* 2F0A4 8003E8A4 0800028D */  lw         $v0, 0x8($t0)
/* 2F0A8 8003E8A8 00000000 */  nop
/* 2F0AC 8003E8AC 00014234 */  ori        $v0, $v0, 0x100
/* 2F0B0 8003E8B0 080002AD */  sw         $v0, 0x8($t0)
/* 2F0B4 8003E8B4 12200000 */  mflo       $a0
/* 2F0B8 8003E8B8 C3210400 */  sra        $a0, $a0, 7
/* 2F0BC 8003E8BC 0800E003 */  jr         $ra
/* 2F0C0 8003E8C0 2110A400 */   addu      $v0, $a1, $a0
.L8003E8C4:
/* 2F0C4 8003E8C4 14000285 */  lh         $v0, 0x14($t0)
/* 2F0C8 8003E8C8 0800E003 */  jr         $ra
/* 2F0CC 8003E8CC 00000000 */   nop
.size GetCellAttributeHeight, . - GetCellAttributeHeight
