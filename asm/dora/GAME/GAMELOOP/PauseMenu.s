.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PauseMenu
/* 23224 80032A24 60098297 */  lhu        $v0, %gp_rel(pby)($gp)
/* 23228 80032A28 5809838F */  lw         $v1, %gp_rel(pbw)($gp)
/* 2322C 80032A2C 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 23230 80032A30 6400BFAF */  sw         $ra, 0x64($sp)
/* 23234 80032A34 6000B2AF */  sw         $s2, 0x60($sp)
/* 23238 80032A38 5C00B1AF */  sw         $s1, 0x5C($sp)
/* 2323C 80032A3C 5800B0AF */  sw         $s0, 0x58($sp)
/* 23240 80032A40 08004224 */  addiu      $v0, $v0, 0x8
/* 23244 80032A44 00140200 */  sll        $v0, $v0, 16
/* 23248 80032A48 03840200 */  sra        $s0, $v0, 16
/* 2324C 80032A4C C2270300 */  srl        $a0, $v1, 31
/* 23250 80032A50 21186400 */  addu       $v1, $v1, $a0
/* 23254 80032A54 43180300 */  sra        $v1, $v1, 1
/* 23258 80032A58 A0000224 */  addiu      $v0, $zero, 0xA0
/* 2325C 80032A5C 117A000C */  jal        HUDOn
/* 23260 80032A60 23884300 */   subu      $s1, $v0, $v1
/* 23264 80032A64 4C09838F */  lw         $v1, %gp_rel(PauseMenuOption)($gp)
/* 23268 80032A68 0980123C */  lui        $s2, %hi(Trg0)
/* 2326C 80032A6C 30595296 */  lhu        $s2, %lo(Trg0)($s2)
/* 23270 80032A70 FDFF6224 */  addiu      $v0, $v1, -0x3
/* 23274 80032A74 0200422C */  sltiu      $v0, $v0, 0x2
/* 23278 80032A78 0B014014 */  bnez       $v0, .L80032EA8
/* 2327C 80032A7C 04000224 */   addiu     $v0, $zero, 0x4
/* 23280 80032A80 DF000424 */  addiu      $a0, $zero, 0xDF
/* 23284 80032A84 DF000524 */  addiu      $a1, $zero, 0xDF
/* 23288 80032A88 5363010C */  jal        TextSetTextColor
/* 2328C 80032A8C DF000624 */   addiu     $a2, $zero, 0xDF
/* 23290 80032A90 A0000524 */  addiu      $a1, $zero, 0xA0
/* 23294 80032A94 21300002 */  addu       $a2, $s0, $zero
/* 23298 80032A98 0880033C */  lui        $v1, %hi(Pause_Title)
/* 2329C 80032A9C 1814828F */  lw         $v0, %gp_rel(gLanguage)($gp)
/* 232A0 80032AA0 F8616324 */  addiu      $v1, $v1, %lo(Pause_Title)
/* 232A4 80032AA4 80100200 */  sll        $v0, $v0, 2
/* 232A8 80032AA8 21104300 */  addu       $v0, $v0, $v1
/* 232AC 80032AAC 0000448C */  lw         $a0, 0x0($v0)
/* 232B0 80032AB0 7163010C */  jal        TextAddStringC
/* 232B4 80032AB4 01000724 */   addiu     $a3, $zero, 0x1
/* 232B8 80032AB8 17000326 */  addiu      $v1, $s0, 0x17
/* 232BC 80032ABC 001C0300 */  sll        $v1, $v1, 16
/* 232C0 80032AC0 4C09828F */  lw         $v0, %gp_rel(PauseMenuOption)($gp)
/* 232C4 80032AC4 00000000 */  nop
/* 232C8 80032AC8 11004014 */  bnez       $v0, .L80032B10
/* 232CC 80032ACC 03840300 */   sra       $s0, $v1, 16
/* 232D0 80032AD0 DF000424 */  addiu      $a0, $zero, 0xDF
/* 232D4 80032AD4 DF000524 */  addiu      $a1, $zero, 0xDF
/* 232D8 80032AD8 5363010C */  jal        TextSetTextColor
/* 232DC 80032ADC 07000624 */   addiu     $a2, $zero, 0x7
/* 232E0 80032AE0 00404332 */  andi       $v1, $s2, 0x4000
/* 232E4 80032AE4 0E006010 */  beqz       $v1, .L80032B20
/* 232E8 80032AE8 01000524 */   addiu     $a1, $zero, 0x1
/* 232EC 80032AEC 19000424 */  addiu      $a0, $zero, 0x19
/* 232F0 80032AF0 6F4A010C */  jal        pxm_sendevent
/* 232F4 80032AF4 21300000 */   addu      $a2, $zero, $zero
/* 232F8 80032AF8 08000224 */  addiu      $v0, $zero, 0x8
/* 232FC 80032AFC 540980AF */  sw         $zero, %gp_rel(YNOption)($gp)
/* 23300 80032B00 0980013C */  lui        $at, %hi(Trg0)
/* 23304 80032B04 305922A4 */  sh         $v0, %lo(Trg0)($at)
/* 23308 80032B08 C8CA0008 */  j          .L80032B20
/* 2330C 80032B0C 21900000 */   addu      $s2, $zero, $zero
.L80032B10:
/* 23310 80032B10 DF000424 */  addiu      $a0, $zero, 0xDF
/* 23314 80032B14 DF000524 */  addiu      $a1, $zero, 0xDF
/* 23318 80032B18 5363010C */  jal        TextSetTextColor
/* 2331C 80032B1C DF000624 */   addiu     $a2, $zero, 0xDF
.L80032B20:
/* 23320 80032B20 0880033C */  lui        $v1, %hi(Pause_Resume)
/* 23324 80032B24 1814828F */  lw         $v0, %gp_rel(gLanguage)($gp)
/* 23328 80032B28 24636324 */  addiu      $v1, $v1, %lo(Pause_Resume)
/* 2332C 80032B2C 80100200 */  sll        $v0, $v0, 2
/* 23330 80032B30 21104300 */  addu       $v0, $v0, $v1
/* 23334 80032B34 0000458C */  lw         $a1, 0x0($v0)
/* 23338 80032B38 53C5010C */  jal        sprintf
/* 2333C 80032B3C 2000A427 */   addiu     $a0, $sp, 0x20
/* 23340 80032B40 2000A427 */  addiu      $a0, $sp, 0x20
/* 23344 80032B44 A0000524 */  addiu      $a1, $zero, 0xA0
/* 23348 80032B48 21300002 */  addu       $a2, $s0, $zero
/* 2334C 80032B4C 7163010C */  jal        TextAddStringC
/* 23350 80032B50 01000724 */   addiu     $a3, $zero, 0x1
/* 23354 80032B54 12000326 */  addiu      $v1, $s0, 0x12
/* 23358 80032B58 001C0300 */  sll        $v1, $v1, 16
/* 2335C 80032B5C 03840300 */  sra        $s0, $v1, 16
/* 23360 80032B60 0667010C */  jal        padpluggedin
/* 23364 80032B64 21200000 */   addu      $a0, $zero, $zero
/* 23368 80032B68 04004014 */  bnez       $v0, .L80032B7C
/* 2336C 80032B6C 0F000224 */   addiu     $v0, $zero, 0xF
/* 23370 80032B70 141482AF */  sw         $v0, %gp_rel(CheckForRumble)($gp)
/* 23374 80032B74 EECA0008 */  j          .L80032BB8
/* 23378 80032B78 00000000 */   nop
.L80032B7C:
/* 2337C 80032B7C 1414828F */  lw         $v0, %gp_rel(CheckForRumble)($gp)
/* 23380 80032B80 00000000 */  nop
/* 23384 80032B84 0C004010 */  beqz       $v0, .L80032BB8
/* 23388 80032B88 FFFF4224 */   addiu     $v0, $v0, -0x1
/* 2338C 80032B8C 141482AF */  sw         $v0, %gp_rel(CheckForRumble)($gp)
/* 23390 80032B90 09004014 */  bnez       $v0, .L80032BB8
/* 23394 80032B94 00000000 */   nop
/* 23398 80032B98 5266010C */  jal        Sys_CanPadVibrate
/* 2339C 80032B9C 21200000 */   addu      $a0, $zero, $zero
/* 233A0 80032BA0 04004010 */  beqz       $v0, .L80032BB4
/* 233A4 80032BA4 01000224 */   addiu     $v0, $zero, 0x1
/* 233A8 80032BA8 D41382AF */  sw         $v0, %gp_rel(PauseRumble)($gp)
/* 233AC 80032BAC EECA0008 */  j          .L80032BB8
/* 233B0 80032BB0 00000000 */   nop
.L80032BB4:
/* 233B4 80032BB4 D41380AF */  sw         $zero, %gp_rel(PauseRumble)($gp)
.L80032BB8:
/* 233B8 80032BB8 D413828F */  lw         $v0, %gp_rel(PauseRumble)($gp)
/* 233BC 80032BBC 00000000 */  nop
/* 233C0 80032BC0 43004010 */  beqz       $v0, .L80032CD0
/* 233C4 80032BC4 0880033C */   lui       $v1, %hi(Pause_sndefx)
/* 233C8 80032BC8 0980023C */  lui        $v0, %hi(gMenuRumbleFlag)
/* 233CC 80032BCC C449428C */  lw         $v0, %lo(gMenuRumbleFlag)($v0)
/* 233D0 80032BD0 00000000 */  nop
/* 233D4 80032BD4 10004010 */  beqz       $v0, .L80032C18
/* 233D8 80032BD8 2000A427 */   addiu     $a0, $sp, 0x20
/* 233DC 80032BDC 0880033C */  lui        $v1, %hi(Pause_Vibration)
/* 233E0 80032BE0 38636324 */  addiu      $v1, $v1, %lo(Pause_Vibration)
/* 233E4 80032BE4 0880023C */  lui        $v0, %hi(Pause_On)
/* 233E8 80032BE8 1814858F */  lw         $a1, %gp_rel(gLanguage)($gp)
/* 233EC 80032BEC FC624224 */  addiu      $v0, $v0, %lo(Pause_On)
/* 233F0 80032BF0 80280500 */  sll        $a1, $a1, 2
/* 233F4 80032BF4 2118A300 */  addu       $v1, $a1, $v1
/* 233F8 80032BF8 2128A200 */  addu       $a1, $a1, $v0
/* 233FC 80032BFC 0000A78C */  lw         $a3, 0x0($a1)
/* 23400 80032C00 0980053C */  lui        $a1, %hi(D_80094BF0)
/* 23404 80032C04 0000668C */  lw         $a2, 0x0($v1)
/* 23408 80032C08 53C5010C */  jal        sprintf
/* 2340C 80032C0C F04BA524 */   addiu     $a1, $a1, %lo(D_80094BF0)
/* 23410 80032C10 13CB0008 */  j          .L80032C4C
/* 23414 80032C14 00000000 */   nop
.L80032C18:
/* 23418 80032C18 0880033C */  lui        $v1, %hi(Pause_Vibration)
/* 2341C 80032C1C 38636324 */  addiu      $v1, $v1, %lo(Pause_Vibration)
/* 23420 80032C20 0880023C */  lui        $v0, %hi(Pause_Off)
/* 23424 80032C24 1814858F */  lw         $a1, %gp_rel(gLanguage)($gp)
/* 23428 80032C28 10634224 */  addiu      $v0, $v0, %lo(Pause_Off)
/* 2342C 80032C2C 80280500 */  sll        $a1, $a1, 2
/* 23430 80032C30 2118A300 */  addu       $v1, $a1, $v1
/* 23434 80032C34 2128A200 */  addu       $a1, $a1, $v0
/* 23438 80032C38 0000A78C */  lw         $a3, 0x0($a1)
/* 2343C 80032C3C 0980053C */  lui        $a1, %hi(D_80094BF0)
/* 23440 80032C40 0000668C */  lw         $a2, 0x0($v1)
/* 23444 80032C44 53C5010C */  jal        sprintf
/* 23448 80032C48 F04BA524 */   addiu     $a1, $a1, %lo(D_80094BF0)
.L80032C4C:
/* 2344C 80032C4C 4C09838F */  lw         $v1, %gp_rel(PauseMenuOption)($gp)
/* 23450 80032C50 01000224 */  addiu      $v0, $zero, 0x1
/* 23454 80032C54 12006214 */  bne        $v1, $v0, .L80032CA0
/* 23458 80032C58 DF000424 */   addiu     $a0, $zero, 0xDF
/* 2345C 80032C5C DF000524 */  addiu      $a1, $zero, 0xDF
/* 23460 80032C60 5363010C */  jal        TextSetTextColor
/* 23464 80032C64 07000624 */   addiu     $a2, $zero, 0x7
/* 23468 80032C68 A0004332 */  andi       $v1, $s2, 0xA0
/* 2346C 80032C6C 0F006010 */  beqz       $v1, .L80032CAC
/* 23470 80032C70 21280000 */   addu      $a1, $zero, $zero
/* 23474 80032C74 18000424 */  addiu      $a0, $zero, 0x18
/* 23478 80032C78 6F4A010C */  jal        pxm_sendevent
/* 2347C 80032C7C 21300000 */   addu      $a2, $zero, $zero
/* 23480 80032C80 0980033C */  lui        $v1, %hi(gMenuRumbleFlag)
/* 23484 80032C84 C449638C */  lw         $v1, %lo(gMenuRumbleFlag)($v1)
/* 23488 80032C88 00000000 */  nop
/* 2348C 80032C8C 0100632C */  sltiu      $v1, $v1, 0x1
/* 23490 80032C90 0980013C */  lui        $at, %hi(gMenuRumbleFlag)
/* 23494 80032C94 C44923AC */  sw         $v1, %lo(gMenuRumbleFlag)($at)
/* 23498 80032C98 2CCB0008 */  j          .L80032CB0
/* 2349C 80032C9C 2000A427 */   addiu     $a0, $sp, 0x20
.L80032CA0:
/* 234A0 80032CA0 DF000524 */  addiu      $a1, $zero, 0xDF
/* 234A4 80032CA4 5363010C */  jal        TextSetTextColor
/* 234A8 80032CA8 DF000624 */   addiu     $a2, $zero, 0xDF
.L80032CAC:
/* 234AC 80032CAC 2000A427 */  addiu      $a0, $sp, 0x20
.L80032CB0:
/* 234B0 80032CB0 A0000524 */  addiu      $a1, $zero, 0xA0
/* 234B4 80032CB4 21300002 */  addu       $a2, $s0, $zero
/* 234B8 80032CB8 7163010C */  jal        TextAddStringC
/* 234BC 80032CBC 01000724 */   addiu     $a3, $zero, 0x1
/* 234C0 80032CC0 12000326 */  addiu      $v1, $s0, 0x12
/* 234C4 80032CC4 001C0300 */  sll        $v1, $v1, 16
/* 234C8 80032CC8 03840300 */  sra        $s0, $v1, 16
/* 234CC 80032CCC 0880033C */  lui        $v1, %hi(Pause_sndefx)
.L80032CD0:
/* 234D0 80032CD0 1814828F */  lw         $v0, %gp_rel(gLanguage)($gp)
/* 234D4 80032CD4 E8626324 */  addiu      $v1, $v1, %lo(Pause_sndefx)
/* 234D8 80032CD8 80100200 */  sll        $v0, $v0, 2
/* 234DC 80032CDC 21104300 */  addu       $v0, $v0, $v1
/* 234E0 80032CE0 0000458C */  lw         $a1, 0x0($v0)
/* 234E4 80032CE4 53C5010C */  jal        sprintf
/* 234E8 80032CE8 2000A427 */   addiu     $a0, $sp, 0x20
/* 234EC 80032CEC 04000326 */  addiu      $v1, $s0, 0x4
/* 234F0 80032CF0 001C0300 */  sll        $v1, $v1, 16
/* 234F4 80032CF4 03840300 */  sra        $s0, $v1, 16
/* 234F8 80032CF8 0880043C */  lui        $a0, %hi(Pause_ExitGame)
/* 234FC 80032CFC 1814828F */  lw         $v0, %gp_rel(gLanguage)($gp)
/* 23500 80032D00 0C628424 */  addiu      $a0, $a0, %lo(Pause_ExitGame)
/* 23504 80032D04 80100200 */  sll        $v0, $v0, 2
/* 23508 80032D08 21104400 */  addu       $v0, $v0, $a0
/* 2350C 80032D0C 0000458C */  lw         $a1, 0x0($v0)
/* 23510 80032D10 53C5010C */  jal        sprintf
/* 23514 80032D14 2000A427 */   addiu     $a0, $sp, 0x20
/* 23518 80032D18 4C09838F */  lw         $v1, %gp_rel(PauseMenuOption)($gp)
/* 2351C 80032D1C 02000224 */  addiu      $v0, $zero, 0x2
/* 23520 80032D20 0F006214 */  bne        $v1, $v0, .L80032D60
/* 23524 80032D24 DF000424 */   addiu     $a0, $zero, 0xDF
/* 23528 80032D28 DF000524 */  addiu      $a1, $zero, 0xDF
/* 2352C 80032D2C 5363010C */  jal        TextSetTextColor
/* 23530 80032D30 07000624 */   addiu     $a2, $zero, 0x7
/* 23534 80032D34 00404332 */  andi       $v1, $s2, 0x4000
/* 23538 80032D38 0C006010 */  beqz       $v1, .L80032D6C
/* 2353C 80032D3C 01000524 */   addiu     $a1, $zero, 0x1
/* 23540 80032D40 19000424 */  addiu      $a0, $zero, 0x19
/* 23544 80032D44 6F4A010C */  jal        pxm_sendevent
/* 23548 80032D48 21300000 */   addu      $a2, $zero, $zero
/* 2354C 80032D4C 04000224 */  addiu      $v0, $zero, 0x4
/* 23550 80032D50 4C0982AF */  sw         $v0, %gp_rel(PauseMenuOption)($gp)
/* 23554 80032D54 540980AF */  sw         $zero, %gp_rel(YNOption)($gp)
/* 23558 80032D58 5BCB0008 */  j          .L80032D6C
/* 2355C 80032D5C 21900000 */   addu      $s2, $zero, $zero
.L80032D60:
/* 23560 80032D60 DF000524 */  addiu      $a1, $zero, 0xDF
/* 23564 80032D64 5363010C */  jal        TextSetTextColor
/* 23568 80032D68 DF000624 */   addiu     $a2, $zero, 0xDF
.L80032D6C:
/* 2356C 80032D6C 2000A427 */  addiu      $a0, $sp, 0x20
/* 23570 80032D70 A0000524 */  addiu      $a1, $zero, 0xA0
/* 23574 80032D74 21300002 */  addu       $a2, $s0, $zero
/* 23578 80032D78 7163010C */  jal        TextAddStringC
/* 2357C 80032D7C 01000724 */   addiu     $a3, $zero, 0x1
/* 23580 80032D80 12000326 */  addiu      $v1, $s0, 0x12
/* 23584 80032D84 001C0300 */  sll        $v1, $v1, 16
/* 23588 80032D88 03840300 */  sra        $s0, $v1, 16
/* 2358C 80032D8C 8F49010C */  jal        UITB_SetBoxStyle
/* 23590 80032D90 21200000 */   addu      $a0, $zero, $zero
/* 23594 80032D94 8949010C */  jal        UITB_SetBorderStyle
/* 23598 80032D98 21200000 */   addu      $a0, $zero, $zero
/* 2359C 80032D9C 21200000 */  addu       $a0, $zero, $zero
/* 235A0 80032DA0 21280000 */  addu       $a1, $zero, $zero
/* 235A4 80032DA4 45000624 */  addiu      $a2, $zero, 0x45
/* 235A8 80032DA8 05000724 */  addiu      $a3, $zero, 0x5
/* 235AC 80032DAC 05000224 */  addiu      $v0, $zero, 0x5
/* 235B0 80032DB0 80000324 */  addiu      $v1, $zero, 0x80
/* 235B4 80032DB4 1000A2AF */  sw         $v0, 0x10($sp)
/* 235B8 80032DB8 7A49010C */  jal        UITB_SetDrawBoxColor
/* 235BC 80032DBC 1400A3AF */   sw        $v1, 0x14($sp)
/* 235C0 80032DC0 21202002 */  addu       $a0, $s1, $zero
/* 235C4 80032DC4 01001124 */  addiu      $s1, $zero, 0x1
/* 235C8 80032DC8 6009858F */  lw         $a1, %gp_rel(pby)($gp)
/* 235CC 80032DCC 5809868F */  lw         $a2, %gp_rel(pbw)($gp)
/* 235D0 80032DD0 0A000224 */  addiu      $v0, $zero, 0xA
/* 235D4 80032DD4 1000B1AF */  sw         $s1, 0x10($sp)
/* 235D8 80032DD8 1400B1AF */  sw         $s1, 0x14($sp)
/* 235DC 80032DDC 1800A2AF */  sw         $v0, 0x18($sp)
/* 235E0 80032DE0 B043010C */  jal        UITB_DrawBox
/* 235E4 80032DE4 23380502 */   subu      $a3, $s0, $a1
/* 235E8 80032DE8 40004232 */  andi       $v0, $s2, 0x40
/* 235EC 80032DEC 16004010 */  beqz       $v0, .L80032E48
/* 235F0 80032DF0 16000424 */   addiu     $a0, $zero, 0x16
/* 235F4 80032DF4 21280000 */  addu       $a1, $zero, $zero
/* 235F8 80032DF8 6F4A010C */  jal        pxm_sendevent
/* 235FC 80032DFC 21300000 */   addu      $a2, $zero, $zero
/* 23600 80032E00 4C09838F */  lw         $v1, %gp_rel(PauseMenuOption)($gp)
/* 23604 80032E04 00000000 */  nop
/* 23608 80032E08 01006324 */  addiu      $v1, $v1, 0x1
/* 2360C 80032E0C 4C0983AF */  sw         $v1, %gp_rel(PauseMenuOption)($gp)
/* 23610 80032E10 03006328 */  slti       $v1, $v1, 0x3
/* 23614 80032E14 02006014 */  bnez       $v1, .L80032E20
/* 23618 80032E18 00000000 */   nop
/* 2361C 80032E1C 4C0980AF */  sw         $zero, %gp_rel(PauseMenuOption)($gp)
.L80032E20:
/* 23620 80032E20 D413828F */  lw         $v0, %gp_rel(PauseRumble)($gp)
/* 23624 80032E24 00000000 */  nop
/* 23628 80032E28 08004014 */  bnez       $v0, .L80032E4C
/* 2362C 80032E2C 10004232 */   andi      $v0, $s2, 0x10
/* 23630 80032E30 4C09828F */  lw         $v0, %gp_rel(PauseMenuOption)($gp)
/* 23634 80032E34 00000000 */  nop
/* 23638 80032E38 04005114 */  bne        $v0, $s1, .L80032E4C
/* 2363C 80032E3C 10004232 */   andi      $v0, $s2, 0x10
/* 23640 80032E40 02000224 */  addiu      $v0, $zero, 0x2
/* 23644 80032E44 4C0982AF */  sw         $v0, %gp_rel(PauseMenuOption)($gp)
.L80032E48:
/* 23648 80032E48 10004232 */  andi       $v0, $s2, 0x10
.L80032E4C:
/* 2364C 80032E4C A0004010 */  beqz       $v0, .L800330D0
/* 23650 80032E50 16000424 */   addiu     $a0, $zero, 0x16
/* 23654 80032E54 21280000 */  addu       $a1, $zero, $zero
/* 23658 80032E58 6F4A010C */  jal        pxm_sendevent
/* 2365C 80032E5C 21300000 */   addu      $a2, $zero, $zero
/* 23660 80032E60 4C09838F */  lw         $v1, %gp_rel(PauseMenuOption)($gp)
/* 23664 80032E64 00000000 */  nop
/* 23668 80032E68 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 2366C 80032E6C 4C0983AF */  sw         $v1, %gp_rel(PauseMenuOption)($gp)
/* 23670 80032E70 02006104 */  bgez       $v1, .L80032E7C
/* 23674 80032E74 02000224 */   addiu     $v0, $zero, 0x2
/* 23678 80032E78 4C0982AF */  sw         $v0, %gp_rel(PauseMenuOption)($gp)
.L80032E7C:
/* 2367C 80032E7C D413828F */  lw         $v0, %gp_rel(PauseRumble)($gp)
/* 23680 80032E80 00000000 */  nop
/* 23684 80032E84 92004014 */  bnez       $v0, .L800330D0
/* 23688 80032E88 01000224 */   addiu     $v0, $zero, 0x1
/* 2368C 80032E8C 4C09838F */  lw         $v1, %gp_rel(PauseMenuOption)($gp)
/* 23690 80032E90 00000000 */  nop
/* 23694 80032E94 8E006214 */  bne        $v1, $v0, .L800330D0
/* 23698 80032E98 00000000 */   nop
/* 2369C 80032E9C 4C0980AF */  sw         $zero, %gp_rel(PauseMenuOption)($gp)
/* 236A0 80032EA0 34CC0008 */  j          .L800330D0
/* 236A4 80032EA4 00000000 */   nop
.L80032EA8:
/* 236A8 80032EA8 89006214 */  bne        $v1, $v0, .L800330D0
/* 236AC 80032EAC F1FF2426 */   addiu     $a0, $s1, -0xF
/* 236B0 80032EB0 00240400 */  sll        $a0, $a0, 16
/* 236B4 80032EB4 03240400 */  sra        $a0, $a0, 16
/* 236B8 80032EB8 60098297 */  lhu        $v0, %gp_rel(pby)($gp)
/* 236BC 80032EBC 5C098597 */  lhu        $a1, %gp_rel(pbh)($gp)
/* 236C0 80032EC0 5809868F */  lw         $a2, %gp_rel(pbw)($gp)
/* 236C4 80032EC4 5C09878F */  lw         $a3, %gp_rel(pbh)($gp)
/* 236C8 80032EC8 01000324 */  addiu      $v1, $zero, 0x1
/* 236CC 80032ECC 1000A3AF */  sw         $v1, 0x10($sp)
/* 236D0 80032ED0 1400A3AF */  sw         $v1, 0x14($sp)
/* 236D4 80032ED4 0A000324 */  addiu      $v1, $zero, 0xA
/* 236D8 80032ED8 1800A3AF */  sw         $v1, 0x18($sp)
/* 236DC 80032EDC 21104500 */  addu       $v0, $v0, $a1
/* 236E0 80032EE0 0A004224 */  addiu      $v0, $v0, 0xA
/* 236E4 80032EE4 00140200 */  sll        $v0, $v0, 16
/* 236E8 80032EE8 03840200 */  sra        $s0, $v0, 16
/* 236EC 80032EEC 21280002 */  addu       $a1, $s0, $zero
/* 236F0 80032EF0 B043010C */  jal        UITB_DrawBox
/* 236F4 80032EF4 1E00C624 */   addiu     $a2, $a2, 0x1E
/* 236F8 80032EF8 10000226 */  addiu      $v0, $s0, 0x10
/* 236FC 80032EFC 00140200 */  sll        $v0, $v0, 16
/* 23700 80032F00 03840200 */  sra        $s0, $v0, 16
/* 23704 80032F04 DF000424 */  addiu      $a0, $zero, 0xDF
/* 23708 80032F08 DF000524 */  addiu      $a1, $zero, 0xDF
/* 2370C 80032F0C 5363010C */  jal        TextSetTextColor
/* 23710 80032F10 DF000624 */   addiu     $a2, $zero, 0xDF
/* 23714 80032F14 A0000524 */  addiu      $a1, $zero, 0xA0
/* 23718 80032F18 21300002 */  addu       $a2, $s0, $zero
/* 2371C 80032F1C 0880033C */  lui        $v1, %hi(Pause_Areyousure)
/* 23720 80032F20 1814828F */  lw         $v0, %gp_rel(gLanguage)($gp)
/* 23724 80032F24 20626324 */  addiu      $v1, $v1, %lo(Pause_Areyousure)
/* 23728 80032F28 80100200 */  sll        $v0, $v0, 2
/* 2372C 80032F2C 21104300 */  addu       $v0, $v0, $v1
/* 23730 80032F30 0000448C */  lw         $a0, 0x0($v0)
/* 23734 80032F34 7163010C */  jal        TextAddStringC
/* 23738 80032F38 01000724 */   addiu     $a3, $zero, 0x1
/* 2373C 80032F3C 0880033C */  lui        $v1, %hi(Pause_No)
/* 23740 80032F40 1814828F */  lw         $v0, %gp_rel(gLanguage)($gp)
/* 23744 80032F44 34626324 */  addiu      $v1, $v1, %lo(Pause_No)
/* 23748 80032F48 80100200 */  sll        $v0, $v0, 2
/* 2374C 80032F4C 21104300 */  addu       $v0, $v0, $v1
/* 23750 80032F50 0000458C */  lw         $a1, 0x0($v0)
/* 23754 80032F54 53C5010C */  jal        sprintf
/* 23758 80032F58 2000A427 */   addiu     $a0, $sp, 0x20
/* 2375C 80032F5C 5409838F */  lw         $v1, %gp_rel(YNOption)($gp)
/* 23760 80032F60 00000000 */  nop
/* 23764 80032F64 06006010 */  beqz       $v1, .L80032F80
/* 23768 80032F68 DF000524 */   addiu     $a1, $zero, 0xDF
/* 2376C 80032F6C DF000424 */  addiu      $a0, $zero, 0xDF
/* 23770 80032F70 5363010C */  jal        TextSetTextColor
/* 23774 80032F74 DF000624 */   addiu     $a2, $zero, 0xDF
/* 23778 80032F78 E4CB0008 */  j          .L80032F90
/* 2377C 80032F7C 12000226 */   addiu     $v0, $s0, 0x12
.L80032F80:
/* 23780 80032F80 DF000424 */  addiu      $a0, $zero, 0xDF
/* 23784 80032F84 5363010C */  jal        TextSetTextColor
/* 23788 80032F88 07000624 */   addiu     $a2, $zero, 0x7
/* 2378C 80032F8C 12000226 */  addiu      $v0, $s0, 0x12
.L80032F90:
/* 23790 80032F90 00140200 */  sll        $v0, $v0, 16
/* 23794 80032F94 03840200 */  sra        $s0, $v0, 16
/* 23798 80032F98 2000A427 */  addiu      $a0, $sp, 0x20
/* 2379C 80032F9C A0000524 */  addiu      $a1, $zero, 0xA0
/* 237A0 80032FA0 21300002 */  addu       $a2, $s0, $zero
/* 237A4 80032FA4 7163010C */  jal        TextAddStringC
/* 237A8 80032FA8 01000724 */   addiu     $a3, $zero, 0x1
/* 237AC 80032FAC 12000326 */  addiu      $v1, $s0, 0x12
/* 237B0 80032FB0 001C0300 */  sll        $v1, $v1, 16
/* 237B4 80032FB4 03840300 */  sra        $s0, $v1, 16
/* 237B8 80032FB8 0880043C */  lui        $a0, %hi(Pause_Yes)
/* 237BC 80032FBC 1814828F */  lw         $v0, %gp_rel(gLanguage)($gp)
/* 237C0 80032FC0 48628424 */  addiu      $a0, $a0, %lo(Pause_Yes)
/* 237C4 80032FC4 80100200 */  sll        $v0, $v0, 2
/* 237C8 80032FC8 21104400 */  addu       $v0, $v0, $a0
/* 237CC 80032FCC 0000458C */  lw         $a1, 0x0($v0)
/* 237D0 80032FD0 53C5010C */  jal        sprintf
/* 237D4 80032FD4 2000A427 */   addiu     $a0, $sp, 0x20
/* 237D8 80032FD8 5409838F */  lw         $v1, %gp_rel(YNOption)($gp)
/* 237DC 80032FDC 00000000 */  nop
/* 237E0 80032FE0 06006010 */  beqz       $v1, .L80032FFC
/* 237E4 80032FE4 DF000424 */   addiu     $a0, $zero, 0xDF
/* 237E8 80032FE8 DF000524 */  addiu      $a1, $zero, 0xDF
/* 237EC 80032FEC 5363010C */  jal        TextSetTextColor
/* 237F0 80032FF0 07000624 */   addiu     $a2, $zero, 0x7
/* 237F4 80032FF4 03CC0008 */  j          .L8003300C
/* 237F8 80032FF8 2000A427 */   addiu     $a0, $sp, 0x20
.L80032FFC:
/* 237FC 80032FFC DF000524 */  addiu      $a1, $zero, 0xDF
/* 23800 80033000 5363010C */  jal        TextSetTextColor
/* 23804 80033004 DF000624 */   addiu     $a2, $zero, 0xDF
/* 23808 80033008 2000A427 */  addiu      $a0, $sp, 0x20
.L8003300C:
/* 2380C 8003300C A0000524 */  addiu      $a1, $zero, 0xA0
/* 23810 80033010 21300002 */  addu       $a2, $s0, $zero
/* 23814 80033014 7163010C */  jal        TextAddStringC
/* 23818 80033018 01000724 */   addiu     $a3, $zero, 0x1
/* 2381C 8003301C DF000424 */  addiu      $a0, $zero, 0xDF
/* 23820 80033020 DF000524 */  addiu      $a1, $zero, 0xDF
/* 23824 80033024 5363010C */  jal        TextSetTextColor
/* 23828 80033028 DF000624 */   addiu     $a2, $zero, 0xDF
/* 2382C 8003302C 50004332 */  andi       $v1, $s2, 0x50
/* 23830 80033030 0D006010 */  beqz       $v1, .L80033068
/* 23834 80033034 16000424 */   addiu     $a0, $zero, 0x16
/* 23838 80033038 21280000 */  addu       $a1, $zero, $zero
/* 2383C 8003303C 6F4A010C */  jal        pxm_sendevent
/* 23840 80033040 21300000 */   addu      $a2, $zero, $zero
/* 23844 80033044 5409838F */  lw         $v1, %gp_rel(YNOption)($gp)
/* 23848 80033048 00000000 */  nop
/* 2384C 8003304C 04006010 */  beqz       $v1, .L80033060
/* 23850 80033050 00404232 */   andi      $v0, $s2, 0x4000
/* 23854 80033054 540980AF */  sw         $zero, %gp_rel(YNOption)($gp)
/* 23858 80033058 1BCC0008 */  j          .L8003306C
/* 2385C 8003305C 00000000 */   nop
.L80033060:
/* 23860 80033060 01000224 */  addiu      $v0, $zero, 0x1
/* 23864 80033064 540982AF */  sw         $v0, %gp_rel(YNOption)($gp)
.L80033068:
/* 23868 80033068 00404232 */  andi       $v0, $s2, 0x4000
.L8003306C:
/* 2386C 8003306C 18004010 */  beqz       $v0, .L800330D0
/* 23870 80033070 02000224 */   addiu     $v0, $zero, 0x2
/* 23874 80033074 5409838F */  lw         $v1, %gp_rel(YNOption)($gp)
/* 23878 80033078 4C0982AF */  sw         $v0, %gp_rel(PauseMenuOption)($gp)
/* 2387C 8003307C 10006010 */  beqz       $v1, .L800330C0
/* 23880 80033080 19000424 */   addiu     $a0, $zero, 0x19
/* 23884 80033084 21280000 */  addu       $a1, $zero, $zero
/* 23888 80033088 6F4A010C */  jal        pxm_sendevent
/* 2388C 8003308C 21300000 */   addu      $a2, $zero, $zero
/* 23890 80033090 1D001024 */  addiu      $s0, $zero, 0x1D
.L80033094:
/* 23894 80033094 EBD6010C */  jal        VSync
/* 23898 80033098 21200000 */   addu      $a0, $zero, $zero
/* 2389C 8003309C 5B4C010C */  jal        pxm_frameh
/* 238A0 800330A0 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 238A4 800330A4 FBFF0106 */  bgez       $s0, .L80033094
/* 238A8 800330A8 00000000 */   nop
/* 238AC 800330AC 203F010C */  jal        RequestState
/* 238B0 800330B0 01000424 */   addiu     $a0, $zero, 0x1
/* 238B4 800330B4 4C0980AF */  sw         $zero, %gp_rel(PauseMenuOption)($gp)
/* 238B8 800330B8 34CC0008 */  j          .L800330D0
/* 238BC 800330BC 00000000 */   nop
.L800330C0:
/* 238C0 800330C0 1A000424 */  addiu      $a0, $zero, 0x1A
/* 238C4 800330C4 21280000 */  addu       $a1, $zero, $zero
/* 238C8 800330C8 6F4A010C */  jal        pxm_sendevent
/* 238CC 800330CC 21300000 */   addu      $a2, $zero, $zero
.L800330D0:
/* 238D0 800330D0 6400BF8F */  lw         $ra, 0x64($sp)
/* 238D4 800330D4 6000B28F */  lw         $s2, 0x60($sp)
/* 238D8 800330D8 5C00B18F */  lw         $s1, 0x5C($sp)
/* 238DC 800330DC 5800B08F */  lw         $s0, 0x58($sp)
/* 238E0 800330E0 0800E003 */  jr         $ra
/* 238E4 800330E4 6800BD27 */   addiu     $sp, $sp, 0x68
.size PauseMenu, . - PauseMenu
