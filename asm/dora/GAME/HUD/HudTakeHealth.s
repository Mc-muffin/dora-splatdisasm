.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HudTakeHealth
/* EB80 8001E380 4804828F */  lw         $v0, %gp_rel(HEALTH_SPIN_TIME)($gp)
/* EB84 8001E384 5404838F */  lw         $v1, %gp_rel(HudOnScreenTimer)($gp)
/* EB88 8001E388 A803848F */  lw         $a0, %gp_rel(HUDState)($gp)
/* EB8C 8001E38C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* EB90 8001E390 1000BFAF */  sw         $ra, 0x10($sp)
/* EB94 8001E394 340482AF */  sw         $v0, %gp_rel(Health1Animate)($gp)
/* EB98 8001E398 B00383AF */  sw         $v1, %gp_rel(HudTimer)($gp)
/* EB9C 8001E39C 03008010 */  beqz       $a0, .L8001E3AC
/* EBA0 8001E3A0 03000224 */   addiu     $v0, $zero, 0x3
/* EBA4 8001E3A4 07008214 */  bne        $a0, $v0, .L8001E3C4
/* EBA8 8001E3A8 00000000 */   nop
.L8001E3AC:
/* EBAC 8001E3AC 5804838F */  lw         $v1, %gp_rel(HudUpdateTimerReset)($gp)
/* EBB0 8001E3B0 01000224 */  addiu      $v0, $zero, 0x1
/* EBB4 8001E3B4 A80382AF */  sw         $v0, %gp_rel(HUDState)($gp)
/* EBB8 8001E3B8 5C0483AF */  sw         $v1, %gp_rel(HUDUpdateTimer)($gp)
/* EBBC 8001E3BC 3495000C */  jal        NewsPaperZoomIn
/* EBC0 8001E3C0 00000000 */   nop
.L8001E3C4:
/* EBC4 8001E3C4 1000BF8F */  lw         $ra, 0x10($sp)
/* EBC8 8001E3C8 00000000 */  nop
/* EBCC 8001E3CC 0800E003 */  jr         $ra
/* EBD0 8001E3D0 1800BD27 */   addiu     $sp, $sp, 0x18
.size HudTakeHealth, . - HudTakeHealth
