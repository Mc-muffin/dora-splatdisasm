.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PushMemoryInfo
/* 407E8 8004FFE8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 407EC 8004FFEC 1000BFAF */  sw         $ra, 0x10($sp)
/* 407F0 8004FFF0 2A40010C */  jal        freemem
/* 407F4 8004FFF4 00000000 */   nop
/* 407F8 8004FFF8 3F40010C */  jal        largestblock
/* 407FC 8004FFFC 00000000 */   nop
/* 40800 80050000 AC15848F */  lw         $a0, %gp_rel(s_endOfBSS)($gp)
/* 40804 80050004 B015868F */  lw         $a2, %gp_rel(s_endOfRAM)($gp)
/* 40808 80050008 00000000 */  nop
/* 4080C 8005000C 2B108600 */  sltu       $v0, $a0, $a2
/* 40810 80050010 0C004010 */  beqz       $v0, .L80050044
/* 40814 80050014 00000000 */   nop
.L80050018:
/* 40818 80050018 21288000 */  addu       $a1, $a0, $zero
/* 4081C 8005001C 0000828C */  lw         $v0, 0x0($a0)
/* 40820 80050020 00000000 */  nop
/* 40824 80050024 83100200 */  sra        $v0, $v0, 2
/* 40828 80050028 80100200 */  sll        $v0, $v0, 2
/* 4082C 8005002C 04004224 */  addiu      $v0, $v0, 0x4
/* 40830 80050030 2120A200 */  addu       $a0, $a1, $v0
/* 40834 80050034 2B188600 */  sltu       $v1, $a0, $a2
/* 40838 80050038 F7FF6014 */  bnez       $v1, .L80050018
/* 4083C 8005003C 00000000 */   nop
/* 40840 80050040 B41585AF */  sw         $a1, %gp_rel(glastblock)($gp)
.L80050044:
/* 40844 80050044 B415828F */  lw         $v0, %gp_rel(glastblock)($gp)
/* 40848 80050048 1000BF8F */  lw         $ra, 0x10($sp)
/* 4084C 8005004C 0000438C */  lw         $v1, 0x0($v0)
/* 40850 80050050 00000000 */  nop
/* 40854 80050054 B81583AF */  sw         $v1, %gp_rel(glastHeap)($gp)
/* 40858 80050058 0800E003 */  jr         $ra
/* 4085C 8005005C 1800BD27 */   addiu     $sp, $sp, 0x18
.size PushMemoryInfo, . - PushMemoryInfo
