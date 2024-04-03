.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawETActor
/* 7040 80016840 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 7044 80016844 1800B0AF */  sw         $s0, 0x18($sp)
/* 7048 80016848 0980103C */  lui        $s0, %hi(ETActor)
/* 704C 8001684C 2000B2AF */  sw         $s2, 0x20($sp)
/* 7050 80016850 B05A1226 */  addiu      $s2, $s0, %lo(ETActor)
/* 7054 80016854 E3000224 */  addiu      $v0, $zero, 0xE3
/* 7058 80016858 21204002 */  addu       $a0, $s2, $zero
/* 705C 8001685C 2400BFAF */  sw         $ra, 0x24($sp)
/* 7060 80016860 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 7064 80016864 C359000C */  jal        GetDoraActorDepth
/* 7068 80016868 5C0042AE */   sw        $v0, 0x5C($s2)
/* 706C 8001686C 21884000 */  addu       $s1, $v0, $zero
/* 7070 80016870 0C002006 */  bltz       $s1, .L800168A4
/* 7074 80016874 00000000 */   nop
/* 7078 80016878 1000428E */  lw         $v0, 0x10($s2)
/* 707C 8001687C 00000000 */  nop
/* 7080 80016880 00014230 */  andi       $v0, $v0, 0x100
/* 7084 80016884 07004010 */  beqz       $v0, .L800168A4
/* 7088 80016888 21204002 */   addu      $a0, $s2, $zero
/* 708C 8001688C B19A010C */  jal        DrawActor
/* 7090 80016890 21282002 */   addu      $a1, $s1, $zero
/* 7094 80016894 21204002 */  addu       $a0, $s2, $zero
/* 7098 80016898 3F89010C */  jal        DrawActorShadow
/* 709C 8001689C 21282002 */   addu      $a1, $s1, $zero
/* 70A0 800168A0 680051AE */  sw         $s1, 0x68($s2)
.L800168A4:
/* 70A4 800168A4 B05A1026 */  addiu      $s0, $s0, %lo(ETActor)
/* 70A8 800168A8 1000048E */  lw         $a0, 0x10($s0)
/* 70AC 800168AC 00000000 */  nop
/* 70B0 800168B0 00028230 */  andi       $v0, $a0, 0x200
/* 70B4 800168B4 24004010 */  beqz       $v0, .L80016948
/* 70B8 800168B8 02000524 */   addiu     $a1, $zero, 0x2
/* 70BC 800168BC 3C00838F */  lw         $v1, %gp_rel(ET_InvincibleCount)($gp)
/* 70C0 800168C0 4000828F */  lw         $v0, %gp_rel(ET_InvincibleCountMax)($gp)
/* 70C4 800168C4 200085AF */  sw         $a1, %gp_rel(UpdateETHSV)($gp)
/* 70C8 800168C8 01006324 */  addiu      $v1, $v1, 0x1
/* 70CC 800168CC 2A104300 */  slt        $v0, $v0, $v1
/* 70D0 800168D0 3C0083AF */  sw         $v1, %gp_rel(ET_InvincibleCount)($gp)
/* 70D4 800168D4 05004010 */  beqz       $v0, .L800168EC
/* 70D8 800168D8 FFFD0224 */   addiu     $v0, $zero, -0x201
/* 70DC 800168DC 24108200 */  and        $v0, $a0, $v0
/* 70E0 800168E0 3C0080AF */  sw         $zero, %gp_rel(ET_InvincibleCount)($gp)
/* 70E4 800168E4 475A0008 */  j          .L8001691C
/* 70E8 800168E8 100002AE */   sw        $v0, 0x10($s0)
.L800168EC:
/* 70EC 800168EC 14006228 */  slti       $v0, $v1, 0x14
/* 70F0 800168F0 04004010 */  beqz       $v0, .L80016904
/* 70F4 800168F4 28006228 */   slti      $v0, $v1, 0x28
/* 70F8 800168F8 380080AF */  sw         $zero, %gp_rel(ET_FlashCountMax)($gp)
/* 70FC 800168FC 475A0008 */  j          .L8001691C
/* 7100 80016900 00000000 */   nop
.L80016904:
/* 7104 80016904 04004010 */  beqz       $v0, .L80016918
/* 7108 80016908 01000224 */   addiu     $v0, $zero, 0x1
/* 710C 8001690C 380082AF */  sw         $v0, %gp_rel(ET_FlashCountMax)($gp)
/* 7110 80016910 475A0008 */  j          .L8001691C
/* 7114 80016914 00000000 */   nop
.L80016918:
/* 7118 80016918 380085AF */  sw         $a1, %gp_rel(ET_FlashCountMax)($gp)
.L8001691C:
/* 711C 8001691C 3400828F */  lw         $v0, %gp_rel(ET_FlashCount)($gp)
/* 7120 80016920 3800838F */  lw         $v1, %gp_rel(ET_FlashCountMax)($gp)
/* 7124 80016924 01004224 */  addiu      $v0, $v0, 0x1
/* 7128 80016928 2A186200 */  slt        $v1, $v1, $v0
/* 712C 8001692C 340082AF */  sw         $v0, %gp_rel(ET_FlashCount)($gp)
/* 7130 80016930 05006010 */  beqz       $v1, .L80016948
/* 7134 80016934 00000000 */   nop
/* 7138 80016938 3000828F */  lw         $v0, %gp_rel(ET_FlashState)($gp)
/* 713C 8001693C 340080AF */  sw         $zero, %gp_rel(ET_FlashCount)($gp)
/* 7140 80016940 01004238 */  xori       $v0, $v0, 0x1
/* 7144 80016944 300082AF */  sw         $v0, %gp_rel(ET_FlashState)($gp)
.L80016948:
/* 7148 80016948 2400BF8F */  lw         $ra, 0x24($sp)
/* 714C 8001694C 21102002 */  addu       $v0, $s1, $zero
/* 7150 80016950 380040AE */  sw         $zero, 0x38($s2)
/* 7154 80016954 2000B28F */  lw         $s2, 0x20($sp)
/* 7158 80016958 1C00B18F */  lw         $s1, 0x1C($sp)
/* 715C 8001695C 1800B08F */  lw         $s0, 0x18($sp)
/* 7160 80016960 0800E003 */  jr         $ra
/* 7164 80016964 2800BD27 */   addiu     $sp, $sp, 0x28
.size DrawETActor, . - DrawETActor
