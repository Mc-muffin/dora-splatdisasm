.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AdjustSpeed
/* 2F388 8003EB88 2110C500 */  addu       $v0, $a2, $a1
/* 2F38C 8003EB8C 03004104 */  bgez       $v0, .L8003EB9C
/* 2F390 8003EB90 18008200 */   mult      $a0, $v0
/* 2F394 8003EB94 21100000 */  addu       $v0, $zero, $zero
/* 2F398 8003EB98 18008200 */  mult       $a0, $v0
.L8003EB9C:
/* 2F39C 8003EB9C 12100000 */  mflo       $v0
/* 2F3A0 8003EBA0 080C838F */  lw         $v1, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2F3A4 8003EBA4 00000000 */  nop
/* 2F3A8 8003EBA8 1A004300 */  div        $zero, $v0, $v1
/* 2F3AC 8003EBAC 12100000 */  mflo       $v0
/* 2F3B0 8003EBB0 02006014 */  bnez       $v1, .L8003EBBC
/* 2F3B4 8003EBB4 00000000 */   nop
/* 2F3B8 8003EBB8 CD010000 */  break      0, 7
.L8003EBBC:
/* 2F3BC 8003EBBC 0800E003 */  jr         $ra
/* 2F3C0 8003EBC0 00000000 */   nop
.size AdjustSpeed, . - AdjustSpeed
