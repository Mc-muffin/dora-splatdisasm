.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ServiceFader
/* 216D0 80030ED0 0980023C */  lui        $v0, %hi(ot_ndx)
/* 216D4 80030ED4 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* 216D8 80030ED8 8C08858F */  lw         $a1, %gp_rel(FaderFlag)($gp)
/* 216DC 80030EDC 40180200 */  sll        $v1, $v0, 1
/* 216E0 80030EE0 21186200 */  addu       $v1, $v1, $v0
/* 216E4 80030EE4 80180300 */  sll        $v1, $v1, 2
/* 216E8 80030EE8 21186200 */  addu       $v1, $v1, $v0
/* 216EC 80030EEC 80180300 */  sll        $v1, $v1, 2
/* 216F0 80030EF0 0A80023C */  lui        $v0, %hi(fade_gt4)
/* 216F4 80030EF4 008B4224 */  addiu      $v0, $v0, %lo(fade_gt4)
/* 216F8 80030EF8 3600A010 */  beqz       $a1, .L80030FD4
/* 216FC 80030EFC 21206200 */   addu      $a0, $v1, $v0
/* 21700 80030F00 02000224 */  addiu      $v0, $zero, 0x2
/* 21704 80030F04 0A00A214 */  bne        $a1, $v0, .L80030F30
/* 21708 80030F08 00000000 */   nop
/* 2170C 80030F0C 9008828F */  lw         $v0, %gp_rel(FaderTimer)($gp)
/* 21710 80030F10 9408838F */  lw         $v1, %gp_rel(FaderTimerSpeed)($gp)
/* 21714 80030F14 00000000 */  nop
/* 21718 80030F18 21104300 */  addu       $v0, $v0, $v1
/* 2171C 80030F1C 900882AF */  sw         $v0, %gp_rel(FaderTimer)($gp)
/* 21720 80030F20 81004228 */  slti       $v0, $v0, 0x81
/* 21724 80030F24 02004014 */  bnez       $v0, .L80030F30
/* 21728 80030F28 80000224 */   addiu     $v0, $zero, 0x80
/* 2172C 80030F2C 900882AF */  sw         $v0, %gp_rel(FaderTimer)($gp)
.L80030F30:
/* 21730 80030F30 8C08838F */  lw         $v1, %gp_rel(FaderFlag)($gp)
/* 21734 80030F34 01000224 */  addiu      $v0, $zero, 0x1
/* 21738 80030F38 0A006214 */  bne        $v1, $v0, .L80030F64
/* 2173C 80030F3C 0B80033C */   lui       $v1, %hi(g_nt)
/* 21740 80030F40 9008828F */  lw         $v0, %gp_rel(FaderTimer)($gp)
/* 21744 80030F44 9408838F */  lw         $v1, %gp_rel(FaderTimerSpeed)($gp)
/* 21748 80030F48 00000000 */  nop
/* 2174C 80030F4C 23104300 */  subu       $v0, $v0, $v1
/* 21750 80030F50 900882AF */  sw         $v0, %gp_rel(FaderTimer)($gp)
/* 21754 80030F54 03004104 */  bgez       $v0, .L80030F64
/* 21758 80030F58 0B80033C */   lui       $v1, %hi(g_nt)
/* 2175C 80030F5C 900880AF */  sw         $zero, %gp_rel(FaderTimer)($gp)
/* 21760 80030F60 8C0880AF */  sw         $zero, %gp_rel(FaderFlag)($gp)
.L80030F64:
/* 21764 80030F64 90088293 */  lbu        $v0, %gp_rel(FaderTimer)($gp)
/* 21768 80030F68 68BB6524 */  addiu      $a1, $v1, %lo(g_nt)
/* 2176C 80030F6C 280082A0 */  sb         $v0, 0x28($a0)
/* 21770 80030F70 1C0082A0 */  sb         $v0, 0x1C($a0)
/* 21774 80030F74 100082A0 */  sb         $v0, 0x10($a0)
/* 21778 80030F78 040082A0 */  sb         $v0, 0x4($a0)
/* 2177C 80030F7C 290082A0 */  sb         $v0, 0x29($a0)
/* 21780 80030F80 1D0082A0 */  sb         $v0, 0x1D($a0)
/* 21784 80030F84 110082A0 */  sb         $v0, 0x11($a0)
/* 21788 80030F88 050082A0 */  sb         $v0, 0x5($a0)
/* 2178C 80030F8C 2A0082A0 */  sb         $v0, 0x2A($a0)
/* 21790 80030F90 1E0082A0 */  sb         $v0, 0x1E($a0)
/* 21794 80030F94 120082A0 */  sb         $v0, 0x12($a0)
/* 21798 80030F98 060082A0 */  sb         $v0, 0x6($a0)
/* 2179C 80030F9C 68BB628C */  lw         $v0, %lo(g_nt)($v1)
/* 217A0 80030FA0 00000000 */  nop
/* 217A4 80030FA4 09004010 */  beqz       $v0, .L80030FCC
/* 217A8 80030FA8 21306000 */   addu      $a2, $v1, $zero
/* 217AC 80030FAC 0200A388 */  lwl        $v1, 0x2($a1)
/* 217B0 80030FB0 68BBC28C */  lw         $v0, %lo(g_nt)($a2)
/* 217B4 80030FB4 00000000 */  nop
/* 217B8 80030FB8 00120200 */  sll        $v0, $v0, 8
/* 217BC 80030FBC 020082A8 */  swl        $v0, 0x2($a0)
/* 217C0 80030FC0 020083A8 */  swl        $v1, 0x2($a0)
/* 217C4 80030FC4 0800E003 */  jr         $ra
/* 217C8 80030FC8 68BBC4AC */   sw        $a0, %lo(g_nt)($a2)
.L80030FCC:
/* 217CC 80030FCC 0400A4AC */  sw         $a0, 0x4($a1)
/* 217D0 80030FD0 68BBC4AC */  sw         $a0, %lo(g_nt)($a2)
.L80030FD4:
/* 217D4 80030FD4 0800E003 */  jr         $ra
/* 217D8 80030FD8 00000000 */   nop
.size ServiceFader, . - ServiceFader
