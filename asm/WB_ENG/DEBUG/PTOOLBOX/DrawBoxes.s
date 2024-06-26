.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawBoxes
/* 42630 80051E30 A40F828F */  lw         $v0, %gp_rel(BoxOffset)($gp)
/* 42634 80051E34 21500000 */  addu       $t2, $zero, $zero
/* 42638 80051E38 33004018 */  blez       $v0, .L80051F08
/* 4263C 80051E3C 21184000 */   addu      $v1, $v0, $zero
/* 42640 80051E40 0B80093C */  lui        $t1, %hi(g_nt3 + 0x10)
/* 42644 80051E44 48772B25 */  addiu      $t3, $t1, %lo(g_nt3 + 0x10)
/* 42648 80051E48 0A80023C */  lui        $v0, %hi(Boxes)
/* 4264C 80051E4C 38774824 */  addiu      $t0, $v0, %lo(Boxes)
/* 42650 80051E50 21300001 */  addu       $a2, $t0, $zero
/* 42654 80051E54 21380000 */  addu       $a3, $zero, $zero
.L80051E58:
/* 42658 80051E58 0980023C */  lui        $v0, %hi(ot_ndx)
/* 4265C 80051E5C 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* 42660 80051E60 00000000 */  nop
/* 42664 80051E64 80180200 */  sll        $v1, $v0, 2
/* 42668 80051E68 21186200 */  addu       $v1, $v1, $v0
/* 4266C 80051E6C 80180300 */  sll        $v1, $v1, 2
/* 42670 80051E70 21186800 */  addu       $v1, $v1, $t0
/* 42674 80051E74 2E00C290 */  lbu        $v0, 0x2E($a2)
/* 42678 80051E78 00000000 */  nop
/* 4267C 80051E7C 1B004014 */  bnez       $v0, .L80051EEC
/* 42680 80051E80 2128E300 */   addu      $a1, $a3, $v1
/* 42684 80051E84 2F00C290 */  lbu        $v0, 0x2F($a2)
/* 42688 80051E88 48772425 */  addiu      $a0, $t1, %lo(g_nt3 + 0x10)
/* 4268C 80051E8C C0100200 */  sll        $v0, $v0, 3
/* 42690 80051E90 21104400 */  addu       $v0, $v0, $a0
/* 42694 80051E94 0000438C */  lw         $v1, 0x0($v0)
/* 42698 80051E98 00000000 */  nop
/* 4269C 80051E9C 0D006010 */  beqz       $v1, .L80051ED4
/* 426A0 80051EA0 00000000 */   nop
/* 426A4 80051EA4 02004288 */  lwl        $v0, 0x2($v0)
/* 426A8 80051EA8 2F00C390 */  lbu        $v1, 0x2F($a2)
/* 426AC 80051EAC 00000000 */  nop
/* 426B0 80051EB0 C0180300 */  sll        $v1, $v1, 3
/* 426B4 80051EB4 21186400 */  addu       $v1, $v1, $a0
/* 426B8 80051EB8 0000648C */  lw         $a0, 0x0($v1)
/* 426BC 80051EBC 00000000 */  nop
/* 426C0 80051EC0 00220400 */  sll        $a0, $a0, 8
/* 426C4 80051EC4 0200A4A8 */  swl        $a0, 0x2($a1)
/* 426C8 80051EC8 0200A2A8 */  swl        $v0, 0x2($a1)
/* 426CC 80051ECC B6470108 */  j          .L80051ED8
/* 426D0 80051ED0 00000000 */   nop
.L80051ED4:
/* 426D4 80051ED4 040045AC */  sw         $a1, 0x4($v0)
.L80051ED8:
/* 426D8 80051ED8 2F00C290 */  lbu        $v0, 0x2F($a2)
/* 426DC 80051EDC 00000000 */  nop
/* 426E0 80051EE0 C0100200 */  sll        $v0, $v0, 3
/* 426E4 80051EE4 21104B00 */  addu       $v0, $v0, $t3
/* 426E8 80051EE8 000045AC */  sw         $a1, 0x0($v0)
.L80051EEC:
/* 426EC 80051EEC 3000C624 */  addiu      $a2, $a2, 0x30
/* 426F0 80051EF0 A40F828F */  lw         $v0, %gp_rel(BoxOffset)($gp)
/* 426F4 80051EF4 01004A25 */  addiu      $t2, $t2, 0x1
/* 426F8 80051EF8 21184000 */  addu       $v1, $v0, $zero
/* 426FC 80051EFC 2A104201 */  slt        $v0, $t2, $v0
/* 42700 80051F00 D5FF4014 */  bnez       $v0, .L80051E58
/* 42704 80051F04 3000E724 */   addiu     $a3, $a3, 0x30
.L80051F08:
/* 42708 80051F08 A80F828F */  lw         $v0, %gp_rel(BorderOffset)($gp)
/* 4270C 80051F0C 00000000 */  nop
/* 42710 80051F10 7F014010 */  beqz       $v0, .L80052510
/* 42714 80051F14 00000000 */   nop
/* 42718 80051F18 7D016018 */  blez       $v1, .L80052510
/* 4271C 80051F1C 21500000 */   addu      $t2, $zero, $zero
/* 42720 80051F20 0B80093C */  lui        $t1, %hi(g_nt2 + 0x1F80)
/* 42724 80051F24 28772B25 */  addiu      $t3, $t1, %lo(g_nt2 + 0x1F80)
/* 42728 80051F28 0A80023C */  lui        $v0, %hi(Boxes)
/* 4272C 80051F2C 38774724 */  addiu      $a3, $v0, %lo(Boxes)
.L80051F30:
/* 42730 80051F30 2800E58C */  lw         $a1, 0x28($a3)
/* 42734 80051F34 00000000 */  nop
/* 42738 80051F38 7001A010 */  beqz       $a1, .L800524FC
/* 4273C 80051F3C 00000000 */   nop
/* 42740 80051F40 2C00E290 */  lbu        $v0, 0x2C($a3)
/* 42744 80051F44 00000000 */  nop
/* 42748 80051F48 6C014010 */  beqz       $v0, .L800524FC
/* 4274C 80051F4C 00000000 */   nop
/* 42750 80051F50 2D00E290 */  lbu        $v0, 0x2D($a3)
/* 42754 80051F54 00000000 */  nop
/* 42758 80051F58 0200422C */  sltiu      $v0, $v0, 0x2
/* 4275C 80051F5C 67014010 */  beqz       $v0, .L800524FC
/* 42760 80051F60 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
/* 42764 80051F64 0980023C */  lui        $v0, %hi(ot_ndx)
/* 42768 80051F68 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* 4276C 80051F6C 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 42770 80051F70 00110200 */  sll        $v0, $v0, 4
/* 42774 80051F74 C0180300 */  sll        $v1, $v1, 3
/* 42778 80051F78 21186800 */  addu       $v1, $v1, $t0
/* 4277C 80051F7C 0000648C */  lw         $a0, 0x0($v1)
/* 42780 80051F80 00000000 */  nop
/* 42784 80051F84 0D008010 */  beqz       $a0, .L80051FBC
/* 42788 80051F88 2130A200 */   addu      $a2, $a1, $v0
/* 4278C 80051F8C 02006288 */  lwl        $v0, 0x2($v1)
/* 42790 80051F90 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 42794 80051F94 00000000 */  nop
/* 42798 80051F98 C0180300 */  sll        $v1, $v1, 3
/* 4279C 80051F9C 21186800 */  addu       $v1, $v1, $t0
/* 427A0 80051FA0 0000648C */  lw         $a0, 0x0($v1)
/* 427A4 80051FA4 00000000 */  nop
/* 427A8 80051FA8 00220400 */  sll        $a0, $a0, 8
/* 427AC 80051FAC 0200C4A8 */  swl        $a0, 0x2($a2)
/* 427B0 80051FB0 0200C2A8 */  swl        $v0, 0x2($a2)
/* 427B4 80051FB4 F1470108 */  j          .L80051FC4
/* 427B8 80051FB8 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L80051FBC:
/* 427BC 80051FBC 040066AC */  sw         $a2, 0x4($v1)
/* 427C0 80051FC0 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L80051FC4:
/* 427C4 80051FC4 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 427C8 80051FC8 0980043C */  lui        $a0, %hi(ot_ndx)
/* 427CC 80051FCC 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 427D0 80051FD0 C0100200 */  sll        $v0, $v0, 3
/* 427D4 80051FD4 21104800 */  addu       $v0, $v0, $t0
/* 427D8 80051FD8 00210400 */  sll        $a0, $a0, 4
/* 427DC 80051FDC 20008424 */  addiu      $a0, $a0, 0x20
/* 427E0 80051FE0 000046AC */  sw         $a2, 0x0($v0)
/* 427E4 80051FE4 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 427E8 80051FE8 2800E38C */  lw         $v1, 0x28($a3)
/* 427EC 80051FEC C0100200 */  sll        $v0, $v0, 3
/* 427F0 80051FF0 21284800 */  addu       $a1, $v0, $t0
/* 427F4 80051FF4 0000A28C */  lw         $v0, 0x0($a1)
/* 427F8 80051FF8 00000000 */  nop
/* 427FC 80051FFC 0D004010 */  beqz       $v0, .L80052034
/* 42800 80052000 21306400 */   addu      $a2, $v1, $a0
/* 42804 80052004 0200A288 */  lwl        $v0, 0x2($a1)
/* 42808 80052008 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 4280C 8005200C 00000000 */  nop
/* 42810 80052010 C0180300 */  sll        $v1, $v1, 3
/* 42814 80052014 21186800 */  addu       $v1, $v1, $t0
/* 42818 80052018 0000648C */  lw         $a0, 0x0($v1)
/* 4281C 8005201C 00000000 */  nop
/* 42820 80052020 00220400 */  sll        $a0, $a0, 8
/* 42824 80052024 0200C4A8 */  swl        $a0, 0x2($a2)
/* 42828 80052028 0200C2A8 */  swl        $v0, 0x2($a2)
/* 4282C 8005202C 0F480108 */  j          .L8005203C
/* 42830 80052030 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L80052034:
/* 42834 80052034 0400A6AC */  sw         $a2, 0x4($a1)
/* 42838 80052038 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L8005203C:
/* 4283C 8005203C 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42840 80052040 0980043C */  lui        $a0, %hi(ot_ndx)
/* 42844 80052044 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 42848 80052048 C0100200 */  sll        $v0, $v0, 3
/* 4284C 8005204C 21104800 */  addu       $v0, $v0, $t0
/* 42850 80052050 00210400 */  sll        $a0, $a0, 4
/* 42854 80052054 40008424 */  addiu      $a0, $a0, 0x40
/* 42858 80052058 000046AC */  sw         $a2, 0x0($v0)
/* 4285C 8005205C 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42860 80052060 2800E38C */  lw         $v1, 0x28($a3)
/* 42864 80052064 C0100200 */  sll        $v0, $v0, 3
/* 42868 80052068 21284800 */  addu       $a1, $v0, $t0
/* 4286C 8005206C 0000A28C */  lw         $v0, 0x0($a1)
/* 42870 80052070 00000000 */  nop
/* 42874 80052074 0D004010 */  beqz       $v0, .L800520AC
/* 42878 80052078 21306400 */   addu      $a2, $v1, $a0
/* 4287C 8005207C 0200A288 */  lwl        $v0, 0x2($a1)
/* 42880 80052080 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 42884 80052084 00000000 */  nop
/* 42888 80052088 C0180300 */  sll        $v1, $v1, 3
/* 4288C 8005208C 21186800 */  addu       $v1, $v1, $t0
/* 42890 80052090 0000648C */  lw         $a0, 0x0($v1)
/* 42894 80052094 00000000 */  nop
/* 42898 80052098 00220400 */  sll        $a0, $a0, 8
/* 4289C 8005209C 0200C4A8 */  swl        $a0, 0x2($a2)
/* 428A0 800520A0 0200C2A8 */  swl        $v0, 0x2($a2)
/* 428A4 800520A4 2D480108 */  j          .L800520B4
/* 428A8 800520A8 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L800520AC:
/* 428AC 800520AC 0400A6AC */  sw         $a2, 0x4($a1)
/* 428B0 800520B0 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L800520B4:
/* 428B4 800520B4 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 428B8 800520B8 0980043C */  lui        $a0, %hi(ot_ndx)
/* 428BC 800520BC 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 428C0 800520C0 C0100200 */  sll        $v0, $v0, 3
/* 428C4 800520C4 21104800 */  addu       $v0, $v0, $t0
/* 428C8 800520C8 00210400 */  sll        $a0, $a0, 4
/* 428CC 800520CC 60008424 */  addiu      $a0, $a0, 0x60
/* 428D0 800520D0 000046AC */  sw         $a2, 0x0($v0)
/* 428D4 800520D4 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 428D8 800520D8 2800E38C */  lw         $v1, 0x28($a3)
/* 428DC 800520DC C0100200 */  sll        $v0, $v0, 3
/* 428E0 800520E0 21284800 */  addu       $a1, $v0, $t0
/* 428E4 800520E4 0000A28C */  lw         $v0, 0x0($a1)
/* 428E8 800520E8 00000000 */  nop
/* 428EC 800520EC 0D004010 */  beqz       $v0, .L80052124
/* 428F0 800520F0 21306400 */   addu      $a2, $v1, $a0
/* 428F4 800520F4 0200A288 */  lwl        $v0, 0x2($a1)
/* 428F8 800520F8 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 428FC 800520FC 00000000 */  nop
/* 42900 80052100 C0180300 */  sll        $v1, $v1, 3
/* 42904 80052104 21186800 */  addu       $v1, $v1, $t0
/* 42908 80052108 0000648C */  lw         $a0, 0x0($v1)
/* 4290C 8005210C 00000000 */  nop
/* 42910 80052110 00220400 */  sll        $a0, $a0, 8
/* 42914 80052114 0200C4A8 */  swl        $a0, 0x2($a2)
/* 42918 80052118 0200C2A8 */  swl        $v0, 0x2($a2)
/* 4291C 8005211C 4B480108 */  j          .L8005212C
/* 42920 80052120 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L80052124:
/* 42924 80052124 0400A6AC */  sw         $a2, 0x4($a1)
/* 42928 80052128 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L8005212C:
/* 4292C 8005212C 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42930 80052130 0980043C */  lui        $a0, %hi(ot_ndx)
/* 42934 80052134 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 42938 80052138 C0100200 */  sll        $v0, $v0, 3
/* 4293C 8005213C 21104800 */  addu       $v0, $v0, $t0
/* 42940 80052140 00210400 */  sll        $a0, $a0, 4
/* 42944 80052144 80008424 */  addiu      $a0, $a0, 0x80
/* 42948 80052148 000046AC */  sw         $a2, 0x0($v0)
/* 4294C 8005214C 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42950 80052150 2800E38C */  lw         $v1, 0x28($a3)
/* 42954 80052154 C0100200 */  sll        $v0, $v0, 3
/* 42958 80052158 21284800 */  addu       $a1, $v0, $t0
/* 4295C 8005215C 0000A28C */  lw         $v0, 0x0($a1)
/* 42960 80052160 00000000 */  nop
/* 42964 80052164 0D004010 */  beqz       $v0, .L8005219C
/* 42968 80052168 21306400 */   addu      $a2, $v1, $a0
/* 4296C 8005216C 0200A288 */  lwl        $v0, 0x2($a1)
/* 42970 80052170 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 42974 80052174 00000000 */  nop
/* 42978 80052178 C0180300 */  sll        $v1, $v1, 3
/* 4297C 8005217C 21186800 */  addu       $v1, $v1, $t0
/* 42980 80052180 0000648C */  lw         $a0, 0x0($v1)
/* 42984 80052184 00000000 */  nop
/* 42988 80052188 00220400 */  sll        $a0, $a0, 8
/* 4298C 8005218C 0200C4A8 */  swl        $a0, 0x2($a2)
/* 42990 80052190 0200C2A8 */  swl        $v0, 0x2($a2)
/* 42994 80052194 69480108 */  j          .L800521A4
/* 42998 80052198 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L8005219C:
/* 4299C 8005219C 0400A6AC */  sw         $a2, 0x4($a1)
/* 429A0 800521A0 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L800521A4:
/* 429A4 800521A4 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 429A8 800521A8 0980043C */  lui        $a0, %hi(ot_ndx)
/* 429AC 800521AC 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 429B0 800521B0 C0100200 */  sll        $v0, $v0, 3
/* 429B4 800521B4 21104800 */  addu       $v0, $v0, $t0
/* 429B8 800521B8 00210400 */  sll        $a0, $a0, 4
/* 429BC 800521BC A0008424 */  addiu      $a0, $a0, 0xA0
/* 429C0 800521C0 000046AC */  sw         $a2, 0x0($v0)
/* 429C4 800521C4 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 429C8 800521C8 2800E38C */  lw         $v1, 0x28($a3)
/* 429CC 800521CC C0100200 */  sll        $v0, $v0, 3
/* 429D0 800521D0 21284800 */  addu       $a1, $v0, $t0
/* 429D4 800521D4 0000A28C */  lw         $v0, 0x0($a1)
/* 429D8 800521D8 00000000 */  nop
/* 429DC 800521DC 0D004010 */  beqz       $v0, .L80052214
/* 429E0 800521E0 21306400 */   addu      $a2, $v1, $a0
/* 429E4 800521E4 0200A288 */  lwl        $v0, 0x2($a1)
/* 429E8 800521E8 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 429EC 800521EC 00000000 */  nop
/* 429F0 800521F0 C0180300 */  sll        $v1, $v1, 3
/* 429F4 800521F4 21186800 */  addu       $v1, $v1, $t0
/* 429F8 800521F8 0000648C */  lw         $a0, 0x0($v1)
/* 429FC 800521FC 00000000 */  nop
/* 42A00 80052200 00220400 */  sll        $a0, $a0, 8
/* 42A04 80052204 0200C4A8 */  swl        $a0, 0x2($a2)
/* 42A08 80052208 0200C2A8 */  swl        $v0, 0x2($a2)
/* 42A0C 8005220C 87480108 */  j          .L8005221C
/* 42A10 80052210 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L80052214:
/* 42A14 80052214 0400A6AC */  sw         $a2, 0x4($a1)
/* 42A18 80052218 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L8005221C:
/* 42A1C 8005221C 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42A20 80052220 0980043C */  lui        $a0, %hi(ot_ndx)
/* 42A24 80052224 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 42A28 80052228 C0100200 */  sll        $v0, $v0, 3
/* 42A2C 8005222C 21104800 */  addu       $v0, $v0, $t0
/* 42A30 80052230 00210400 */  sll        $a0, $a0, 4
/* 42A34 80052234 C0008424 */  addiu      $a0, $a0, 0xC0
/* 42A38 80052238 000046AC */  sw         $a2, 0x0($v0)
/* 42A3C 8005223C 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42A40 80052240 2800E38C */  lw         $v1, 0x28($a3)
/* 42A44 80052244 C0100200 */  sll        $v0, $v0, 3
/* 42A48 80052248 21284800 */  addu       $a1, $v0, $t0
/* 42A4C 8005224C 0000A28C */  lw         $v0, 0x0($a1)
/* 42A50 80052250 00000000 */  nop
/* 42A54 80052254 0D004010 */  beqz       $v0, .L8005228C
/* 42A58 80052258 21306400 */   addu      $a2, $v1, $a0
/* 42A5C 8005225C 0200A288 */  lwl        $v0, 0x2($a1)
/* 42A60 80052260 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 42A64 80052264 00000000 */  nop
/* 42A68 80052268 C0180300 */  sll        $v1, $v1, 3
/* 42A6C 8005226C 21186800 */  addu       $v1, $v1, $t0
/* 42A70 80052270 0000648C */  lw         $a0, 0x0($v1)
/* 42A74 80052274 00000000 */  nop
/* 42A78 80052278 00220400 */  sll        $a0, $a0, 8
/* 42A7C 8005227C 0200C4A8 */  swl        $a0, 0x2($a2)
/* 42A80 80052280 0200C2A8 */  swl        $v0, 0x2($a2)
/* 42A84 80052284 A5480108 */  j          .L80052294
/* 42A88 80052288 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L8005228C:
/* 42A8C 8005228C 0400A6AC */  sw         $a2, 0x4($a1)
/* 42A90 80052290 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L80052294:
/* 42A94 80052294 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42A98 80052298 0980043C */  lui        $a0, %hi(ot_ndx)
/* 42A9C 8005229C 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 42AA0 800522A0 C0100200 */  sll        $v0, $v0, 3
/* 42AA4 800522A4 21104800 */  addu       $v0, $v0, $t0
/* 42AA8 800522A8 00210400 */  sll        $a0, $a0, 4
/* 42AAC 800522AC E0008424 */  addiu      $a0, $a0, 0xE0
/* 42AB0 800522B0 000046AC */  sw         $a2, 0x0($v0)
/* 42AB4 800522B4 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42AB8 800522B8 2800E38C */  lw         $v1, 0x28($a3)
/* 42ABC 800522BC C0100200 */  sll        $v0, $v0, 3
/* 42AC0 800522C0 21284800 */  addu       $a1, $v0, $t0
/* 42AC4 800522C4 0000A28C */  lw         $v0, 0x0($a1)
/* 42AC8 800522C8 00000000 */  nop
/* 42ACC 800522CC 0D004010 */  beqz       $v0, .L80052304
/* 42AD0 800522D0 21306400 */   addu      $a2, $v1, $a0
/* 42AD4 800522D4 0200A288 */  lwl        $v0, 0x2($a1)
/* 42AD8 800522D8 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 42ADC 800522DC 00000000 */  nop
/* 42AE0 800522E0 C0180300 */  sll        $v1, $v1, 3
/* 42AE4 800522E4 21186800 */  addu       $v1, $v1, $t0
/* 42AE8 800522E8 0000648C */  lw         $a0, 0x0($v1)
/* 42AEC 800522EC 00000000 */  nop
/* 42AF0 800522F0 00220400 */  sll        $a0, $a0, 8
/* 42AF4 800522F4 0200C4A8 */  swl        $a0, 0x2($a2)
/* 42AF8 800522F8 0200C2A8 */  swl        $v0, 0x2($a2)
/* 42AFC 800522FC C3480108 */  j          .L8005230C
/* 42B00 80052300 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L80052304:
/* 42B04 80052304 0400A6AC */  sw         $a2, 0x4($a1)
/* 42B08 80052308 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L8005230C:
/* 42B0C 8005230C 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42B10 80052310 0980043C */  lui        $a0, %hi(ot_ndx)
/* 42B14 80052314 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 42B18 80052318 C0100200 */  sll        $v0, $v0, 3
/* 42B1C 8005231C 21104800 */  addu       $v0, $v0, $t0
/* 42B20 80052320 00210400 */  sll        $a0, $a0, 4
/* 42B24 80052324 00018424 */  addiu      $a0, $a0, 0x100
/* 42B28 80052328 000046AC */  sw         $a2, 0x0($v0)
/* 42B2C 8005232C 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42B30 80052330 2800E38C */  lw         $v1, 0x28($a3)
/* 42B34 80052334 C0100200 */  sll        $v0, $v0, 3
/* 42B38 80052338 21284800 */  addu       $a1, $v0, $t0
/* 42B3C 8005233C 0000A28C */  lw         $v0, 0x0($a1)
/* 42B40 80052340 00000000 */  nop
/* 42B44 80052344 0D004010 */  beqz       $v0, .L8005237C
/* 42B48 80052348 21306400 */   addu      $a2, $v1, $a0
/* 42B4C 8005234C 0200A288 */  lwl        $v0, 0x2($a1)
/* 42B50 80052350 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 42B54 80052354 00000000 */  nop
/* 42B58 80052358 C0180300 */  sll        $v1, $v1, 3
/* 42B5C 8005235C 21186800 */  addu       $v1, $v1, $t0
/* 42B60 80052360 0000648C */  lw         $a0, 0x0($v1)
/* 42B64 80052364 00000000 */  nop
/* 42B68 80052368 00220400 */  sll        $a0, $a0, 8
/* 42B6C 8005236C 0200C4A8 */  swl        $a0, 0x2($a2)
/* 42B70 80052370 0200C2A8 */  swl        $v0, 0x2($a2)
/* 42B74 80052374 E1480108 */  j          .L80052384
/* 42B78 80052378 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L8005237C:
/* 42B7C 8005237C 0400A6AC */  sw         $a2, 0x4($a1)
/* 42B80 80052380 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L80052384:
/* 42B84 80052384 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42B88 80052388 0980043C */  lui        $a0, %hi(ot_ndx)
/* 42B8C 8005238C 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 42B90 80052390 C0100200 */  sll        $v0, $v0, 3
/* 42B94 80052394 21104800 */  addu       $v0, $v0, $t0
/* 42B98 80052398 00210400 */  sll        $a0, $a0, 4
/* 42B9C 8005239C 20018424 */  addiu      $a0, $a0, 0x120
/* 42BA0 800523A0 000046AC */  sw         $a2, 0x0($v0)
/* 42BA4 800523A4 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42BA8 800523A8 2800E38C */  lw         $v1, 0x28($a3)
/* 42BAC 800523AC C0100200 */  sll        $v0, $v0, 3
/* 42BB0 800523B0 21284800 */  addu       $a1, $v0, $t0
/* 42BB4 800523B4 0000A28C */  lw         $v0, 0x0($a1)
/* 42BB8 800523B8 00000000 */  nop
/* 42BBC 800523BC 0D004010 */  beqz       $v0, .L800523F4
/* 42BC0 800523C0 21306400 */   addu      $a2, $v1, $a0
/* 42BC4 800523C4 0200A288 */  lwl        $v0, 0x2($a1)
/* 42BC8 800523C8 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 42BCC 800523CC 00000000 */  nop
/* 42BD0 800523D0 C0180300 */  sll        $v1, $v1, 3
/* 42BD4 800523D4 21186800 */  addu       $v1, $v1, $t0
/* 42BD8 800523D8 0000648C */  lw         $a0, 0x0($v1)
/* 42BDC 800523DC 00000000 */  nop
/* 42BE0 800523E0 00220400 */  sll        $a0, $a0, 8
/* 42BE4 800523E4 0200C4A8 */  swl        $a0, 0x2($a2)
/* 42BE8 800523E8 0200C2A8 */  swl        $v0, 0x2($a2)
/* 42BEC 800523EC FF480108 */  j          .L800523FC
/* 42BF0 800523F0 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L800523F4:
/* 42BF4 800523F4 0400A6AC */  sw         $a2, 0x4($a1)
/* 42BF8 800523F8 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L800523FC:
/* 42BFC 800523FC 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42C00 80052400 0980043C */  lui        $a0, %hi(ot_ndx)
/* 42C04 80052404 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 42C08 80052408 C0100200 */  sll        $v0, $v0, 3
/* 42C0C 8005240C 21104800 */  addu       $v0, $v0, $t0
/* 42C10 80052410 00210400 */  sll        $a0, $a0, 4
/* 42C14 80052414 40018424 */  addiu      $a0, $a0, 0x140
/* 42C18 80052418 000046AC */  sw         $a2, 0x0($v0)
/* 42C1C 8005241C 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42C20 80052420 2800E38C */  lw         $v1, 0x28($a3)
/* 42C24 80052424 C0100200 */  sll        $v0, $v0, 3
/* 42C28 80052428 21284800 */  addu       $a1, $v0, $t0
/* 42C2C 8005242C 0000A28C */  lw         $v0, 0x0($a1)
/* 42C30 80052430 00000000 */  nop
/* 42C34 80052434 0D004010 */  beqz       $v0, .L8005246C
/* 42C38 80052438 21306400 */   addu      $a2, $v1, $a0
/* 42C3C 8005243C 0200A288 */  lwl        $v0, 0x2($a1)
/* 42C40 80052440 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 42C44 80052444 00000000 */  nop
/* 42C48 80052448 C0180300 */  sll        $v1, $v1, 3
/* 42C4C 8005244C 21186800 */  addu       $v1, $v1, $t0
/* 42C50 80052450 0000648C */  lw         $a0, 0x0($v1)
/* 42C54 80052454 00000000 */  nop
/* 42C58 80052458 00220400 */  sll        $a0, $a0, 8
/* 42C5C 8005245C 0200C4A8 */  swl        $a0, 0x2($a2)
/* 42C60 80052460 0200C2A8 */  swl        $v0, 0x2($a2)
/* 42C64 80052464 1D490108 */  j          .L80052474
/* 42C68 80052468 28772825 */   addiu     $t0, $t1, %lo(g_nt2 + 0x1F80)
.L8005246C:
/* 42C6C 8005246C 0400A6AC */  sw         $a2, 0x4($a1)
/* 42C70 80052470 28772825 */  addiu      $t0, $t1, %lo(g_nt2 + 0x1F80)
.L80052474:
/* 42C74 80052474 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42C78 80052478 0980043C */  lui        $a0, %hi(ot_ndx)
/* 42C7C 8005247C 4853848C */  lw         $a0, %lo(ot_ndx)($a0)
/* 42C80 80052480 C0100200 */  sll        $v0, $v0, 3
/* 42C84 80052484 21104800 */  addu       $v0, $v0, $t0
/* 42C88 80052488 00210400 */  sll        $a0, $a0, 4
/* 42C8C 8005248C 60018424 */  addiu      $a0, $a0, 0x160
/* 42C90 80052490 000046AC */  sw         $a2, 0x0($v0)
/* 42C94 80052494 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42C98 80052498 2800E38C */  lw         $v1, 0x28($a3)
/* 42C9C 8005249C C0100200 */  sll        $v0, $v0, 3
/* 42CA0 800524A0 21284800 */  addu       $a1, $v0, $t0
/* 42CA4 800524A4 0000A28C */  lw         $v0, 0x0($a1)
/* 42CA8 800524A8 00000000 */  nop
/* 42CAC 800524AC 0D004010 */  beqz       $v0, .L800524E4
/* 42CB0 800524B0 21306400 */   addu      $a2, $v1, $a0
/* 42CB4 800524B4 0200A288 */  lwl        $v0, 0x2($a1)
/* 42CB8 800524B8 2F00E390 */  lbu        $v1, 0x2F($a3)
/* 42CBC 800524BC 00000000 */  nop
/* 42CC0 800524C0 C0180300 */  sll        $v1, $v1, 3
/* 42CC4 800524C4 21186800 */  addu       $v1, $v1, $t0
/* 42CC8 800524C8 0000648C */  lw         $a0, 0x0($v1)
/* 42CCC 800524CC 00000000 */  nop
/* 42CD0 800524D0 00220400 */  sll        $a0, $a0, 8
/* 42CD4 800524D4 0200C4A8 */  swl        $a0, 0x2($a2)
/* 42CD8 800524D8 0200C2A8 */  swl        $v0, 0x2($a2)
/* 42CDC 800524DC 3A490108 */  j          .L800524E8
/* 42CE0 800524E0 00000000 */   nop
.L800524E4:
/* 42CE4 800524E4 0400A6AC */  sw         $a2, 0x4($a1)
.L800524E8:
/* 42CE8 800524E8 2F00E290 */  lbu        $v0, 0x2F($a3)
/* 42CEC 800524EC 00000000 */  nop
/* 42CF0 800524F0 C0100200 */  sll        $v0, $v0, 3
/* 42CF4 800524F4 21104B00 */  addu       $v0, $v0, $t3
/* 42CF8 800524F8 000046AC */  sw         $a2, 0x0($v0)
.L800524FC:
/* 42CFC 800524FC A40F828F */  lw         $v0, %gp_rel(BoxOffset)($gp)
/* 42D00 80052500 01004A25 */  addiu      $t2, $t2, 0x1
/* 42D04 80052504 2A104201 */  slt        $v0, $t2, $v0
/* 42D08 80052508 89FE4014 */  bnez       $v0, .L80051F30
/* 42D0C 8005250C 3000E724 */   addiu     $a3, $a3, 0x30
.L80052510:
/* 42D10 80052510 0800E003 */  jr         $ra
/* 42D14 80052514 00000000 */   nop
.size DrawBoxes, . - DrawBoxes
