.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckUpdateCluts
/* 4DF78 8005D778 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4DF7C 8005D77C 5C11838F */  lw         $v1, %gp_rel(BWClut_State)($gp)
/* 4DF80 8005D780 01000224 */  addiu      $v0, $zero, 0x1
/* 4DF84 8005D784 1400BFAF */  sw         $ra, 0x14($sp)
/* 4DF88 8005D788 23006210 */  beq        $v1, $v0, .L8005D818
/* 4DF8C 8005D78C 1000B0AF */   sw        $s0, 0x10($sp)
/* 4DF90 8005D790 02006228 */  slti       $v0, $v1, 0x2
/* 4DF94 8005D794 52004014 */  bnez       $v0, .L8005D8E0
/* 4DF98 8005D798 03000224 */   addiu     $v0, $zero, 0x3
/* 4DF9C 8005D79C 05006210 */  beq        $v1, $v0, .L8005D7B4
/* 4DFA0 8005D7A0 04000224 */   addiu     $v0, $zero, 0x4
/* 4DFA4 8005D7A4 32006210 */  beq        $v1, $v0, .L8005D870
/* 4DFA8 8005D7A8 00000000 */   nop
/* 4DFAC 8005D7AC 38760108 */  j          .L8005D8E0
/* 4DFB0 8005D7B0 00000000 */   nop
.L8005D7B4:
/* 4DFB4 8005D7B4 6411828F */  lw         $v0, %gp_rel(BWClut_Value)($gp)
/* 4DFB8 8005D7B8 00000000 */  nop
/* 4DFBC 8005D7BC F0FF4224 */  addiu      $v0, $v0, -0x10
/* 4DFC0 8005D7C0 641182AF */  sw         $v0, %gp_rel(BWClut_Value)($gp)
/* 4DFC4 8005D7C4 44004018 */  blez       $v0, .L8005D8D8
/* 4DFC8 8005D7C8 00000000 */   nop
/* 4DFCC 8005D7CC 5811828F */  lw         $v0, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4DFD0 8005D7D0 00000000 */  nop
/* 4DFD4 8005D7D4 42004018 */  blez       $v0, .L8005D8E0
/* 4DFD8 8005D7D8 21800000 */   addu      $s0, $zero, $zero
/* 4DFDC 8005D7DC 21200000 */  addu       $a0, $zero, $zero
.L8005D7E0:
/* 4DFE0 8005D7E0 80000624 */  addiu      $a2, $zero, 0x80
/* 4DFE4 8005D7E4 21380002 */  addu       $a3, $s0, $zero
/* 4DFE8 8005D7E8 6411858F */  lw         $a1, %gp_rel(BWClut_Value)($gp)
/* 4DFEC 8005D7EC A477010C */  jal        ChangeHSV
/* 4DFF0 8005D7F0 01001026 */   addiu     $s0, $s0, 0x1
/* 4DFF4 8005D7F4 6011828F */  lw         $v0, %gp_rel(BWClut_Index)($gp)
/* 4DFF8 8005D7F8 5811838F */  lw         $v1, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4DFFC 8005D7FC 01004224 */  addiu      $v0, $v0, 0x1
/* 4E000 8005D800 2A180302 */  slt        $v1, $s0, $v1
/* 4E004 8005D804 601182AF */  sw         $v0, %gp_rel(BWClut_Index)($gp)
/* 4E008 8005D808 F5FF6014 */  bnez       $v1, .L8005D7E0
/* 4E00C 8005D80C 21200000 */   addu      $a0, $zero, $zero
/* 4E010 8005D810 38760108 */  j          .L8005D8E0
/* 4E014 8005D814 00000000 */   nop
.L8005D818:
/* 4E018 8005D818 5811828F */  lw         $v0, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4E01C 8005D81C 641180AF */  sw         $zero, %gp_rel(BWClut_Value)($gp)
/* 4E020 8005D820 0E004018 */  blez       $v0, .L8005D85C
/* 4E024 8005D824 21800000 */   addu      $s0, $zero, $zero
/* 4E028 8005D828 21200000 */  addu       $a0, $zero, $zero
.L8005D82C:
/* 4E02C 8005D82C 80000624 */  addiu      $a2, $zero, 0x80
/* 4E030 8005D830 21380002 */  addu       $a3, $s0, $zero
/* 4E034 8005D834 6411858F */  lw         $a1, %gp_rel(BWClut_Value)($gp)
/* 4E038 8005D838 A477010C */  jal        ChangeHSV
/* 4E03C 8005D83C 01001026 */   addiu     $s0, $s0, 0x1
/* 4E040 8005D840 6011828F */  lw         $v0, %gp_rel(BWClut_Index)($gp)
/* 4E044 8005D844 5811838F */  lw         $v1, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4E048 8005D848 01004224 */  addiu      $v0, $v0, 0x1
/* 4E04C 8005D84C 2A180302 */  slt        $v1, $s0, $v1
/* 4E050 8005D850 601182AF */  sw         $v0, %gp_rel(BWClut_Index)($gp)
/* 4E054 8005D854 F5FF6014 */  bnez       $v1, .L8005D82C
/* 4E058 8005D858 21200000 */   addu      $a0, $zero, $zero
.L8005D85C:
/* 4E05C 8005D85C 601180AF */  sw         $zero, %gp_rel(BWClut_Index)($gp)
/* 4E060 8005D860 5C1180AF */  sw         $zero, %gp_rel(BWClut_State)($gp)
/* 4E064 8005D864 641180AF */  sw         $zero, %gp_rel(BWClut_Value)($gp)
/* 4E068 8005D868 38760108 */  j          .L8005D8E0
/* 4E06C 8005D86C 00000000 */   nop
.L8005D870:
/* 4E070 8005D870 6411828F */  lw         $v0, %gp_rel(BWClut_Value)($gp)
/* 4E074 8005D874 00000000 */  nop
/* 4E078 8005D878 10004224 */  addiu      $v0, $v0, 0x10
/* 4E07C 8005D87C 641182AF */  sw         $v0, %gp_rel(BWClut_Value)($gp)
/* 4E080 8005D880 80004228 */  slti       $v0, $v0, 0x80
/* 4E084 8005D884 14004010 */  beqz       $v0, .L8005D8D8
/* 4E088 8005D888 00000000 */   nop
/* 4E08C 8005D88C 5811828F */  lw         $v0, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4E090 8005D890 00000000 */  nop
/* 4E094 8005D894 12004018 */  blez       $v0, .L8005D8E0
/* 4E098 8005D898 21800000 */   addu      $s0, $zero, $zero
/* 4E09C 8005D89C 21200000 */  addu       $a0, $zero, $zero
.L8005D8A0:
/* 4E0A0 8005D8A0 80000624 */  addiu      $a2, $zero, 0x80
/* 4E0A4 8005D8A4 21380002 */  addu       $a3, $s0, $zero
/* 4E0A8 8005D8A8 6411858F */  lw         $a1, %gp_rel(BWClut_Value)($gp)
/* 4E0AC 8005D8AC A477010C */  jal        ChangeHSV
/* 4E0B0 8005D8B0 01001026 */   addiu     $s0, $s0, 0x1
/* 4E0B4 8005D8B4 6011828F */  lw         $v0, %gp_rel(BWClut_Index)($gp)
/* 4E0B8 8005D8B8 5811838F */  lw         $v1, %gp_rel(NumHSVPaletteEntries)($gp)
/* 4E0BC 8005D8BC 01004224 */  addiu      $v0, $v0, 0x1
/* 4E0C0 8005D8C0 2A180302 */  slt        $v1, $s0, $v1
/* 4E0C4 8005D8C4 601182AF */  sw         $v0, %gp_rel(BWClut_Index)($gp)
/* 4E0C8 8005D8C8 F5FF6014 */  bnez       $v1, .L8005D8A0
/* 4E0CC 8005D8CC 21200000 */   addu      $a0, $zero, $zero
/* 4E0D0 8005D8D0 38760108 */  j          .L8005D8E0
/* 4E0D4 8005D8D4 00000000 */   nop
.L8005D8D8:
/* 4E0D8 8005D8D8 601180AF */  sw         $zero, %gp_rel(BWClut_Index)($gp)
/* 4E0DC 8005D8DC 5C1180AF */  sw         $zero, %gp_rel(BWClut_State)($gp)
.L8005D8E0:
/* 4E0E0 8005D8E0 1400BF8F */  lw         $ra, 0x14($sp)
/* 4E0E4 8005D8E4 1000B08F */  lw         $s0, 0x10($sp)
/* 4E0E8 8005D8E8 0800E003 */  jr         $ra
/* 4E0EC 8005D8EC 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckUpdateCluts, . - CheckUpdateCluts
