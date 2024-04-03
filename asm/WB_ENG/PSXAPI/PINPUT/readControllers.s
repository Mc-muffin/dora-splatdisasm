.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel readControllers
/* 49A3C 8005923C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 49A40 80059240 C8168427 */  addiu      $a0, $gp, %gp_rel(Pad0)
/* 49A44 80059244 C8168297 */  lhu        $v0, %gp_rel(Pad0)($gp)
/* 49A48 80059248 CA168397 */  lhu        $v1, %gp_rel(Pad1)($gp)
/* 49A4C 8005924C CA168527 */  addiu      $a1, $gp, %gp_rel(Pad1)
/* 49A50 80059250 1000BFAF */  sw         $ra, 0x10($sp)
/* 49A54 80059254 D41682A7 */  sh         $v0, %gp_rel(LPad0)($gp)
/* 49A58 80059258 D61683A7 */  sh         $v1, %gp_rel(LPad1)($gp)
/* 49A5C 8005925C CA64010C */  jal        handlePad
/* 49A60 80059260 00000000 */   nop
/* 49A64 80059264 D866010C */  jal        CheckAnaloguePad
/* 49A68 80059268 00000000 */   nop
/* 49A6C 8005926C B410838F */  lw         $v1, %gp_rel(AnalogueFlag)($gp)
/* 49A70 80059270 00000000 */  nop
/* 49A74 80059274 0B006010 */  beqz       $v1, .L800592A4
/* 49A78 80059278 00000000 */   nop
/* 49A7C 8005927C C8168297 */  lhu        $v0, %gp_rel(Pad0)($gp)
/* 49A80 80059280 00000000 */  nop
/* 49A84 80059284 0FFF4230 */  andi       $v0, $v0, 0xFF0F
/* 49A88 80059288 C81682A7 */  sh         $v0, %gp_rel(Pad0)($gp)
/* 49A8C 8005928C B266010C */  jal        GetAnalog
/* 49A90 80059290 00000000 */   nop
/* 49A94 80059294 C8168397 */  lhu        $v1, %gp_rel(Pad0)($gp)
/* 49A98 80059298 00000000 */  nop
/* 49A9C 8005929C 25186200 */  or         $v1, $v1, $v0
/* 49AA0 800592A0 C81683A7 */  sh         $v1, %gp_rel(Pad0)($gp)
.L800592A4:
/* 49AA4 800592A4 C8168297 */  lhu        $v0, %gp_rel(Pad0)($gp)
/* 49AA8 800592A8 D4168497 */  lhu        $a0, %gp_rel(LPad0)($gp)
/* 49AAC 800592AC CA168397 */  lhu        $v1, %gp_rel(Pad1)($gp)
/* 49AB0 800592B0 D6168597 */  lhu        $a1, %gp_rel(LPad1)($gp)
/* 49AB4 800592B4 26384400 */  xor        $a3, $v0, $a0
/* 49AB8 800592B8 24104700 */  and        $v0, $v0, $a3
/* 49ABC 800592BC 26306500 */  xor        $a2, $v1, $a1
/* 49AC0 800592C0 24186600 */  and        $v1, $v1, $a2
/* 49AC4 800592C4 CE1683A7 */  sh         $v1, %gp_rel(Trg1)($gp)
/* 49AC8 800592C8 C416838F */  lw         $v1, %gp_rel(VCounter)($gp)
/* 49ACC 800592CC 24208700 */  and        $a0, $a0, $a3
/* 49AD0 800592D0 B41684A7 */  sh         $a0, %gp_rel(TrgRel0)($gp)
/* 49AD4 800592D4 D816848F */  lw         $a0, %gp_rel(oldVC)($gp)
/* 49AD8 800592D8 2428A600 */  and        $a1, $a1, $a2
/* 49ADC 800592DC CC1682A7 */  sh         $v0, %gp_rel(Trg0)($gp)
/* 49AE0 800592E0 B61685A7 */  sh         $a1, %gp_rel(TrgRel1)($gp)
/* 49AE4 800592E4 2B108300 */  sltu       $v0, $a0, $v1
/* 49AE8 800592E8 0A004010 */  beqz       $v0, .L80059314
/* 49AEC 800592EC 23106400 */   subu      $v0, $v1, $a0
/* 49AF0 800592F0 D81683AF */  sw         $v1, %gp_rel(oldVC)($gp)
/* 49AF4 800592F4 40180200 */  sll        $v1, $v0, 1
/* 49AF8 800592F8 21186200 */  addu       $v1, $v1, $v0
/* 49AFC 800592FC D016848F */  lw         $a0, %gp_rel(gGameTick)($gp)
/* 49B00 80059300 40180300 */  sll        $v1, $v1, 1
/* 49B04 80059304 21208300 */  addu       $a0, $a0, $v1
/* 49B08 80059308 D01684AF */  sw         $a0, %gp_rel(gGameTick)($gp)
/* 49B0C 8005930C C6640108 */  j          .L80059318
/* 49B10 80059310 00000000 */   nop
.L80059314:
/* 49B14 80059314 D81683AF */  sw         $v1, %gp_rel(oldVC)($gp)
.L80059318:
/* 49B18 80059318 1000BF8F */  lw         $ra, 0x10($sp)
/* 49B1C 8005931C 00000000 */  nop
/* 49B20 80059320 0800E003 */  jr         $ra
/* 49B24 80059324 1800BD27 */   addiu     $sp, $sp, 0x18
.size readControllers, . - readControllers
