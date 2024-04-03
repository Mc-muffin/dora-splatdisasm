.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel updateScreenQuick
/* 4B254 8005AA54 D010828F */  lw         $v0, %gp_rel(ResolutionMode)($gp)
/* 4B258 8005AA58 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4B25C 8005AA5C 2400BFAF */  sw         $ra, 0x24($sp)
/* 4B260 8005AA60 09004014 */  bnez       $v0, .L8005AA88
/* 4B264 8005AA64 2000B0AF */   sw        $s0, 0x20($sp)
/* 4B268 8005AA68 02000324 */  addiu      $v1, $zero, 0x2
.L8005AA6C:
/* 4B26C 8005AA6C DC10828F */  lw         $v0, %gp_rel(RenderState)($gp)
/* 4B270 8005AA70 00000000 */  nop
/* 4B274 8005AA74 FDFF4314 */  bne        $v0, $v1, .L8005AA6C
/* 4B278 8005AA78 00000000 */   nop
/* 4B27C 8005AA7C DC1080AF */  sw         $zero, %gp_rel(RenderState)($gp)
/* 4B280 8005AA80 D96A0108 */  j          .L8005AB64
/* 4B284 8005AA84 00000000 */   nop
.L8005AA88:
/* 4B288 8005AA88 0017828F */  lw         $v0, %gp_rel(FrameCount)($gp)
/* 4B28C 8005AA8C 00000000 */  nop
/* 4B290 8005AA90 01004224 */  addiu      $v0, $v0, 0x1
/* 4B294 8005AA94 001782AF */  sw         $v0, %gp_rel(FrameCount)($gp)
.L8005AA98:
/* 4B298 8005AA98 36DB010C */  jal        DrawSync
/* 4B29C 8005AA9C 01000424 */   addiu     $a0, $zero, 0x1
/* 4B2A0 8005AAA0 FDFF4014 */  bnez       $v0, .L8005AA98
/* 4B2A4 8005AAA4 00000000 */   nop
/* 4B2A8 8005AAA8 57DA010C */  jal        ResetGraph
/* 4B2AC 8005AAAC 01000424 */   addiu     $a0, $zero, 0x1
/* 4B2B0 8005AAB0 EBD6010C */  jal        VSync
/* 4B2B4 8005AAB4 21200000 */   addu      $a0, $zero, $zero
/* 4B2B8 8005AAB8 0B80103C */  lui        $s0, %hi(gDoubleBuffer + 0x5C)
/* 4B2BC 8005AABC E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4B2C0 8005AAC0 D4B91026 */  addiu      $s0, $s0, %lo(gDoubleBuffer + 0x5C)
/* 4B2C4 8005AAC4 C0210400 */  sll        $a0, $a0, 7
/* 4B2C8 8005AAC8 42DD010C */  jal        PutDispEnv
/* 4B2CC 8005AACC 21209000 */   addu      $a0, $a0, $s0
/* 4B2D0 8005AAD0 E410848F */  lw         $a0, %gp_rel(ot_ndx)($gp)
/* 4B2D4 8005AAD4 A4FF1026 */  addiu      $s0, $s0, -0x5C
/* 4B2D8 8005AAD8 C0210400 */  sll        $a0, $a0, 7
/* 4B2DC 8005AADC CFDC010C */  jal        PutDrawEnv
/* 4B2E0 8005AAE0 21209000 */   addu      $a0, $a0, $s0
/* 4B2E4 8005AAE4 0B80043C */  lui        $a0, %hi(g_nt)
/* 4B2E8 8005AAE8 68BB8424 */  addiu      $a0, $a0, %lo(g_nt)
/* 4B2EC 8005AAEC E410828F */  lw         $v0, %gp_rel(ot_ndx)($gp)
/* 4B2F0 8005AAF0 88130524 */  addiu      $a1, $zero, 0x1388
/* 4B2F4 8005AAF4 C0110200 */  sll        $v0, $v0, 7
/* 4B2F8 8005AAF8 21105000 */  addu       $v0, $v0, $s0
/* 4B2FC 8005AAFC E81682AF */  sw         $v0, %gp_rel(cdb)($gp)
/* 4B300 8005AB00 C22A010C */  jal        UnlinkNTagR
/* 4B304 8005AB04 70004624 */   addiu     $a2, $v0, 0x70
/* 4B308 8005AB08 0B80043C */  lui        $a0, %hi(g_nt2)
/* 4B30C 8005AB0C A8578424 */  addiu      $a0, $a0, %lo(g_nt2)
/* 4B310 8005AB10 E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4B314 8005AB14 F810858F */  lw         $a1, %gp_rel(g_ot2_size)($gp)
/* 4B318 8005AB18 C22A010C */  jal        UnlinkNTagR
/* 4B31C 8005AB1C 7400C624 */   addiu     $a2, $a2, 0x74
/* 4B320 8005AB20 0B80043C */  lui        $a0, %hi(g_nt3)
/* 4B324 8005AB24 38778424 */  addiu      $a0, $a0, %lo(g_nt3)
/* 4B328 8005AB28 E816868F */  lw         $a2, %gp_rel(cdb)($gp)
/* 4B32C 8005AB2C 00040524 */  addiu      $a1, $zero, 0x400
/* 4B330 8005AB30 C22A010C */  jal        UnlinkNTagR
/* 4B334 8005AB34 7800C624 */   addiu     $a2, $a2, 0x78
/* 4B338 8005AB38 E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4B33C 8005AB3C B3DC010C */  jal        DrawOTag
/* 4B340 8005AB40 74008424 */   addiu     $a0, $a0, 0x74
/* 4B344 8005AB44 E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4B348 8005AB48 B3DC010C */  jal        DrawOTag
/* 4B34C 8005AB4C 70008424 */   addiu     $a0, $a0, 0x70
/* 4B350 8005AB50 E816848F */  lw         $a0, %gp_rel(cdb)($gp)
/* 4B354 8005AB54 B3DC010C */  jal        DrawOTag
/* 4B358 8005AB58 78008424 */   addiu     $a0, $a0, 0x78
/* 4B35C 8005AB5C DA6A0108 */  j          .L8005AB68
/* 4B360 8005AB60 00000000 */   nop
.L8005AB64:
/* 4B364 8005AB64 CC1080AF */  sw         $zero, %gp_rel(TellTimerUpdateScreen)($gp)
.L8005AB68:
/* 4B368 8005AB68 2400BF8F */  lw         $ra, 0x24($sp)
/* 4B36C 8005AB6C 2000B08F */  lw         $s0, 0x20($sp)
/* 4B370 8005AB70 0800E003 */  jr         $ra
/* 4B374 8005AB74 2800BD27 */   addiu     $sp, $sp, 0x28
.size updateScreenQuick, . - updateScreenQuick
