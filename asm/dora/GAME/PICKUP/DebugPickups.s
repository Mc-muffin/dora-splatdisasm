.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DebugPickups
/* D2C0 8001CAC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* D2C4 8001CAC4 1000BFAF */  sw         $ra, 0x10($sp)
/* D2C8 8001CAC8 726F000C */  jal        DisplayPickupActorPool
/* D2CC 8001CACC 00000000 */   nop
/* D2D0 8001CAD0 1000BF8F */  lw         $ra, 0x10($sp)
/* D2D4 8001CAD4 00000000 */  nop
/* D2D8 8001CAD8 0800E003 */  jr         $ra
/* D2DC 8001CADC 1800BD27 */   addiu     $sp, $sp, 0x18
.size DebugPickups, . - DebugPickups
