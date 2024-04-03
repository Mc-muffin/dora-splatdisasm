.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HUDOn
/* F044 8001E844 01000224 */  addiu      $v0, $zero, 0x1
/* F048 8001E848 A80382AF */  sw         $v0, %gp_rel(HUDState)($gp)
/* F04C 8001E84C 0800E003 */  jr         $ra
/* F050 8001E850 00000000 */   nop
.size HUDOn, . - HUDOn
