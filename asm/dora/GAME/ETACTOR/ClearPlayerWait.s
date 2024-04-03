.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ClearPlayerWait
/* AB04 8001A304 0980033C */  lui        $v1, %hi(ETActor)
/* AB08 8001A308 4400828F */  lw         $v0, %gp_rel(DoraWaitState)($gp)
/* AB0C 8001A30C 00000000 */  nop
/* AB10 8001A310 FFFF4224 */  addiu      $v0, $v0, -0x1
/* AB14 8001A314 440082AF */  sw         $v0, %gp_rel(DoraWaitState)($gp)
/* AB18 8001A318 0700401C */  bgtz       $v0, .L8001A338
/* AB1C 8001A31C B05A6324 */   addiu     $v1, $v1, %lo(ETActor)
/* AB20 8001A320 0C00638C */  lw         $v1, 0xC($v1)
/* AB24 8001A324 0B000224 */  addiu      $v0, $zero, 0xB
/* AB28 8001A328 440080AF */  sw         $zero, %gp_rel(DoraWaitState)($gp)
/* AB2C 8001A32C 02006210 */  beq        $v1, $v0, .L8001A338
/* AB30 8001A330 00000000 */   nop
/* AB34 8001A334 480080AF */  sw         $zero, %gp_rel(PLAYER_WAIT_FLAG)($gp)
.L8001A338:
/* AB38 8001A338 0800E003 */  jr         $ra
/* AB3C 8001A33C 00000000 */   nop
.size ClearPlayerWait, . - ClearPlayerWait
