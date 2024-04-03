.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TextDrawText
/* 48A10 80058210 7410858F */  lw         $a1, %gp_rel(gTextCurrentLetter)($gp)
/* 48A14 80058214 0980063C */  lui        $a2, %hi(ot_ndx)
/* 48A18 80058218 4853C68C */  lw         $a2, %lo(ot_ndx)($a2)
/* 48A1C 8005821C 6C10848F */  lw         $a0, %gp_rel(gTextNumStrings)($gp)
/* 48A20 80058220 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 48A24 80058224 40100500 */  sll        $v0, $a1, 1
/* 48A28 80058228 21104600 */  addu       $v0, $v0, $a2
/* 48A2C 8005822C 80180200 */  sll        $v1, $v0, 2
/* 48A30 80058230 21186200 */  addu       $v1, $v1, $v0
/* 48A34 80058234 80180300 */  sll        $v1, $v1, 2
/* 48A38 80058238 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 48A3C 8005823C 7810828F */  lw         $v0, %gp_rel(gpTextLetterSprites)($gp)
/* 48A40 80058240 2148A000 */  addu       $t1, $a1, $zero
/* 48A44 80058244 21404300 */  addu       $t0, $v0, $v1
/* 48A48 80058248 40100400 */  sll        $v0, $a0, 1
/* 48A4C 8005824C 21104600 */  addu       $v0, $v0, $a2
/* 48A50 80058250 8C10838F */  lw         $v1, %gp_rel(gpTextFontTPage)($gp)
/* 48A54 80058254 C0100200 */  sll        $v0, $v0, 3
/* 48A58 80058258 21386200 */  addu       $a3, $v1, $v0
/* 48A5C 8005825C 9010828F */  lw         $v0, %gp_rel(gpTextStringLetterIndex)($gp)
/* 48A60 80058260 80180400 */  sll        $v1, $a0, 2
/* 48A64 80058264 21106200 */  addu       $v0, $v1, $v0
/* 48A68 80058268 00004A8C */  lw         $t2, 0x0($v0)
/* 48A6C 8005826C 4C002005 */  bltz       $t1, .L800583A0
/* 48A70 80058270 21306000 */   addu      $a2, $v1, $zero
.L80058274:
/* 48A74 80058274 9410828F */  lw         $v0, %gp_rel(gpTextStringOTZ)($gp)
/* 48A78 80058278 00000000 */  nop
/* 48A7C 8005827C 2110C200 */  addu       $v0, $a2, $v0
/* 48A80 80058280 0000438C */  lw         $v1, 0x0($v0)
/* 48A84 80058284 9810848F */  lw         $a0, %gp_rel(gpTextBasePriority)($gp)
/* 48A88 80058288 C0180300 */  sll        $v1, $v1, 3
/* 48A8C 8005828C 21186400 */  addu       $v1, $v1, $a0
/* 48A90 80058290 0000628C */  lw         $v0, 0x0($v1)
/* 48A94 80058294 00000000 */  nop
/* 48A98 80058298 10004010 */  beqz       $v0, .L800582DC
/* 48A9C 8005829C 00000000 */   nop
/* 48AA0 800582A0 02006588 */  lwl        $a1, 0x2($v1)
/* 48AA4 800582A4 9410828F */  lw         $v0, %gp_rel(gpTextStringOTZ)($gp)
/* 48AA8 800582A8 00000000 */  nop
/* 48AAC 800582AC 2110C200 */  addu       $v0, $a2, $v0
/* 48AB0 800582B0 0000438C */  lw         $v1, 0x0($v0)
/* 48AB4 800582B4 9810848F */  lw         $a0, %gp_rel(gpTextBasePriority)($gp)
/* 48AB8 800582B8 C0180300 */  sll        $v1, $v1, 3
/* 48ABC 800582BC 21186400 */  addu       $v1, $v1, $a0
/* 48AC0 800582C0 0000628C */  lw         $v0, 0x0($v1)
/* 48AC4 800582C4 00000000 */  nop
/* 48AC8 800582C8 00120200 */  sll        $v0, $v0, 8
/* 48ACC 800582CC 020002A9 */  swl        $v0, 0x2($t0)
/* 48AD0 800582D0 020005A9 */  swl        $a1, 0x2($t0)
/* 48AD4 800582D4 B8600108 */  j          .L800582E0
/* 48AD8 800582D8 00000000 */   nop
.L800582DC:
/* 48ADC 800582DC 040068AC */  sw         $t0, 0x4($v1)
.L800582E0:
/* 48AE0 800582E0 9410838F */  lw         $v1, %gp_rel(gpTextStringOTZ)($gp)
/* 48AE4 800582E4 00000000 */  nop
/* 48AE8 800582E8 2120C300 */  addu       $a0, $a2, $v1
/* 48AEC 800582EC 0000828C */  lw         $v0, 0x0($a0)
/* 48AF0 800582F0 9810838F */  lw         $v1, %gp_rel(gpTextBasePriority)($gp)
/* 48AF4 800582F4 C0100200 */  sll        $v0, $v0, 3
/* 48AF8 800582F8 21104300 */  addu       $v0, $v0, $v1
/* 48AFC 800582FC 25004915 */  bne        $t2, $t1, .L80058394
/* 48B00 80058300 000048AC */   sw        $t0, 0x0($v0)
/* 48B04 80058304 0000828C */  lw         $v0, 0x0($a0)
/* 48B08 80058308 00000000 */  nop
/* 48B0C 8005830C C0100200 */  sll        $v0, $v0, 3
/* 48B10 80058310 21104300 */  addu       $v0, $v0, $v1
/* 48B14 80058314 0000438C */  lw         $v1, 0x0($v0)
/* 48B18 80058318 00000000 */  nop
/* 48B1C 8005831C 10006010 */  beqz       $v1, .L80058360
/* 48B20 80058320 00000000 */   nop
/* 48B24 80058324 02004588 */  lwl        $a1, 0x2($v0)
/* 48B28 80058328 9410828F */  lw         $v0, %gp_rel(gpTextStringOTZ)($gp)
/* 48B2C 8005832C 00000000 */  nop
/* 48B30 80058330 2110C200 */  addu       $v0, $a2, $v0
/* 48B34 80058334 0000438C */  lw         $v1, 0x0($v0)
/* 48B38 80058338 9810848F */  lw         $a0, %gp_rel(gpTextBasePriority)($gp)
/* 48B3C 8005833C C0180300 */  sll        $v1, $v1, 3
/* 48B40 80058340 21186400 */  addu       $v1, $v1, $a0
/* 48B44 80058344 0000628C */  lw         $v0, 0x0($v1)
/* 48B48 80058348 00000000 */  nop
/* 48B4C 8005834C 00120200 */  sll        $v0, $v0, 8
/* 48B50 80058350 0200E2A8 */  swl        $v0, 0x2($a3)
/* 48B54 80058354 0200E5A8 */  swl        $a1, 0x2($a3)
/* 48B58 80058358 D9600108 */  j          .L80058364
/* 48B5C 8005835C 00000000 */   nop
.L80058360:
/* 48B60 80058360 040047AC */  sw         $a3, 0x4($v0)
.L80058364:
/* 48B64 80058364 9410838F */  lw         $v1, %gp_rel(gpTextStringOTZ)($gp)
/* 48B68 80058368 9810848F */  lw         $a0, %gp_rel(gpTextBasePriority)($gp)
/* 48B6C 8005836C 2118C300 */  addu       $v1, $a2, $v1
/* 48B70 80058370 FCFFC624 */  addiu      $a2, $a2, -0x4
/* 48B74 80058374 0000628C */  lw         $v0, 0x0($v1)
/* 48B78 80058378 9010838F */  lw         $v1, %gp_rel(gpTextStringLetterIndex)($gp)
/* 48B7C 8005837C C0100200 */  sll        $v0, $v0, 3
/* 48B80 80058380 21104400 */  addu       $v0, $v0, $a0
/* 48B84 80058384 000047AC */  sw         $a3, 0x0($v0)
/* 48B88 80058388 F0FFE724 */  addiu      $a3, $a3, -0x10
/* 48B8C 8005838C 2118C300 */  addu       $v1, $a2, $v1
/* 48B90 80058390 00006A8C */  lw         $t2, 0x0($v1)
.L80058394:
/* 48B94 80058394 FFFF2925 */  addiu      $t1, $t1, -0x1
/* 48B98 80058398 B6FF2105 */  bgez       $t1, .L80058274
/* 48B9C 8005839C D8FF0825 */   addiu     $t0, $t0, -0x28
.L800583A0:
/* 48BA0 800583A0 0800E003 */  jr         $ra
/* 48BA4 800583A4 00000000 */   nop
.size TextDrawText, . - TextDrawText
