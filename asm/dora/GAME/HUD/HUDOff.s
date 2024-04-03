.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HUDOff
/* F01C 8001E81C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* F020 8001E820 03000224 */  addiu      $v0, $zero, 0x3
/* F024 8001E824 1000BFAF */  sw         $ra, 0x10($sp)
/* F028 8001E828 A80382AF */  sw         $v0, %gp_rel(HUDState)($gp)
/* F02C 8001E82C 5295000C */  jal        NewsPaperZoomOut
/* F030 8001E830 00000000 */   nop
/* F034 8001E834 1000BF8F */  lw         $ra, 0x10($sp)
/* F038 8001E838 00000000 */  nop
/* F03C 8001E83C 0800E003 */  jr         $ra
/* F040 8001E840 1800BD27 */   addiu     $sp, $sp, 0x18
.size HUDOff, . - HUDOff
