.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DoMemoryCardSystemFileCrap
/* 196E4 80028EE4 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 196E8 80028EE8 6400B1AF */  sw         $s1, 0x64($sp)
/* 196EC 80028EEC 21880000 */  addu       $s1, $zero, $zero
/* 196F0 80028EF0 7400B5AF */  sw         $s5, 0x74($sp)
/* 196F4 80028EF4 21A80000 */  addu       $s5, $zero, $zero
/* 196F8 80028EF8 6C00B3AF */  sw         $s3, 0x6C($sp)
/* 196FC 80028EFC 21980000 */  addu       $s3, $zero, $zero
/* 19700 80028F00 7800B6AF */  sw         $s6, 0x78($sp)
/* 19704 80028F04 21B00000 */  addu       $s6, $zero, $zero
/* 19708 80028F08 7000B4AF */  sw         $s4, 0x70($sp)
/* 1970C 80028F0C 21A00000 */  addu       $s4, $zero, $zero
/* 19710 80028F10 40010424 */  addiu      $a0, $zero, 0x140
/* 19714 80028F14 21280000 */  addu       $a1, $zero, $zero
/* 19718 80028F18 C0020624 */  addiu      $a2, $zero, 0x2C0
/* 1971C 80028F1C EE010724 */  addiu      $a3, $zero, 0x1EE
/* 19720 80028F20 08000224 */  addiu      $v0, $zero, 0x8
/* 19724 80028F24 7C00BFAF */  sw         $ra, 0x7C($sp)
/* 19728 80028F28 6800B2AF */  sw         $s2, 0x68($sp)
/* 1972C 80028F2C 6000B0AF */  sw         $s0, 0x60($sp)
/* 19730 80028F30 1000A2AF */  sw         $v0, 0x10($sp)
/* 19734 80028F34 8672010C */  jal        InitVRAMManager
/* 19738 80028F38 1400A2AF */   sw        $v0, 0x14($sp)
/* 1973C 80028F3C 8578010C */  jal        InitCLUTManager
/* 19740 80028F40 0180103C */   lui       $s0, %hi(D_80011844)
/* 19744 80028F44 3943010C */  jal        InitPSXBoxes
/* 19748 80028F48 21900002 */   addu      $s2, $s0, $zero
/* 1974C 80028F4C 0164010C */  jal        TextResetText
/* 19750 80028F50 00000000 */   nop
/* 19754 80028F54 CC68010C */  jal        SetupVideoMode
/* 19758 80028F58 01000424 */   addiu     $a0, $zero, 0x1
/* 1975C 80028F5C D46C010C */  jal        ClearVRAM
/* 19760 80028F60 00000000 */   nop
/* 19764 80028F64 0864010C */  jal        TextInitFonts
/* 19768 80028F68 00000000 */   nop
/* 1976C 80028F6C 0164010C */  jal        TextResetText
/* 19770 80028F70 00000000 */   nop
/* 19774 80028F74 3943010C */  jal        InitPSXBoxes
/* 19778 80028F78 00000000 */   nop
/* 1977C 80028F7C 80000424 */  addiu      $a0, $zero, 0x80
/* 19780 80028F80 80000524 */  addiu      $a1, $zero, 0x80
/* 19784 80028F84 5363010C */  jal        TextSetTextColor
/* 19788 80028F88 80000624 */   addiu     $a2, $zero, 0x80
/* 1978C 80028F8C 8460010C */  jal        TextDrawText
/* 19790 80028F90 00000000 */   nop
/* 19794 80028F94 9769010C */  jal        updateScreen
/* 19798 80028F98 00000000 */   nop
/* 1979C 80028F9C 0164010C */  jal        TextResetText
/* 197A0 80028FA0 00000000 */   nop
/* 197A4 80028FA4 3943010C */  jal        InitPSXBoxes
/* 197A8 80028FA8 00000000 */   nop
/* 197AC 80028FAC 80000424 */  addiu      $a0, $zero, 0x80
/* 197B0 80028FB0 80000524 */  addiu      $a1, $zero, 0x80
/* 197B4 80028FB4 5363010C */  jal        TextSetTextColor
/* 197B8 80028FB8 80000624 */   addiu     $a2, $zero, 0x80
/* 197BC 80028FBC 44180426 */  addiu      $a0, $s0, %lo(D_80011844)
/* 197C0 80028FC0 A0000524 */  addiu      $a1, $zero, 0xA0
/* 197C4 80028FC4 64000624 */  addiu      $a2, $zero, 0x64
/* 197C8 80028FC8 7163010C */  jal        TextAddStringC
/* 197CC 80028FCC 21380000 */   addu      $a3, $zero, $zero
/* 197D0 80028FD0 C46C010C */  jal        ScreenOn
/* 197D4 80028FD4 02001024 */   addiu     $s0, $zero, 0x2
/* 197D8 80028FD8 8460010C */  jal        TextDrawText
/* 197DC 80028FDC 00000000 */   nop
/* 197E0 80028FE0 9769010C */  jal        updateScreen
/* 197E4 80028FE4 00000000 */   nop
/* 197E8 80028FE8 AC1380AF */  sw         $zero, %gp_rel(gUICurrentSysFileMemCardSlot)($gp)
.L80028FEC:
/* 197EC 80028FEC EBD6010C */  jal        VSync
/* 197F0 80028FF0 21200000 */   addu      $a0, $zero, $zero
/* 197F4 80028FF4 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 197F8 80028FF8 FCFF0106 */  bgez       $s0, .L80028FEC
/* 197FC 80028FFC 00000000 */   nop
/* 19800 80029000 FFEF010C */  jal        MemCardInit
/* 19804 80029004 21200000 */   addu      $a0, $zero, $zero
/* 19808 80029008 51001024 */  addiu      $s0, $zero, 0x51
.L8002900C:
/* 1980C 8002900C EBD6010C */  jal        VSync
/* 19810 80029010 21200000 */   addu      $a0, $zero, $zero
/* 19814 80029014 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 19818 80029018 FCFF0106 */  bgez       $s0, .L8002900C
/* 1981C 8002901C 00000000 */   nop
/* 19820 80029020 1EF2010C */  jal        MemCardStart
/* 19824 80029024 01001024 */   addiu     $s0, $zero, 0x1
/* 19828 80029028 EBD6010C */  jal        VSync
/* 1982C 8002902C 21200000 */   addu      $a0, $zero, $zero
/* 19830 80029030 4864010C */  jal        initInputSystem
/* 19834 80029034 00000000 */   nop
/* 19838 80029038 AC1380AF */  sw         $zero, %gp_rel(gUICurrentSysFileMemCardSlot)($gp)
.L8002903C:
/* 1983C 8002903C 8F64010C */  jal        readControllers
/* 19840 80029040 00000000 */   nop
/* 19844 80029044 0164010C */  jal        TextResetText
/* 19848 80029048 00000000 */   nop
/* 1984C 8002904C 3943010C */  jal        InitPSXBoxes
/* 19850 80029050 00000000 */   nop
/* 19854 80029054 11003012 */  beq        $s1, $s0, .L8002909C
/* 19858 80029058 0200222A */   slti      $v0, $s1, 0x2
/* 1985C 8002905C 05004010 */  beqz       $v0, .L80029074
/* 19860 80029060 03000224 */   addiu     $v0, $zero, 0x3
/* 19864 80029064 07002012 */  beqz       $s1, .L80029084
/* 19868 80029068 00000000 */   nop
/* 1986C 8002906C 64A40008 */  j          .L80029190
/* 19870 80029070 00000000 */   nop
.L80029074:
/* 19874 80029074 26002212 */  beq        $s1, $v0, .L80029110
/* 19878 80029078 00000000 */   nop
/* 1987C 8002907C 64A40008 */  j          .L80029190
/* 19880 80029080 00000000 */   nop
.L80029084:
/* 19884 80029084 AC13848F */  lw         $a0, %gp_rel(gUICurrentSysFileMemCardSlot)($gp)
/* 19888 80029088 01001124 */  addiu      $s1, $zero, 0x1
/* 1988C 8002908C 2BF3010C */  jal        MemCardAccept
/* 19890 80029090 00210400 */   sll       $a0, $a0, 4
/* 19894 80029094 3EA40008 */  j          .L800290F8
/* 19898 80029098 44184426 */   addiu     $a0, $s2, %lo(D_80011844)
.L8002909C:
/* 1989C 8002909C 01000424 */  addiu      $a0, $zero, 0x1
/* 198A0 800290A0 5800A527 */  addiu      $a1, $sp, 0x58
/* 198A4 800290A4 41F7010C */  jal        MemCardSync
/* 198A8 800290A8 5C00A627 */   addiu     $a2, $sp, 0x5C
/* 198AC 800290AC 12005014 */  bne        $v0, $s0, .L800290F8
/* 198B0 800290B0 44184426 */   addiu     $a0, $s2, %lo(D_80011844)
/* 198B4 800290B4 5C00A28F */  lw         $v0, 0x5C($sp)
/* 198B8 800290B8 00000000 */  nop
/* 198BC 800290BC 0C005014 */  bne        $v0, $s0, .L800290F0
/* 198C0 800290C0 00000000 */   nop
/* 198C4 800290C4 AC13828F */  lw         $v0, %gp_rel(gUICurrentSysFileMemCardSlot)($gp)
/* 198C8 800290C8 00000000 */  nop
/* 198CC 800290CC 05005014 */  bne        $v0, $s0, .L800290E4
/* 198D0 800290D0 21880000 */   addu      $s1, $zero, $zero
/* 198D4 800290D4 01001624 */  addiu      $s6, $zero, 0x1
/* 198D8 800290D8 AC1380AF */  sw         $zero, %gp_rel(gUICurrentSysFileMemCardSlot)($gp)
/* 198DC 800290DC 3EA40008 */  j          .L800290F8
/* 198E0 800290E0 03001124 */   addiu     $s1, $zero, 0x3
.L800290E4:
/* 198E4 800290E4 AC1390AF */  sw         $s0, %gp_rel(gUICurrentSysFileMemCardSlot)($gp)
/* 198E8 800290E8 3DA40008 */  j          .L800290F4
/* 198EC 800290EC 21980002 */   addu      $s3, $s0, $zero
.L800290F0:
/* 198F0 800290F0 01001424 */  addiu      $s4, $zero, 0x1
.L800290F4:
/* 198F4 800290F4 44184426 */  addiu      $a0, $s2, %lo(D_80011844)
.L800290F8:
/* 198F8 800290F8 A0000524 */  addiu      $a1, $zero, 0xA0
/* 198FC 800290FC 64000624 */  addiu      $a2, $zero, 0x64
/* 19900 80029100 7163010C */  jal        TextAddStringC
/* 19904 80029104 21380000 */   addu      $a3, $zero, $zero
/* 19908 80029108 64A40008 */  j          .L80029190
/* 1990C 8002910C 00000000 */   nop
.L80029110:
/* 19910 80029110 14007016 */  bne        $s3, $s0, .L80029164
/* 19914 80029114 00000000 */   nop
/* 19918 80029118 1200D316 */  bne        $s6, $s3, .L80029164
/* 1991C 8002911C 0180043C */   lui       $a0, %hi(D_80011860)
/* 19920 80029120 60188424 */  addiu      $a0, $a0, %lo(D_80011860)
/* 19924 80029124 A0000524 */  addiu      $a1, $zero, 0xA0
/* 19928 80029128 64000624 */  addiu      $a2, $zero, 0x64
/* 1992C 8002912C 7163010C */  jal        TextAddStringC
/* 19930 80029130 21380000 */   addu      $a3, $zero, $zero
/* 19934 80029134 0180043C */  lui        $a0, %hi(D_8001187C)
/* 19938 80029138 7C188424 */  addiu      $a0, $a0, %lo(D_8001187C)
/* 1993C 8002913C A0000524 */  addiu      $a1, $zero, 0xA0
/* 19940 80029140 78000624 */  addiu      $a2, $zero, 0x78
/* 19944 80029144 7163010C */  jal        TextAddStringC
/* 19948 80029148 21380000 */   addu      $a3, $zero, $zero
/* 1994C 8002914C 0180043C */  lui        $a0, %hi(D_80011894)
/* 19950 80029150 94188424 */  addiu      $a0, $a0, %lo(D_80011894)
/* 19954 80029154 A0000524 */  addiu      $a1, $zero, 0xA0
/* 19958 80029158 82000624 */  addiu      $a2, $zero, 0x82
/* 1995C 8002915C 7163010C */  jal        TextAddStringC
/* 19960 80029160 21380000 */   addu      $a3, $zero, $zero
.L80029164:
/* 19964 80029164 0100B526 */  addiu      $s5, $s5, 0x1
/* 19968 80029168 B500A22A */  slti       $v0, $s5, 0xB5
/* 1996C 8002916C 07004010 */  beqz       $v0, .L8002918C
/* 19970 80029170 00000000 */   nop
/* 19974 80029174 0980023C */  lui        $v0, %hi(Trg0)
/* 19978 80029178 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 1997C 8002917C 00000000 */  nop
/* 19980 80029180 08404230 */  andi       $v0, $v0, 0x4008
/* 19984 80029184 02004010 */  beqz       $v0, .L80029190
/* 19988 80029188 00000000 */   nop
.L8002918C:
/* 1998C 8002918C 01001424 */  addiu      $s4, $zero, 0x1
.L80029190:
/* 19990 80029190 8460010C */  jal        TextDrawText
/* 19994 80029194 00000000 */   nop
/* 19998 80029198 9769010C */  jal        updateScreen
/* 1999C 8002919C 00000000 */   nop
/* 199A0 800291A0 A6FF8012 */  beqz       $s4, .L8002903C
/* 199A4 800291A4 00000000 */   nop
/* 199A8 800291A8 7C00BF8F */  lw         $ra, 0x7C($sp)
/* 199AC 800291AC 7800B68F */  lw         $s6, 0x78($sp)
/* 199B0 800291B0 7400B58F */  lw         $s5, 0x74($sp)
/* 199B4 800291B4 7000B48F */  lw         $s4, 0x70($sp)
/* 199B8 800291B8 6C00B38F */  lw         $s3, 0x6C($sp)
/* 199BC 800291BC 6800B28F */  lw         $s2, 0x68($sp)
/* 199C0 800291C0 6400B18F */  lw         $s1, 0x64($sp)
/* 199C4 800291C4 6000B08F */  lw         $s0, 0x60($sp)
/* 199C8 800291C8 0800E003 */  jr         $ra
/* 199CC 800291CC 8000BD27 */   addiu     $sp, $sp, 0x80
.size DoMemoryCardSystemFileCrap, . - DoMemoryCardSystemFileCrap
