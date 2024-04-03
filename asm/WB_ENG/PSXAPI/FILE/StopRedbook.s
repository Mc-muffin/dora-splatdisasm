.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StopRedbook
/* 475BC 80056DBC 7416848F */  lw         $a0, %gp_rel(track)($gp)
/* 475C0 80056DC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 475C4 80056DC4 1000BFAF */  sw         $ra, 0x10($sp)
/* 475C8 80056DC8 CF7B010C */  jal        StopXA_Music
/* 475CC 80056DCC 00000000 */   nop
/* 475D0 80056DD0 1000BF8F */  lw         $ra, 0x10($sp)
/* 475D4 80056DD4 00000000 */  nop
/* 475D8 80056DD8 0800E003 */  jr         $ra
/* 475DC 80056DDC 1800BD27 */   addiu     $sp, $sp, 0x18
.size StopRedbook, . - StopRedbook
