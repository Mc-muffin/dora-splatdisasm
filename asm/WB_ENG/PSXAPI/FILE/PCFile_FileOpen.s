.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PCFile_FileOpen
/* 45FCC 800557CC 40FFBD27 */  addiu      $sp, $sp, -0xC0
/* 45FD0 800557D0 B800B0AF */  sw         $s0, 0xB8($sp)
/* 45FD4 800557D4 21808000 */  addu       $s0, $a0, $zero
/* 45FD8 800557D8 0B80043C */  lui        $a0, %hi(file_lastfname)
/* 45FDC 800557DC 38B48424 */  addiu      $a0, $a0, %lo(file_lastfname)
/* 45FE0 800557E0 BC00BFAF */  sw         $ra, 0xBC($sp)
/* 45FE4 800557E4 8FC2010C */  jal        strcpy
/* 45FE8 800557E8 21280002 */   addu      $a1, $s0, $zero
/* 45FEC 800557EC 1C10838F */  lw         $v1, %gp_rel(PCFileOpenCount)($gp)
/* 45FF0 800557F0 00000000 */  nop
/* 45FF4 800557F4 21106000 */  addu       $v0, $v1, $zero
/* 45FF8 800557F8 01006324 */  addiu      $v1, $v1, 0x1
/* 45FFC 800557FC 06004228 */  slti       $v0, $v0, 0x6
/* 46000 80055800 1C1083AF */  sw         $v1, %gp_rel(PCFileOpenCount)($gp)
/* 46004 80055804 04004014 */  bnez       $v0, .L80055818
/* 46008 80055808 00000000 */   nop
/* 4600C 8005580C 1C1080AF */  sw         $zero, %gp_rel(PCFileOpenCount)($gp)
/* 46010 80055810 A3C1010C */  jal        PCinit
/* 46014 80055814 00000000 */   nop
.L80055818:
/* 46018 80055818 1000A427 */  addiu      $a0, $sp, 0x10
/* 4601C 8005581C 8FC2010C */  jal        strcpy
/* 46020 80055820 21280002 */   addu      $a1, $s0, $zero
/* 46024 80055824 1000A427 */  addiu      $a0, $sp, 0x10
/* 46028 80055828 875B010C */  jal        GetNameSegment
/* 4602C 8005582C 21288000 */   addu      $a1, $a0, $zero
/* 46030 80055830 1000A393 */  lbu        $v1, 0x10($sp)
/* 46034 80055834 2E000224 */  addiu      $v0, $zero, 0x2E
/* 46038 80055838 06006210 */  beq        $v1, $v0, .L80055854
/* 4603C 8005583C 1100A427 */   addiu     $a0, $sp, 0x11
/* 46040 80055840 2E000324 */  addiu      $v1, $zero, 0x2E
.L80055844:
/* 46044 80055844 00008290 */  lbu        $v0, 0x0($a0)
/* 46048 80055848 00000000 */  nop
/* 4604C 8005584C FDFF4314 */  bne        $v0, $v1, .L80055844
/* 46050 80055850 01008424 */   addiu     $a0, $a0, 0x1
.L80055854:
/* 46054 80055854 00008290 */  lbu        $v0, 0x0($a0)
/* 46058 80055858 00000000 */  nop
/* 4605C 8005585C FDFF4014 */  bnez       $v0, .L80055854
/* 46060 80055860 01008424 */   addiu     $a0, $a0, 0x1
/* 46064 80055864 21200002 */  addu       $a0, $s0, $zero
/* 46068 80055868 21280000 */  addu       $a1, $zero, $zero
/* 4606C 8005586C 86C1010C */  jal        PCopen
/* 46070 80055870 21300000 */   addu      $a2, $zero, $zero
/* 46074 80055874 21804000 */  addu       $s0, $v0, $zero
/* 46078 80055878 21200002 */  addu       $a0, $s0, $zero
/* 4607C 8005587C 21280000 */  addu       $a1, $zero, $zero
/* 46080 80055880 881690AF */  sw         $s0, %gp_rel(PCFileOpenID)($gp)
/* 46084 80055884 92C1010C */  jal        PClseek
/* 46088 80055888 02000624 */   addiu     $a2, $zero, 0x2
/* 4608C 8005588C 21200002 */  addu       $a0, $s0, $zero
/* 46090 80055890 21280000 */  addu       $a1, $zero, $zero
/* 46094 80055894 21300000 */  addu       $a2, $zero, $zero
/* 46098 80055898 0980083C */  lui        $t0, %hi(gCDCallback)
/* 4609C 8005589C 5C820825 */  addiu      $t0, $t0, %lo(gCDCallback)
/* 460A0 800558A0 0B80033C */  lui        $v1, %hi(gCDFileInfo)
/* 460A4 800558A4 78AA6324 */  addiu      $v1, $v1, %lo(gCDFileInfo)
/* 460A8 800558A8 01000724 */  addiu      $a3, $zero, 0x1
/* 460AC 800558AC 100010AD */  sw         $s0, 0x10($t0)
/* 460B0 800558B0 21804000 */  addu       $s0, $v0, $zero
/* 460B4 800558B4 040067AC */  sw         $a3, 0x4($v1)
/* 460B8 800558B8 040010AD */  sw         $s0, 0x4($t0)
/* 460BC 800558BC 080000AD */  sw         $zero, 0x8($t0)
/* 460C0 800558C0 92C1010C */  jal        PClseek
/* 460C4 800558C4 00000000 */   nop
/* 460C8 800558C8 21100002 */  addu       $v0, $s0, $zero
/* 460CC 800558CC BC00BF8F */  lw         $ra, 0xBC($sp)
/* 460D0 800558D0 B800B08F */  lw         $s0, 0xB8($sp)
/* 460D4 800558D4 0800E003 */  jr         $ra
/* 460D8 800558D8 C000BD27 */   addiu     $sp, $sp, 0xC0
.size PCFile_FileOpen, . - PCFile_FileOpen
