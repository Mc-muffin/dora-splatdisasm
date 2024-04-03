.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetPickupMesh
/* 14924 80024124 901384AF */  sw         $a0, %gp_rel(g_pickup_mesh)($gp)
/* 14928 80024128 0800E003 */  jr         $ra
/* 1492C 8002412C 00000000 */   nop
.size SetPickupMesh, . - SetPickupMesh
