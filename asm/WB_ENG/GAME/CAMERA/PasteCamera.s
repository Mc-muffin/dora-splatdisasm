.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PasteCamera
/* 2B314 8003AB14 40100400 */  sll        $v0, $a0, 1
/* 2B318 8003AB18 21104400 */  addu       $v0, $v0, $a0
/* 2B31C 8003AB1C 80100200 */  sll        $v0, $v0, 2
/* 2B320 8003AB20 23104400 */  subu       $v0, $v0, $a0
/* 2B324 8003AB24 80100200 */  sll        $v0, $v0, 2
/* 2B328 8003AB28 0A80033C */  lui        $v1, %hi(SCGGameCam)
/* 2B32C 8003AB2C B8B16324 */  addiu      $v1, $v1, %lo(SCGGameCam)
/* 2B330 8003AB30 21104300 */  addu       $v0, $v0, $v1
/* 2B334 8003AB34 0A80043C */  lui        $a0, %hi(copybuff)
/* 2B338 8003AB38 88B18424 */  addiu      $a0, $a0, %lo(copybuff)
/* 2B33C 8003AB3C 20008324 */  addiu      $v1, $a0, 0x20
.L8003AB40:
/* 2B340 8003AB40 0000858C */  lw         $a1, 0x0($a0)
/* 2B344 8003AB44 0400868C */  lw         $a2, 0x4($a0)
/* 2B348 8003AB48 0800878C */  lw         $a3, 0x8($a0)
/* 2B34C 8003AB4C 0C00888C */  lw         $t0, 0xC($a0)
/* 2B350 8003AB50 000045AC */  sw         $a1, 0x0($v0)
/* 2B354 8003AB54 040046AC */  sw         $a2, 0x4($v0)
/* 2B358 8003AB58 080047AC */  sw         $a3, 0x8($v0)
/* 2B35C 8003AB5C 0C0048AC */  sw         $t0, 0xC($v0)
/* 2B360 8003AB60 10008424 */  addiu      $a0, $a0, 0x10
/* 2B364 8003AB64 F6FF8314 */  bne        $a0, $v1, .L8003AB40
/* 2B368 8003AB68 10004224 */   addiu     $v0, $v0, 0x10
/* 2B36C 8003AB6C 0000838C */  lw         $v1, 0x0($a0)
/* 2B370 8003AB70 0400858C */  lw         $a1, 0x4($a0)
/* 2B374 8003AB74 0800868C */  lw         $a2, 0x8($a0)
/* 2B378 8003AB78 000043AC */  sw         $v1, 0x0($v0)
/* 2B37C 8003AB7C 040045AC */  sw         $a1, 0x4($v0)
/* 2B380 8003AB80 080046AC */  sw         $a2, 0x8($v0)
/* 2B384 8003AB84 0A80023C */  lui        $v0, %hi(SCGGameCam)
/* 2B388 8003AB88 B8B14224 */  addiu      $v0, $v0, %lo(SCGGameCam)
/* 2B38C 8003AB8C 28004524 */  addiu      $a1, $v0, 0x28
/* 2B390 8003AB90 0880033C */  lui        $v1, %hi(CameraNames)
/* 2B394 8003AB94 407E6324 */  addiu      $v1, $v1, %lo(CameraNames)
/* 2B398 8003AB98 26000424 */  addiu      $a0, $zero, 0x26
.L8003AB9C:
/* 2B39C 8003AB9C 0000628C */  lw         $v0, 0x0($v1)
/* 2B3A0 8003ABA0 04006324 */  addiu      $v1, $v1, 0x4
/* 2B3A4 8003ABA4 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 2B3A8 8003ABA8 0000A2AC */  sw         $v0, 0x0($a1)
/* 2B3AC 8003ABAC FBFF8104 */  bgez       $a0, .L8003AB9C
/* 2B3B0 8003ABB0 2C00A524 */   addiu     $a1, $a1, 0x2C
/* 2B3B4 8003ABB4 0800E003 */  jr         $ra
/* 2B3B8 8003ABB8 00000000 */   nop
.size PasteCamera, . - PasteCamera
