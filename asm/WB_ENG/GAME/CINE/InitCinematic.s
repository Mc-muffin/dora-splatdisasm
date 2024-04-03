.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCinematic
/* 3274C 80041F4C 980C838F */  lw         $v1, %gp_rel(IntroCineFirstTimeFlag)($gp)
/* 32750 80041F50 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 32754 80041F54 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 32758 80041F58 02006228 */  slti       $v0, $v1, 0x2
/* 3275C 80041F5C 03004010 */  beqz       $v0, .L80041F6C
/* 32760 80041F60 1800B0AF */   sw        $s0, 0x18($sp)
/* 32764 80041F64 01006224 */  addiu      $v0, $v1, 0x1
/* 32768 80041F68 980C82AF */  sw         $v0, %gp_rel(IntroCineFirstTimeFlag)($gp)
.L80041F6C:
/* 3276C 80041F6C 0880033C */  lui        $v1, %hi(CinematicTable)
/* 32770 80041F70 047A6324 */  addiu      $v1, $v1, %lo(CinematicTable)
/* 32774 80041F74 80100400 */  sll        $v0, $a0, 2
/* 32778 80041F78 21104300 */  addu       $v0, $v0, $v1
/* 3277C 80041F7C 0000458C */  lw         $a1, 0x0($v0)
/* 32780 80041F80 4C0C838F */  lw         $v1, %gp_rel(Cinematic_TimerMax)($gp)
/* 32784 80041F84 01000224 */  addiu      $v0, $zero, 0x1
/* 32788 80041F88 500C80AF */  sw         $zero, %gp_rel(CinematicDisplayButton)($gp)
/* 3278C 80041F8C 3C0C82AF */  sw         $v0, %gp_rel(Cinematic_Flag)($gp)
/* 32790 80041F90 440C80AF */  sw         $zero, %gp_rel(Cinematic_ParaOffset)($gp)
/* 32794 80041F94 D41485AF */  sw         $a1, %gp_rel(CurrentCinematic)($gp)
/* 32798 80041F98 480C83AF */  sw         $v1, %gp_rel(Cinematic_Timer)($gp)
/* 3279C 80041F9C 0F008010 */  beqz       $a0, .L80041FDC
/* 327A0 80041FA0 00000000 */   nop
/* 327A4 80041FA4 1000A38C */  lw         $v1, 0x10($a1)
/* 327A8 80041FA8 00000000 */  nop
/* 327AC 80041FAC 05006010 */  beqz       $v1, .L80041FC4
/* 327B0 80041FB0 00000000 */   nop
/* 327B4 80041FB4 0000A28C */  lw         $v0, 0x0($a1)
/* 327B8 80041FB8 00000000 */  nop
/* 327BC 80041FBC 04004014 */  bnez       $v0, .L80041FD0
/* 327C0 80041FC0 00000000 */   nop
.L80041FC4:
/* 327C4 80041FC4 400C80AF */  sw         $zero, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 327C8 80041FC8 F7070108 */  j          .L80041FDC
/* 327CC 80041FCC 00000000 */   nop
.L80041FD0:
/* 327D0 80041FD0 00006290 */  lbu        $v0, 0x0($v1)
/* 327D4 80041FD4 00000000 */  nop
/* 327D8 80041FD8 400C82AF */  sw         $v0, %gp_rel(Cinematic_OverylayIndex)($gp)
.L80041FDC:
/* 327DC 80041FDC D414828F */  lw         $v0, %gp_rel(CurrentCinematic)($gp)
/* 327E0 80041FE0 00000000 */  nop
/* 327E4 80041FE4 0000438C */  lw         $v1, 0x0($v0)
/* 327E8 80041FE8 00000000 */  nop
/* 327EC 80041FEC 42006014 */  bnez       $v1, .L800420F8
/* 327F0 80041FF0 01000224 */   addiu     $v0, $zero, 0x1
/* 327F4 80041FF4 D81482AF */  sw         $v0, %gp_rel(CinematicScreenPauseFlag)($gp)
/* 327F8 80041FF8 0E4F010C */  jal        pxm_init
/* 327FC 80041FFC 04000424 */   addiu     $a0, $zero, 0x4
/* 32800 80042000 01000424 */  addiu      $a0, $zero, 0x1
/* 32804 80042004 21280000 */  addu       $a1, $zero, $zero
/* 32808 80042008 3C000624 */  addiu      $a2, $zero, 0x3C
/* 3280C 8004200C 02001024 */  addiu      $s0, $zero, 0x2
/* 32810 80042010 0980073C */  lui        $a3, %hi(MusicVolume)
/* 32814 80042014 9C49E790 */  lbu        $a3, %lo(MusicVolume)($a3)
/* 32818 80042018 0020023C */  lui        $v0, (0x20000000 >> 16)
/* 3281C 8004201C 4A53010C */  jal        pxm_que_noteon_layered
/* 32820 80042020 1000A2AF */   sw        $v0, 0x10($sp)
.L80042024:
/* 32824 80042024 EBD6010C */  jal        VSync
/* 32828 80042028 21200000 */   addu      $a0, $zero, $zero
/* 3282C 8004202C 5B4C010C */  jal        pxm_frameh
/* 32830 80042030 FFFF1026 */   addiu     $s0, $s0, -0x1
/* 32834 80042034 FBFF0106 */  bgez       $s0, .L80042024
/* 32838 80042038 00000000 */   nop
/* 3283C 8004203C D414838F */  lw         $v1, %gp_rel(CurrentCinematic)($gp)
/* 32840 80042040 440C828F */  lw         $v0, %gp_rel(Cinematic_ParaOffset)($gp)
/* 32844 80042044 0C00648C */  lw         $a0, 0xC($v1)
/* 32848 80042048 80100200 */  sll        $v0, $v0, 2
/* 3284C 8004204C 21104400 */  addu       $v0, $v0, $a0
/* 32850 80042050 0000508C */  lw         $s0, 0x0($v0)
/* 32854 80042054 B13A010C */  jal        PolyPoolAddr
/* 32858 80042058 00000000 */   nop
/* 3285C 8004205C 21284000 */  addu       $a1, $v0, $zero
/* 32860 80042060 495C010C */  jal        LoadFile
/* 32864 80042064 21200002 */   addu      $a0, $s0, $zero
/* 32868 80042068 B13A010C */  jal        PolyPoolAddr
/* 3286C 8004206C 00000000 */   nop
/* 32870 80042070 21200000 */  addu       $a0, $zero, $zero
/* 32874 80042074 21284000 */  addu       $a1, $v0, $zero
/* 32878 80042078 9F07010C */  jal        LoadCineGraphicIntoFrameBuffer
/* 3287C 8004207C 21300000 */   addu      $a2, $zero, $zero
/* 32880 80042080 D414828F */  lw         $v0, %gp_rel(CurrentCinematic)($gp)
/* 32884 80042084 00000000 */  nop
/* 32888 80042088 1000438C */  lw         $v1, 0x10($v0)
/* 3288C 8004208C 440C848F */  lw         $a0, %gp_rel(Cinematic_ParaOffset)($gp)
/* 32890 80042090 05006010 */  beqz       $v1, .L800420A8
/* 32894 80042094 00000000 */   nop
/* 32898 80042098 0000428C */  lw         $v0, 0x0($v0)
/* 3289C 8004209C 00000000 */  nop
/* 328A0 800420A0 04004014 */  bnez       $v0, .L800420B4
/* 328A4 800420A4 21106400 */   addu      $v0, $v1, $a0
.L800420A8:
/* 328A8 800420A8 400C80AF */  sw         $zero, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 328AC 800420AC 31080108 */  j          .L800420C4
/* 328B0 800420B0 01001024 */   addiu     $s0, $zero, 0x1
.L800420B4:
/* 328B4 800420B4 00004390 */  lbu        $v1, 0x0($v0)
/* 328B8 800420B8 00000000 */  nop
/* 328BC 800420BC 400C83AF */  sw         $v1, %gp_rel(Cinematic_OverylayIndex)($gp)
/* 328C0 800420C0 01001024 */  addiu      $s0, $zero, 0x1
.L800420C4:
/* 328C4 800420C4 02000224 */  addiu      $v0, $zero, 0x2
/* 328C8 800420C8 380C90AF */  sw         $s0, %gp_rel(CineFileLoaded)($gp)
/* 328CC 800420CC 500C80AF */  sw         $zero, %gp_rel(CinematicDisplayButton)($gp)
/* 328D0 800420D0 5C0C82AF */  sw         $v0, %gp_rel(CinematicDisplayUpdateCount)($gp)
/* 328D4 800420D4 CC6C010C */  jal        ScreenOff
/* 328D8 800420D8 00000000 */   nop
/* 328DC 800420DC 0980013C */  lui        $at, %hi(DrawScreenGrabFlag)
/* 328E0 800420E0 3C4930AC */  sw         $s0, %lo(DrawScreenGrabFlag)($at)
/* 328E4 800420E4 0980013C */  lui        $at, %hi(SnapShot)
/* 328E8 800420E8 7C5330AC */  sw         $s0, %lo(SnapShot)($at)
/* 328EC 800420EC 600C90AF */  sw         $s0, %gp_rel(ScreenGrabFadeIn)($gp)
/* 328F0 800420F0 680C80AF */  sw         $zero, %gp_rel(ScreenGrabFadeVal)($gp)
/* 328F4 800420F4 700C80AF */  sw         $zero, %gp_rel(BGImageFLagReady)($gp)
.L800420F8:
/* 328F8 800420F8 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 328FC 800420FC 1800B08F */  lw         $s0, 0x18($sp)
/* 32900 80042100 0800E003 */  jr         $ra
/* 32904 80042104 2000BD27 */   addiu     $sp, $sp, 0x20
.size InitCinematic, . - InitCinematic
