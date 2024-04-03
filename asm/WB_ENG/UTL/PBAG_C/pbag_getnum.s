.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_getnum
/* 413FC 80050BFC 21280000 */  addu       $a1, $zero, $zero
/* 41400 80050C00 FFFF0624 */  addiu      $a2, $zero, -0x1
/* 41404 80050C04 00FF083C */  lui        $t0, (0xFF000000 >> 16)
/* 41408 80050C08 CC15848F */  lw         $a0, %gp_rel(pbag_IDX)($gp)
/* 4140C 80050C0C D015878F */  lw         $a3, %gp_rel(pbag_BASE)($gp)
.L80050C10:
/* 41410 80050C10 80100400 */  sll        $v0, $a0, 2
/* 41414 80050C14 21104700 */  addu       $v0, $v0, $a3
/* 41418 80050C18 0000438C */  lw         $v1, 0x0($v0)
/* 4141C 80050C1C 00000000 */  nop
/* 41420 80050C20 08006610 */  beq        $v1, $a2, .L80050C44
/* 41424 80050C24 21100000 */   addu      $v0, $zero, $zero
/* 41428 80050C28 24106800 */  and        $v0, $v1, $t0
/* 4142C 80050C2C 02160200 */  srl        $v0, $v0, 24
/* 41430 80050C30 03004014 */  bnez       $v0, .L80050C40
/* 41434 80050C34 01004224 */   addiu     $v0, $v0, 0x1
/* 41438 80050C38 03000224 */  addiu      $v0, $zero, 0x3
/* 4143C 80050C3C 01004224 */  addiu      $v0, $v0, 0x1
.L80050C40:
/* 41440 80050C40 0100A524 */  addiu      $a1, $a1, 0x1
.L80050C44:
/* 41444 80050C44 F2FF6614 */  bne        $v1, $a2, .L80050C10
/* 41448 80050C48 21208200 */   addu      $a0, $a0, $v0
/* 4144C 80050C4C 0800E003 */  jr         $ra
/* 41450 80050C50 2110A000 */   addu      $v0, $a1, $zero
.size pbag_getnum, . - pbag_getnum
