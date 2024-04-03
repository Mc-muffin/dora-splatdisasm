.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AttractModeService
/* 16CFC 800264FC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 16D00 80026500 2000B4AF */  sw         $s4, 0x20($sp)
/* 16D04 80026504 01001424 */  addiu      $s4, $zero, 0x1
/* 16D08 80026508 2800B6AF */  sw         $s6, 0x28($sp)
/* 16D0C 8002650C 02001624 */  addiu      $s6, $zero, 0x2
/* 16D10 80026510 2400B5AF */  sw         $s5, 0x24($sp)
/* 16D14 80026514 03001524 */  addiu      $s5, $zero, 0x3
/* 16D18 80026518 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 16D1C 8002651C 04001724 */  addiu      $s7, $zero, 0x4
/* 16D20 80026520 FFFF0424 */  addiu      $a0, $zero, -0x1
/* 16D24 80026524 3000BFAF */  sw         $ra, 0x30($sp)
/* 16D28 80026528 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 16D2C 8002652C 1800B2AF */  sw         $s2, 0x18($sp)
/* 16D30 80026530 1400B1AF */  sw         $s1, 0x14($sp)
/* 16D34 80026534 EBD6010C */  jal        VSync
/* 16D38 80026538 1000B0AF */   sw        $s0, 0x10($sp)
/* 16D3C 8002653C C0180200 */  sll        $v1, $v0, 3
/* 16D40 80026540 23186200 */  subu       $v1, $v1, $v0
/* 16D44 80026544 C0180300 */  sll        $v1, $v1, 3
/* 16D48 80026548 23186200 */  subu       $v1, $v1, $v0
/* 16D4C 8002654C C0190300 */  sll        $v1, $v1, 7
/* 16D50 80026550 21186200 */  addu       $v1, $v1, $v0
/* 16D54 80026554 40210300 */  sll        $a0, $v1, 5
/* 16D58 80026558 23208300 */  subu       $a0, $a0, $v1
/* 16D5C 8002655C 80200400 */  sll        $a0, $a0, 2
/* 16D60 80026560 21208200 */  addu       $a0, $a0, $v0
/* 16D64 80026564 80200400 */  sll        $a0, $a0, 2
/* 16D68 80026568 E440010C */  jal        u32SRandom
/* 16D6C 8002656C 21208200 */   addu      $a0, $a0, $v0
/* 16D70 80026570 0880133C */  lui        $s3, %hi(WorldList)
/* 16D74 80026574 0880123C */  lui        $s2, %hi(golddemoworld)
/* 16D78 80026578 54695126 */  addiu      $s1, $s2, %lo(golddemoworld)
.L8002657C:
/* 16D7C 8002657C 21800000 */  addu       $s0, $zero, $zero
/* 16D80 80026580 D140010C */  jal        u32Random
/* 16D84 80026584 05000424 */   addiu     $a0, $zero, 0x5
/* 16D88 80026588 21284000 */  addu       $a1, $v0, $zero
/* 16D8C 8002658C 21182002 */  addu       $v1, $s1, $zero
/* 16D90 80026590 01000424 */  addiu      $a0, $zero, 0x1
.L80026594:
/* 16D94 80026594 0000628C */  lw         $v0, 0x0($v1)
/* 16D98 80026598 00000000 */  nop
/* 16D9C 8002659C 0200A214 */  bne        $a1, $v0, .L800265A8
/* 16DA0 800265A0 00000000 */   nop
/* 16DA4 800265A4 01001024 */  addiu      $s0, $zero, 0x1
.L800265A8:
/* 16DA8 800265A8 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 16DAC 800265AC F9FF8104 */  bgez       $a0, .L80026594
/* 16DB0 800265B0 04006324 */   addiu     $v1, $v1, 0x4
/* 16DB4 800265B4 F1FF0016 */  bnez       $s0, .L8002657C
/* 16DB8 800265B8 54694226 */   addiu     $v0, $s2, %lo(golddemoworld)
/* 16DBC 800265BC A807838F */  lw         $v1, %gp_rel(golddemoworldindex)($gp)
/* 16DC0 800265C0 00000000 */  nop
/* 16DC4 800265C4 80200300 */  sll        $a0, $v1, 2
/* 16DC8 800265C8 01006324 */  addiu      $v1, $v1, 0x1
/* 16DCC 800265CC 21208200 */  addu       $a0, $a0, $v0
/* 16DD0 800265D0 C2170300 */  srl        $v0, $v1, 31
/* 16DD4 800265D4 21106200 */  addu       $v0, $v1, $v0
/* 16DD8 800265D8 43100200 */  sra        $v0, $v0, 1
/* 16DDC 800265DC 40100200 */  sll        $v0, $v0, 1
/* 16DE0 800265E0 23186200 */  subu       $v1, $v1, $v0
/* 16DE4 800265E4 000085AC */  sw         $a1, 0x0($a0)
/* 16DE8 800265E8 A80783AF */  sw         $v1, %gp_rel(golddemoworldindex)($gp)
/* 16DEC 800265EC 0E00A014 */  bnez       $a1, .L80026628
/* 16DF0 800265F0 01000624 */   addiu     $a2, $zero, 0x1
/* 16DF4 800265F4 6C646326 */  addiu      $v1, $s3, %lo(WorldList)
/* 16DF8 800265F8 80101400 */  sll        $v0, $s4, 2
/* 16DFC 800265FC 01004224 */  addiu      $v0, $v0, 0x1
/* 16E00 80026600 80100200 */  sll        $v0, $v0, 2
/* 16E04 80026604 21104300 */  addu       $v0, $v0, $v1
/* 16E08 80026608 0000448C */  lw         $a0, 0x0($v0)
/* 16E0C 8002660C 02000324 */  addiu      $v1, $zero, 0x2
/* 16E10 80026610 880783AF */  sw         $v1, %gp_rel(gmenulevel)($gp)
/* 16E14 80026614 840794AF */  sw         $s4, %gp_rel(gmenuworld)($gp)
/* 16E18 80026618 0980013C */  lui        $at, %hi(gLevel)
/* 16E1C 8002661C 345623AC */  sw         $v1, %lo(gLevel)($at)
/* 16E20 80026620 BE990008 */  j          .L800266F8
/* 16E24 80026624 00000000 */   nop
.L80026628:
/* 16E28 80026628 0E00A614 */  bne        $a1, $a2, .L80026664
/* 16E2C 8002662C 02000224 */   addiu     $v0, $zero, 0x2
/* 16E30 80026630 6C646326 */  addiu      $v1, $s3, %lo(WorldList)
/* 16E34 80026634 80101600 */  sll        $v0, $s6, 2
/* 16E38 80026638 02004224 */  addiu      $v0, $v0, 0x2
/* 16E3C 8002663C 80100200 */  sll        $v0, $v0, 2
/* 16E40 80026640 21104300 */  addu       $v0, $v0, $v1
/* 16E44 80026644 0000448C */  lw         $a0, 0x0($v0)
/* 16E48 80026648 02000324 */  addiu      $v1, $zero, 0x2
/* 16E4C 8002664C 880783AF */  sw         $v1, %gp_rel(gmenulevel)($gp)
/* 16E50 80026650 840796AF */  sw         $s6, %gp_rel(gmenuworld)($gp)
/* 16E54 80026654 0980013C */  lui        $at, %hi(gLevel)
/* 16E58 80026658 345623AC */  sw         $v1, %lo(gLevel)($at)
/* 16E5C 8002665C BE990008 */  j          .L800266F8
/* 16E60 80026660 00000000 */   nop
.L80026664:
/* 16E64 80026664 0C00A214 */  bne        $a1, $v0, .L80026698
/* 16E68 80026668 03000224 */   addiu     $v0, $zero, 0x3
/* 16E6C 8002666C 6C646226 */  addiu      $v0, $s3, %lo(WorldList)
/* 16E70 80026670 00191500 */  sll        $v1, $s5, 4
/* 16E74 80026674 0C006334 */  ori        $v1, $v1, 0xC
/* 16E78 80026678 21186200 */  addu       $v1, $v1, $v0
/* 16E7C 8002667C 0000648C */  lw         $a0, 0x0($v1)
/* 16E80 80026680 880785AF */  sw         $a1, %gp_rel(gmenulevel)($gp)
/* 16E84 80026684 840795AF */  sw         $s5, %gp_rel(gmenuworld)($gp)
/* 16E88 80026688 0980013C */  lui        $at, %hi(gLevel)
/* 16E8C 8002668C 345625AC */  sw         $a1, %lo(gLevel)($at)
/* 16E90 80026690 BE990008 */  j          .L800266F8
/* 16E94 80026694 00000000 */   nop
.L80026698:
/* 16E98 80026698 0C00A214 */  bne        $a1, $v0, .L800266CC
/* 16E9C 8002669C 04000224 */   addiu     $v0, $zero, 0x4
/* 16EA0 800266A0 6C646226 */  addiu      $v0, $s3, %lo(WorldList)
/* 16EA4 800266A4 21180000 */  addu       $v1, $zero, $zero
/* 16EA8 800266A8 00190300 */  sll        $v1, $v1, 4
/* 16EAC 800266AC 21186200 */  addu       $v1, $v1, $v0
/* 16EB0 800266B0 0000648C */  lw         $a0, 0x0($v1)
/* 16EB4 800266B4 880786AF */  sw         $a2, %gp_rel(gmenulevel)($gp)
/* 16EB8 800266B8 840780AF */  sw         $zero, %gp_rel(gmenuworld)($gp)
/* 16EBC 800266BC 0980013C */  lui        $at, %hi(gLevel)
/* 16EC0 800266C0 345626AC */  sw         $a2, %lo(gLevel)($at)
/* 16EC4 800266C4 BE990008 */  j          .L800266F8
/* 16EC8 800266C8 00000000 */   nop
.L800266CC:
/* 16ECC 800266CC 0C00A214 */  bne        $a1, $v0, .L80026700
/* 16ED0 800266D0 6C646226 */   addiu     $v0, $s3, %lo(WorldList)
/* 16ED4 800266D4 80181700 */  sll        $v1, $s7, 2
/* 16ED8 800266D8 04006324 */  addiu      $v1, $v1, 0x4
/* 16EDC 800266DC 80180300 */  sll        $v1, $v1, 2
/* 16EE0 800266E0 21186200 */  addu       $v1, $v1, $v0
/* 16EE4 800266E4 0000648C */  lw         $a0, 0x0($v1)
/* 16EE8 800266E8 880780AF */  sw         $zero, %gp_rel(gmenulevel)($gp)
/* 16EEC 800266EC 840797AF */  sw         $s7, %gp_rel(gmenuworld)($gp)
/* 16EF0 800266F0 0980013C */  lui        $at, %hi(gLevel)
/* 16EF4 800266F4 345620AC */  sw         $zero, %lo(gLevel)($at)
.L800266F8:
/* 16EF8 800266F8 0980013C */  lui        $at, %hi(gWorld)
/* 16EFC 800266FC 3C5624AC */  sw         $a0, %lo(gWorld)($at)
.L80026700:
/* 16F00 80026700 0980013C */  lui        $at, %hi(CurrentCameraEnum)
/* 16F04 80026704 B04C20AC */  sw         $zero, %lo(CurrentCameraEnum)($at)
/* 16F08 80026708 0980013C */  lui        $at, %hi(CurrentTaskerState)
/* 16F0C 8002670C D85120AC */  sw         $zero, %lo(CurrentTaskerState)($at)
/* 16F10 80026710 0980013C */  lui        $at, %hi(RequestTaskerState)
/* 16F14 80026714 DC5120AC */  sw         $zero, %lo(RequestTaskerState)($at)
/* 16F18 80026718 6F5B010C */  jal        StopRedbook
/* 16F1C 8002671C 00000000 */   nop
/* 16F20 80026720 6C646426 */  addiu      $a0, $s3, %lo(WorldList)
/* 16F24 80026724 8407838F */  lw         $v1, %gp_rel(gmenuworld)($gp)
/* 16F28 80026728 8C07858F */  lw         $a1, %gp_rel(gmemcardload)($gp)
/* 16F2C 8002672C 80100300 */  sll        $v0, $v1, 2
/* 16F30 80026730 21104300 */  addu       $v0, $v0, $v1
/* 16F34 80026734 80100200 */  sll        $v0, $v0, 2
/* 16F38 80026738 21104400 */  addu       $v0, $v0, $a0
/* 16F3C 8002673C 8807838F */  lw         $v1, %gp_rel(gmenulevel)($gp)
/* 16F40 80026740 0000448C */  lw         $a0, 0x0($v0)
/* 16F44 80026744 0980013C */  lui        $at, %hi(gLevel)
/* 16F48 80026748 345623AC */  sw         $v1, %lo(gLevel)($at)
/* 16F4C 8002674C 0980013C */  lui        $at, %hi(gWorld)
/* 16F50 80026750 3C5624AC */  sw         $a0, %lo(gWorld)($at)
/* 16F54 80026754 0C00A014 */  bnez       $a1, .L80026788
/* 16F58 80026758 64000324 */   addiu     $v1, $zero, 0x64
/* 16F5C 8002675C 6807828F */  lw         $v0, %gp_rel(HundredLivesCheat)($gp)
/* 16F60 80026760 0980013C */  lui        $at, %hi(Game_Health)
/* 16F64 80026764 8C4223AC */  sw         $v1, %lo(Game_Health)($at)
/* 16F68 80026768 05004010 */  beqz       $v0, .L80026780
/* 16F6C 8002676C 03000224 */   addiu     $v0, $zero, 0x3
/* 16F70 80026770 0980013C */  lui        $at, %hi(Game_Lives)
/* 16F74 80026774 904223AC */  sw         $v1, %lo(Game_Lives)($at)
/* 16F78 80026778 E2990008 */  j          .L80026788
/* 16F7C 8002677C 00000000 */   nop
.L80026780:
/* 16F80 80026780 0980013C */  lui        $at, %hi(Game_Lives)
/* 16F84 80026784 904222AC */  sw         $v0, %lo(Game_Lives)($at)
.L80026788:
/* 16F88 80026788 F7C3000C */  jal        GameLoop_Init
/* 16F8C 8002678C 0980103C */   lui       $s0, %hi(ETActor)
/* 16F90 80026790 0980033C */  lui        $v1, %hi(gWorld)
/* 16F94 80026794 3C56638C */  lw         $v1, %lo(gWorld)($v1)
/* 16F98 80026798 0980023C */  lui        $v0, %hi(gLevel)
/* 16F9C 8002679C 3456428C */  lw         $v0, %lo(gLevel)($v0)
/* 16FA0 800267A0 9C0780AF */  sw         $zero, %gp_rel(LevelLoaded)($gp)
/* 16FA4 800267A4 A00783AF */  sw         $v1, %gp_rel(oldgWorld)($gp)
/* 16FA8 800267A8 A40782AF */  sw         $v0, %gp_rel(oldgLevel)($gp)
/* 16FAC 800267AC E4CC000C */  jal        SetBeamDownSequence
/* 16FB0 800267B0 B05A1026 */   addiu     $s0, $s0, %lo(ETActor)
/* 16FB4 800267B4 0980013C */  lui        $at, %hi(Pad0)
/* 16FB8 800267B8 2C5920A4 */  sh         $zero, %lo(Pad0)($at)
/* 16FBC 800267BC 0980013C */  lui        $at, %hi(Trg0)
/* 16FC0 800267C0 305920A4 */  sh         $zero, %lo(Trg0)($at)
/* 16FC4 800267C4 E862000C */  jal        ETBrains
/* 16FC8 800267C8 21200002 */   addu      $a0, $s0, $zero
/* 16FCC 800267CC B667000C */  jal        ETCleanUpBrains
/* 16FD0 800267D0 21200002 */   addu      $a0, $s0, $zero
/* 16FD4 800267D4 117A000C */  jal        HUDOn
/* 16FD8 800267D8 00000000 */   nop
/* 16FDC 800267DC 3000BF8F */  lw         $ra, 0x30($sp)
/* 16FE0 800267E0 2C00B78F */  lw         $s7, 0x2C($sp)
/* 16FE4 800267E4 2800B68F */  lw         $s6, 0x28($sp)
/* 16FE8 800267E8 2400B58F */  lw         $s5, 0x24($sp)
/* 16FEC 800267EC 2000B48F */  lw         $s4, 0x20($sp)
/* 16FF0 800267F0 1C00B38F */  lw         $s3, 0x1C($sp)
/* 16FF4 800267F4 1800B28F */  lw         $s2, 0x18($sp)
/* 16FF8 800267F8 1400B18F */  lw         $s1, 0x14($sp)
/* 16FFC 800267FC 1000B08F */  lw         $s0, 0x10($sp)
/* 17000 80026800 0800E003 */  jr         $ra
/* 17004 80026804 3800BD27 */   addiu     $sp, $sp, 0x38
.size AttractModeService, . - AttractModeService
