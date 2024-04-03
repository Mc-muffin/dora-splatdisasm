.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ClearJoyPad
/* 4A3E0 80059BE0 BC168227 */  addiu      $v0, $gp, %gp_rel(gInputAxisValues)
/* 4A3E4 80059BE4 030040A0 */  sb         $zero, 0x3($v0)
/* 4A3E8 80059BE8 020040A0 */  sb         $zero, 0x2($v0)
/* 4A3EC 80059BEC 010040A0 */  sb         $zero, 0x1($v0)
/* 4A3F0 80059BF0 BC1680A3 */  sb         $zero, %gp_rel(gInputAxisValues)($gp)
/* 4A3F4 80059BF4 B81080AF */  sw         $zero, %gp_rel(AnalogueLR)($gp)
/* 4A3F8 80059BF8 BC1080AF */  sw         $zero, %gp_rel(AnalogueUD)($gp)
/* 4A3FC 80059BFC C01080AF */  sw         $zero, %gp_rel(AnalogueMagnitude)($gp)
/* 4A400 80059C00 B41080AF */  sw         $zero, %gp_rel(AnalogueFlag)($gp)
/* 4A404 80059C04 CC1680A7 */  sh         $zero, %gp_rel(Trg0)($gp)
/* 4A408 80059C08 C81680A7 */  sh         $zero, %gp_rel(Pad0)($gp)
/* 4A40C 80059C0C B41680A7 */  sh         $zero, %gp_rel(TrgRel0)($gp)
/* 4A410 80059C10 0800E003 */  jr         $ra
/* 4A414 80059C14 00000000 */   nop
.size ClearJoyPad, . - ClearJoyPad
