.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strKickCD
/* 400C8 8004F8C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 400CC 8004F8CC 1800B0AF */  sw         $s0, 0x18($sp)
/* 400D0 8004F8D0 21808000 */  addu       $s0, $a0, $zero
/* 400D4 8004F8D4 01000224 */  addiu      $v0, $zero, 0x1
/* 400D8 8004F8D8 02000324 */  addiu      $v1, $zero, 0x2
/* 400DC 8004F8DC 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 400E0 8004F8E0 1000A2A3 */  sb         $v0, 0x10($sp)
/* 400E4 8004F8E4 1100A3A3 */  sb         $v1, 0x11($sp)
/* 400E8 8004F8E8 02000424 */  addiu      $a0, $zero, 0x2
.L8004F8EC:
/* 400EC 8004F8EC 21280002 */  addu       $a1, $s0, $zero
/* 400F0 8004F8F0 C3D2010C */  jal        CdControl
/* 400F4 8004F8F4 21300000 */   addu      $a2, $zero, $zero
/* 400F8 8004F8F8 FCFF4010 */  beqz       $v0, .L8004F8EC
/* 400FC 8004F8FC 02000424 */   addiu     $a0, $zero, 0x2
/* 40100 8004F900 0D000424 */  addiu      $a0, $zero, 0xD
.L8004F904:
/* 40104 8004F904 1000A527 */  addiu      $a1, $sp, 0x10
/* 40108 8004F908 C3D2010C */  jal        CdControl
/* 4010C 8004F90C 21300000 */   addu      $a2, $zero, $zero
/* 40110 8004F910 FCFF4010 */  beqz       $v0, .L8004F904
/* 40114 8004F914 0D000424 */   addiu     $a0, $zero, 0xD
/* 40118 8004F918 280F828F */  lw         $v0, %gp_rel(MovieSpeed)($gp)
/* 4011C 8004F91C 00000000 */  nop
/* 40120 8004F920 02004014 */  bnez       $v0, .L8004F92C
/* 40124 8004F924 E0010424 */   addiu     $a0, $zero, 0x1E0
/* 40128 8004F928 60010424 */  addiu      $a0, $zero, 0x160
.L8004F92C:
/* 4012C 8004F92C D7C8010C */  jal        CdRead2
/* 40130 8004F930 00000000 */   nop
/* 40134 8004F934 EDFF4010 */  beqz       $v0, .L8004F8EC
/* 40138 8004F938 02000424 */   addiu     $a0, $zero, 0x2
/* 4013C 8004F93C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 40140 8004F940 1800B08F */  lw         $s0, 0x18($sp)
/* 40144 8004F944 0800E003 */  jr         $ra
/* 40148 8004F948 2000BD27 */   addiu     $sp, $sp, 0x20
.size strKickCD, . - strKickCD
