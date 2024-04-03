.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TopLevelService
/* 16970 80026170 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 16974 80026174 2800B0AF */  sw         $s0, 0x28($sp)
/* 16978 80026178 0A80103C */  lui        $s0, %hi(gDemoTimer)
/* 1697C 8002617C 788B0426 */  addiu      $a0, $s0, %lo(gDemoTimer)
/* 16980 80026180 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 16984 80026184 9407918F */  lw         $s1, %gp_rel(MENUSTARTYPOS)($gp)
/* 16988 80026188 23000524 */  addiu      $a1, $zero, 0x23
/* 1698C 8002618C 3000B2AF */  sw         $s2, 0x30($sp)
/* 16990 80026190 4807928F */  lw         $s2, %gp_rel(MainMenuSelection)($gp)
/* 16994 80026194 21300000 */  addu       $a2, $zero, $zero
/* 16998 80026198 4400BFAF */  sw         $ra, 0x44($sp)
/* 1699C 8002619C 4000B6AF */  sw         $s6, 0x40($sp)
/* 169A0 800261A0 3C00B5AF */  sw         $s5, 0x3C($sp)
/* 169A4 800261A4 3800B4AF */  sw         $s4, 0x38($sp)
/* 169A8 800261A8 0A6F010C */  jal        TimerInit
/* 169AC 800261AC 3400B3AF */   sw        $s3, 0x34($sp)
/* 169B0 800261B0 8C0780AF */  sw         $zero, %gp_rel(gmemcardload)($gp)
/* 169B4 800261B4 EBD6010C */  jal        VSync
/* 169B8 800261B8 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 169BC 800261BC 0980013C */  lui        $at, %hi(Vsync_since_last_sound)
/* 169C0 800261C0 685622AC */  sw         $v0, %lo(Vsync_since_last_sound)($at)
/* 169C4 800261C4 2E7C010C */  jal        CheckXAService
/* 169C8 800261C8 21A00002 */   addu      $s4, $s0, $zero
/* 169CC 800261CC 0980013C */  lui        $at, %hi(AttractModeOn)
/* 169D0 800261D0 605620AC */  sw         $zero, %lo(AttractModeOn)($at)
/* 169D4 800261D4 1C004016 */  bnez       $s2, .L80026248
/* 169D8 800261D8 DF000424 */   addiu     $a0, $zero, 0xDF
/* 169DC 800261DC 7C078493 */  lbu        $a0, %gp_rel(HLR)($gp)
/* 169E0 800261E0 7D078593 */  lbu        $a1, %gp_rel(HLG)($gp)
/* 169E4 800261E4 7E078693 */  lbu        $a2, %gp_rel(HLB)($gp)
/* 169E8 800261E8 5363010C */  jal        TextSetTextColor
/* 169EC 800261EC 00000000 */   nop
/* 169F0 800261F0 0980033C */  lui        $v1, %hi(Trg0)
/* 169F4 800261F4 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 169F8 800261F8 00000000 */  nop
/* 169FC 800261FC 00406330 */  andi       $v1, $v1, 0x4000
/* 16A00 80026200 14006010 */  beqz       $v1, .L80026254
/* 16A04 80026204 19000424 */   addiu     $a0, $zero, 0x19
/* 16A08 80026208 21280000 */  addu       $a1, $zero, $zero
/* 16A0C 8002620C 6F4A010C */  jal        pxm_sendevent
/* 16A10 80026210 21300000 */   addu      $a2, $zero, $zero
/* 16A14 80026214 0880033C */  lui        $v1, %hi(WorldList)
/* 16A18 80026218 6C64648C */  lw         $a0, %lo(WorldList)($v1)
/* 16A1C 8002621C 01000224 */  addiu      $v0, $zero, 0x1
/* 16A20 80026220 880780AF */  sw         $zero, %gp_rel(gmenulevel)($gp)
/* 16A24 80026224 840780AF */  sw         $zero, %gp_rel(gmenuworld)($gp)
/* 16A28 80026228 0980013C */  lui        $at, %hi(gLevel)
/* 16A2C 8002622C 345620AC */  sw         $zero, %lo(gLevel)($at)
/* 16A30 80026230 440782AF */  sw         $v0, %gp_rel(MainMenuState)($gp)
/* 16A34 80026234 480780AF */  sw         $zero, %gp_rel(MainMenuSelection)($gp)
/* 16A38 80026238 0980013C */  lui        $at, %hi(gWorld)
/* 16A3C 8002623C 3C5624AC */  sw         $a0, %lo(gWorld)($at)
/* 16A40 80026240 96980008 */  j          .L80026258
/* 16A44 80026244 A0000524 */   addiu     $a1, $zero, 0xA0
.L80026248:
/* 16A48 80026248 DF000524 */  addiu      $a1, $zero, 0xDF
/* 16A4C 8002624C 5363010C */  jal        TextSetTextColor
/* 16A50 80026250 DF000624 */   addiu     $a2, $zero, 0xDF
.L80026254:
/* 16A54 80026254 A0000524 */  addiu      $a1, $zero, 0xA0
.L80026258:
/* 16A58 80026258 21302002 */  addu       $a2, $s1, $zero
/* 16A5C 8002625C 01000724 */  addiu      $a3, $zero, 0x1
/* 16A60 80026260 0880023C */  lui        $v0, %hi(MainMenu_NewMission)
/* 16A64 80026264 0980033C */  lui        $v1, %hi(gLanguage)
/* 16A68 80026268 7C56638C */  lw         $v1, %lo(gLanguage)($v1)
/* 16A6C 8002626C 74634224 */  addiu      $v0, $v0, %lo(MainMenu_NewMission)
/* 16A70 80026270 80180300 */  sll        $v1, $v1, 2
/* 16A74 80026274 21186200 */  addu       $v1, $v1, $v0
/* 16A78 80026278 0000648C */  lw         $a0, 0x0($v1)
/* 16A7C 8002627C 7163010C */  jal        TextAddStringC
/* 16A80 80026280 10003126 */   addiu     $s1, $s1, 0x10
/* 16A84 80026284 01000324 */  addiu      $v1, $zero, 0x1
/* 16A88 80026288 3B004316 */  bne        $s2, $v1, .L80026378
/* 16A8C 8002628C DF000424 */   addiu     $a0, $zero, 0xDF
/* 16A90 80026290 0880133C */  lui        $s3, %hi(MainMenu_LoadMission)
/* 16A94 80026294 7C078493 */  lbu        $a0, %gp_rel(HLR)($gp)
/* 16A98 80026298 7D078593 */  lbu        $a1, %gp_rel(HLG)($gp)
/* 16A9C 8002629C 7E078693 */  lbu        $a2, %gp_rel(HLB)($gp)
/* 16AA0 800262A0 5363010C */  jal        TextSetTextColor
/* 16AA4 800262A4 0880153C */   lui       $s5, (0x80080000 >> 16)
/* 16AA8 800262A8 0980033C */  lui        $v1, %hi(Trg0)
/* 16AAC 800262AC 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 16AB0 800262B0 48079627 */  addiu      $s6, $gp, %gp_rel(MainMenuSelection)
/* 16AB4 800262B4 00406330 */  andi       $v1, $v1, 0x4000
/* 16AB8 800262B8 35006010 */  beqz       $v1, .L80026390
/* 16ABC 800262BC 19000424 */   addiu     $a0, $zero, 0x19
/* 16AC0 800262C0 21280000 */  addu       $a1, $zero, $zero
/* 16AC4 800262C4 6F4A010C */  jal        pxm_sendevent
/* 16AC8 800262C8 21300000 */   addu      $a2, $zero, $zero
/* 16ACC 800262CC 03001024 */  addiu      $s0, $zero, 0x3
.L800262D0:
/* 16AD0 800262D0 EBD6010C */  jal        VSync
/* 16AD4 800262D4 21200000 */   addu      $a0, $zero, $zero
/* 16AD8 800262D8 5B4C010C */  jal        pxm_frameh
/* 16ADC 800262DC FFFF1026 */   addiu     $s0, $s0, -0x1
/* 16AE0 800262E0 FBFF0106 */  bgez       $s0, .L800262D0
/* 16AE4 800262E4 00000000 */   nop
/* 16AE8 800262E8 6F5B010C */  jal        StopRedbook
/* 16AEC 800262EC 00000000 */   nop
/* 16AF0 800262F0 21200000 */  addu       $a0, $zero, $zero
/* 16AF4 800262F4 82A2000C */  jal        PrepMemcard
/* 16AF8 800262F8 21280000 */   addu      $a1, $zero, $zero
/* 16AFC 800262FC 08004010 */  beqz       $v0, .L80026320
/* 16B00 80026300 01000224 */   addiu     $v0, $zero, 0x1
/* 16B04 80026304 440782AF */  sw         $v0, %gp_rel(MainMenuState)($gp)
/* 16B08 80026308 480780AF */  sw         $zero, %gp_rel(MainMenuSelection)($gp)
/* 16B0C 8002630C 8C0782AF */  sw         $v0, %gp_rel(gmemcardload)($gp)
/* 16B10 80026310 0980013C */  lui        $at, %hi(AttractModeOn)
/* 16B14 80026314 605620AC */  sw         $zero, %lo(AttractModeOn)($at)
/* 16B18 80026318 E5980008 */  j          .L80026394
/* 16B1C 8002631C A0000524 */   addiu     $a1, $zero, 0xA0
.L80026320:
/* 16B20 80026320 788B8426 */  addiu      $a0, $s4, %lo(gDemoTimer)
/* 16B24 80026324 23000524 */  addiu      $a1, $zero, 0x23
/* 16B28 80026328 0A6F010C */  jal        TimerInit
/* 16B2C 8002632C 21300000 */   addu      $a2, $zero, $zero
/* 16B30 80026330 0980013C */  lui        $at, %hi(AttractModeOn)
/* 16B34 80026334 605620AC */  sw         $zero, %lo(AttractModeOn)($at)
/* 16B38 80026338 675B010C */  jal        BeginRedbook
/* 16B3C 8002633C 05000424 */   addiu     $a0, $zero, 0x5
/* 16B40 80026340 EBD6010C */  jal        VSync
/* 16B44 80026344 21200000 */   addu      $a0, $zero, $zero
/* 16B48 80026348 0980043C */  lui        $a0, %hi(cdb)
/* 16B4C 8002634C 4C59848C */  lw         $a0, %lo(cdb)($a0)
/* 16B50 80026350 42DD010C */  jal        PutDispEnv
/* 16B54 80026354 5C008424 */   addiu     $a0, $a0, 0x5C
/* 16B58 80026358 0980043C */  lui        $a0, %hi(cdb)
/* 16B5C 8002635C 4C59848C */  lw         $a0, %lo(cdb)($a0)
/* 16B60 80026360 CFDC010C */  jal        PutDrawEnv
/* 16B64 80026364 00000000 */   nop
/* 16B68 80026368 10DB010C */  jal        SetDispMask
/* 16B6C 8002636C 01000424 */   addiu     $a0, $zero, 0x1
/* 16B70 80026370 E5980008 */  j          .L80026394
/* 16B74 80026374 A0000524 */   addiu     $a1, $zero, 0xA0
.L80026378:
/* 16B78 80026378 DF000524 */  addiu      $a1, $zero, 0xDF
/* 16B7C 8002637C 5363010C */  jal        TextSetTextColor
/* 16B80 80026380 DF000624 */   addiu     $a2, $zero, 0xDF
/* 16B84 80026384 0880133C */  lui        $s3, %hi(MainMenu_LoadMission)
/* 16B88 80026388 0880153C */  lui        $s5, %hi(MainMenu_Option)
/* 16B8C 8002638C 48079627 */  addiu      $s6, $gp, %gp_rel(MainMenuSelection)
.L80026390:
/* 16B90 80026390 A0000524 */  addiu      $a1, $zero, 0xA0
.L80026394:
/* 16B94 80026394 21302002 */  addu       $a2, $s1, $zero
/* 16B98 80026398 01000724 */  addiu      $a3, $zero, 0x1
/* 16B9C 8002639C 0980023C */  lui        $v0, %hi(gLanguage)
/* 16BA0 800263A0 7C56428C */  lw         $v0, %lo(gLanguage)($v0)
/* 16BA4 800263A4 88636326 */  addiu      $v1, $s3, %lo(MainMenu_LoadMission)
/* 16BA8 800263A8 80100200 */  sll        $v0, $v0, 2
/* 16BAC 800263AC 21104300 */  addu       $v0, $v0, $v1
/* 16BB0 800263B0 0000448C */  lw         $a0, 0x0($v0)
/* 16BB4 800263B4 7163010C */  jal        TextAddStringC
/* 16BB8 800263B8 10003126 */   addiu     $s1, $s1, 0x10
/* 16BBC 800263BC 02000324 */  addiu      $v1, $zero, 0x2
/* 16BC0 800263C0 27004316 */  bne        $s2, $v1, .L80026460
/* 16BC4 800263C4 DF000424 */   addiu     $a0, $zero, 0xDF
/* 16BC8 800263C8 7C078493 */  lbu        $a0, %gp_rel(HLR)($gp)
/* 16BCC 800263CC 7D078593 */  lbu        $a1, %gp_rel(HLG)($gp)
/* 16BD0 800263D0 7E078693 */  lbu        $a2, %gp_rel(HLB)($gp)
/* 16BD4 800263D4 5363010C */  jal        TextSetTextColor
/* 16BD8 800263D8 00000000 */   nop
/* 16BDC 800263DC 0980033C */  lui        $v1, %hi(Trg0)
/* 16BE0 800263E0 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 16BE4 800263E4 00000000 */  nop
/* 16BE8 800263E8 00406330 */  andi       $v1, $v1, 0x4000
/* 16BEC 800263EC 1F006010 */  beqz       $v1, .L8002646C
/* 16BF0 800263F0 19000424 */   addiu     $a0, $zero, 0x19
/* 16BF4 800263F4 21280000 */  addu       $a1, $zero, $zero
/* 16BF8 800263F8 6F4A010C */  jal        pxm_sendevent
/* 16BFC 800263FC 21300000 */   addu      $a2, $zero, $zero
/* 16C00 80026400 2000A427 */  addiu      $a0, $sp, 0x20
/* 16C04 80026404 A013908F */  lw         $s0, %gp_rel(Menu01)($gp)
/* 16C08 80026408 C0020224 */  addiu      $v0, $zero, 0x2C0
/* 16C0C 8002640C 2000A2A7 */  sh         $v0, 0x20($sp)
/* 16C10 80026410 40010224 */  addiu      $v0, $zero, 0x140
/* 16C14 80026414 2400A2A7 */  sh         $v0, 0x24($sp)
/* 16C18 80026418 F0000224 */  addiu      $v0, $zero, 0xF0
/* 16C1C 8002641C 2200A0A7 */  sh         $zero, 0x22($sp)
/* 16C20 80026420 2600A2A7 */  sh         $v0, 0x26($sp)
/* 16C24 80026424 E1DB010C */  jal        LoadImage
/* 16C28 80026428 08020526 */   addiu     $a1, $s0, 0x208
/* 16C2C 8002642C 36DB010C */  jal        DrawSync
/* 16C30 80026430 21200000 */   addu      $a0, $zero, $zero
/* 16C34 80026434 03000016 */  bnez       $s0, .L80026444
/* 16C38 80026438 00000000 */   nop
/* 16C3C 8002643C 1C40010C */  jal        new_free
/* 16C40 80026440 21200000 */   addu      $a0, $zero, $zero
.L80026444:
/* 16C44 80026444 EBD6010C */  jal        VSync
/* 16C48 80026448 21200000 */   addu      $a0, $zero, $zero
/* 16C4C 8002644C 03000324 */  addiu      $v1, $zero, 0x3
/* 16C50 80026450 440783AF */  sw         $v1, %gp_rel(MainMenuState)($gp)
/* 16C54 80026454 480780AF */  sw         $zero, %gp_rel(MainMenuSelection)($gp)
/* 16C58 80026458 1C990008 */  j          .L80026470
/* 16C5C 8002645C A0000524 */   addiu     $a1, $zero, 0xA0
.L80026460:
/* 16C60 80026460 DF000524 */  addiu      $a1, $zero, 0xDF
/* 16C64 80026464 5363010C */  jal        TextSetTextColor
/* 16C68 80026468 DF000624 */   addiu     $a2, $zero, 0xDF
.L8002646C:
/* 16C6C 8002646C A0000524 */  addiu      $a1, $zero, 0xA0
.L80026470:
/* 16C70 80026470 21302002 */  addu       $a2, $s1, $zero
/* 16C74 80026474 0980023C */  lui        $v0, %hi(gLanguage)
/* 16C78 80026478 7C56428C */  lw         $v0, %lo(gLanguage)($v0)
/* 16C7C 8002647C 9C63A326 */  addiu      $v1, $s5, %lo(MainMenu_Option)
/* 16C80 80026480 80100200 */  sll        $v0, $v0, 2
/* 16C84 80026484 21104300 */  addu       $v0, $v0, $v1
/* 16C88 80026488 0000448C */  lw         $a0, 0x0($v0)
/* 16C8C 8002648C 7163010C */  jal        TextAddStringC
/* 16C90 80026490 01000724 */   addiu     $a3, $zero, 0x1
/* 16C94 80026494 21200000 */  addu       $a0, $zero, $zero
/* 16C98 80026498 03000524 */  addiu      $a1, $zero, 0x3
/* 16C9C 8002649C 10000624 */  addiu      $a2, $zero, 0x10
/* 16CA0 800264A0 40000724 */  addiu      $a3, $zero, 0x40
/* 16CA4 800264A4 0980033C */  lui        $v1, %hi(Trg0)
/* 16CA8 800264A8 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 16CAC 800264AC 01000224 */  addiu      $v0, $zero, 0x1
/* 16CB0 800264B0 1400A2AF */  sw         $v0, 0x14($sp)
/* 16CB4 800264B4 1800B6AF */  sw         $s6, 0x18($sp)
/* 16CB8 800264B8 4649010C */  jal        CheckOption
/* 16CBC 800264BC 1000A3AF */   sw        $v1, 0x10($sp)
/* 16CC0 800264C0 04004010 */  beqz       $v0, .L800264D4
/* 16CC4 800264C4 16000424 */   addiu     $a0, $zero, 0x16
/* 16CC8 800264C8 21280000 */  addu       $a1, $zero, $zero
/* 16CCC 800264CC 6F4A010C */  jal        pxm_sendevent
/* 16CD0 800264D0 21300000 */   addu      $a2, $zero, $zero
.L800264D4:
/* 16CD4 800264D4 4400BF8F */  lw         $ra, 0x44($sp)
/* 16CD8 800264D8 4000B68F */  lw         $s6, 0x40($sp)
/* 16CDC 800264DC 3C00B58F */  lw         $s5, 0x3C($sp)
/* 16CE0 800264E0 3800B48F */  lw         $s4, 0x38($sp)
/* 16CE4 800264E4 3400B38F */  lw         $s3, 0x34($sp)
/* 16CE8 800264E8 3000B28F */  lw         $s2, 0x30($sp)
/* 16CEC 800264EC 2C00B18F */  lw         $s1, 0x2C($sp)
/* 16CF0 800264F0 2800B08F */  lw         $s0, 0x28($sp)
/* 16CF4 800264F4 0800E003 */  jr         $ra
/* 16CF8 800264F8 4800BD27 */   addiu     $sp, $sp, 0x48
.size TopLevelService, . - TopLevelService
