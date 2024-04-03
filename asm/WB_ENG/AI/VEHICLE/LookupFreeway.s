.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LookupFreeway
/* 387B0 80047FB0 1415828F */  lw         $v0, %gp_rel(g_totalnumfreeways)($gp)
/* 387B4 80047FB4 00000000 */  nop
/* 387B8 80047FB8 0D004018 */  blez       $v0, .L80047FF0
/* 387BC 80047FBC 21280000 */   addu      $a1, $zero, $zero
/* 387C0 80047FC0 21304000 */  addu       $a2, $v0, $zero
/* 387C4 80047FC4 1015838F */  lw         $v1, %gp_rel(freeways)($gp)
.L80047FC8:
/* 387C8 80047FC8 00000000 */  nop
/* 387CC 80047FCC 0400628C */  lw         $v0, 0x4($v1)
/* 387D0 80047FD0 00000000 */  nop
/* 387D4 80047FD4 03004414 */  bne        $v0, $a0, .L80047FE4
/* 387D8 80047FD8 0100A524 */   addiu     $a1, $a1, 0x1
/* 387DC 80047FDC 0800E003 */  jr         $ra
/* 387E0 80047FE0 21106000 */   addu      $v0, $v1, $zero
.L80047FE4:
/* 387E4 80047FE4 2A10A600 */  slt        $v0, $a1, $a2
/* 387E8 80047FE8 F7FF4014 */  bnez       $v0, .L80047FC8
/* 387EC 80047FEC 2C006324 */   addiu     $v1, $v1, 0x2C
.L80047FF0:
/* 387F0 80047FF0 0800E003 */  jr         $ra
/* 387F4 80047FF4 21100000 */   addu      $v0, $zero, $zero
.size LookupFreeway, . - LookupFreeway
