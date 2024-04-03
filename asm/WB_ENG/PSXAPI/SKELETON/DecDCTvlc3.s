.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DecDCTvlc3
/* 58550 80067D50 FCFFBD23 */  addi       $sp, $sp, -0x4 /* handwritten instruction */
/* 58554 80067D54 0000BFAF */  sw         $ra, 0x0($sp)
/* 58558 80067D58 09800E3C */  lui        $t6, %hi(D_800883CC)
/* 5855C 80067D5C CC83CE25 */  addiu      $t6, $t6, %lo(D_800883CC)
/* 58560 80067D60 0000CC8D */  lw         $t4, 0x0($t6)
/* 58564 80067D64 801F073C */  lui        $a3, (0x1F800000 >> 16)
/* 58568 80067D68 15008014 */  bnez       $a0, .L80067DC0
/* 5856C 80067D6C 40600C00 */   sll       $t4, $t4, 1
/* 58570 80067D70 09800E3C */  lui        $t6, %hi(D_800883D0)
/* 58574 80067D74 D083CE25 */  addiu      $t6, $t6, %lo(D_800883D0)
/* 58578 80067D78 0000C28D */  lw         $v0, 0x0($t6)
/* 5857C 80067D7C 0400C38D */  lw         $v1, 0x4($t6)
/* 58580 80067D80 0800C88D */  lw         $t0, 0x8($t6)
/* 58584 80067D84 0C00C48D */  lw         $a0, 0xC($t6)
/* 58588 80067D88 1000C58D */  lw         $a1, 0x10($t6)
/* 5858C 80067D8C 1400C68D */  lw         $a2, 0x14($t6)
/* 58590 80067D90 1800CA8D */  lw         $t2, 0x18($t6)
/* 58594 80067D94 1C00CB8D */  lw         $t3, 0x1C($t6)
/* 58598 80067D98 2000CD8D */  lw         $t5, 0x20($t6)
/* 5859C 80067D9C 2400CF8D */  lw         $t7, 0x24($t6)
/* 585A0 80067DA0 2800D88D */  lw         $t8, 0x28($t6)
/* 585A4 80067DA4 2C00D98D */  lw         $t9, 0x2C($t6)
/* 585A8 80067DA8 3000DF8D */  lw         $ra, 0x30($t6)
/* 585AC 80067DAC 20608501 */  add        $t4, $t4, $a1 /* handwritten instruction */
/* 585B0 80067DB0 2800E017 */  bnez       $ra, .L80067E54
/* 585B4 80067DB4 00000000 */   nop
/* 585B8 80067DB8 FF000104 */  bgez       $zero, .L800681B8
/* 585BC 80067DBC 00000000 */   nop
.L80067DC0:
/* 585C0 80067DC0 20608501 */  add        $t4, $t4, $a1 /* handwritten instruction */
/* 585C4 80067DC4 0000888C */  lw         $t0, 0x0($a0)
/* 585C8 80067DC8 04008B8C */  lw         $t3, 0x4($a0)
/* 585CC 80067DCC 0800828C */  lw         $v0, 0x8($a0)
/* 585D0 80067DD0 0C00838C */  lw         $v1, 0xC($a0)
/* 585D4 80067DD4 1000868C */  lw         $a2, 0x10($a0)
/* 585D8 80067DD8 25500000 */  or         $t2, $zero, $zero
/* 585DC 80067DDC 25780000 */  or         $t7, $zero, $zero
/* 585E0 80067DE0 25C00000 */  or         $t8, $zero, $zero
/* 585E4 80067DE4 25C80000 */  or         $t9, $zero, $zero
/* 585E8 80067DE8 000C0200 */  sll        $at, $v0, 16
/* 585EC 80067DEC 02140200 */  srl        $v0, $v0, 16
/* 585F0 80067DF0 25104100 */  or         $v0, $v0, $at
/* 585F4 80067DF4 000C0300 */  sll        $at, $v1, 16
/* 585F8 80067DF8 021C0300 */  srl        $v1, $v1, 16
/* 585FC 80067DFC 25186100 */  or         $v1, $v1, $at
/* 58600 80067E00 0000A8AC */  sw         $t0, 0x0($a1)
/* 58604 80067E04 0400A520 */  addi       $a1, $a1, 0x4 /* handwritten instruction */
/* 58608 80067E08 14008420 */  addi       $a0, $a0, 0x14 /* handwritten instruction */
/* 5860C 80067E0C FFFF0831 */  andi       $t0, $t0, 0xFFFF
/* 58610 80067E10 80400800 */  sll        $t0, $t0, 2
/* 58614 80067E14 2068A800 */  add        $t5, $a1, $t0 /* handwritten instruction */
/* 58618 80067E18 020C0B00 */  srl        $at, $t3, 16
/* 5861C 80067E1C 03002138 */  xori       $at, $at, 0x3
/* 58620 80067E20 3F006B31 */  andi       $t3, $t3, 0x3F
/* 58624 80067E24 A4002010 */  beqz       $at, .L800680B8
/* 58628 80067E28 805A0B00 */   sll       $t3, $t3, 10
/* 5862C 80067E2C 82450200 */  srl        $t0, $v0, 22
/* 58630 80067E30 25400B01 */  or         $t0, $t0, $t3
/* 58634 80067E34 A49F010C */  jal        func_80067E90
/* 58638 80067E38 0A000934 */   ori       $t1, $zero, 0xA
/* 5863C 80067E3C 82450800 */  srl        $t0, $t0, 22
/* 58640 80067E40 FF010139 */  xori       $at, $t0, 0x1FF
/* 58644 80067E44 E3002010 */  beqz       $at, .L800681D4
/* 58648 80067E48 2308AC00 */   subu      $at, $a1, $t4
/* 5864C 80067E4C EC002104 */  bgez       $at, .L80068200
/* 58650 80067E50 25400B01 */   or        $t0, $t0, $t3
.L80067E54:
/* 58654 80067E54 0E000104 */  bgez       $zero, func_80067E90
/* 58658 80067E58 0C000934 */   ori       $t1, $zero, 0xC
.L80067E5C:
/* 5865C 80067E5C 23004104 */  bgez       $v0, .L80067EEC
/* 58660 80067E60 40080200 */   sll       $at, $v0, 1
/* 58664 80067E64 06002004 */  bltz       $at, .L80067E80
/* 58668 80067E68 80080200 */   sll       $at, $v0, 2
/* 5866C 80067E6C 00FE0834 */  ori        $t0, $zero, 0xFE00
/* 58670 80067E70 0000A8A4 */  sh         $t0, 0x0($a1)
/* 58674 80067E74 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
/* 58678 80067E78 0800E003 */  jr         $ra
/* 5867C 80067E7C 80400200 */   sll       $t0, $v0, 2
.L80067E80:
/* 58680 80067E80 03000934 */  ori        $t1, $zero, 0x3
/* 58684 80067E84 02002104 */  bgez       $at, func_80067E90
/* 58688 80067E88 01000834 */   ori       $t0, $zero, 0x1
/* 5868C 80067E8C FF030834 */  ori        $t0, $zero, 0x3FF
glabel func_80067E90
/* 58690 80067E90 0000A8A4 */  sh         $t0, 0x0($a1)
/* 58694 80067E94 0200A520 */  addi       $a1, $a1, 0x2 /* handwritten instruction */
/* 58698 80067E98 04102201 */  sllv       $v0, $v0, $t1
/* 5869C 80067E9C 22080900 */  neg        $at, $t1 /* handwritten instruction */
/* 586A0 80067EA0 06082300 */  srlv       $at, $v1, $at
/* 586A4 80067EA4 25104100 */  or         $v0, $v0, $at
/* 586A8 80067EA8 20504901 */  add        $t2, $t2, $t1 /* handwritten instruction */
/* 586AC 80067EAC E0FF4121 */  addi       $at, $t2, -0x20 /* handwritten instruction */
/* 586B0 80067EB0 EAFF2004 */  bltz       $at, .L80067E5C
/* 586B4 80067EB4 04182301 */   sllv      $v1, $v1, $t1
/* 586B8 80067EB8 E0FF4A21 */  addi       $t2, $t2, -0x20 /* handwritten instruction */
/* 586BC 80067EBC 22080A00 */  neg        $at, $t2 /* handwritten instruction */
/* 586C0 80067EC0 00440600 */  sll        $t0, $a2, 16
/* 586C4 80067EC4 02340600 */  srl        $a2, $a2, 16
/* 586C8 80067EC8 2530C800 */  or         $a2, $a2, $t0
/* 586CC 80067ECC 02002014 */  bnez       $at, .L80067ED8
/* 586D0 80067ED0 06082600 */   srlv      $at, $a2, $at
/* 586D4 80067ED4 25080000 */  or         $at, $zero, $zero
.L80067ED8:
/* 586D8 80067ED8 04184601 */  sllv       $v1, $a2, $t2
/* 586DC 80067EDC 0000868C */  lw         $a2, 0x0($a0)
/* 586E0 80067EE0 25104100 */  or         $v0, $v0, $at
/* 586E4 80067EE4 DDFF0104 */  bgez       $zero, .L80067E5C
/* 586E8 80067EE8 04008420 */   addi      $a0, $a0, 0x4 /* handwritten instruction */
.L80067EEC:
/* 586EC 80067EEC 13002104 */  bgez       $at, .L80067F3C
/* 586F0 80067EF0 80080200 */   sll       $at, $v0, 2
/* 586F4 80067EF4 06002104 */  bgez       $at, .L80067F10
/* 586F8 80067EF8 C0080200 */   sll       $at, $v0, 3
/* 586FC 80067EFC 04000934 */  ori        $t1, $zero, 0x4
/* 58700 80067F00 E3FF2104 */  bgez       $at, func_80067E90
/* 58704 80067F04 01040834 */   ori       $t0, $zero, 0x401
/* 58708 80067F08 E1FF0104 */  bgez       $zero, func_80067E90
/* 5870C 80067F0C FF070834 */   ori       $t0, $zero, 0x7FF
.L80067F10:
/* 58710 80067F10 05000934 */  ori        $t1, $zero, 0x5
/* 58714 80067F14 05002004 */  bltz       $at, .L80067F2C
/* 58718 80067F18 00090200 */   sll       $at, $v0, 4
/* 5871C 80067F1C DCFF2104 */  bgez       $at, func_80067E90
/* 58720 80067F20 02000834 */   ori       $t0, $zero, 0x2
/* 58724 80067F24 DAFF0104 */  bgez       $zero, func_80067E90
/* 58728 80067F28 FE030834 */   ori       $t0, $zero, 0x3FE
.L80067F2C:
/* 5872C 80067F2C D8FF2104 */  bgez       $at, func_80067E90
/* 58730 80067F30 01080834 */   ori       $t0, $zero, 0x801
/* 58734 80067F34 D6FF0104 */  bgez       $zero, func_80067E90
/* 58738 80067F38 FF0B0834 */   ori       $t0, $zero, 0xBFF
.L80067F3C:
/* 5873C 80067F3C 0F002104 */  bgez       $at, .L80067F7C
/* 58740 80067F40 C0080200 */   sll       $at, $v0, 3
/* 58744 80067F44 820F0100 */  srl        $at, $at, 30
/* 58748 80067F48 06002010 */  beqz       $at, .L80067F64
/* 5874C 80067F4C 420E0200 */   srl       $at, $v0, 25
/* 58750 80067F50 0E002130 */  andi       $at, $at, 0xE
/* 58754 80067F54 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
/* 58758 80067F58 9C012884 */  lh         $t0, 0x19C($at)
/* 5875C 80067F5C CCFF0104 */  bgez       $zero, func_80067E90
/* 58760 80067F60 06000934 */   ori       $t1, $zero, 0x6
.L80067F64:
/* 58764 80067F64 820D0200 */  srl        $at, $v0, 22
/* 58768 80067F68 1E002130 */  andi       $at, $at, 0x1E
/* 5876C 80067F6C 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
/* 58770 80067F70 80012884 */  lh         $t0, 0x180($at)
/* 58774 80067F74 C6FF0104 */  bgez       $zero, func_80067E90
/* 58778 80067F78 09000934 */   ori       $t1, $zero, 0x9
.L80067F7C:
/* 5877C 80067F7C 00F08248 */  mtc2       $v0, $30 /* handwritten instruction */
/* 58780 80067F80 820E0200 */  srl        $at, $v0, 26
/* 58784 80067F84 FFFF2120 */  addi       $at, $at, -0x1 /* handwritten instruction */
/* 58788 80067F88 1C002010 */  beqz       $at, .L80067FFC
/* 5878C 80067F8C 00F80948 */   mfc2      $t1, $31 /* handwritten instruction */
/* 58790 80067F90 0A002004 */  bltz       $at, .L80067FBC
/* 58794 80067F94 04082201 */   sllv      $at, $v0, $t1
/* 58798 80067F98 C20E0100 */  srl        $at, $at, 27
/* 5879C 80067F9C 0E002130 */  andi       $at, $at, 0xE
/* 587A0 80067FA0 FDFF2821 */  addi       $t0, $t1, -0x3 /* handwritten instruction */
/* 587A4 80067FA4 00410800 */  sll        $t0, $t0, 4
/* 587A8 80067FA8 20082800 */  add        $at, $at, $t0 /* handwritten instruction */
/* 587AC 80067FAC 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
/* 587B0 80067FB0 00002884 */  lh         $t0, 0x0($at)
/* 587B4 80067FB4 B6FF0104 */  bgez       $zero, func_80067E90
/* 587B8 80067FB8 04002921 */   addi      $t1, $t1, 0x4 /* handwritten instruction */
.L80067FBC:
/* 587BC 80067FBC FAFF2821 */  addi       $t0, $t1, -0x6 /* handwritten instruction */
/* 587C0 80067FC0 08000019 */  blez       $t0, .L80067FE4
/* 587C4 80067FC4 80410800 */   sll       $t0, $t0, 6
/* 587C8 80067FC8 420E0100 */  srl        $at, $at, 25
/* 587CC 80067FCC 3E002130 */  andi       $at, $at, 0x3E
/* 587D0 80067FD0 20082800 */  add        $at, $at, $t0 /* handwritten instruction */
/* 587D4 80067FD4 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
/* 587D8 80067FD8 00002884 */  lh         $t0, 0x0($at)
/* 587DC 80067FDC ACFF0104 */  bgez       $zero, func_80067E90
/* 587E0 80067FE0 06002921 */   addi      $t1, $t1, 0x6 /* handwritten instruction */
.L80067FE4:
/* 587E4 80067FE4 820E0100 */  srl        $at, $at, 26
/* 587E8 80067FE8 1E002130 */  andi       $at, $at, 0x1E
/* 587EC 80067FEC 20082700 */  add        $at, $at, $a3 /* handwritten instruction */
/* 587F0 80067FF0 20002884 */  lh         $t0, 0x20($at)
/* 587F4 80067FF4 A6FF0104 */  bgez       $zero, func_80067E90
/* 587F8 80067FF8 0B000920 */   addi      $t1, $zero, 0xB /* handwritten instruction */
.L80067FFC:
/* 587FC 80067FFC 82420200 */  srl        $t0, $v0, 10
/* 58800 80068000 FFFF0831 */  andi       $t0, $t0, 0xFFFF
/* 58804 80068004 A2FF0104 */  bgez       $zero, func_80067E90
/* 58808 80068008 16000920 */   addi      $t1, $zero, 0x16 /* handwritten instruction */
glabel func_8006800C
/* 5880C 8006800C 0E000005 */  bltz       $t0, .L80068048
/* 58810 80068010 40080800 */   sll       $at, $t0, 1
/* 58814 80068014 07002104 */  bgez       $at, .L80068034
/* 58818 80068018 40080100 */   sll       $at, $at, 1
/* 5881C 8006801C 06000934 */  ori        $t1, $zero, 0x6
/* 58820 80068020 82470100 */  srl        $t0, $at, 30
/* 58824 80068024 20002004 */  bltz       $at, .L800680A8
/* 58828 80068028 20C82803 */   add       $t9, $t9, $t0 /* handwritten instruction */
/* 5882C 8006802C 1E000104 */  bgez       $zero, .L800680A8
/* 58830 80068030 FDFF3923 */   addi      $t9, $t9, -0x3 /* handwritten instruction */
.L80068034:
/* 58834 80068034 05000934 */  ori        $t1, $zero, 0x5
/* 58838 80068038 1B002004 */  bltz       $at, .L800680A8
/* 5883C 8006803C 01003923 */   addi      $t9, $t9, 0x1 /* handwritten instruction */
/* 58840 80068040 19000104 */  bgez       $zero, .L800680A8
/* 58844 80068044 FEFF3923 */   addi      $t9, $t9, -0x2 /* handwritten instruction */
.L80068048:
/* 58848 80068048 00F08848 */  mtc2       $t0, $30 /* handwritten instruction */
/* 5884C 8006804C 0A002004 */  bltz       $at, .L80068078
/* 58850 80068050 40700100 */   sll       $t6, $at, 1
/* 58854 80068054 1400C105 */  bgez       $t6, .L800680A8
/* 58858 80068058 05000934 */   ori       $t1, $zero, 0x5
/* 5885C 8006805C 08000934 */  ori        $t1, $zero, 0x8
/* 58860 80068060 C0080800 */  sll        $at, $t0, 3
/* 58864 80068064 42470100 */  srl        $t0, $at, 29
/* 58868 80068068 0F002004 */  bltz       $at, .L800680A8
/* 5886C 8006806C 20C82803 */   add       $t9, $t9, $t0 /* handwritten instruction */
/* 58870 80068070 0D000104 */  bgez       $zero, .L800680A8
/* 58874 80068074 F9FF3923 */   addi      $t9, $t9, -0x7 /* handwritten instruction */
.L80068078:
/* 58878 80068078 00F80948 */  mfc2       $t1, $31 /* handwritten instruction */
/* 5887C 8006807C FEFF0E20 */  addi       $t6, $zero, -0x2 /* handwritten instruction */
/* 58880 80068080 04082101 */  sllv       $at, $at, $t1
/* 58884 80068084 2248C901 */  sub        $t1, $t6, $t1 /* handwritten instruction */
/* 58888 80068088 03002004 */  bltz       $at, .L80068098
/* 5888C 8006808C 06402101 */   srlv      $t0, $at, $t1
/* 58890 80068090 06082E01 */  srlv       $at, $t6, $t1
/* 58894 80068094 22400101 */  sub        $t0, $t0, $at /* handwritten instruction */
.L80068098:
/* 58898 80068098 22480900 */  neg        $t1, $t1 /* handwritten instruction */
/* 5889C 8006809C 20482901 */  add        $t1, $t1, $t1 /* handwritten instruction */
/* 588A0 800680A0 01002921 */  addi       $t1, $t1, 0x1 /* handwritten instruction */
/* 588A4 800680A4 20C82803 */  add        $t9, $t9, $t0 /* handwritten instruction */
.L800680A8:
/* 588A8 800680A8 80401900 */  sll        $t0, $t9, 2
/* 588AC 800680AC FF030831 */  andi       $t0, $t0, 0x3FF
/* 588B0 800680B0 A49F0108 */  j          func_80067E90
/* 588B4 800680B4 25400B01 */   or        $t0, $t0, $t3
.L800680B8:
/* 588B8 800680B8 00F08248 */  mtc2       $v0, $30 /* handwritten instruction */
/* 588BC 800680BC 09004004 */  bltz       $v0, .L800680E4
/* 588C0 800680C0 40080200 */   sll       $at, $v0, 1
/* 588C4 800680C4 12002104 */  bgez       $at, .L80068110
/* 588C8 800680C8 02000934 */   ori       $t1, $zero, 0x2
/* 588CC 800680CC 40080100 */  sll        $at, $at, 1
/* 588D0 800680D0 03000934 */  ori        $t1, $zero, 0x3
/* 588D4 800680D4 0E002004 */  bltz       $at, .L80068110
/* 588D8 800680D8 0100EF21 */   addi      $t7, $t7, 0x1 /* handwritten instruction */
/* 588DC 800680DC 0C000104 */  bgez       $zero, .L80068110
/* 588E0 800680E0 FEFFEF21 */   addi      $t7, $t7, -0x2 /* handwritten instruction */
.L800680E4:
/* 588E4 800680E4 00F80948 */  mfc2       $t1, $31 /* handwritten instruction */
/* 588E8 800680E8 FFFF0E20 */  addi       $t6, $zero, -0x1 /* handwritten instruction */
/* 588EC 800680EC 04082101 */  sllv       $at, $at, $t1
/* 588F0 800680F0 2248C901 */  sub        $t1, $t6, $t1 /* handwritten instruction */
/* 588F4 800680F4 03002004 */  bltz       $at, .L80068104
/* 588F8 800680F8 06402101 */   srlv      $t0, $at, $t1
/* 588FC 800680FC 06082E01 */  srlv       $at, $t6, $t1
/* 58900 80068100 22400101 */  sub        $t0, $t0, $at /* handwritten instruction */
.L80068104:
/* 58904 80068104 22480900 */  neg        $t1, $t1 /* handwritten instruction */
/* 58908 80068108 20482901 */  add        $t1, $t1, $t1 /* handwritten instruction */
/* 5890C 8006810C 2078E801 */  add        $t7, $t7, $t0 /* handwritten instruction */
.L80068110:
/* 58910 80068110 80400F00 */  sll        $t0, $t7, 2
/* 58914 80068114 FF030831 */  andi       $t0, $t0, 0x3FF
/* 58918 80068118 A49F010C */  jal        func_80067E90
/* 5891C 8006811C 25400B01 */   or        $t0, $t0, $t3
/* 58920 80068120 00F08848 */  mtc2       $t0, $30 /* handwritten instruction */
/* 58924 80068124 09000005 */  bltz       $t0, .L8006814C
/* 58928 80068128 40080800 */   sll       $at, $t0, 1
/* 5892C 8006812C 13002104 */  bgez       $at, .L8006817C
/* 58930 80068130 04000934 */   ori       $t1, $zero, 0x4
/* 58934 80068134 40080100 */  sll        $at, $at, 1
/* 58938 80068138 05000934 */  ori        $t1, $zero, 0x5
/* 5893C 8006813C 0F002004 */  bltz       $at, .L8006817C
/* 58940 80068140 01001823 */   addi      $t8, $t8, 0x1 /* handwritten instruction */
/* 58944 80068144 0D000104 */  bgez       $zero, .L8006817C
/* 58948 80068148 FEFF1823 */   addi      $t8, $t8, -0x2 /* handwritten instruction */
.L8006814C:
/* 5894C 8006814C 00F80948 */  mfc2       $t1, $31 /* handwritten instruction */
/* 58950 80068150 FFFF0E20 */  addi       $t6, $zero, -0x1 /* handwritten instruction */
/* 58954 80068154 04082101 */  sllv       $at, $at, $t1
/* 58958 80068158 2248C901 */  sub        $t1, $t6, $t1 /* handwritten instruction */
/* 5895C 8006815C 03002004 */  bltz       $at, .L8006816C
/* 58960 80068160 06402101 */   srlv      $t0, $at, $t1
/* 58964 80068164 06082E01 */  srlv       $at, $t6, $t1
/* 58968 80068168 22400101 */  sub        $t0, $t0, $at /* handwritten instruction */
.L8006816C:
/* 5896C 8006816C 22480900 */  neg        $t1, $t1 /* handwritten instruction */
/* 58970 80068170 20482901 */  add        $t1, $t1, $t1 /* handwritten instruction */
/* 58974 80068174 02002921 */  addi       $t1, $t1, 0x2 /* handwritten instruction */
/* 58978 80068178 20C00803 */  add        $t8, $t8, $t0 /* handwritten instruction */
.L8006817C:
/* 5897C 8006817C 80401800 */  sll        $t0, $t8, 2
/* 58980 80068180 FF030831 */  andi       $t0, $t0, 0x3FF
/* 58984 80068184 A49F010C */  jal        func_80067E90
/* 58988 80068188 25400B01 */   or        $t0, $t0, $t3
/* 5898C 8006818C 03A0010C */  jal        func_8006800C
/* 58990 80068190 00000000 */   nop
/* 58994 80068194 03A0010C */  jal        func_8006800C
/* 58998 80068198 00000000 */   nop
/* 5899C 8006819C 03A0010C */  jal        func_8006800C
/* 589A0 800681A0 00000000 */   nop
/* 589A4 800681A4 03A0010C */  jal        func_8006800C
/* 589A8 800681A8 00000000 */   nop
/* 589AC 800681AC 2308AC00 */  subu       $at, $a1, $t4
/* 589B0 800681B0 15002104 */  bgez       $at, .L80068208
/* 589B4 800681B4 82450800 */   srl       $t0, $t0, 22
.L800681B8:
/* 589B8 800681B8 FF030839 */  xori       $t0, $t0, 0x3FF
/* 589BC 800681BC 80100200 */  sll        $v0, $v0, 2
/* 589C0 800681C0 820F0300 */  srl        $at, $v1, 30
/* 589C4 800681C4 25104100 */  or         $v0, $v0, $at
/* 589C8 800681C8 80180300 */  sll        $v1, $v1, 2
/* 589CC 800681CC BAFF0015 */  bnez       $t0, .L800680B8
/* 589D0 800681D0 02004A21 */   addi      $t2, $t2, 0x2 /* handwritten instruction */
.L800681D4:
/* 589D4 800681D4 00FE0834 */  ori        $t0, $zero, 0xFE00
/* 589D8 800681D8 0000BF8F */  lw         $ra, 0x0($sp)
/* 589DC 800681DC 0400BD23 */  addi       $sp, $sp, 0x4 /* handwritten instruction */
.L800681E0:
/* 589E0 800681E0 2308AD00 */  subu       $at, $a1, $t5
/* 589E4 800681E4 04002104 */  bgez       $at, .L800681F8
/* 589E8 800681E8 00000000 */   nop
/* 589EC 800681EC 0000A8A4 */  sh         $t0, 0x0($a1)
/* 589F0 800681F0 FBFF0104 */  bgez       $zero, .L800681E0
/* 589F4 800681F4 0200A520 */   addi      $a1, $a1, 0x2 /* handwritten instruction */
.L800681F8:
/* 589F8 800681F8 0800E003 */  jr         $ra
/* 589FC 800681FC 25100000 */   or        $v0, $zero, $zero
.L80068200:
/* 58A00 80068200 02000104 */  bgez       $zero, .L8006820C
/* 58A04 80068204 25081F00 */   or        $at, $zero, $ra
.L80068208:
/* 58A08 80068208 25080000 */  or         $at, $zero, $zero
.L8006820C:
/* 58A0C 8006820C 0000BF8F */  lw         $ra, 0x0($sp)
/* 58A10 80068210 0400BD23 */  addi       $sp, $sp, 0x4 /* handwritten instruction */
/* 58A14 80068214 09800E3C */  lui        $t6, %hi(D_800883D0)
/* 58A18 80068218 D083CE25 */  addiu      $t6, $t6, %lo(D_800883D0)
/* 58A1C 8006821C 0000C2AD */  sw         $v0, 0x0($t6)
/* 58A20 80068220 0400C3AD */  sw         $v1, 0x4($t6)
/* 58A24 80068224 0800C8AD */  sw         $t0, 0x8($t6)
/* 58A28 80068228 0C00C4AD */  sw         $a0, 0xC($t6)
/* 58A2C 8006822C 1000C5AD */  sw         $a1, 0x10($t6)
/* 58A30 80068230 1400C6AD */  sw         $a2, 0x14($t6)
/* 58A34 80068234 1800CAAD */  sw         $t2, 0x18($t6)
/* 58A38 80068238 1C00CBAD */  sw         $t3, 0x1C($t6)
/* 58A3C 8006823C 2000CDAD */  sw         $t5, 0x20($t6)
/* 58A40 80068240 2400CFAD */  sw         $t7, 0x24($t6)
/* 58A44 80068244 2800D8AD */  sw         $t8, 0x28($t6)
/* 58A48 80068248 2C00D9AD */  sw         $t9, 0x2C($t6)
/* 58A4C 8006824C 3000C1AD */  sw         $at, 0x30($t6)
/* 58A50 80068250 0800E003 */  jr         $ra
/* 58A54 80068254 01000234 */   ori       $v0, $zero, 0x1
.size DecDCTvlc3, . - DecDCTvlc3
