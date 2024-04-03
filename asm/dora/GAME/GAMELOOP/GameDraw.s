.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GameDraw
/* 23998 80033198 0980023C */  lui        $v0, %hi(CinematicScreenPauseFlag)
/* 2399C 8003319C 3C57428C */  lw         $v0, %lo(CinematicScreenPauseFlag)($v0)
/* 239A0 800331A0 70FEBD27 */  addiu      $sp, $sp, -0x190
/* 239A4 800331A4 2D004014 */  bnez       $v0, .L8003325C
/* 239A8 800331A8 8801BFAF */   sw        $ra, 0x188($sp)
/* 239AC 800331AC 5008828F */  lw         $v0, %gp_rel(FreezeGame)($gp)
/* 239B0 800331B0 00000000 */  nop
/* 239B4 800331B4 29004014 */  bnez       $v0, .L8003325C
/* 239B8 800331B8 00000000 */   nop
/* 239BC 800331BC 0980023C */  lui        $v0, %hi(g_draw_iso_world)
/* 239C0 800331C0 F850428C */  lw         $v0, %lo(g_draw_iso_world)($v0)
/* 239C4 800331C4 00000000 */  nop
/* 239C8 800331C8 03004010 */  beqz       $v0, .L800331D8
/* 239CC 800331CC 00000000 */   nop
/* 239D0 800331D0 B809010C */  jal        ServiceSpawnListDisplay
/* 239D4 800331D4 00000000 */   nop
.L800331D8:
/* 239D8 800331D8 4009828F */  lw         $v0, %gp_rel(eggdrawactor)($gp)
/* 239DC 800331DC 00000000 */  nop
/* 239E0 800331E0 1C004010 */  beqz       $v0, .L80033254
/* 239E4 800331E4 00000000 */   nop
/* 239E8 800331E8 3ED5000C */  jal        DrawBootsActor
/* 239EC 800331EC 00000000 */   nop
/* 239F0 800331F0 1000A327 */  addiu      $v1, $sp, 0x10
/* 239F4 800331F4 0980023C */  lui        $v0, %hi(ETActor)
/* 239F8 800331F8 B05A4224 */  addiu      $v0, $v0, %lo(ETActor)
/* 239FC 800331FC 10004824 */  addiu      $t0, $v0, 0x10
/* 23A00 80033200 80014424 */  addiu      $a0, $v0, 0x180
.L80033204:
/* 23A04 80033204 0000058D */  lw         $a1, 0x0($t0)
/* 23A08 80033208 0400068D */  lw         $a2, 0x4($t0)
/* 23A0C 8003320C 0800078D */  lw         $a3, 0x8($t0)
/* 23A10 80033210 0C00098D */  lw         $t1, 0xC($t0)
/* 23A14 80033214 000065AC */  sw         $a1, 0x0($v1)
/* 23A18 80033218 040066AC */  sw         $a2, 0x4($v1)
/* 23A1C 8003321C 080067AC */  sw         $a3, 0x8($v1)
/* 23A20 80033220 0C0069AC */  sw         $t1, 0xC($v1)
/* 23A24 80033224 10000825 */  addiu      $t0, $t0, 0x10
/* 23A28 80033228 F6FF0415 */  bne        $t0, $a0, .L80033204
/* 23A2C 8003322C 10006324 */   addiu     $v1, $v1, 0x10
/* 23A30 80033230 0000448C */  lw         $a0, 0x0($v0)
/* 23A34 80033234 0400458C */  lw         $a1, 0x4($v0)
/* 23A38 80033238 0800468C */  lw         $a2, 0x8($v0)
/* 23A3C 8003323C 0C00478C */  lw         $a3, 0xC($v0)
/* 23A40 80033240 00000A8D */  lw         $t2, 0x0($t0)
/* 23A44 80033244 04000B8D */  lw         $t3, 0x4($t0)
/* 23A48 80033248 00006AAC */  sw         $t2, 0x0($v1)
/* 23A4C 8003324C 105A000C */  jal        DrawETActor
/* 23A50 80033250 04006BAC */   sw        $t3, 0x4($v1)
.L80033254:
/* 23A54 80033254 FD76000C */  jal        DrawHud
/* 23A58 80033258 00000000 */   nop
.L8003325C:
/* 23A5C 8003325C 8801BF8F */  lw         $ra, 0x188($sp)
/* 23A60 80033260 00000000 */  nop
/* 23A64 80033264 0800E003 */  jr         $ra
/* 23A68 80033268 9001BD27 */   addiu     $sp, $sp, 0x190
.size GameDraw, . - GameDraw
