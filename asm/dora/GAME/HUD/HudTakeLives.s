.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HudTakeLives
/* EC7C 8001E47C 4C04828F */  lw         $v0, %gp_rel(LIVES_SPIN_TIME)($gp)
/* EC80 8001E480 5404838F */  lw         $v1, %gp_rel(HudOnScreenTimer)($gp)
/* EC84 8001E484 A803848F */  lw         $a0, %gp_rel(HUDState)($gp)
/* EC88 8001E488 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* EC8C 8001E48C 1000BFAF */  sw         $ra, 0x10($sp)
/* EC90 8001E490 2C0482AF */  sw         $v0, %gp_rel(LivesAnimate)($gp)
/* EC94 8001E494 B00383AF */  sw         $v1, %gp_rel(HudTimer)($gp)
/* EC98 8001E498 03008010 */  beqz       $a0, .L8001E4A8
/* EC9C 8001E49C 03000224 */   addiu     $v0, $zero, 0x3
/* ECA0 8001E4A0 07008214 */  bne        $a0, $v0, .L8001E4C0
/* ECA4 8001E4A4 00000000 */   nop
.L8001E4A8:
/* ECA8 8001E4A8 5804838F */  lw         $v1, %gp_rel(HudUpdateTimerReset)($gp)
/* ECAC 8001E4AC 01000224 */  addiu      $v0, $zero, 0x1
/* ECB0 8001E4B0 A80382AF */  sw         $v0, %gp_rel(HUDState)($gp)
/* ECB4 8001E4B4 5C0483AF */  sw         $v1, %gp_rel(HUDUpdateTimer)($gp)
/* ECB8 8001E4B8 3495000C */  jal        NewsPaperZoomIn
/* ECBC 8001E4BC 00000000 */   nop
.L8001E4C0:
/* ECC0 8001E4C0 1000BF8F */  lw         $ra, 0x10($sp)
/* ECC4 8001E4C4 00000000 */  nop
/* ECC8 8001E4C8 0800E003 */  jr         $ra
/* ECCC 8001E4CC 1800BD27 */   addiu     $sp, $sp, 0x18
.size HudTakeLives, . - HudTakeLives
