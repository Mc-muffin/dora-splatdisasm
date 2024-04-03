.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ActivateHUD
/* EB34 8001E334 5404828F */  lw         $v0, %gp_rel(HudOnScreenTimer)($gp)
/* EB38 8001E338 A803838F */  lw         $v1, %gp_rel(HUDState)($gp)
/* EB3C 8001E33C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* EB40 8001E340 1000BFAF */  sw         $ra, 0x10($sp)
/* EB44 8001E344 B00382AF */  sw         $v0, %gp_rel(HudTimer)($gp)
/* EB48 8001E348 03006010 */  beqz       $v1, .L8001E358
/* EB4C 8001E34C 03000224 */   addiu     $v0, $zero, 0x3
/* EB50 8001E350 07006214 */  bne        $v1, $v0, .L8001E370
/* EB54 8001E354 00000000 */   nop
.L8001E358:
/* EB58 8001E358 5804838F */  lw         $v1, %gp_rel(HudUpdateTimerReset)($gp)
/* EB5C 8001E35C 01000224 */  addiu      $v0, $zero, 0x1
/* EB60 8001E360 A80382AF */  sw         $v0, %gp_rel(HUDState)($gp)
/* EB64 8001E364 5C0483AF */  sw         $v1, %gp_rel(HUDUpdateTimer)($gp)
/* EB68 8001E368 3495000C */  jal        NewsPaperZoomIn
/* EB6C 8001E36C 00000000 */   nop
.L8001E370:
/* EB70 8001E370 1000BF8F */  lw         $ra, 0x10($sp)
/* EB74 8001E374 00000000 */  nop
/* EB78 8001E378 0800E003 */  jr         $ra
/* EB7C 8001E37C 1800BD27 */   addiu     $sp, $sp, 0x18
.size ActivateHUD, . - ActivateHUD
