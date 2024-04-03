.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel HudAddLives
/* EC28 8001E428 4C04828F */  lw         $v0, %gp_rel(LIVES_SPIN_TIME)($gp)
/* EC2C 8001E42C 5404838F */  lw         $v1, %gp_rel(HudOnScreenTimer)($gp)
/* EC30 8001E430 A803848F */  lw         $a0, %gp_rel(HUDState)($gp)
/* EC34 8001E434 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* EC38 8001E438 1000BFAF */  sw         $ra, 0x10($sp)
/* EC3C 8001E43C 2C0482AF */  sw         $v0, %gp_rel(LivesAnimate)($gp)
/* EC40 8001E440 B00383AF */  sw         $v1, %gp_rel(HudTimer)($gp)
/* EC44 8001E444 03008010 */  beqz       $a0, .L8001E454
/* EC48 8001E448 03000224 */   addiu     $v0, $zero, 0x3
/* EC4C 8001E44C 07008214 */  bne        $a0, $v0, .L8001E46C
/* EC50 8001E450 00000000 */   nop
.L8001E454:
/* EC54 8001E454 5804838F */  lw         $v1, %gp_rel(HudUpdateTimerReset)($gp)
/* EC58 8001E458 01000224 */  addiu      $v0, $zero, 0x1
/* EC5C 8001E45C A80382AF */  sw         $v0, %gp_rel(HUDState)($gp)
/* EC60 8001E460 5C0483AF */  sw         $v1, %gp_rel(HUDUpdateTimer)($gp)
/* EC64 8001E464 3495000C */  jal        NewsPaperZoomIn
/* EC68 8001E468 00000000 */   nop
.L8001E46C:
/* EC6C 8001E46C 1000BF8F */  lw         $ra, 0x10($sp)
/* EC70 8001E470 00000000 */  nop
/* EC74 8001E474 0800E003 */  jr         $ra
/* EC78 8001E478 1800BD27 */   addiu     $sp, $sp, 0x18
.size HudAddLives, . - HudAddLives
