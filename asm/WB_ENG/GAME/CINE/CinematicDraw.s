.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CinematicDraw
/* 32520 80041D20 3C0C828F */  lw         $v0, %gp_rel(Cinematic_Flag)($gp)
/* 32524 80041D24 D414878F */  lw         $a3, %gp_rel(CurrentCinematic)($gp)
/* 32528 80041D28 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3252C 80041D2C 4F004010 */  beqz       $v0, .L80041E6C
/* 32530 80041D30 1000BFAF */   sw        $ra, 0x10($sp)
/* 32534 80041D34 640C828F */  lw         $v0, %gp_rel(ScreenGrabFadeOut)($gp)
/* 32538 80041D38 00000000 */  nop
/* 3253C 80041D3C 2E004014 */  bnez       $v0, .L80041DF8
/* 32540 80041D40 00000000 */   nop
/* 32544 80041D44 500C828F */  lw         $v0, %gp_rel(CinematicDisplayButton)($gp)
/* 32548 80041D48 00000000 */  nop
/* 3254C 80041D4C 2A004010 */  beqz       $v0, .L80041DF8
/* 32550 80041D50 00000000 */   nop
/* 32554 80041D54 480C828F */  lw         $v0, %gp_rel(Cinematic_Timer)($gp)
/* 32558 80041D58 00000000 */  nop
/* 3255C 80041D5C 3C004228 */  slti       $v0, $v0, 0x3C
/* 32560 80041D60 25004010 */  beqz       $v0, .L80041DF8
/* 32564 80041D64 00000000 */   nop
/* 32568 80041D68 0980023C */  lui        $v0, %hi(ot_ndx)
/* 3256C 80041D6C 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* 32570 80041D70 840C858F */  lw         $a1, %gp_rel(CROSS_X)($gp)
/* 32574 80041D74 880C848F */  lw         $a0, %gp_rel(CROSS_Y)($gp)
/* 32578 80041D78 80180200 */  sll        $v1, $v0, 2
/* 3257C 80041D7C 21186200 */  addu       $v1, $v1, $v0
/* 32580 80041D80 C0180300 */  sll        $v1, $v1, 3
/* 32584 80041D84 0A80023C */  lui        $v0, %hi(pausemenuFT4)
/* 32588 80041D88 A0864224 */  addiu      $v0, $v0, %lo(pausemenuFT4)
/* 3258C 80041D8C 21306200 */  addu       $a2, $v1, $v0
/* 32590 80041D90 1800A224 */  addiu      $v0, $a1, 0x18
/* 32594 80041D94 0A00C4A4 */  sh         $a0, 0xA($a2)
/* 32598 80041D98 1200C4A4 */  sh         $a0, 0x12($a2)
/* 3259C 80041D9C 18008424 */  addiu      $a0, $a0, 0x18
/* 325A0 80041DA0 1000C2A4 */  sh         $v0, 0x10($a2)
/* 325A4 80041DA4 2000C2A4 */  sh         $v0, 0x20($a2)
/* 325A8 80041DA8 0B80023C */  lui        $v0, %hi(g_nt3)
/* 325AC 80041DAC 38774324 */  addiu      $v1, $v0, %lo(g_nt3)
/* 325B0 80041DB0 0800C5A4 */  sh         $a1, 0x8($a2)
/* 325B4 80041DB4 1800C5A4 */  sh         $a1, 0x18($a2)
/* 325B8 80041DB8 1A00C4A4 */  sh         $a0, 0x1A($a2)
/* 325BC 80041DBC 2200C4A4 */  sh         $a0, 0x22($a2)
/* 325C0 80041DC0 3877448C */  lw         $a0, %lo(g_nt3)($v0)
/* 325C4 80041DC4 00000000 */  nop
/* 325C8 80041DC8 09008010 */  beqz       $a0, .L80041DF0
/* 325CC 80041DCC 21284000 */   addu      $a1, $v0, $zero
/* 325D0 80041DD0 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
/* 325D4 80041DD4 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 325D8 80041DD8 0089023C */  lui        $v0, (0x89000000 >> 16)
/* 325DC 80041DDC 26108200 */  xor        $v0, $a0, $v0
/* 325E0 80041DE0 2418C300 */  and        $v1, $a2, $v1
/* 325E4 80041DE4 0000C2AC */  sw         $v0, 0x0($a2)
/* 325E8 80041DE8 7D070108 */  j          .L80041DF4
/* 325EC 80041DEC 3877A3AC */   sw        $v1, %lo(g_nt3)($a1)
.L80041DF0:
/* 325F0 80041DF0 040066AC */  sw         $a2, 0x4($v1)
.L80041DF4:
/* 325F4 80041DF4 3877A6AC */  sw         $a2, %lo(g_nt3)($a1)
.L80041DF8:
/* 325F8 80041DF8 0000E28C */  lw         $v0, 0x0($a3)
/* 325FC 80041DFC 00000000 */  nop
/* 32600 80041E00 0D004014 */  bnez       $v0, .L80041E38
/* 32604 80041E04 00000000 */   nop
/* 32608 80041E08 5C0C828F */  lw         $v0, %gp_rel(CinematicDisplayUpdateCount)($gp)
/* 3260C 80041E0C 00000000 */  nop
/* 32610 80041E10 0B004010 */  beqz       $v0, .L80041E40
/* 32614 80041E14 00000000 */   nop
/* 32618 80041E18 2306010C */  jal        DrawCinematicParagraph
/* 3261C 80041E1C 00000000 */   nop
/* 32620 80041E20 5C0C828F */  lw         $v0, %gp_rel(CinematicDisplayUpdateCount)($gp)
/* 32624 80041E24 00000000 */  nop
/* 32628 80041E28 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3262C 80041E2C 5C0C82AF */  sw         $v0, %gp_rel(CinematicDisplayUpdateCount)($gp)
/* 32630 80041E30 90070108 */  j          .L80041E40
/* 32634 80041E34 00000000 */   nop
.L80041E38:
/* 32638 80041E38 2306010C */  jal        DrawCinematicParagraph
/* 3263C 80041E3C 00000000 */   nop
.L80041E40:
/* 32640 80041E40 6C0C828F */  lw         $v0, %gp_rel(RequestSnapShot)($gp)
/* 32644 80041E44 00000000 */  nop
/* 32648 80041E48 08004010 */  beqz       $v0, .L80041E6C
/* 3264C 80041E4C 00000000 */   nop
/* 32650 80041E50 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 32654 80041E54 6C0C82AF */  sw         $v0, %gp_rel(RequestSnapShot)($gp)
/* 32658 80041E58 04004014 */  bnez       $v0, .L80041E6C
/* 3265C 80041E5C 00000000 */   nop
/* 32660 80041E60 01000224 */  addiu      $v0, $zero, 0x1
/* 32664 80041E64 0980013C */  lui        $at, %hi(SnapShot)
/* 32668 80041E68 7C5322AC */  sw         $v0, %lo(SnapShot)($at)
.L80041E6C:
/* 3266C 80041E6C 1000BF8F */  lw         $ra, 0x10($sp)
/* 32670 80041E70 00000000 */  nop
/* 32674 80041E74 0800E003 */  jr         $ra
/* 32678 80041E78 1800BD27 */   addiu     $sp, $sp, 0x18
.size CinematicDraw, . - CinematicDraw
