.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CinematicService
/* 3221C 80041A1C 700C828F */  lw         $v0, %gp_rel(BGImageFLagReady)($gp)
/* 32220 80041A20 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 32224 80041A24 1000B0AF */  sw         $s0, 0x10($sp)
/* 32228 80041A28 D414908F */  lw         $s0, %gp_rel(CurrentCinematic)($gp)
/* 3222C 80041A2C 26004010 */  beqz       $v0, .L80041AC8
/* 32230 80041A30 1400BFAF */   sw        $ra, 0x14($sp)
/* 32234 80041A34 CC6C010C */  jal        ScreenOff
/* 32238 80041A38 00000000 */   nop
/* 3223C 80041A3C B13A010C */  jal        PolyPoolAddr
/* 32240 80041A40 00000000 */   nop
/* 32244 80041A44 21200000 */  addu       $a0, $zero, $zero
/* 32248 80041A48 21284000 */  addu       $a1, $v0, $zero
/* 3224C 80041A4C EE6B010C */  jal        LoadGraphicIntoFrameBufferX
/* 32250 80041A50 21300000 */   addu      $a2, $zero, $zero
/* 32254 80041A54 D414848F */  lw         $a0, %gp_rel(CurrentCinematic)($gp)
/* 32258 80041A58 440C828F */  lw         $v0, %gp_rel(Cinematic_ParaOffset)($gp)
/* 3225C 80041A5C 01000324 */  addiu      $v1, $zero, 0x1
/* 32260 80041A60 380C83AF */  sw         $v1, %gp_rel(CineFileLoaded)($gp)
/* 32264 80041A64 1000858C */  lw         $a1, 0x10($a0)
/* 32268 80041A68 01004324 */  addiu      $v1, $v0, 0x1
/* 3226C 80041A6C 440C83AF */  sw         $v1, %gp_rel(Cinematic_ParaOffset)($gp)
/* 32270 80041A70 0500A010 */  beqz       $a1, .L80041A88
/* 32274 80041A74 00000000 */   nop
/* 32278 80041A78 0000828C */  lw         $v0, 0x0($a0)
/* 3227C 80041A7C 00000000 */  nop
/* 32280 80041A80 04004014 */  bnez       $v0, .L80041A94
/* 32284 80041A84 2110A300 */   addu      $v0, $a1, $v1
.L80041A88:
/* 32288 80041A88 400C80AF */  sw         $zero, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 3228C 80041A8C A9060108 */  j          .L80041AA4
/* 32290 80041A90 02000324 */   addiu     $v1, $zero, 0x2
.L80041A94:
/* 32294 80041A94 00004390 */  lbu        $v1, 0x0($v0)
/* 32298 80041A98 00000000 */  nop
/* 3229C 80041A9C 400C83AF */  sw         $v1, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 322A0 80041AA0 02000324 */  addiu      $v1, $zero, 0x2
.L80041AA4:
/* 322A4 80041AA4 01000224 */  addiu      $v0, $zero, 0x1
/* 322A8 80041AA8 500C80AF */  sw         $zero, %gp_rel(CinematicDisplayButton)($gp)
/* 322AC 80041AAC 5C0C83AF */  sw         $v1, %gp_rel(CinematicDisplayUpdateCount)($gp)
/* 322B0 80041AB0 0980013C */  lui        $at, %hi(DrawScreenGrabFlag)
/* 322B4 80041AB4 3C4922AC */  sw         $v0, %lo(DrawScreenGrabFlag)($at)
/* 322B8 80041AB8 6C0C82AF */  sw         $v0, %gp_rel(RequestSnapShot)($gp)
/* 322BC 80041ABC 600C82AF */  sw         $v0, %gp_rel(ScreenGrabFadeIn)($gp)
/* 322C0 80041AC0 680C80AF */  sw         $zero, %gp_rel(ScreenGrabFadeVal)($gp)
/* 322C4 80041AC4 700C80AF */  sw         $zero, %gp_rel(BGImageFLagReady)($gp)
.L80041AC8:
/* 322C8 80041AC8 600C828F */  lw         $v0, %gp_rel(ScreenGrabFadeIn)($gp)
/* 322CC 80041ACC 00000000 */  nop
/* 322D0 80041AD0 06004010 */  beqz       $v0, .L80041AEC
/* 322D4 80041AD4 00000000 */   nop
/* 322D8 80041AD8 680C828F */  lw         $v0, %gp_rel(ScreenGrabFadeVal)($gp)
/* 322DC 80041ADC 00000000 */  nop
/* 322E0 80041AE0 80004228 */  slti       $v0, $v0, 0x80
/* 322E4 80041AE4 8A004014 */  bnez       $v0, .L80041D10
/* 322E8 80041AE8 00000000 */   nop
.L80041AEC:
/* 322EC 80041AEC 3C0C828F */  lw         $v0, %gp_rel(Cinematic_Flag)($gp)
/* 322F0 80041AF0 00000000 */  nop
/* 322F4 80041AF4 86004010 */  beqz       $v0, .L80041D10
/* 322F8 80041AF8 00000000 */   nop
/* 322FC 80041AFC 380C828F */  lw         $v0, %gp_rel(CineFileLoaded)($gp)
/* 32300 80041B00 00000000 */  nop
/* 32304 80041B04 05004014 */  bnez       $v0, .L80041B1C
/* 32308 80041B08 00000000 */   nop
/* 3230C 80041B0C 0000028E */  lw         $v0, 0x0($s0)
/* 32310 80041B10 00000000 */  nop
/* 32314 80041B14 7E004010 */  beqz       $v0, .L80041D10
/* 32318 80041B18 00000000 */   nop
.L80041B1C:
/* 3231C 80041B1C 480C828F */  lw         $v0, %gp_rel(Cinematic_Timer)($gp)
/* 32320 80041B20 00000000 */  nop
/* 32324 80041B24 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 32328 80041B28 480C82AF */  sw         $v0, %gp_rel(Cinematic_Timer)($gp)
/* 3232C 80041B2C 64004228 */  slti       $v0, $v0, 0x64
/* 32330 80041B30 06004010 */  beqz       $v0, .L80041B4C
/* 32334 80041B34 00000000 */   nop
/* 32338 80041B38 0000028E */  lw         $v0, 0x0($s0)
/* 3233C 80041B3C 00000000 */  nop
/* 32340 80041B40 02004014 */  bnez       $v0, .L80041B4C
/* 32344 80041B44 01000224 */   addiu     $v0, $zero, 0x1
/* 32348 80041B48 500C82AF */  sw         $v0, %gp_rel(CinematicDisplayButton)($gp)
.L80041B4C:
/* 3234C 80041B4C 940C848F */  lw         $a0, %gp_rel(WaitForFadeOut)($gp)
/* 32350 80041B50 00000000 */  nop
/* 32354 80041B54 12008014 */  bnez       $a0, .L80041BA0
/* 32358 80041B58 00000000 */   nop
/* 3235C 80041B5C 480C838F */  lw         $v1, %gp_rel(Cinematic_Timer)($gp)
/* 32360 80041B60 00000000 */  nop
/* 32364 80041B64 64006228 */  slti       $v0, $v1, 0x64
/* 32368 80041B68 69004010 */  beqz       $v0, .L80041D10
/* 3236C 80041B6C 00000000 */   nop
/* 32370 80041B70 0980023C */  lui        $v0, %hi(Trg0)
/* 32374 80041B74 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 32378 80041B78 00000000 */  nop
/* 3237C 80041B7C 08404230 */  andi       $v0, $v0, 0x4008
/* 32380 80041B80 07004014 */  bnez       $v0, .L80041BA0
/* 32384 80041B84 00000000 */   nop
/* 32388 80041B88 61006104 */  bgez       $v1, .L80041D10
/* 3238C 80041B8C 00000000 */   nop
/* 32390 80041B90 0000028E */  lw         $v0, 0x0($s0)
/* 32394 80041B94 00000000 */  nop
/* 32398 80041B98 5D004010 */  beqz       $v0, .L80041D10
/* 3239C 80041B9C 00000000 */   nop
.L80041BA0:
/* 323A0 80041BA0 0980023C */  lui        $v0, %hi(Trg0)
/* 323A4 80041BA4 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 323A8 80041BA8 00000000 */  nop
/* 323AC 80041BAC 08004230 */  andi       $v0, $v0, 0x8
/* 323B0 80041BB0 06004010 */  beqz       $v0, .L80041BCC
/* 323B4 80041BB4 00000000 */   nop
/* 323B8 80041BB8 0400028E */  lw         $v0, 0x4($s0)
/* 323BC 80041BBC 00000000 */  nop
/* 323C0 80041BC0 440C82AF */  sw         $v0, %gp_rel(Cinematic_ParaOffset)($gp)
/* 323C4 80041BC4 0E070108 */  j          .L80041C38
/* 323C8 80041BC8 00000000 */   nop
.L80041BCC:
/* 323CC 80041BCC 08008014 */  bnez       $a0, .L80041BF0
/* 323D0 80041BD0 01000324 */   addiu     $v1, $zero, 0x1
/* 323D4 80041BD4 80000224 */  addiu      $v0, $zero, 0x80
/* 323D8 80041BD8 500C80AF */  sw         $zero, %gp_rel(CinematicDisplayButton)($gp)
/* 323DC 80041BDC 940C83AF */  sw         $v1, %gp_rel(WaitForFadeOut)($gp)
/* 323E0 80041BE0 640C83AF */  sw         $v1, %gp_rel(ScreenGrabFadeOut)($gp)
/* 323E4 80041BE4 680C82AF */  sw         $v0, %gp_rel(ScreenGrabFadeVal)($gp)
/* 323E8 80041BE8 44070108 */  j          .L80041D10
/* 323EC 80041BEC 00000000 */   nop
.L80041BF0:
/* 323F0 80041BF0 640C828F */  lw         $v0, %gp_rel(ScreenGrabFadeOut)($gp)
/* 323F4 80041BF4 00000000 */  nop
/* 323F8 80041BF8 05004010 */  beqz       $v0, .L80041C10
/* 323FC 80041BFC 00000000 */   nop
/* 32400 80041C00 680C828F */  lw         $v0, %gp_rel(ScreenGrabFadeVal)($gp)
/* 32404 80041C04 00000000 */  nop
/* 32408 80041C08 4100401C */  bgtz       $v0, .L80041D10
/* 3240C 80041C0C 00000000 */   nop
.L80041C10:
/* 32410 80041C10 600C828F */  lw         $v0, %gp_rel(ScreenGrabFadeIn)($gp)
/* 32414 80041C14 00000000 */  nop
/* 32418 80041C18 06004010 */  beqz       $v0, .L80041C34
/* 3241C 80041C1C 00000000 */   nop
/* 32420 80041C20 680C828F */  lw         $v0, %gp_rel(ScreenGrabFadeVal)($gp)
/* 32424 80041C24 00000000 */  nop
/* 32428 80041C28 80004228 */  slti       $v0, $v0, 0x80
/* 3242C 80041C2C 38004014 */  bnez       $v0, .L80041D10
/* 32430 80041C30 00000000 */   nop
.L80041C34:
/* 32434 80041C34 940C80AF */  sw         $zero, %gp_rel(WaitForFadeOut)($gp)
.L80041C38:
/* 32438 80041C38 4C0C828F */  lw         $v0, %gp_rel(Cinematic_TimerMax)($gp)
/* 3243C 80041C3C 440C838F */  lw         $v1, %gp_rel(Cinematic_ParaOffset)($gp)
/* 32440 80041C40 380C80AF */  sw         $zero, %gp_rel(CineFileLoaded)($gp)
/* 32444 80041C44 480C82AF */  sw         $v0, %gp_rel(Cinematic_Timer)($gp)
/* 32448 80041C48 0400028E */  lw         $v0, 0x4($s0)
/* 3244C 80041C4C 01006524 */  addiu      $a1, $v1, 0x1
/* 32450 80041C50 2A10A200 */  slt        $v0, $a1, $v0
/* 32454 80041C54 18004014 */  bnez       $v0, .L80041CB8
/* 32458 80041C58 00000000 */   nop
/* 3245C 80041C5C 0000028E */  lw         $v0, 0x0($s0)
/* 32460 80041C60 3C0C80AF */  sw         $zero, %gp_rel(Cinematic_Flag)($gp)
/* 32464 80041C64 0980013C */  lui        $at, %hi(FreezeGame)
/* 32468 80041C68 B44A20AC */  sw         $zero, %lo(FreezeGame)($at)
/* 3246C 80041C6C 28004014 */  bnez       $v0, .L80041D10
/* 32470 80041C70 00000000 */   nop
/* 32474 80041C74 D81480AF */  sw         $zero, %gp_rel(CinematicScreenPauseFlag)($gp)
/* 32478 80041C78 0980013C */  lui        $at, %hi(DrawScreenGrabFlag)
/* 3247C 80041C7C 3C4920AC */  sw         $zero, %lo(DrawScreenGrabFlag)($at)
/* 32480 80041C80 0E4F010C */  jal        pxm_init
/* 32484 80041C84 06000424 */   addiu     $a0, $zero, 0x6
/* 32488 80041C88 0D91000C */  jal        SelectWorldRedBook
/* 3248C 80041C8C 00000000 */   nop
/* 32490 80041C90 0980013C */  lui        $at, %hi(RedBookTrack)
/* 32494 80041C94 FC4922AC */  sw         $v0, %lo(RedBookTrack)($at)
/* 32498 80041C98 675B010C */  jal        BeginRedbook
/* 3249C 80041C9C 21204000 */   addu      $a0, $v0, $zero
/* 324A0 80041CA0 656D010C */  jal        GraphicsSetAutoClear
/* 324A4 80041CA4 01000424 */   addiu     $a0, $zero, 0x1
/* 324A8 80041CA8 CB91000C */  jal        AutoLevelCinematic
/* 324AC 80041CAC 00000000 */   nop
/* 324B0 80041CB0 44070108 */  j          .L80041D10
/* 324B4 80041CB4 00000000 */   nop
.L80041CB8:
/* 324B8 80041CB8 0000028E */  lw         $v0, 0x0($s0)
/* 324BC 80041CBC 00000000 */  nop
/* 324C0 80041CC0 12004014 */  bnez       $v0, .L80041D0C
/* 324C4 80041CC4 80100500 */   sll       $v0, $a1, 2
/* 324C8 80041CC8 D414838F */  lw         $v1, %gp_rel(CurrentCinematic)($gp)
/* 324CC 80041CCC 00000000 */  nop
/* 324D0 80041CD0 0C00648C */  lw         $a0, 0xC($v1)
/* 324D4 80041CD4 00000000 */  nop
/* 324D8 80041CD8 21104400 */  addu       $v0, $v0, $a0
/* 324DC 80041CDC 0000508C */  lw         $s0, 0x0($v0)
/* 324E0 80041CE0 700C80AF */  sw         $zero, %gp_rel(BGImageFLagReady)($gp)
/* 324E4 80041CE4 380C80AF */  sw         $zero, %gp_rel(CineFileLoaded)($gp)
/* 324E8 80041CE8 B13A010C */  jal        PolyPoolAddr
/* 324EC 80041CEC 00000000 */   nop
/* 324F0 80041CF0 21284000 */  addu       $a1, $v0, $zero
/* 324F4 80041CF4 0480063C */  lui        $a2, %hi(BGImageLoaded)
/* 324F8 80041CF8 0C22C624 */  addiu      $a2, $a2, %lo(BGImageLoaded)
/* 324FC 80041CFC 945C010C */  jal        LoadFileBackground
/* 32500 80041D00 21200002 */   addu      $a0, $s0, $zero
/* 32504 80041D04 44070108 */  j          .L80041D10
/* 32508 80041D08 00000000 */   nop
.L80041D0C:
/* 3250C 80041D0C 440C85AF */  sw         $a1, %gp_rel(Cinematic_ParaOffset)($gp)
.L80041D10:
/* 32510 80041D10 1400BF8F */  lw         $ra, 0x14($sp)
/* 32514 80041D14 1000B08F */  lw         $s0, 0x10($sp)
/* 32518 80041D18 0800E003 */  jr         $ra
/* 3251C 80041D1C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CinematicService, . - CinematicService
