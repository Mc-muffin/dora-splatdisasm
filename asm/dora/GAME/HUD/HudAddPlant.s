.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HudAddPlant
/* ECD0 8001E4D0 5004828F */  lw         $v0, %gp_rel(PLANT_ANIM_TIME)($gp)
/* ECD4 8001E4D4 5404838F */  lw         $v1, %gp_rel(HudOnScreenTimer)($gp)
/* ECD8 8001E4D8 A803848F */  lw         $a0, %gp_rel(HUDState)($gp)
/* ECDC 8001E4DC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* ECE0 8001E4E0 1000BFAF */  sw         $ra, 0x10($sp)
/* ECE4 8001E4E4 300482AF */  sw         $v0, %gp_rel(PlantAnimate)($gp)
/* ECE8 8001E4E8 B00383AF */  sw         $v1, %gp_rel(HudTimer)($gp)
/* ECEC 8001E4EC 03008010 */  beqz       $a0, .L8001E4FC
/* ECF0 8001E4F0 03000224 */   addiu     $v0, $zero, 0x3
/* ECF4 8001E4F4 07008214 */  bne        $a0, $v0, .L8001E514
/* ECF8 8001E4F8 00000000 */   nop
.L8001E4FC:
/* ECFC 8001E4FC 5804838F */  lw         $v1, %gp_rel(HudUpdateTimerReset)($gp)
/* ED00 8001E500 01000224 */  addiu      $v0, $zero, 0x1
/* ED04 8001E504 A80382AF */  sw         $v0, %gp_rel(HUDState)($gp)
/* ED08 8001E508 5C0483AF */  sw         $v1, %gp_rel(HUDUpdateTimer)($gp)
/* ED0C 8001E50C 3495000C */  jal        NewsPaperZoomIn
/* ED10 8001E510 00000000 */   nop
.L8001E514:
/* ED14 8001E514 1000BF8F */  lw         $ra, 0x10($sp)
/* ED18 8001E518 00000000 */  nop
/* ED1C 8001E51C 0800E003 */  jr         $ra
/* ED20 8001E520 1800BD27 */   addiu     $sp, $sp, 0x18
.size HudAddPlant, . - HudAddPlant
