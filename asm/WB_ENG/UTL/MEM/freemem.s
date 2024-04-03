.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel freemem
/* 408A8 800500A8 AC15848F */  lw         $a0, %gp_rel(s_endOfBSS)($gp)
/* 408AC 800500AC B015838F */  lw         $v1, %gp_rel(s_endOfRAM)($gp)
/* 408B0 800500B0 00000000 */  nop
/* 408B4 800500B4 2B108300 */  sltu       $v0, $a0, $v1
/* 408B8 800500B8 0E004010 */  beqz       $v0, .L800500F4
/* 408BC 800500BC 21280000 */   addu      $a1, $zero, $zero
/* 408C0 800500C0 21306000 */  addu       $a2, $v1, $zero
.L800500C4:
/* 408C4 800500C4 0000838C */  lw         $v1, 0x0($a0)
/* 408C8 800500C8 00000000 */  nop
/* 408CC 800500CC 01006230 */  andi       $v0, $v1, 0x1
/* 408D0 800500D0 02004010 */  beqz       $v0, .L800500DC
/* 408D4 800500D4 83100300 */   sra       $v0, $v1, 2
/* 408D8 800500D8 2128A300 */  addu       $a1, $a1, $v1
.L800500DC:
/* 408DC 800500DC 80100200 */  sll        $v0, $v0, 2
/* 408E0 800500E0 04004224 */  addiu      $v0, $v0, 0x4
/* 408E4 800500E4 21208200 */  addu       $a0, $a0, $v0
/* 408E8 800500E8 2B188600 */  sltu       $v1, $a0, $a2
/* 408EC 800500EC F5FF6014 */  bnez       $v1, .L800500C4
/* 408F0 800500F0 00000000 */   nop
.L800500F4:
/* 408F4 800500F4 0800E003 */  jr         $ra
/* 408F8 800500F8 2110A000 */   addu      $v0, $a1, $zero
.size freemem, . - freemem
