.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PickupExit
/* D29C 8001CA9C 0800E003 */  jr         $ra
/* D2A0 8001CAA0 00000000 */   nop
.size PickupExit, . - PickupExit
