.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HudAddHealth
/* EBD4 8001E3D4 4804828F */  lw         $v0, %gp_rel(HEALTH_SPIN_TIME)($gp)
/* EBD8 8001E3D8 5404838F */  lw         $v1, %gp_rel(HudOnScreenTimer)($gp)
/* EBDC 8001E3DC A803848F */  lw         $a0, %gp_rel(HUDState)($gp)
/* EBE0 8001E3E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* EBE4 8001E3E4 1000BFAF */  sw         $ra, 0x10($sp)
/* EBE8 8001E3E8 340482AF */  sw         $v0, %gp_rel(Health1Animate)($gp)
/* EBEC 8001E3EC B00383AF */  sw         $v1, %gp_rel(HudTimer)($gp)
/* EBF0 8001E3F0 03008010 */  beqz       $a0, .L8001E400
/* EBF4 8001E3F4 03000224 */   addiu     $v0, $zero, 0x3
/* EBF8 8001E3F8 07008214 */  bne        $a0, $v0, .L8001E418
/* EBFC 8001E3FC 00000000 */   nop
.L8001E400:
/* EC00 8001E400 5804838F */  lw         $v1, %gp_rel(HudUpdateTimerReset)($gp)
/* EC04 8001E404 01000224 */  addiu      $v0, $zero, 0x1
/* EC08 8001E408 A80382AF */  sw         $v0, %gp_rel(HUDState)($gp)
/* EC0C 8001E40C 5C0483AF */  sw         $v1, %gp_rel(HUDUpdateTimer)($gp)
/* EC10 8001E410 3495000C */  jal        NewsPaperZoomIn
/* EC14 8001E414 00000000 */   nop
.L8001E418:
/* EC18 8001E418 1000BF8F */  lw         $ra, 0x10($sp)
/* EC1C 8001E41C 00000000 */  nop
/* EC20 8001E420 0800E003 */  jr         $ra
/* EC24 8001E424 1800BD27 */   addiu     $sp, $sp, 0x18
.size HudAddHealth, . - HudAddHealth
