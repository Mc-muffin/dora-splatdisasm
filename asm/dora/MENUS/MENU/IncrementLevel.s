.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel IncrementLevel
/* 186A4 80027EA4 0880043C */  lui        $a0, %hi(WorldList)
/* 186A8 80027EA8 6C648424 */  addiu      $a0, $a0, %lo(WorldList)
/* 186AC 80027EAC 8407838F */  lw         $v1, %gp_rel(gmenuworld)($gp)
/* 186B0 80027EB0 8807858F */  lw         $a1, %gp_rel(gmenulevel)($gp)
/* 186B4 80027EB4 80100300 */  sll        $v0, $v1, 2
/* 186B8 80027EB8 21104300 */  addu       $v0, $v0, $v1
/* 186BC 80027EBC 80100200 */  sll        $v0, $v0, 2
/* 186C0 80027EC0 21208200 */  addu       $a0, $a0, $v0
/* 186C4 80027EC4 0400838C */  lw         $v1, 0x4($a0)
/* 186C8 80027EC8 0100A524 */  addiu      $a1, $a1, 0x1
/* 186CC 80027ECC 2A18A300 */  slt        $v1, $a1, $v1
/* 186D0 80027ED0 02006014 */  bnez       $v1, .L80027EDC
/* 186D4 80027ED4 00000000 */   nop
/* 186D8 80027ED8 21280000 */  addu       $a1, $zero, $zero
.L80027EDC:
/* 186DC 80027EDC 880785AF */  sw         $a1, %gp_rel(gmenulevel)($gp)
/* 186E0 80027EE0 0800E003 */  jr         $ra
/* 186E4 80027EE4 00000000 */   nop
.size IncrementLevel, . - IncrementLevel
