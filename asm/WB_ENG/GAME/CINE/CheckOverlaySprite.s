.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckOverlaySprite
/* 329C4 800421C4 D414828F */  lw         $v0, %gp_rel(CurrentCinematic)($gp)
/* 329C8 800421C8 00000000 */  nop
/* 329CC 800421CC 1000438C */  lw         $v1, 0x10($v0)
/* 329D0 800421D0 440C848F */  lw         $a0, %gp_rel(Cinematic_ParaOffset)($gp)
/* 329D4 800421D4 05006010 */  beqz       $v1, .L800421EC
/* 329D8 800421D8 00000000 */   nop
/* 329DC 800421DC 0000428C */  lw         $v0, 0x0($v0)
/* 329E0 800421E0 00000000 */  nop
/* 329E4 800421E4 04004014 */  bnez       $v0, .L800421F8
/* 329E8 800421E8 21106400 */   addu      $v0, $v1, $a0
.L800421EC:
/* 329EC 800421EC 400C80AF */  sw         $zero, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 329F0 800421F0 0800E003 */  jr         $ra
/* 329F4 800421F4 00000000 */   nop
.L800421F8:
/* 329F8 800421F8 00004390 */  lbu        $v1, 0x0($v0)
/* 329FC 800421FC 00000000 */  nop
/* 32A00 80042200 400C83AF */  sw         $v1, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 32A04 80042204 0800E003 */  jr         $ra
/* 32A08 80042208 00000000 */   nop
.size CheckOverlaySprite, . - CheckOverlaySprite
