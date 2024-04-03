.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitColorClutsAll
/* 4EC64 8005E464 02000224 */  addiu      $v0, $zero, 0x2
/* 4EC68 8005E468 5C1182AF */  sw         $v0, %gp_rel(BWClut_State)($gp)
/* 4EC6C 8005E46C 601180AF */  sw         $zero, %gp_rel(BWClut_Index)($gp)
/* 4EC70 8005E470 0800E003 */  jr         $ra
/* 4EC74 8005E474 00000000 */   nop
.size InitColorClutsAll, . - InitColorClutsAll
