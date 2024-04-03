.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel set_excbuf
/* 487A0 80057FA0 0B80023C */  lui        $v0, %hi(exceptionBuffer)
/* 487A4 80057FA4 F8B44224 */  addiu      $v0, $v0, %lo(exceptionBuffer)
/* 487A8 80057FA8 82200400 */  srl        $a0, $a0, 2
/* 487AC 80057FAC 80200400 */  sll        $a0, $a0, 2
/* 487B0 80057FB0 21208200 */  addu       $a0, $a0, $v0
/* 487B4 80057FB4 000085AC */  sw         $a1, 0x0($a0)
/* 487B8 80057FB8 0800E003 */  jr         $ra
/* 487BC 80057FBC 00000000 */   nop
.size set_excbuf, . - set_excbuf
