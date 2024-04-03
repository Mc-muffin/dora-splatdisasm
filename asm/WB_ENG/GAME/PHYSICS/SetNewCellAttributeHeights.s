.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetNewCellAttributeHeights
/* 2F0FC 8003E8FC 0880023C */  lui        $v0, %hi(TestWorld)
/* 2F100 8003E900 8C654224 */  addiu      $v0, $v0, %lo(TestWorld)
/* 2F104 8003E904 0C00488C */  lw         $t0, 0xC($v0)
/* 2F108 8003E908 00000000 */  nop
/* 2F10C 8003E90C 30000019 */  blez       $t0, .L8003E9D0
/* 2F110 8003E910 21380000 */   addu      $a3, $zero, $zero
/* 2F114 8003E914 21784000 */  addu       $t7, $v0, $zero
/* 2F118 8003E918 F0FF0E24 */  addiu      $t6, $zero, -0x10
/* 2F11C 8003E91C 09800D3C */  lui        $t5, %hi(CellAttributesPtr)
/* 2F120 8003E920 6C50AD8D */  lw         $t5, %lo(CellAttributesPtr)($t5)
/* 2F124 8003E924 E40B828F */  lw         $v0, %gp_rel(TX1)($gp)
/* 2F128 8003E928 E80B838F */  lw         $v1, %gp_rel(TX2)($gp)
/* 2F12C 8003E92C C0600200 */  sll        $t4, $v0, 3
/* 2F130 8003E930 C0580300 */  sll        $t3, $v1, 3
/* 2F134 8003E934 EC0B828F */  lw         $v0, %gp_rel(TX3)($gp)
/* 2F138 8003E938 F00B838F */  lw         $v1, %gp_rel(TX4)($gp)
/* 2F13C 8003E93C C0500200 */  sll        $t2, $v0, 3
/* 2F140 8003E940 C0480300 */  sll        $t1, $v1, 3
/* 2F144 8003E944 FF03E230 */  andi       $v0, $a3, 0x3FF
.L8003E948:
/* 2F148 8003E948 80180200 */  sll        $v1, $v0, 2
/* 2F14C 8003E94C 21186200 */  addu       $v1, $v1, $v0
/* 2F150 8003E950 C0180300 */  sll        $v1, $v1, 3
/* 2F154 8003E954 2128A301 */  addu       $a1, $t5, $v1
/* 2F158 8003E958 0800A68C */  lw         $a2, 0x8($a1)
/* 2F15C 8003E95C 00000000 */  nop
/* 2F160 8003E960 0001C230 */  andi       $v0, $a2, 0x100
/* 2F164 8003E964 16004010 */  beqz       $v0, .L8003E9C0
/* 2F168 8003E968 80100700 */   sll       $v0, $a3, 2
/* 2F16C 8003E96C 1800E48D */  lw         $a0, 0x18($t7)
/* 2F170 8003E970 00000000 */  nop
/* 2F174 8003E974 21104400 */  addu       $v0, $v0, $a0
/* 2F178 8003E978 0000438C */  lw         $v1, 0x0($v0)
/* 2F17C 8003E97C 00000000 */  nop
/* 2F180 8003E980 0000648C */  lw         $a0, 0x0($v1)
/* 2F184 8003E984 2410CE00 */  and        $v0, $a2, $t6
/* 2F188 8003E988 0800A2AC */  sw         $v0, 0x8($a1)
/* 2F18C 8003E98C 21188401 */  addu       $v1, $t4, $a0
/* 2F190 8003E990 02006294 */  lhu        $v0, 0x2($v1)
/* 2F194 8003E994 21186401 */  addu       $v1, $t3, $a0
/* 2F198 8003E998 1400A2A4 */  sh         $v0, 0x14($a1)
/* 2F19C 8003E99C 02006294 */  lhu        $v0, 0x2($v1)
/* 2F1A0 8003E9A0 21184401 */  addu       $v1, $t2, $a0
/* 2F1A4 8003E9A4 1600A2A4 */  sh         $v0, 0x16($a1)
/* 2F1A8 8003E9A8 02006294 */  lhu        $v0, 0x2($v1)
/* 2F1AC 8003E9AC 21202401 */  addu       $a0, $t1, $a0
/* 2F1B0 8003E9B0 1800A2A4 */  sh         $v0, 0x18($a1)
/* 2F1B4 8003E9B4 02008294 */  lhu        $v0, 0x2($a0)
/* 2F1B8 8003E9B8 00000000 */  nop
/* 2F1BC 8003E9BC 1A00A2A4 */  sh         $v0, 0x1A($a1)
.L8003E9C0:
/* 2F1C0 8003E9C0 0100E724 */  addiu      $a3, $a3, 0x1
/* 2F1C4 8003E9C4 2A10E800 */  slt        $v0, $a3, $t0
/* 2F1C8 8003E9C8 DFFF4014 */  bnez       $v0, .L8003E948
/* 2F1CC 8003E9CC FF03E230 */   andi      $v0, $a3, 0x3FF
.L8003E9D0:
/* 2F1D0 8003E9D0 0800E003 */  jr         $ra
/* 2F1D4 8003E9D4 00000000 */   nop
.size SetNewCellAttributeHeights, . - SetNewCellAttributeHeights
