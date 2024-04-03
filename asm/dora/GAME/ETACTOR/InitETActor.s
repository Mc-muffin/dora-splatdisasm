.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitETActor
/* 6C6C 8001646C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 6C70 80016470 60030224 */  addiu      $v0, $zero, 0x360
/* 6C74 80016474 3400BFAF */  sw         $ra, 0x34($sp)
/* 6C78 80016478 3000B4AF */  sw         $s4, 0x30($sp)
/* 6C7C 8001647C 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 6C80 80016480 2800B2AF */  sw         $s2, 0x28($sp)
/* 6C84 80016484 2400B1AF */  sw         $s1, 0x24($sp)
/* 6C88 80016488 2000B0AF */  sw         $s0, 0x20($sp)
/* 6C8C 8001648C 0980013C */  lui        $at, %hi(TWEAKFRICTION)
/* 6C90 80016490 304E22AC */  sw         $v0, %lo(TWEAKFRICTION)($at)
/* 6C94 80016494 880080AF */  sw         $zero, %gp_rel(BootsAndDoraRidingFlag)($gp)
/* 6C98 80016498 8C0080AF */  sw         $zero, %gp_rel(BootsAndDoraRidingDepth)($gp)
/* 6C9C 8001649C 900080AF */  sw         $zero, %gp_rel(BoatActorPtr)($gp)
/* 6CA0 800164A0 940080AF */  sw         $zero, %gp_rel(BoatParentActorPtr)($gp)
/* 6CA4 800164A4 640080AF */  sw         $zero, %gp_rel(SkateFlag)($gp)
/* 6CA8 800164A8 700080AF */  sw         $zero, %gp_rel(gETEndLevel)($gp)
/* 6CAC 800164AC 440080AF */  sw         $zero, %gp_rel(DoraWaitState)($gp)
/* 6CB0 800164B0 480080AF */  sw         $zero, %gp_rel(PLAYER_WAIT_FLAG)($gp)
/* 6CB4 800164B4 8529010C */  jal        InitPlayerTrack
/* 6CB8 800164B8 00000000 */   nop
/* 6CBC 800164BC 0180033C */  lui        $v1, %hi(D_80010000)
/* 6CC0 800164C0 00007124 */  addiu      $s1, $v1, %lo(D_80010000)
/* 6CC4 800164C4 B35C010C */  jal        GetSizeOfFile
/* 6CC8 800164C8 21202002 */   addu      $a0, $s1, $zero
/* 6CCC 800164CC 2B3F010C */  jal        new_malloc
/* 6CD0 800164D0 21204000 */   addu      $a0, $v0, $zero
/* 6CD4 800164D4 21804000 */  addu       $s0, $v0, $zero
/* 6CD8 800164D8 04000012 */  beqz       $s0, .L800164EC
/* 6CDC 800164DC 21202002 */   addu      $a0, $s1, $zero
/* 6CE0 800164E0 495C010C */  jal        LoadFile
/* 6CE4 800164E4 21280002 */   addu      $a1, $s0, $zero
/* 6CE8 800164E8 780090AF */  sw         $s0, %gp_rel(DoraExpressionFile)($gp)
.L800164EC:
/* 6CEC 800164EC 0180023C */  lui        $v0, %hi(D_80010020)
/* 6CF0 800164F0 20005124 */  addiu      $s1, $v0, %lo(D_80010020)
/* 6CF4 800164F4 B35C010C */  jal        GetSizeOfFile
/* 6CF8 800164F8 21202002 */   addu      $a0, $s1, $zero
/* 6CFC 800164FC 2B3F010C */  jal        new_malloc
/* 6D00 80016500 21204000 */   addu      $a0, $v0, $zero
/* 6D04 80016504 21804000 */  addu       $s0, $v0, $zero
/* 6D08 80016508 04000012 */  beqz       $s0, .L8001651C
/* 6D0C 8001650C 21202002 */   addu      $a0, $s1, $zero
/* 6D10 80016510 495C010C */  jal        LoadFile
/* 6D14 80016514 21280002 */   addu      $a1, $s0, $zero
/* 6D18 80016518 7C0090AF */  sw         $s0, %gp_rel(DoraSkatesFile)($gp)
.L8001651C:
/* 6D1C 8001651C 0180043C */  lui        $a0, %hi(D_80010040)
/* 6D20 80016520 40008424 */  addiu      $a0, $a0, %lo(D_80010040)
/* 6D24 80016524 21280000 */  addu       $a1, $zero, $zero
/* 6D28 80016528 0980013C */  lui        $at, %hi(TPageAlign)
/* 6D2C 8001652C 685020AC */  sw         $zero, %lo(TPageAlign)($at)
/* 6D30 80016530 AA2C010C */  jal        LoadModelAndTextures
/* 6D34 80016534 01000624 */   addiu     $a2, $zero, 0x1
/* 6D38 80016538 0980123C */  lui        $s2, %hi(ETActor)
/* 6D3C 8001653C B05A5026 */  addiu      $s0, $s2, %lo(ETActor)
/* 6D40 80016540 21200002 */  addu       $a0, $s0, $zero
/* 6D44 80016544 2C011426 */  addiu      $s4, $s0, 0x12C
/* 6D48 80016548 200102AE */  sw         $v0, 0x120($s0)
/* 6D4C 8001654C E3000224 */  addiu      $v0, $zero, 0xE3
/* 6D50 80016550 80010324 */  addiu      $v1, $zero, 0x180
/* 6D54 80016554 0980013C */  lui        $at, %hi(TPageAlign)
/* 6D58 80016558 685020AC */  sw         $zero, %lo(TPageAlign)($at)
/* 6D5C 8001655C 0980013C */  lui        $at, %hi(g_modelviewactor)
/* 6D60 80016560 B85930AC */  sw         $s0, %lo(g_modelviewactor)($at)
/* 6D64 80016564 5C0002AE */  sw         $v0, 0x5C($s0)
/* 6D68 80016568 00020224 */  addiu      $v0, $zero, 0x200
/* 6D6C 8001656C B05A43AE */  sw         $v1, %lo(ETActor)($s2)
/* 6D70 80016570 040002AE */  sw         $v0, 0x4($s0)
/* 6D74 80016574 00100224 */  addiu      $v0, $zero, 0x1000
/* 6D78 80016578 080003AE */  sw         $v1, 0x8($s0)
/* 6D7C 8001657C 0880033C */  lui        $v1, %hi(ETSpawn)
/* 6D80 80016580 0C546324 */  addiu      $v1, $v1, %lo(ETSpawn)
/* 6D84 80016584 140002AE */  sw         $v0, 0x14($s0)
/* 6D88 80016588 0980023C */  lui        $v0, %hi(Global_HSV_Index)
/* 6D8C 8001658C A057428C */  lw         $v0, %lo(Global_HSV_Index)($v0)
/* 6D90 80016590 0980083C */  lui        $t0, %hi(Global_VramIndex)
/* 6D94 80016594 A857088D */  lw         $t0, %lo(Global_VramIndex)($t0)
/* 6D98 80016598 0880063C */  lui        $a2, %hi(TestWorld + 0x20)
/* 6D9C 8001659C 440003AE */  sw         $v1, 0x44($s0)
/* 6DA0 800165A0 400002AE */  sw         $v0, 0x40($s0)
/* 6DA4 800165A4 1000628C */  lw         $v0, 0x10($v1)
/* 6DA8 800165A8 AC65C78C */  lw         $a3, %lo(TestWorld + 0x20)($a2)
/* 6DAC 800165AC 0980033C */  lui        $v1, %hi(Global_TPage1)
/* 6DB0 800165B0 6050638C */  lw         $v1, %lo(Global_TPage1)($v1)
/* 6DB4 800165B4 0980063C */  lui        $a2, %hi(Global_TPage2)
/* 6DB8 800165B8 6450C68C */  lw         $a2, %lo(Global_TPage2)($a2)
/* 6DBC 800165BC 21288002 */  addu       $a1, $s4, $zero
/* 6DC0 800165C0 F81288AF */  sw         $t0, %gp_rel(DoraVramIndex)($gp)
/* 6DC4 800165C4 00110200 */  sll        $v0, $v0, 4
/* 6DC8 800165C8 21104700 */  addu       $v0, $v0, $a3
/* 6DCC 800165CC 0980073C */  lui        $a3, %hi(Global_Clut)
/* 6DD0 800165D0 AC57E78C */  lw         $a3, %lo(Global_Clut)($a3)
/* 6DD4 800165D4 0400498C */  lw         $t1, 0x4($v0)
/* 6DD8 800165D8 FFFF0825 */  addiu      $t0, $t0, -0x1
/* 6DDC 800165DC BC1288AF */  sw         $t0, %gp_rel(SkatesVramIndex)($gp)
/* 6DE0 800165E0 E01283AF */  sw         $v1, %gp_rel(ETTpage1)($gp)
/* 6DE4 800165E4 E41286AF */  sw         $a2, %gp_rel(ETTpage2)($gp)
/* 6DE8 800165E8 C41287AF */  sw         $a3, %gp_rel(ETClut)($gp)
/* 6DEC 800165EC 5AE2000C */  jal        InitAnimateActor
/* 6DF0 800165F0 840109AE */   sw        $t1, 0x184($s0)
/* 6DF4 800165F4 21200002 */  addu       $a0, $s0, $zero
/* 6DF8 800165F8 58011326 */  addiu      $s3, $s0, 0x158
/* 6DFC 800165FC 5AE2000C */  jal        InitAnimateActor
/* 6E00 80016600 21286002 */   addu      $a1, $s3, $zero
/* 6E04 80016604 2001048E */  lw         $a0, 0x120($s0)
/* 6E08 80016608 82E3000C */  jal        InitModelJointsBuffer
/* 6E0C 8001660C 04001124 */   addiu     $s1, $zero, 0x4
/* 6E10 80016610 21200002 */  addu       $a0, $s0, $zero
/* 6E14 80016614 28E3000C */  jal        GetSeqNumFrames
/* 6E18 80016618 21280000 */   addu      $a1, $zero, $zero
/* 6E1C 8001661C 21200002 */  addu       $a0, $s0, $zero
/* 6E20 80016620 21280000 */  addu       $a1, $zero, $zero
/* 6E24 80016624 21300000 */  addu       $a2, $zero, $zero
/* 6E28 80016628 21384000 */  addu       $a3, $v0, $zero
/* 6E2C 8001662C 1000B1AF */  sw         $s1, 0x10($sp)
/* 6E30 80016630 1400A0AF */  sw         $zero, 0x14($sp)
/* 6E34 80016634 72E2000C */  jal        RequestAnim
/* 6E38 80016638 1800B4AF */   sw        $s4, 0x18($sp)
/* 6E3C 8001663C 21200002 */  addu       $a0, $s0, $zero
/* 6E40 80016640 28E3000C */  jal        GetSeqNumFrames
/* 6E44 80016644 21280000 */   addu      $a1, $zero, $zero
/* 6E48 80016648 21200002 */  addu       $a0, $s0, $zero
/* 6E4C 8001664C 21280000 */  addu       $a1, $zero, $zero
/* 6E50 80016650 21300000 */  addu       $a2, $zero, $zero
/* 6E54 80016654 21384000 */  addu       $a3, $v0, $zero
/* 6E58 80016658 1000B1AF */  sw         $s1, 0x10($sp)
/* 6E5C 8001665C 1400A0AF */  sw         $zero, 0x14($sp)
/* 6E60 80016660 72E2000C */  jal        RequestAnim
/* 6E64 80016664 1800B3AF */   sw        $s3, 0x18($sp)
/* 6E68 80016668 6C000426 */  addiu      $a0, $s0, 0x6C
/* 6E6C 8001666C 0A000224 */  addiu      $v0, $zero, 0xA
/* 6E70 80016670 B05A458E */  lw         $a1, %lo(ETActor)($s2)
/* 6E74 80016674 0400068E */  lw         $a2, 0x4($s0)
/* 6E78 80016678 0800078E */  lw         $a3, 0x8($s0)
/* 6E7C 8001667C 40000324 */  addiu      $v1, $zero, 0x40
/* 6E80 80016680 440100AE */  sw         $zero, 0x144($s0)
/* 6E84 80016684 700100AE */  sw         $zero, 0x170($s0)
/* 6E88 80016688 1000A2AF */  sw         $v0, 0x10($sp)
/* 6E8C 8001668C 1400A3AF */  sw         $v1, 0x14($sp)
/* 6E90 80016690 8001028E */  lw         $v0, 0x180($s0)
/* 6E94 80016694 FEFF0324 */  addiu      $v1, $zero, -0x2
/* 6E98 80016698 24104300 */  and        $v0, $v0, $v1
/* 6E9C 8001669C B2F9000C */  jal        InitObjectPhysics
/* 6EA0 800166A0 800102AE */   sw        $v0, 0x180($s0)
/* 6EA4 800166A4 21200002 */  addu       $a0, $s0, $zero
/* 6EA8 800166A8 01000524 */  addiu      $a1, $zero, 0x1
/* 6EAC 800166AC 21308002 */  addu       $a2, $s4, $zero
/* 6EB0 800166B0 38000224 */  addiu      $v0, $zero, 0x38
/* 6EB4 800166B4 17000324 */  addiu      $v1, $zero, 0x17
/* 6EB8 800166B8 500002AE */  sw         $v0, 0x50($s0)
/* 6EBC 800166BC 4C0002AE */  sw         $v0, 0x4C($s0)
/* 6EC0 800166C0 1F000224 */  addiu      $v0, $zero, 0x1F
/* 6EC4 800166C4 200003AE */  sw         $v1, 0x20($s0)
/* 6EC8 800166C8 240002AE */  sw         $v0, 0x24($s0)
/* 6ECC 800166CC 280003AE */  sw         $v1, 0x28($s0)
/* 6ED0 800166D0 EEE2000C */  jal        SetAnim
/* 6ED4 800166D4 0C0000AE */   sw        $zero, 0xC($s0)
/* 6ED8 800166D8 F000038E */  lw         $v1, 0xF0($s0)
/* 6EDC 800166DC 1000028E */  lw         $v0, 0x10($s0)
/* 6EE0 800166E0 3400BF8F */  lw         $ra, 0x34($sp)
/* 6EE4 800166E4 3000B48F */  lw         $s4, 0x30($sp)
/* 6EE8 800166E8 2C00B38F */  lw         $s3, 0x2C($sp)
/* 6EEC 800166EC 2800B28F */  lw         $s2, 0x28($sp)
/* 6EF0 800166F0 2400B18F */  lw         $s1, 0x24($sp)
/* 6EF4 800166F4 000C4234 */  ori        $v0, $v0, 0xC00
/* 6EF8 800166F8 480003AE */  sw         $v1, 0x48($s0)
/* 6EFC 800166FC 100002AE */  sw         $v0, 0x10($s0)
/* 6F00 80016700 2000B08F */  lw         $s0, 0x20($sp)
/* 6F04 80016704 0800E003 */  jr         $ra
/* 6F08 80016708 3800BD27 */   addiu     $sp, $sp, 0x38
.size InitETActor, . - InitETActor
