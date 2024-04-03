.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetHealthMesh
/* 14930 80024130 8C1384AF */  sw         $a0, %gp_rel(g_health_mesh)($gp)
/* 14934 80024134 0800E003 */  jr         $ra
/* 14938 80024138 00000000 */   nop
.size SetHealthMesh, . - SetHealthMesh
