.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AttemptToFade
/* 4C3D4 8005BBD4 F016848F */  lw         $a0, %gp_rel(gFadeCount)($gp)
/* 4C3D8 8005BBD8 E410828F */  lw         $v0, %gp_rel(ot_ndx)($gp)
/* 4C3DC 8005BBDC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4C3E0 8005BBE0 1000BFAF */  sw         $ra, 0x10($sp)
/* 4C3E4 8005BBE4 01008424 */  addiu      $a0, $a0, 0x1
/* 4C3E8 8005BBE8 C0180200 */  sll        $v1, $v0, 3
/* 4C3EC 8005BBEC 23186200 */  subu       $v1, $v1, $v0
/* 4C3F0 8005BBF0 80180300 */  sll        $v1, $v1, 2
/* 4C3F4 8005BBF4 0B80023C */  lui        $v0, %hi(FadeTile)
/* 4C3F8 8005BBF8 40B94224 */  addiu      $v0, $v0, %lo(FadeTile)
/* 4C3FC 8005BBFC F01684AF */  sw         $a0, %gp_rel(gFadeCount)($gp)
/* 4C400 8005BC00 FF078430 */  andi       $a0, $a0, 0x7FF
/* 4C404 8005BC04 03008014 */  bnez       $a0, .L8005BC14
/* 4C408 8005BC08 21186200 */   addu      $v1, $v1, $v0
/* 4C40C 8005BC0C 9CDC010C */  jal        DrawPrim
/* 4C410 8005BC10 21206000 */   addu      $a0, $v1, $zero
.L8005BC14:
/* 4C414 8005BC14 F016828F */  lw         $v0, %gp_rel(gFadeCount)($gp)
/* 4C418 8005BC18 1000BF8F */  lw         $ra, 0x10($sp)
/* 4C41C 8005BC1C 00000000 */  nop
/* 4C420 8005BC20 0800E003 */  jr         $ra
/* 4C424 8005BC24 1800BD27 */   addiu     $sp, $sp, 0x18
.size AttemptToFade, . - AttemptToFade
