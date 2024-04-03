.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel fe_pcload
/* 4780C 8005700C 1C10828F */  lw         $v0, %gp_rel(PCFileOpenCount)($gp)
/* 47810 80057010 38FFBD27 */  addiu      $sp, $sp, -0xC8
/* 47814 80057014 B800B0AF */  sw         $s0, 0xB8($sp)
/* 47818 80057018 21808000 */  addu       $s0, $a0, $zero
/* 4781C 8005701C C000B2AF */  sw         $s2, 0xC0($sp)
/* 47820 80057020 C400BFAF */  sw         $ra, 0xC4($sp)
/* 47824 80057024 BC00B1AF */  sw         $s1, 0xBC($sp)
/* 47828 80057028 21184000 */  addu       $v1, $v0, $zero
/* 4782C 8005702C 01004224 */  addiu      $v0, $v0, 0x1
/* 47830 80057030 06006328 */  slti       $v1, $v1, 0x6
/* 47834 80057034 1C1082AF */  sw         $v0, %gp_rel(PCFileOpenCount)($gp)
/* 47838 80057038 04006014 */  bnez       $v1, .L8005704C
/* 4783C 8005703C 2190A000 */   addu      $s2, $a1, $zero
/* 47840 80057040 1C1080AF */  sw         $zero, %gp_rel(PCFileOpenCount)($gp)
/* 47844 80057044 A3C1010C */  jal        PCinit
/* 47848 80057048 00000000 */   nop
.L8005704C:
/* 4784C 8005704C 1000A427 */  addiu      $a0, $sp, 0x10
/* 47850 80057050 8FC2010C */  jal        strcpy
/* 47854 80057054 21280002 */   addu      $a1, $s0, $zero
/* 47858 80057058 1000A427 */  addiu      $a0, $sp, 0x10
/* 4785C 8005705C 875B010C */  jal        GetNameSegment
/* 47860 80057060 21288000 */   addu      $a1, $a0, $zero
/* 47864 80057064 1000A393 */  lbu        $v1, 0x10($sp)
/* 47868 80057068 2E000224 */  addiu      $v0, $zero, 0x2E
/* 4786C 8005706C 06006210 */  beq        $v1, $v0, .L80057088
/* 47870 80057070 1100A427 */   addiu     $a0, $sp, 0x11
/* 47874 80057074 2E000324 */  addiu      $v1, $zero, 0x2E
.L80057078:
/* 47878 80057078 00008290 */  lbu        $v0, 0x0($a0)
/* 4787C 8005707C 00000000 */  nop
/* 47880 80057080 FDFF4314 */  bne        $v0, $v1, .L80057078
/* 47884 80057084 01008424 */   addiu     $a0, $a0, 0x1
.L80057088:
/* 47888 80057088 00008290 */  lbu        $v0, 0x0($a0)
/* 4788C 8005708C 00000000 */  nop
/* 47890 80057090 FDFF4014 */  bnez       $v0, .L80057088
/* 47894 80057094 01008424 */   addiu     $a0, $a0, 0x1
/* 47898 80057098 21200002 */  addu       $a0, $s0, $zero
/* 4789C 8005709C 21280000 */  addu       $a1, $zero, $zero
/* 478A0 800570A0 86C1010C */  jal        PCopen
/* 478A4 800570A4 21300000 */   addu      $a2, $zero, $zero
/* 478A8 800570A8 21884000 */  addu       $s1, $v0, $zero
/* 478AC 800570AC 881691AF */  sw         $s1, %gp_rel(PCFileOpenID)($gp)
/* 478B0 800570B0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 478B4 800570B4 10002212 */  beq        $s1, $v0, .L800570F8
/* 478B8 800570B8 21202002 */   addu      $a0, $s1, $zero
/* 478BC 800570BC 21280000 */  addu       $a1, $zero, $zero
/* 478C0 800570C0 92C1010C */  jal        PClseek
/* 478C4 800570C4 02000624 */   addiu     $a2, $zero, 0x2
/* 478C8 800570C8 21202002 */  addu       $a0, $s1, $zero
/* 478CC 800570CC 21280000 */  addu       $a1, $zero, $zero
/* 478D0 800570D0 21300000 */  addu       $a2, $zero, $zero
/* 478D4 800570D4 92C1010C */  jal        PClseek
/* 478D8 800570D8 21804000 */   addu      $s0, $v0, $zero
/* 478DC 800570DC 21202002 */  addu       $a0, $s1, $zero
/* 478E0 800570E0 21284002 */  addu       $a1, $s2, $zero
/* 478E4 800570E4 A6C1010C */  jal        PCread
/* 478E8 800570E8 21300002 */   addu      $a2, $s0, $zero
/* 478EC 800570EC 21904000 */  addu       $s2, $v0, $zero
/* 478F0 800570F0 03005012 */  beq        $s2, $s0, .L80057100
/* 478F4 800570F4 00000000 */   nop
.L800570F8:
/* 478F8 800570F8 435C0108 */  j          .L8005710C
/* 478FC 800570FC 21100000 */   addu      $v0, $zero, $zero
.L80057100:
/* 47900 80057100 8EC1010C */  jal        PCclose
/* 47904 80057104 21202002 */   addu      $a0, $s1, $zero
/* 47908 80057108 21104002 */  addu       $v0, $s2, $zero
.L8005710C:
/* 4790C 8005710C C400BF8F */  lw         $ra, 0xC4($sp)
/* 47910 80057110 C000B28F */  lw         $s2, 0xC0($sp)
/* 47914 80057114 BC00B18F */  lw         $s1, 0xBC($sp)
/* 47918 80057118 B800B08F */  lw         $s0, 0xB8($sp)
/* 4791C 8005711C 0800E003 */  jr         $ra
/* 47920 80057120 C800BD27 */   addiu     $sp, $sp, 0xC8
.size fe_pcload, . - fe_pcload
