.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckAnaloguePad
/* 4A360 80059B60 BC168527 */  addiu      $a1, $gp, %gp_rel(gInputAxisValues)
/* 4A364 80059B64 0300A280 */  lb         $v0, 0x3($a1)
/* 4A368 80059B68 0200A380 */  lb         $v1, 0x2($a1)
/* 4A36C 80059B6C 02004104 */  bgez       $v0, .L80059B78
/* 4A370 80059B70 21204000 */   addu      $a0, $v0, $zero
/* 4A374 80059B74 23200400 */  negu       $a0, $a0
.L80059B78:
/* 4A378 80059B78 02006104 */  bgez       $v1, .L80059B84
/* 4A37C 80059B7C 00000000 */   nop
/* 4A380 80059B80 23180300 */  negu       $v1, $v1
.L80059B84:
/* 4A384 80059B84 2A106400 */  slt        $v0, $v1, $a0
/* 4A388 80059B88 03004010 */  beqz       $v0, .L80059B98
/* 4A38C 80059B8C 43100300 */   sra       $v0, $v1, 1
/* 4A390 80059B90 E8660108 */  j          .L80059BA0
/* 4A394 80059B94 21188200 */   addu      $v1, $a0, $v0
.L80059B98:
/* 4A398 80059B98 43100400 */  sra        $v0, $a0, 1
/* 4A39C 80059B9C 21186200 */  addu       $v1, $v1, $v0
.L80059BA0:
/* 4A3A0 80059BA0 C410828F */  lw         $v0, %gp_rel(GIA_DEAD_SPACE)($gp)
/* 4A3A4 80059BA4 C01083AF */  sw         $v1, %gp_rel(AnalogueMagnitude)($gp)
/* 4A3A8 80059BA8 2A104300 */  slt        $v0, $v0, $v1
/* 4A3AC 80059BAC 08004010 */  beqz       $v0, .L80059BD0
/* 4A3B0 80059BB0 01000324 */   addiu     $v1, $zero, 0x1
/* 4A3B4 80059BB4 0200A280 */  lb         $v0, 0x2($a1)
/* 4A3B8 80059BB8 0300A480 */  lb         $a0, 0x3($a1)
/* 4A3BC 80059BBC B41083AF */  sw         $v1, %gp_rel(AnalogueFlag)($gp)
/* 4A3C0 80059BC0 B81082AF */  sw         $v0, %gp_rel(AnalogueLR)($gp)
/* 4A3C4 80059BC4 BC1084AF */  sw         $a0, %gp_rel(AnalogueUD)($gp)
/* 4A3C8 80059BC8 F5660108 */  j          .L80059BD4
/* 4A3CC 80059BCC 00000000 */   nop
.L80059BD0:
/* 4A3D0 80059BD0 B41080AF */  sw         $zero, %gp_rel(AnalogueFlag)($gp)
.L80059BD4:
/* 4A3D4 80059BD4 B410828F */  lw         $v0, %gp_rel(AnalogueFlag)($gp)
/* 4A3D8 80059BD8 0800E003 */  jr         $ra
/* 4A3DC 80059BDC 00000000 */   nop
.size CheckAnaloguePad, . - CheckAnaloguePad
