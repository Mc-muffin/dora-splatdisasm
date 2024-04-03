.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetCelOTIndex
/* 51D6C 8006156C A01180AF */  sw         $zero, %gp_rel(CelDepth)($gp)
/* 51D70 80061570 0800E003 */  jr         $ra
/* 51D74 80061574 00000000 */   nop
.size ResetCelOTIndex, . - ResetCelOTIndex
