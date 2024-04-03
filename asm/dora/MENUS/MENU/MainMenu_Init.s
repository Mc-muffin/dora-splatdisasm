.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MainMenu_Init
/* 1643C 80025C3C 28FFBD27 */  addiu      $sp, $sp, -0xD8
/* 16440 80025C40 D400BFAF */  sw         $ra, 0xD4($sp)
/* 16444 80025C44 D000B4AF */  sw         $s4, 0xD0($sp)
/* 16448 80025C48 CC00B3AF */  sw         $s3, 0xCC($sp)
/* 1644C 80025C4C C800B2AF */  sw         $s2, 0xC8($sp)
/* 16450 80025C50 C400B1AF */  sw         $s1, 0xC4($sp)
/* 16454 80025C54 A66E000C */  jal        InitMemMalloc
/* 16458 80025C58 C000B0AF */   sw        $s0, 0xC0($sp)
/* 1645C 80025C5C 0980033C */  lui        $v1, %hi(EndMovieFlag)
/* 16460 80025C60 9C47638C */  lw         $v1, %lo(EndMovieFlag)($v1)
/* 16464 80025C64 00000000 */  nop
/* 16468 80025C68 05006010 */  beqz       $v1, .L80025C80
/* 1646C 80025C6C 00000000 */   nop
/* 16470 80025C70 D63E010C */  jal        PlayFullScreenMovie
/* 16474 80025C74 02000424 */   addiu     $a0, $zero, 0x2
/* 16478 80025C78 0980013C */  lui        $at, %hi(EndMovieFlag)
/* 1647C 80025C7C 9C4720AC */  sw         $zero, %lo(EndMovieFlag)($at)
.L80025C80:
/* 16480 80025C80 0980013C */  lui        $at, %hi(pxm_numemitters)
/* 16484 80025C84 645820AC */  sw         $zero, %lo(pxm_numemitters)($at)
/* 16488 80025C88 0980013C */  lui        $at, %hi(pxm_emitter_numpoints)
/* 1648C 80025C8C 805820AC */  sw         $zero, %lo(pxm_emitter_numpoints)($at)
/* 16490 80025C90 0E4F010C */  jal        pxm_init
/* 16494 80025C94 05000424 */   addiu     $a0, $zero, 0x5
/* 16498 80025C98 0980043C */  lui        $a0, %hi(atv)
/* 1649C 80025C9C 08588424 */  addiu      $a0, $a0, %lo(atv)
/* 164A0 80025CA0 0A80103C */  lui        $s0, %hi(pxm_mix)
/* 164A4 80025CA4 3807828F */  lw         $v0, %gp_rel(MusicVolume)($gp)
/* 164A8 80025CA8 3C07838F */  lw         $v1, %gp_rel(EffectsVolume)($gp)
/* 164AC 80025CAC 21284000 */  addu       $a1, $v0, $zero
/* 164B0 80025CB0 C87F02AE */  sw         $v0, %lo(pxm_mix)($s0)
/* 164B4 80025CB4 C87F0226 */  addiu      $v0, $s0, %lo(pxm_mix)
/* 164B8 80025CB8 040043AC */  sw         $v1, 0x4($v0)
/* 164BC 80025CBC 2BCD000C */  jal        cdSetVol
/* 164C0 80025CC0 21A00002 */   addu      $s4, $s0, $zero
/* 164C4 80025CC4 6407828F */  lw         $v0, %gp_rel(ShownTitleScreen)($gp)
/* 164C8 80025CC8 00000000 */  nop
/* 164CC 80025CCC 66004014 */  bnez       $v0, .L80025E68
/* 164D0 80025CD0 00000000 */   nop
/* 164D4 80025CD4 0180043C */  lui        $a0, %hi(D_800114D0)
/* 164D8 80025CD8 F36E000C */  jal        ShowScreen
/* 164DC 80025CDC D0148424 */   addiu     $a0, $a0, %lo(D_800114D0)
/* 164E0 80025CE0 21900000 */  addu       $s2, $zero, $zero
/* 164E4 80025CE4 01001324 */  addiu      $s3, $zero, 0x1
.L80025CE8:
/* 164E8 80025CE8 EBD6010C */  jal        VSync
/* 164EC 80025CEC 21200000 */   addu      $a0, $zero, $zero
/* 164F0 80025CF0 8F64010C */  jal        readControllers
/* 164F4 80025CF4 00000000 */   nop
/* 164F8 80025CF8 0980033C */  lui        $v1, %hi(Trg0)
/* 164FC 80025CFC 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 16500 80025D00 00000000 */  nop
/* 16504 80025D04 08006230 */  andi       $v0, $v1, 0x8
/* 16508 80025D08 10004010 */  beqz       $v0, .L80025D4C
/* 1650C 80025D0C 19000424 */   addiu     $a0, $zero, 0x19
/* 16510 80025D10 21280000 */  addu       $a1, $zero, $zero
/* 16514 80025D14 6F4A010C */  jal        pxm_sendevent
/* 16518 80025D18 21300000 */   addu      $a2, $zero, $zero
/* 1651C 80025D1C 5B4C010C */  jal        pxm_frameh
/* 16520 80025D20 09001024 */   addiu     $s0, $zero, 0x9
/* 16524 80025D24 0980013C */  lui        $at, %hi(AttractModeOn)
/* 16528 80025D28 605620AC */  sw         $zero, %lo(AttractModeOn)($at)
.L80025D2C:
/* 1652C 80025D2C EBD6010C */  jal        VSync
/* 16530 80025D30 21200000 */   addu      $a0, $zero, $zero
/* 16534 80025D34 5B4C010C */  jal        pxm_frameh
/* 16538 80025D38 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 1653C 80025D3C FBFF0106 */  bgez       $s0, .L80025D2C
/* 16540 80025D40 00000000 */   nop
/* 16544 80025D44 91970008 */  j          .L80025E44
/* 16548 80025D48 00000000 */   nop
.L80025D4C:
/* 1654C 80025D4C FFFF6330 */  andi       $v1, $v1, 0xFFFF
/* 16550 80025D50 38006010 */  beqz       $v1, .L80025E34
/* 16554 80025D54 01005126 */   addiu     $s1, $s2, 0x1
/* 16558 80025D58 6C07848F */  lw         $a0, %gp_rel(hundredlivescheatcount)($gp)
/* 1655C 80025D5C 00000000 */  nop
/* 16560 80025D60 06008014 */  bnez       $a0, .L80025D7C
/* 16564 80025D64 00010224 */   addiu     $v0, $zero, 0x100
/* 16568 80025D68 04006214 */  bne        $v1, $v0, .L80025D7C
/* 1656C 80025D6C 09001024 */   addiu     $s0, $zero, 0x9
/* 16570 80025D70 6C0793AF */  sw         $s3, %gp_rel(hundredlivescheatcount)($gp)
/* 16574 80025D74 87970008 */  j          .L80025E1C
/* 16578 80025D78 00000000 */   nop
.L80025D7C:
/* 1657C 80025D7C 06009314 */  bne        $a0, $s3, .L80025D98
/* 16580 80025D80 02000224 */   addiu     $v0, $zero, 0x2
/* 16584 80025D84 0980033C */  lui        $v1, %hi(Trg0)
/* 16588 80025D88 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 1658C 80025D8C 00040224 */  addiu      $v0, $zero, 0x400
/* 16590 80025D90 08006210 */  beq        $v1, $v0, .L80025DB4
/* 16594 80025D94 02000224 */   addiu     $v0, $zero, 0x2
.L80025D98:
/* 16598 80025D98 10008214 */  bne        $a0, $v0, .L80025DDC
/* 1659C 80025D9C 03000224 */   addiu     $v0, $zero, 0x3
/* 165A0 80025DA0 0980033C */  lui        $v1, %hi(Trg0)
/* 165A4 80025DA4 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 165A8 80025DA8 00020224 */  addiu      $v0, $zero, 0x200
/* 165AC 80025DAC 0B006214 */  bne        $v1, $v0, .L80025DDC
/* 165B0 80025DB0 03000224 */   addiu     $v0, $zero, 0x3
.L80025DB4:
/* 165B4 80025DB4 19000424 */  addiu      $a0, $zero, 0x19
/* 165B8 80025DB8 21280000 */  addu       $a1, $zero, $zero
/* 165BC 80025DBC 6F4A010C */  jal        pxm_sendevent
/* 165C0 80025DC0 21300000 */   addu      $a2, $zero, $zero
/* 165C4 80025DC4 6C07838F */  lw         $v1, %gp_rel(hundredlivescheatcount)($gp)
/* 165C8 80025DC8 00000000 */  nop
/* 165CC 80025DCC 01006324 */  addiu      $v1, $v1, 0x1
/* 165D0 80025DD0 6C0783AF */  sw         $v1, %gp_rel(hundredlivescheatcount)($gp)
/* 165D4 80025DD4 86970008 */  j          .L80025E18
/* 165D8 80025DD8 01005126 */   addiu     $s1, $s2, 0x1
.L80025DDC:
/* 165DC 80025DDC 0C008214 */  bne        $a0, $v0, .L80025E10
/* 165E0 80025DE0 00080224 */   addiu     $v0, $zero, 0x800
/* 165E4 80025DE4 0980033C */  lui        $v1, %hi(Trg0)
/* 165E8 80025DE8 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 165EC 80025DEC 00000000 */  nop
/* 165F0 80025DF0 07006214 */  bne        $v1, $v0, .L80025E10
/* 165F4 80025DF4 18000424 */   addiu     $a0, $zero, 0x18
/* 165F8 80025DF8 21280000 */  addu       $a1, $zero, $zero
/* 165FC 80025DFC 6F4A010C */  jal        pxm_sendevent
/* 16600 80025E00 21300000 */   addu      $a2, $zero, $zero
/* 16604 80025E04 680793AF */  sw         $s3, %gp_rel(HundredLivesCheat)($gp)
/* 16608 80025E08 86970008 */  j          .L80025E18
/* 1660C 80025E0C 01005126 */   addiu     $s1, $s2, 0x1
.L80025E10:
/* 16610 80025E10 6C0780AF */  sw         $zero, %gp_rel(hundredlivescheatcount)($gp)
/* 16614 80025E14 01005126 */  addiu      $s1, $s2, 0x1
.L80025E18:
/* 16618 80025E18 09001024 */  addiu      $s0, $zero, 0x9
.L80025E1C:
/* 1661C 80025E1C EBD6010C */  jal        VSync
/* 16620 80025E20 21200000 */   addu      $a0, $zero, $zero
/* 16624 80025E24 5B4C010C */  jal        pxm_frameh
/* 16628 80025E28 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 1662C 80025E2C FBFF0106 */  bgez       $s0, .L80025E1C
/* 16630 80025E30 00000000 */   nop
.L80025E34:
/* 16634 80025E34 21902002 */  addu       $s2, $s1, $zero
/* 16638 80025E38 0807422A */  slti       $v0, $s2, 0x708
/* 1663C 80025E3C AAFF4014 */  bnez       $v0, .L80025CE8
/* 16640 80025E40 00000000 */   nop
.L80025E44:
/* 16644 80025E44 0980023C */  lui        $v0, %hi(AttractModeOn)
/* 16648 80025E48 6056428C */  lw         $v0, %lo(AttractModeOn)($v0)
/* 1664C 80025E4C 00000000 */  nop
/* 16650 80025E50 06004010 */  beqz       $v0, .L80025E6C
/* 16654 80025E54 01000424 */   addiu     $a0, $zero, 0x1
/* 16658 80025E58 3F99000C */  jal        AttractModeService
/* 1665C 80025E5C 00000000 */   nop
/* 16660 80025E60 54980008 */  j          .L80026150
/* 16664 80025E64 00000000 */   nop
.L80025E68:
/* 16668 80025E68 01000424 */  addiu      $a0, $zero, 0x1
.L80025E6C:
/* 1666C 80025E6C 21280000 */  addu       $a1, $zero, $zero
/* 16670 80025E70 3C000624 */  addiu      $a2, $zero, 0x3C
/* 16674 80025E74 02001224 */  addiu      $s2, $zero, 0x2
/* 16678 80025E78 38078793 */  lbu        $a3, %gp_rel(MusicVolume)($gp)
/* 1667C 80025E7C 01000224 */  addiu      $v0, $zero, 0x1
/* 16680 80025E80 640782AF */  sw         $v0, %gp_rel(ShownTitleScreen)($gp)
/* 16684 80025E84 0020023C */  lui        $v0, (0x20000000 >> 16)
/* 16688 80025E88 4A53010C */  jal        pxm_que_noteon_layered
/* 1668C 80025E8C 1000A2AF */   sw        $v0, 0x10($sp)
.L80025E90:
/* 16690 80025E90 EBD6010C */  jal        VSync
/* 16694 80025E94 21200000 */   addu      $a0, $zero, $zero
/* 16698 80025E98 5B4C010C */  jal        pxm_frameh
/* 1669C 80025E9C FFFF5226 */   addiu     $s2, $s2, -0x1
/* 166A0 80025EA0 FBFF4106 */  bgez       $s2, .L80025E90
/* 166A4 80025EA4 00000000 */   nop
/* 166A8 80025EA8 3807828F */  lw         $v0, %gp_rel(MusicVolume)($gp)
/* 166AC 80025EAC 3C07838F */  lw         $v1, %gp_rel(EffectsVolume)($gp)
/* 166B0 80025EB0 03001224 */  addiu      $s2, $zero, 0x3
/* 166B4 80025EB4 C87F82AE */  sw         $v0, %lo(pxm_mix)($s4)
/* 166B8 80025EB8 C87F8226 */  addiu      $v0, $s4, %lo(pxm_mix)
/* 166BC 80025EBC 040043AC */  sw         $v1, 0x4($v0)
/* 166C0 80025EC0 B095000C */  jal        InitSliders
/* 166C4 80025EC4 08001024 */   addiu     $s0, $zero, 0x8
/* 166C8 80025EC8 440780AF */  sw         $zero, %gp_rel(MainMenuState)($gp)
/* 166CC 80025ECC 0980013C */  lui        $at, %hi(ScrollXPos)
/* 166D0 80025ED0 705420AC */  sw         $zero, %lo(ScrollXPos)($at)
/* 166D4 80025ED4 0980013C */  lui        $at, %hi(ScrollYPos)
/* 166D8 80025ED8 745420AC */  sw         $zero, %lo(ScrollYPos)($at)
/* 166DC 80025EDC 0980013C */  lui        $at, %hi(ScrollZPos)
/* 166E0 80025EE0 785420AC */  sw         $zero, %lo(ScrollZPos)($at)
/* 166E4 80025EE4 F866010C */  jal        ClearJoyPad
/* 166E8 80025EE8 00000000 */   nop
/* 166EC 80025EEC A66E000C */  jal        InitMemMalloc
/* 166F0 80025EF0 00000000 */   nop
/* 166F4 80025EF4 0180043C */  lui        $a0, %hi(D_800114EC)
/* 166F8 80025EF8 0980013C */  lui        $at, %hi(LoadBarSpeed)
/* 166FC 80025EFC AC5330AC */  sw         $s0, %lo(LoadBarSpeed)($at)
/* 16700 80025F00 316C010C */  jal        InitLoadingScreen
/* 16704 80025F04 EC148424 */   addiu     $a0, $a0, %lo(D_800114EC)
/* 16708 80025F08 2996000C */  jal        InitMenuRGBSprites
/* 1670C 80025F0C 00000000 */   nop
/* 16710 80025F10 0164010C */  jal        TextResetText
/* 16714 80025F14 00000000 */   nop
/* 16718 80025F18 3943010C */  jal        InitPSXBoxes
/* 1671C 80025F1C 00000000 */   nop
/* 16720 80025F20 EBD6010C */  jal        VSync
/* 16724 80025F24 FFFF0424 */   addiu     $a0, $zero, -0x1
/* 16728 80025F28 C0180200 */  sll        $v1, $v0, 3
/* 1672C 80025F2C 23186200 */  subu       $v1, $v1, $v0
/* 16730 80025F30 C0180300 */  sll        $v1, $v1, 3
/* 16734 80025F34 23186200 */  subu       $v1, $v1, $v0
/* 16738 80025F38 C0190300 */  sll        $v1, $v1, 7
/* 1673C 80025F3C 21186200 */  addu       $v1, $v1, $v0
/* 16740 80025F40 40210300 */  sll        $a0, $v1, 5
/* 16744 80025F44 23208300 */  subu       $a0, $a0, $v1
/* 16748 80025F48 80200400 */  sll        $a0, $a0, 2
/* 1674C 80025F4C 21208200 */  addu       $a0, $a0, $v0
/* 16750 80025F50 80200400 */  sll        $a0, $a0, 2
/* 16754 80025F54 E440010C */  jal        u32SRandom
/* 16758 80025F58 21208200 */   addu      $a0, $a0, $v0
/* 1675C 80025F5C A0020424 */  addiu      $a0, $zero, 0x2A0
/* 16760 80025F60 21280000 */  addu       $a1, $zero, $zero
/* 16764 80025F64 00020624 */  addiu      $a2, $zero, 0x200
/* 16768 80025F68 00020724 */  addiu      $a3, $zero, 0x200
/* 1676C 80025F6C 1000B0AF */  sw         $s0, 0x10($sp)
/* 16770 80025F70 8672010C */  jal        InitVRAMManager
/* 16774 80025F74 1400B0AF */   sw        $s0, 0x14($sp)
/* 16778 80025F78 8578010C */  jal        InitCLUTManager
/* 1677C 80025F7C 0980103C */   lui       $s0, %hi(ETActor)
/* 16780 80025F80 A66E000C */  jal        InitMemMalloc
/* 16784 80025F84 B05A1026 */   addiu     $s0, $s0, %lo(ETActor)
/* 16788 80025F88 0864010C */  jal        TextInitFonts
/* 1678C 80025F8C 00000000 */   nop
/* 16790 80025F90 80110224 */  addiu      $v0, $zero, 0x1180
/* 16794 80025F94 0980013C */  lui        $at, %hi(g_iso_depth_max_entries)
/* 16798 80025F98 345A22AC */  sw         $v0, %lo(g_iso_depth_max_entries)($at)
/* 1679C 80025F9C 2B3F010C */  jal        new_malloc
/* 167A0 80025FA0 00460424 */   addiu     $a0, $zero, 0x4600
/* 167A4 80025FA4 0980013C */  lui        $at, %hi(IsoDepthTable)
/* 167A8 80025FA8 045A22AC */  sw         $v0, %lo(IsoDepthTable)($at)
/* 167AC 80025FAC 199A010C */  jal        InitIsoCamera
/* 167B0 80025FB0 00000000 */   nop
/* 167B4 80025FB4 8F91000C */  jal        InitIsoDataMenu
/* 167B8 80025FB8 00000000 */   nop
/* 167BC 80025FBC F095000C */  jal        InitMenuGraphics
/* 167C0 80025FC0 00000000 */   nop
/* 167C4 80025FC4 AA6B010C */  jal        FinishLoadingBar
/* 167C8 80025FC8 00000000 */   nop
/* 167CC 80025FCC 0980013C */  lui        $at, %hi(LoadBarSpeed)
/* 167D0 80025FD0 AC5332AC */  sw         $s2, %lo(LoadBarSpeed)($at)
/* 167D4 80025FD4 9BD7010C */  jal        VSyncCallback
/* 167D8 80025FD8 21200000 */   addu      $a0, $zero, $zero
/* 167DC 80025FDC 0680043C */  lui        $a0, %hi(LowRezVSyncFunc)
/* 167E0 80025FE0 9BD7010C */  jal        VSyncCallback
/* 167E4 80025FE4 ACB58424 */   addiu     $a0, $a0, %lo(LowRezVSyncFunc)
/* 167E8 80025FE8 0E4F010C */  jal        pxm_init
/* 167EC 80025FEC 01000424 */   addiu     $a0, $zero, 0x1
/* 167F0 80025FF0 07ED000C */  jal        SetAggressive
/* 167F4 80025FF4 21200000 */   addu      $a0, $zero, $zero
/* 167F8 80025FF8 F7EC000C */  jal        SetLocaleAggressive
/* 167FC 80025FFC 21200000 */   addu      $a0, $zero, $zero
/* 16800 80026000 3037010C */  jal        ISOEditCam
/* 16804 80026004 00000000 */   nop
/* 16808 80026008 7000028E */  lw         $v0, 0x70($s0)
/* 1680C 8002600C 7400038E */  lw         $v1, 0x74($s0)
/* 16810 80026010 7800048E */  lw         $a0, 0x78($s0)
/* 16814 80026014 0980013C */  lui        $at, %hi(ScrollCamXPos)
/* 16818 80026018 484322AC */  sw         $v0, %lo(ScrollCamXPos)($at)
/* 1681C 8002601C 0980013C */  lui        $at, %hi(ScrollCamYPos)
/* 16820 80026020 4C4323AC */  sw         $v1, %lo(ScrollCamYPos)($at)
/* 16824 80026024 0980013C */  lui        $at, %hi(ScrollCamZPos)
/* 16828 80026028 504324AC */  sw         $a0, %lo(ScrollCamZPos)($at)
/* 1682C 8002602C A1E8000C */  jal        CameraMan
/* 16830 80026030 00000000 */   nop
/* 16834 80026034 16EB000C */  jal        UpdateCamera
/* 16838 80026038 00000000 */   nop
/* 1683C 8002603C 4AE9000C */  jal        UpdateCameraMatrix
/* 16840 80026040 00000000 */   nop
/* 16844 80026044 0D000224 */  addiu      $v0, $zero, 0xD
/* 16848 80026048 00800334 */  ori        $v1, $zero, 0x8000
/* 1684C 8002604C 0980013C */  lui        $at, %hi(CurrentCameraEnum)
/* 16850 80026050 B04C22AC */  sw         $v0, %lo(CurrentCameraEnum)($at)
/* 16854 80026054 00090224 */  addiu      $v0, $zero, 0x900
/* 16858 80026058 0980013C */  lui        $at, %hi(C5Locale)
/* 1685C 8002605C B84D23AC */  sw         $v1, %lo(C5Locale)($at)
/* 16860 80026060 50080324 */  addiu      $v1, $zero, 0x850
/* 16864 80026064 0980013C */  lui        $at, %hi(C5Dist)
/* 16868 80026068 BC4D22AC */  sw         $v0, %lo(C5Dist)($at)
/* 1686C 8002606C 00050224 */  addiu      $v0, $zero, 0x500
/* 16870 80026070 0980013C */  lui        $at, %hi(C5A)
/* 16874 80026074 C04D23AC */  sw         $v1, %lo(C5A)($at)
/* 16878 80026078 0980013C */  lui        $at, %hi(C5TOX)
/* 1687C 8002607C C44D20AC */  sw         $zero, %lo(C5TOX)($at)
/* 16880 80026080 0980013C */  lui        $at, %hi(C5TOY)
/* 16884 80026084 C84D22AC */  sw         $v0, %lo(C5TOY)($at)
/* 16888 80026088 0980013C */  lui        $at, %hi(C5TOZ)
/* 1688C 8002608C CC4D20AC */  sw         $zero, %lo(C5TOZ)($at)
/* 16890 80026090 0980013C */  lui        $at, %hi(TESTCAM5_SCROLLR)
/* 16894 80026094 8C4D20AC */  sw         $zero, %lo(TESTCAM5_SCROLLR)($at)
/* 16898 80026098 07ED000C */  jal        SetAggressive
/* 1689C 8002609C 21200000 */   addu      $a0, $zero, $zero
/* 168A0 800260A0 F7EC000C */  jal        SetLocaleAggressive
/* 168A4 800260A4 21200000 */   addu      $a0, $zero, $zero
/* 168A8 800260A8 A1E8000C */  jal        CameraMan
/* 168AC 800260AC 00000000 */   nop
/* 168B0 800260B0 16EB000C */  jal        UpdateCamera
/* 168B4 800260B4 00000000 */   nop
/* 168B8 800260B8 4AE9000C */  jal        UpdateCameraMatrix
/* 168BC 800260BC 00000000 */   nop
/* 168C0 800260C0 1DCD000C */  jal        LoadPauseMenuGraphics
/* 168C4 800260C4 00000000 */   nop
/* 168C8 800260C8 0A80043C */  lui        $a0, %hi(gDemoTimer)
/* 168CC 800260CC 788B8424 */  addiu      $a0, $a0, %lo(gDemoTimer)
/* 168D0 800260D0 23000524 */  addiu      $a1, $zero, 0x23
/* 168D4 800260D4 21300000 */  addu       $a2, $zero, $zero
/* 168D8 800260D8 00020224 */  addiu      $v0, $zero, 0x200
/* 168DC 800260DC 540002AE */  sw         $v0, 0x54($s0)
/* 168E0 800260E0 0A6F010C */  jal        TimerInit
/* 168E4 800260E4 580002AE */   sw        $v0, 0x58($s0)
/* 168E8 800260E8 0E4F010C */  jal        pxm_init
/* 168EC 800260EC 01000424 */   addiu     $a0, $zero, 0x1
/* 168F0 800260F0 717B010C */  jal        InitXA
/* 168F4 800260F4 00000000 */   nop
/* 168F8 800260F8 675B010C */  jal        BeginRedbook
/* 168FC 800260FC 05000424 */   addiu     $a0, $zero, 0x5
/* 16900 80026100 6007838F */  lw         $v1, %gp_rel(gMenuRumbleFlag)($gp)
/* 16904 80026104 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 16908 80026108 09006214 */  bne        $v1, $v0, .L80026130
/* 1690C 8002610C 00000000 */   nop
/* 16910 80026110 5266010C */  jal        Sys_CanPadVibrate
/* 16914 80026114 21200000 */   addu      $a0, $zero, $zero
/* 16918 80026118 04004010 */  beqz       $v0, .L8002612C
/* 1691C 8002611C 01000224 */   addiu     $v0, $zero, 0x1
/* 16920 80026120 600782AF */  sw         $v0, %gp_rel(gMenuRumbleFlag)($gp)
/* 16924 80026124 4C980008 */  j          .L80026130
/* 16928 80026128 00000000 */   nop
.L8002612C:
/* 1692C 8002612C 600780AF */  sw         $zero, %gp_rel(gMenuRumbleFlag)($gp)
.L80026130:
/* 16930 80026130 9769010C */  jal        updateScreen
/* 16934 80026134 00000000 */   nop
/* 16938 80026138 9769010C */  jal        updateScreen
/* 1693C 8002613C 00000000 */   nop
/* 16940 80026140 C46C010C */  jal        ScreenOn
/* 16944 80026144 00000000 */   nop
/* 16948 80026148 A72A010C */  jal        InitGameMallocedBuffers
/* 1694C 8002614C 00000000 */   nop
.L80026150:
/* 16950 80026150 D400BF8F */  lw         $ra, 0xD4($sp)
/* 16954 80026154 D000B48F */  lw         $s4, 0xD0($sp)
/* 16958 80026158 CC00B38F */  lw         $s3, 0xCC($sp)
/* 1695C 8002615C C800B28F */  lw         $s2, 0xC8($sp)
/* 16960 80026160 C400B18F */  lw         $s1, 0xC4($sp)
/* 16964 80026164 C000B08F */  lw         $s0, 0xC0($sp)
/* 16968 80026168 0800E003 */  jr         $ra
/* 1696C 8002616C D800BD27 */   addiu     $sp, $sp, 0xD8
.size MainMenu_Init, . - MainMenu_Init
