.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextLoadFont
/* 487C0 80057FC0 E0FEBD27 */  addiu      $sp, $sp, -0x120
/* 487C4 80057FC4 1401B1AF */  sw         $s1, 0x114($sp)
/* 487C8 80057FC8 FFFF1124 */  addiu      $s1, $zero, -0x1
/* 487CC 80057FCC 1001B0AF */  sw         $s0, 0x110($sp)
/* 487D0 80057FD0 1801BFAF */  sw         $ra, 0x118($sp)
/* 487D4 80057FD4 B35C010C */  jal        GetSizeOfFile
/* 487D8 80057FD8 21808000 */   addu      $s0, $a0, $zero
/* 487DC 80057FDC 2B3F010C */  jal        new_malloc
/* 487E0 80057FE0 21204000 */   addu      $a0, $v0, $zero
/* 487E4 80057FE4 21200002 */  addu       $a0, $s0, $zero
/* 487E8 80057FE8 21284000 */  addu       $a1, $v0, $zero
/* 487EC 80057FEC 6010838F */  lw         $v1, %gp_rel(gTextNumFonts)($gp)
/* 487F0 80057FF0 8810868F */  lw         $a2, %gp_rel(gppTextFonts)($gp)
/* 487F4 80057FF4 80180300 */  sll        $v1, $v1, 2
/* 487F8 80057FF8 21186600 */  addu       $v1, $v1, $a2
/* 487FC 80057FFC 495C010C */  jal        LoadFile
/* 48800 80058000 000062AC */   sw        $v0, 0x0($v1)
/* 48804 80058004 1000A427 */  addiu      $a0, $sp, 0x10
/* 48808 80058008 8FC2010C */  jal        strcpy
/* 4880C 8005800C 21280002 */   addu      $a1, $s0, $zero
/* 48810 80058010 A3C2010C */  jal        strlen
/* 48814 80058014 1000A427 */   addiu     $a0, $sp, 0x10
/* 48818 80058018 21200000 */  addu       $a0, $zero, $zero
/* 4881C 8005801C 21284000 */  addu       $a1, $v0, $zero
/* 48820 80058020 0D00A018 */  blez       $a1, .L80058058
/* 48824 80058024 1000B027 */   addiu     $s0, $sp, 0x10
/* 48828 80058028 21380002 */  addu       $a3, $s0, $zero
/* 4882C 8005802C 5C000624 */  addiu      $a2, $zero, 0x5C
/* 48830 80058030 2110E400 */  addu       $v0, $a3, $a0
.L80058034:
/* 48834 80058034 00004390 */  lbu        $v1, 0x0($v0)
/* 48838 80058038 00000000 */  nop
/* 4883C 8005803C 02006614 */  bne        $v1, $a2, .L80058048
/* 48840 80058040 00000000 */   nop
/* 48844 80058044 21888000 */  addu       $s1, $a0, $zero
.L80058048:
/* 48848 80058048 01008424 */  addiu      $a0, $a0, 0x1
/* 4884C 8005804C 2A108500 */  slt        $v0, $a0, $a1
/* 48850 80058050 F8FF4014 */  bnez       $v0, .L80058034
/* 48854 80058054 2110E400 */   addu      $v0, $a3, $a0
.L80058058:
/* 48858 80058058 01002426 */  addiu      $a0, $s1, 0x1
/* 4885C 8005805C 6010828F */  lw         $v0, %gp_rel(gTextNumFonts)($gp)
/* 48860 80058060 8810838F */  lw         $v1, %gp_rel(gppTextFonts)($gp)
/* 48864 80058064 80100200 */  sll        $v0, $v0, 2
/* 48868 80058068 21104300 */  addu       $v0, $v0, $v1
/* 4886C 8005806C 0000458C */  lw         $a1, 0x0($v0)
/* 48870 80058070 21200402 */  addu       $a0, $s0, $a0
/* 48874 80058074 8FC2010C */  jal        strcpy
/* 48878 80058078 2C04A524 */   addiu     $a1, $a1, 0x42C
/* 4887C 8005807C 535E010C */  jal        LoadTexture
/* 48880 80058080 21200002 */   addu      $a0, $s0, $zero
/* 48884 80058084 6010868F */  lw         $a2, %gp_rel(gTextNumFonts)($gp)
/* 48888 80058088 7C10828F */  lw         $v0, %gp_rel(gpTextFontVRAMIndex)($gp)
/* 4888C 8005808C 0980043C */  lui        $a0, %hi(TexInfo)
/* 48890 80058090 00598484 */  lh         $a0, %lo(TexInfo)($a0)
/* 48894 80058094 8010838F */  lw         $v1, %gp_rel(gpTextFontCLUTIndex)($gp)
/* 48898 80058098 80280600 */  sll        $a1, $a2, 2
/* 4889C 8005809C 2110A200 */  addu       $v0, $a1, $v0
/* 488A0 800580A0 000044AC */  sw         $a0, 0x0($v0)
/* 488A4 800580A4 0980023C */  lui        $v0, %hi(TexInfo + 0x2)
/* 488A8 800580A8 02594294 */  lhu        $v0, %lo(TexInfo + 0x2)($v0)
/* 488AC 800580AC 8410848F */  lw         $a0, %gp_rel(gpTextFontCLUTRow)($gp)
/* 488B0 800580B0 2118A300 */  addu       $v1, $a1, $v1
/* 488B4 800580B4 000062AC */  sw         $v0, 0x0($v1)
/* 488B8 800580B8 0980023C */  lui        $v0, %hi(TexInfo + 0x4)
/* 488BC 800580BC 04594294 */  lhu        $v0, %lo(TexInfo + 0x4)($v0)
/* 488C0 800580C0 5C10838F */  lw         $v1, %gp_rel(gTextCurrentFontIndex)($gp)
/* 488C4 800580C4 2128A400 */  addu       $a1, $a1, $a0
/* 488C8 800580C8 02006104 */  bgez       $v1, .L800580D4
/* 488CC 800580CC 0000A2AC */   sw        $v0, 0x0($a1)
/* 488D0 800580D0 5C1080AF */  sw         $zero, %gp_rel(gTextCurrentFontIndex)($gp)
.L800580D4:
/* 488D4 800580D4 1801BF8F */  lw         $ra, 0x118($sp)
/* 488D8 800580D8 1401B18F */  lw         $s1, 0x114($sp)
/* 488DC 800580DC 1001B08F */  lw         $s0, 0x110($sp)
/* 488E0 800580E0 0100C224 */  addiu      $v0, $a2, 0x1
/* 488E4 800580E4 601082AF */  sw         $v0, %gp_rel(gTextNumFonts)($gp)
/* 488E8 800580E8 2110C000 */  addu       $v0, $a2, $zero
/* 488EC 800580EC 0800E003 */  jr         $ra
/* 488F0 800580F0 2001BD27 */   addiu     $sp, $sp, 0x120
.size TextLoadFont, . - TextLoadFont
