.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitColorCluts
/* 4EC3C 8005E43C 04000224 */  addiu      $v0, $zero, 0x4
/* 4EC40 8005E440 5C1182AF */  sw         $v0, %gp_rel(BWClut_State)($gp)
/* 4EC44 8005E444 601180AF */  sw         $zero, %gp_rel(BWClut_Index)($gp)
/* 4EC48 8005E448 0800E003 */  jr         $ra
/* 4EC4C 8005E44C 00000000 */   nop
.size InitColorCluts, . - InitColorCluts
