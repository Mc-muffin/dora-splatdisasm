.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetHudActorsInWorld
/* ED24 8001E524 0800E003 */  jr         $ra
/* ED28 8001E528 00000000 */   nop
.size SetHudActorsInWorld, . - SetHudActorsInWorld
