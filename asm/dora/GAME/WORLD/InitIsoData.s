.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitIsoData
/* 13454 80022C54 30FFBD27 */  addiu      $sp, $sp, -0xD0
/* 13458 80022C58 21200000 */  addu       $a0, $zero, $zero
/* 1345C 80022C5C CC00BFAF */  sw         $ra, 0xCC($sp)
/* 13460 80022C60 C800B6AF */  sw         $s6, 0xC8($sp)
/* 13464 80022C64 C400B5AF */  sw         $s5, 0xC4($sp)
/* 13468 80022C68 C000B4AF */  sw         $s4, 0xC0($sp)
/* 1346C 80022C6C BC00B3AF */  sw         $s3, 0xBC($sp)
/* 13470 80022C70 B800B2AF */  sw         $s2, 0xB8($sp)
/* 13474 80022C74 B400B1AF */  sw         $s1, 0xB4($sp)
/* 13478 80022C78 4929010C */  jal        SetFriendlyFollowLost
/* 1347C 80022C7C B000B0AF */   sw        $s0, 0xB0($sp)
/* 13480 80022C80 D99F000C */  jal        GenerateWorldName
/* 13484 80022C84 6000A427 */   addiu     $a0, $sp, 0x60
/* 13488 80022C88 2B3F010C */  jal        new_malloc
/* 1348C 80022C8C 50030424 */   addiu     $a0, $zero, 0x350
/* 13490 80022C90 0880033C */  lui        $v1, %hi(TestWorld)
/* 13494 80022C94 8C656424 */  addiu      $a0, $v1, %lo(TestWorld)
/* 13498 80022C98 21280000 */  addu       $a1, $zero, $zero
/* 1349C 80022C9C 21B06000 */  addu       $s6, $v1, $zero
/* 134A0 80022CA0 21508000 */  addu       $t2, $a0, $zero
/* 134A4 80022CA4 0A80153C */  lui        $s5, %hi(AnimationList)
/* 134A8 80022CA8 8051A926 */  addiu      $t1, $s5, %lo(AnimationList)
/* 134AC 80022CAC 0C002C25 */  addiu      $t4, $t1, 0xC
/* 134B0 80022CB0 200082AC */  sw         $v0, 0x20($a0)
/* 134B4 80022CB4 0100AB24 */  addiu      $t3, $a1, 0x1
.L80022CB8:
/* 134B8 80022CB8 00310500 */  sll        $a2, $a1, 4
/* 134BC 80022CBC 1D000824 */  addiu      $t0, $zero, 0x1D
/* 134C0 80022CC0 40210500 */  sll        $a0, $a1, 5
/* 134C4 80022CC4 2000428D */  lw         $v0, 0x20($t2)
/* 134C8 80022CC8 23208500 */  subu       $a0, $a0, $a1
/* 134CC 80022CCC 2110C200 */  addu       $v0, $a2, $v0
/* 134D0 80022CD0 0C0040AC */  sw         $zero, 0xC($v0)
/* 134D4 80022CD4 2000438D */  lw         $v1, 0x20($t2)
/* 134D8 80022CD8 80200400 */  sll        $a0, $a0, 2
/* 134DC 80022CDC 2118C300 */  addu       $v1, $a2, $v1
/* 134E0 80022CE0 080060AC */  sw         $zero, 0x8($v1)
/* 134E4 80022CE4 21182401 */  addu       $v1, $t1, $a0
/* 134E8 80022CE8 78006724 */  addiu      $a3, $v1, 0x78
/* 134EC 80022CEC 2000428D */  lw         $v0, 0x20($t2)
/* 134F0 80022CF0 21188C00 */  addu       $v1, $a0, $t4
/* 134F4 80022CF4 2110C200 */  addu       $v0, $a2, $v0
/* 134F8 80022CF8 000040AC */  sw         $zero, 0x0($v0)
/* 134FC 80022CFC 21102401 */  addu       $v0, $t1, $a0
/* 13500 80022D00 000060AC */  sw         $zero, 0x0($v1)
/* 13504 80022D04 21184000 */  addu       $v1, $v0, $zero
/* 13508 80022D08 100040AC */  sw         $zero, 0x10($v0)
/* 1350C 80022D0C 180060AC */  sw         $zero, 0x18($v1)
/* 13510 80022D10 2000458D */  lw         $a1, 0x20($t2)
/* 13514 80022D14 21208900 */  addu       $a0, $a0, $t1
/* 13518 80022D18 1C0040AC */  sw         $zero, 0x1C($v0)
/* 1351C 80022D1C 2130C500 */  addu       $a2, $a2, $a1
/* 13520 80022D20 0400C4AC */  sw         $a0, 0x4($a2)
/* 13524 80022D24 000080AC */  sw         $zero, 0x0($a0)
.L80022D28:
/* 13528 80022D28 0000E0AC */  sw         $zero, 0x0($a3)
/* 1352C 80022D2C FFFF0825 */  addiu      $t0, $t0, -0x1
/* 13530 80022D30 FDFF0105 */  bgez       $t0, .L80022D28
/* 13534 80022D34 FCFFE724 */   addiu     $a3, $a3, -0x4
/* 13538 80022D38 00140B00 */  sll        $v0, $t3, 16
/* 1353C 80022D3C 032C0200 */  sra        $a1, $v0, 16
/* 13540 80022D40 3500A328 */  slti       $v1, $a1, 0x35
/* 13544 80022D44 DCFF6014 */  bnez       $v1, .L80022CB8
/* 13548 80022D48 0100AB24 */   addiu     $t3, $a1, 0x1
/* 1354C 80022D4C 0180043C */  lui        $a0, %hi(D_80010998)
/* 13550 80022D50 52E2000C */  jal        LoadAnimations
/* 13554 80022D54 98098424 */   addiu     $a0, $a0, %lo(D_80010998)
/* 13558 80022D58 0180043C */  lui        $a0, %hi(D_800109B8)
/* 1355C 80022D5C B8098424 */  addiu      $a0, $a0, %lo(D_800109B8)
/* 13560 80022D60 8051B026 */  addiu      $s0, $s5, %lo(AnimationList)
/* 13564 80022D64 040002AE */  sw         $v0, 0x4($s0)
/* 13568 80022D68 0C0002AE */  sw         $v0, 0xC($s0)
/* 1356C 80022D6C 200002AE */  sw         $v0, 0x20($s0)
/* 13570 80022D70 700002AE */  sw         $v0, 0x70($s0)
/* 13574 80022D74 640002AE */  sw         $v0, 0x64($s0)
/* 13578 80022D78 6C0002AE */  sw         $v0, 0x6C($s0)
/* 1357C 80022D7C 680002AE */  sw         $v0, 0x68($s0)
/* 13580 80022D80 600002AE */  sw         $v0, 0x60($s0)
/* 13584 80022D84 5C0002AE */  sw         $v0, 0x5C($s0)
/* 13588 80022D88 180002AE */  sw         $v0, 0x18($s0)
/* 1358C 80022D8C 140002AE */  sw         $v0, 0x14($s0)
/* 13590 80022D90 100002AE */  sw         $v0, 0x10($s0)
/* 13594 80022D94 4C0002AE */  sw         $v0, 0x4C($s0)
/* 13598 80022D98 480002AE */  sw         $v0, 0x48($s0)
/* 1359C 80022D9C 240002AE */  sw         $v0, 0x24($s0)
/* 135A0 80022DA0 1C0002AE */  sw         $v0, 0x1C($s0)
/* 135A4 80022DA4 52E2000C */  jal        LoadAnimations
/* 135A8 80022DA8 340002AE */   sw        $v0, 0x34($s0)
/* 135AC 80022DAC 0180043C */  lui        $a0, %hi(D_800109D8)
/* 135B0 80022DB0 D8098424 */  addiu      $a0, $a0, %lo(D_800109D8)
/* 135B4 80022DB4 52E2000C */  jal        LoadAnimations
/* 135B8 80022DB8 080002AE */   sw        $v0, 0x8($s0)
/* 135BC 80022DBC 0180043C */  lui        $a0, %hi(D_800109F8)
/* 135C0 80022DC0 F8098424 */  addiu      $a0, $a0, %lo(D_800109F8)
/* 135C4 80022DC4 52E2000C */  jal        LoadAnimations
/* 135C8 80022DC8 280002AE */   sw        $v0, 0x28($s0)
/* 135CC 80022DCC 0180043C */  lui        $a0, %hi(D_80010A18)
/* 135D0 80022DD0 180A8424 */  addiu      $a0, $a0, %lo(D_80010A18)
/* 135D4 80022DD4 52E2000C */  jal        LoadAnimations
/* 135D8 80022DD8 340002AE */   sw        $v0, 0x34($s0)
/* 135DC 80022DDC 0180043C */  lui        $a0, %hi(D_80010A38)
/* 135E0 80022DE0 380A8424 */  addiu      $a0, $a0, %lo(D_80010A38)
/* 135E4 80022DE4 52E2000C */  jal        LoadAnimations
/* 135E8 80022DE8 580002AE */   sw        $v0, 0x58($s0)
/* 135EC 80022DEC 0180043C */  lui        $a0, %hi(D_80010A58)
/* 135F0 80022DF0 580A8424 */  addiu      $a0, $a0, %lo(D_80010A58)
/* 135F4 80022DF4 52E2000C */  jal        LoadAnimations
/* 135F8 80022DF8 2C0002AE */   sw        $v0, 0x2C($s0)
/* 135FC 80022DFC 0180043C */  lui        $a0, %hi(D_80010A78)
/* 13600 80022E00 780A8424 */  addiu      $a0, $a0, %lo(D_80010A78)
/* 13604 80022E04 52E2000C */  jal        LoadAnimations
/* 13608 80022E08 380002AE */   sw        $v0, 0x38($s0)
/* 1360C 80022E0C 0180043C */  lui        $a0, %hi(D_80010A98)
/* 13610 80022E10 980A8424 */  addiu      $a0, $a0, %lo(D_80010A98)
/* 13614 80022E14 52E2000C */  jal        LoadAnimations
/* 13618 80022E18 300002AE */   sw        $v0, 0x30($s0)
/* 1361C 80022E1C 0180043C */  lui        $a0, %hi(D_80010AB8)
/* 13620 80022E20 B80A8424 */  addiu      $a0, $a0, %lo(D_80010AB8)
/* 13624 80022E24 52E2000C */  jal        LoadAnimations
/* 13628 80022E28 3C0002AE */   sw        $v0, 0x3C($s0)
/* 1362C 80022E2C 0180043C */  lui        $a0, %hi(D_80010AD8)
/* 13630 80022E30 D80A8424 */  addiu      $a0, $a0, %lo(D_80010AD8)
/* 13634 80022E34 52E2000C */  jal        LoadAnimations
/* 13638 80022E38 400002AE */   sw        $v0, 0x40($s0)
/* 1363C 80022E3C 0180043C */  lui        $a0, %hi(D_80010AF8)
/* 13640 80022E40 F80A8424 */  addiu      $a0, $a0, %lo(D_80010AF8)
/* 13644 80022E44 52E2000C */  jal        LoadAnimations
/* 13648 80022E48 800002AE */   sw        $v0, 0x80($s0)
/* 1364C 80022E4C 1000A427 */  addiu      $a0, $sp, 0x10
/* 13650 80022E50 0180053C */  lui        $a1, %hi(D_80010B18)
/* 13654 80022E54 180BA524 */  addiu      $a1, $a1, %lo(D_80010B18)
/* 13658 80022E58 0980033C */  lui        $v1, %hi(gworldchars)
/* 1365C 80022E5C 4C567224 */  addiu      $s2, $v1, %lo(gworldchars)
/* 13660 80022E60 21304002 */  addu       $a2, $s2, $zero
/* 13664 80022E64 440002AE */  sw         $v0, 0x44($s0)
/* 13668 80022E68 18000224 */  addiu      $v0, $zero, 0x18
/* 1366C 80022E6C 53C5010C */  jal        sprintf
/* 13670 80022E70 8051A2AE */   sw        $v0, %lo(AnimationList)($s5)
/* 13674 80022E74 1000A427 */  addiu      $a0, $sp, 0x10
/* 13678 80022E78 21280000 */  addu       $a1, $zero, $zero
/* 1367C 80022E7C AA2C010C */  jal        LoadModelAndTextures
/* 13680 80022E80 21300000 */   addu      $a2, $zero, $zero
/* 13684 80022E84 1000A427 */  addiu      $a0, $sp, 0x10
/* 13688 80022E88 8C65D126 */  addiu      $s1, $s6, %lo(TestWorld)
/* 1368C 80022E8C 0180053C */  lui        $a1, %hi(D_80010B30)
/* 13690 80022E90 2000268E */  lw         $a2, 0x20($s1)
/* 13694 80022E94 300BA524 */  addiu      $a1, $a1, %lo(D_80010B30)
/* 13698 80022E98 8000C2AC */  sw         $v0, 0x80($a2)
/* 1369C 80022E9C 2000238E */  lw         $v1, 0x20($s1)
/* 136A0 80022EA0 E0030226 */  addiu      $v0, $s0, 0x3E0
/* 136A4 80022EA4 840062AC */  sw         $v0, 0x84($v1)
/* 136A8 80022EA8 0400078E */  lw         $a3, 0x4($s0)
/* 136AC 80022EAC 21304002 */  addu       $a2, $s2, $zero
/* 136B0 80022EB0 E00300AE */  sw         $zero, 0x3E0($s0)
/* 136B4 80022EB4 53C5010C */  jal        sprintf
/* 136B8 80022EB8 E40307AE */   sw        $a3, 0x3E4($s0)
/* 136BC 80022EBC 1000A427 */  addiu      $a0, $sp, 0x10
/* 136C0 80022EC0 21280000 */  addu       $a1, $zero, $zero
/* 136C4 80022EC4 AA2C010C */  jal        LoadModelAndTextures
/* 136C8 80022EC8 21300000 */   addu      $a2, $zero, $zero
/* 136CC 80022ECC 2000238E */  lw         $v1, 0x20($s1)
/* 136D0 80022ED0 0980043C */  lui        $a0, %hi(gWorld)
/* 136D4 80022ED4 3C56848C */  lw         $a0, %lo(gWorld)($a0)
/* 136D8 80022ED8 0980053C */  lui        $a1, %hi(gLevel)
/* 136DC 80022EDC 3456A58C */  lw         $a1, %lo(gLevel)($a1)
/* 136E0 80022EE0 600062AC */  sw         $v0, 0x60($v1)
/* 136E4 80022EE4 2000268E */  lw         $a2, 0x20($s1)
/* 136E8 80022EE8 E8020226 */  addiu      $v0, $s0, 0x2E8
/* 136EC 80022EEC 6400C2AC */  sw         $v0, 0x64($a2)
/* 136F0 80022EF0 0400038E */  lw         $v1, 0x4($s0)
/* 136F4 80022EF4 E80200AE */  sw         $zero, 0x2E8($s0)
/* 136F8 80022EF8 F887000C */  jal        LoadLevel
/* 136FC 80022EFC EC0203AE */   sw        $v1, 0x2EC($s0)
/* 13700 80022F00 E60D010C */  jal        ClearSpawnFlagForAllActorsInWorld
/* 13704 80022F04 20000424 */   addiu     $a0, $zero, 0x20
/* 13708 80022F08 F80D010C */  jal        SetSpawnFlagForAllActorsInWorld
/* 1370C 80022F0C 40000424 */   addiu     $a0, $zero, 0x40
/* 13710 80022F10 F80D010C */  jal        SetSpawnFlagForAllActorsInWorld
/* 13714 80022F14 80000424 */   addiu     $a0, $zero, 0x80
/* 13718 80022F18 08000424 */  addiu      $a0, $zero, 0x8
/* 1371C 80022F1C BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 13720 80022F20 80000524 */   addiu     $a1, $zero, 0x80
/* 13724 80022F24 07000424 */  addiu      $a0, $zero, 0x7
/* 13728 80022F28 BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 1372C 80022F2C 80000524 */   addiu     $a1, $zero, 0x80
/* 13730 80022F30 06000424 */  addiu      $a0, $zero, 0x6
/* 13734 80022F34 BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 13738 80022F38 80000524 */   addiu     $a1, $zero, 0x80
/* 1373C 80022F3C 09000424 */  addiu      $a0, $zero, 0x9
/* 13740 80022F40 BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 13744 80022F44 80000524 */   addiu     $a1, $zero, 0x80
/* 13748 80022F48 0A000424 */  addiu      $a0, $zero, 0xA
/* 1374C 80022F4C BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 13750 80022F50 80000524 */   addiu     $a1, $zero, 0x80
/* 13754 80022F54 0B000424 */  addiu      $a0, $zero, 0xB
/* 13758 80022F58 BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 1375C 80022F5C 80000524 */   addiu     $a1, $zero, 0x80
/* 13760 80022F60 0C000424 */  addiu      $a0, $zero, 0xC
/* 13764 80022F64 BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 13768 80022F68 80000524 */   addiu     $a1, $zero, 0x80
/* 1376C 80022F6C 0D000424 */  addiu      $a0, $zero, 0xD
/* 13770 80022F70 BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 13774 80022F74 80000524 */   addiu     $a1, $zero, 0x80
/* 13778 80022F78 1D000424 */  addiu      $a0, $zero, 0x1D
/* 1377C 80022F7C BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 13780 80022F80 80000524 */   addiu     $a1, $zero, 0x80
/* 13784 80022F84 1E000424 */  addiu      $a0, $zero, 0x1E
/* 13788 80022F88 BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 1378C 80022F8C 80000524 */   addiu     $a1, $zero, 0x80
/* 13790 80022F90 1F000424 */  addiu      $a0, $zero, 0x1F
/* 13794 80022F94 BB0D010C */  jal        ClearSpawnFlagForActorsInWorld
/* 13798 80022F98 80000524 */   addiu     $a1, $zero, 0x80
/* 1379C 80022F9C 9013838F */  lw         $v1, %gp_rel(g_pickup_mesh)($gp)
/* 137A0 80022FA0 01000224 */  addiu      $v0, $zero, 0x1
/* 137A4 80022FA4 05006214 */  bne        $v1, $v0, .L80022FBC
/* 137A8 80022FA8 02000224 */   addiu     $v0, $zero, 0x2
/* 137AC 80022FAC 1000A427 */  addiu      $a0, $sp, 0x10
/* 137B0 80022FB0 0180053C */  lui        $a1, %hi(D_80010B4C)
/* 137B4 80022FB4 F48B0008 */  j          .L80022FD0
/* 137B8 80022FB8 4C0BA524 */   addiu     $a1, $a1, %lo(D_80010B4C)
.L80022FBC:
/* 137BC 80022FBC 08006214 */  bne        $v1, $v0, .L80022FE0
/* 137C0 80022FC0 00000000 */   nop
/* 137C4 80022FC4 1000A427 */  addiu      $a0, $sp, 0x10
/* 137C8 80022FC8 0180053C */  lui        $a1, %hi(D_80010B68)
/* 137CC 80022FCC 680BA524 */  addiu      $a1, $a1, %lo(D_80010B68)
.L80022FD0:
/* 137D0 80022FD0 53C5010C */  jal        sprintf
/* 137D4 80022FD4 21304002 */   addu      $a2, $s2, $zero
/* 137D8 80022FD8 FE8B0008 */  j          .L80022FF8
/* 137DC 80022FDC 1000A427 */   addiu     $a0, $sp, 0x10
.L80022FE0:
/* 137E0 80022FE0 1000A427 */  addiu      $a0, $sp, 0x10
/* 137E4 80022FE4 0180053C */  lui        $a1, %hi(D_80010B84)
/* 137E8 80022FE8 840BA524 */  addiu      $a1, $a1, %lo(D_80010B84)
/* 137EC 80022FEC 53C5010C */  jal        sprintf
/* 137F0 80022FF0 21304002 */   addu      $a2, $s2, $zero
/* 137F4 80022FF4 1000A427 */  addiu      $a0, $sp, 0x10
.L80022FF8:
/* 137F8 80022FF8 21280000 */  addu       $a1, $zero, $zero
/* 137FC 80022FFC AA2C010C */  jal        LoadModelAndTextures
/* 13800 80023000 21300000 */   addu      $a2, $zero, $zero
/* 13804 80023004 8C65D426 */  addiu      $s4, $s6, %lo(TestWorld)
/* 13808 80023008 0180043C */  lui        $a0, %hi(D_80010BA0)
/* 1380C 8002300C A00B8424 */  addiu      $a0, $a0, %lo(D_80010BA0)
/* 13810 80023010 2000838E */  lw         $v1, 0x20($s4)
/* 13814 80023014 8051B326 */  addiu      $s3, $s5, %lo(AnimationList)
/* 13818 80023018 700062AC */  sw         $v0, 0x70($v1)
/* 1381C 8002301C 2000838E */  lw         $v1, 0x20($s4)
/* 13820 80023020 64036226 */  addiu      $v0, $s3, 0x364
/* 13824 80023024 52E2000C */  jal        LoadAnimations
/* 13828 80023028 740062AC */   sw        $v0, 0x74($v1)
/* 1382C 8002302C 0180103C */  lui        $s0, %hi(D_80010BBC)
/* 13830 80023030 BC0B1026 */  addiu      $s0, $s0, %lo(D_80010BBC)
/* 13834 80023034 21200002 */  addu       $a0, $s0, $zero
/* 13838 80023038 24000524 */  addiu      $a1, $zero, 0x24
/* 1383C 8002303C 01001224 */  addiu      $s2, $zero, 0x1
/* 13840 80023040 680362AE */  sw         $v0, 0x368($s3)
/* 13844 80023044 D28A000C */  jal        InitKeyActor
/* 13848 80023048 640372AE */   sw        $s2, 0x364($s3)
/* 1384C 8002304C 21200002 */  addu       $a0, $s0, $zero
/* 13850 80023050 D28A000C */  jal        InitKeyActor
/* 13854 80023054 25000524 */   addiu     $a1, $zero, 0x25
/* 13858 80023058 0180043C */  lui        $a0, %hi(D_80010BD8)
/* 1385C 8002305C D80B8424 */  addiu      $a0, $a0, %lo(D_80010BD8)
/* 13860 80023060 D28A000C */  jal        InitKeyActor
/* 13864 80023064 26000524 */   addiu     $a1, $zero, 0x26
/* 13868 80023068 0180043C */  lui        $a0, %hi(D_80010BF4)
/* 1386C 8002306C F40B8424 */  addiu      $a0, $a0, %lo(D_80010BF4)
/* 13870 80023070 D28A000C */  jal        InitKeyActor
/* 13874 80023074 27000524 */   addiu     $a1, $zero, 0x27
/* 13878 80023078 0180043C */  lui        $a0, %hi(D_80010C10)
/* 1387C 8002307C 100C8424 */  addiu      $a0, $a0, %lo(D_80010C10)
/* 13880 80023080 D28A000C */  jal        InitKeyActor
/* 13884 80023084 28000524 */   addiu     $a1, $zero, 0x28
/* 13888 80023088 0180043C */  lui        $a0, %hi(D_80010C2C)
/* 1388C 8002308C 2C0C8424 */  addiu      $a0, $a0, %lo(D_80010C2C)
/* 13890 80023090 D28A000C */  jal        InitKeyActor
/* 13894 80023094 29000524 */   addiu     $a1, $zero, 0x29
/* 13898 80023098 0180043C */  lui        $a0, %hi(D_80010C48)
/* 1389C 8002309C 480C8424 */  addiu      $a0, $a0, %lo(D_80010C48)
/* 138A0 800230A0 D28A000C */  jal        InitKeyActor
/* 138A4 800230A4 2A000524 */   addiu     $a1, $zero, 0x2A
/* 138A8 800230A8 0180043C */  lui        $a0, %hi(D_80010C64)
/* 138AC 800230AC 640C8424 */  addiu      $a0, $a0, %lo(D_80010C64)
/* 138B0 800230B0 D28A000C */  jal        InitKeyActor
/* 138B4 800230B4 2B000524 */   addiu     $a1, $zero, 0x2B
/* 138B8 800230B8 0180043C */  lui        $a0, %hi(D_80010C80)
/* 138BC 800230BC 800C8424 */  addiu      $a0, $a0, %lo(D_80010C80)
/* 138C0 800230C0 D28A000C */  jal        InitKeyActor
/* 138C4 800230C4 2C000524 */   addiu     $a1, $zero, 0x2C
/* 138C8 800230C8 0180043C */  lui        $a0, %hi(D_80010C9C)
/* 138CC 800230CC 9C0C8424 */  addiu      $a0, $a0, %lo(D_80010C9C)
/* 138D0 800230D0 D28A000C */  jal        InitKeyActor
/* 138D4 800230D4 2D000524 */   addiu     $a1, $zero, 0x2D
/* 138D8 800230D8 0180043C */  lui        $a0, %hi(D_80010CB4)
/* 138DC 800230DC B40C8424 */  addiu      $a0, $a0, %lo(D_80010CB4)
/* 138E0 800230E0 D28A000C */  jal        InitKeyActor
/* 138E4 800230E4 2E000524 */   addiu     $a1, $zero, 0x2E
/* 138E8 800230E8 0180043C */  lui        $a0, %hi(D_80010CD0)
/* 138EC 800230EC D00C8424 */  addiu      $a0, $a0, %lo(D_80010CD0)
/* 138F0 800230F0 D28A000C */  jal        InitKeyActor
/* 138F4 800230F4 30000524 */   addiu     $a1, $zero, 0x30
/* 138F8 800230F8 0180043C */  lui        $a0, %hi(D_80010CEC)
/* 138FC 800230FC EC0C8424 */  addiu      $a0, $a0, %lo(D_80010CEC)
/* 13900 80023100 D28A000C */  jal        InitKeyActor
/* 13904 80023104 31000524 */   addiu     $a1, $zero, 0x31
/* 13908 80023108 0180043C */  lui        $a0, %hi(D_80010D08)
/* 1390C 8002310C 080D8424 */  addiu      $a0, $a0, %lo(D_80010D08)
/* 13910 80023110 D28A000C */  jal        InitKeyActor
/* 13914 80023114 25000524 */   addiu     $a1, $zero, 0x25
/* 13918 80023118 0180113C */  lui        $s1, %hi(D_80010D24)
/* 1391C 8002311C 240D3126 */  addiu      $s1, $s1, %lo(D_80010D24)
/* 13920 80023120 21202002 */  addu       $a0, $s1, $zero
/* 13924 80023124 10000524 */  addiu      $a1, $zero, 0x10
/* 13928 80023128 0980103C */  lui        $s0, %hi(D_800948D4)
/* 1392C 8002312C D4481026 */  addiu      $s0, $s0, %lo(D_800948D4)
/* 13930 80023130 2000828E */  lw         $v0, 0x20($s4)
/* 13934 80023134 21300002 */  addu       $a2, $s0, $zero
/* 13938 80023138 E889000C */  jal        InitEnemyActor
/* 1393C 8002313C 0C0152AC */   sw        $s2, 0x10C($v0)
/* 13940 80023140 21202002 */  addu       $a0, $s1, $zero
/* 13944 80023144 10000524 */  addiu      $a1, $zero, 0x10
/* 13948 80023148 0980023C */  lui        $v0, %hi(Global_VramIndex)
/* 1394C 8002314C A857428C */  lw         $v0, %lo(Global_VramIndex)($v0)
/* 13950 80023150 00000000 */  nop
/* 13954 80023154 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 13958 80023158 0980013C */  lui        $at, %hi(BootsVramIndex)
/* 1395C 8002315C AC5622AC */  sw         $v0, %lo(BootsVramIndex)($at)
/* 13960 80023160 6489000C */  jal        InitJumpActor
/* 13964 80023164 21300002 */   addu      $a2, $s0, $zero
/* 13968 80023168 0180043C */  lui        $a0, %hi(D_80010D38)
/* 1396C 8002316C 380D8424 */  addiu      $a0, $a0, %lo(D_80010D38)
/* 13970 80023170 11000524 */  addiu      $a1, $zero, 0x11
/* 13974 80023174 0980063C */  lui        $a2, %hi(D_800948D8)
/* 13978 80023178 E889000C */  jal        InitEnemyActor
/* 1397C 8002317C D848C624 */   addiu     $a2, $a2, %lo(D_800948D8)
/* 13980 80023180 0180043C */  lui        $a0, %hi(D_80010D4C)
/* 13984 80023184 4C0D8424 */  addiu      $a0, $a0, %lo(D_80010D4C)
/* 13988 80023188 12000524 */  addiu      $a1, $zero, 0x12
/* 1398C 8002318C 0980063C */  lui        $a2, %hi(D_800948DC)
/* 13990 80023190 E889000C */  jal        InitEnemyActor
/* 13994 80023194 DC48C624 */   addiu     $a2, $a2, %lo(D_800948DC)
/* 13998 80023198 0180043C */  lui        $a0, %hi(D_80010D60)
/* 1399C 8002319C 600D8424 */  addiu      $a0, $a0, %lo(D_80010D60)
/* 139A0 800231A0 13000524 */  addiu      $a1, $zero, 0x13
/* 139A4 800231A4 0980063C */  lui        $a2, %hi(D_800948E0)
/* 139A8 800231A8 E889000C */  jal        InitEnemyActor
/* 139AC 800231AC E048C624 */   addiu     $a2, $a2, %lo(D_800948E0)
/* 139B0 800231B0 0180043C */  lui        $a0, %hi(D_80010D74)
/* 139B4 800231B4 740D8424 */  addiu      $a0, $a0, %lo(D_80010D74)
/* 139B8 800231B8 14000524 */  addiu      $a1, $zero, 0x14
/* 139BC 800231BC 0980063C */  lui        $a2, %hi(D_800948E4)
/* 139C0 800231C0 E889000C */  jal        InitEnemyActor
/* 139C4 800231C4 E448C624 */   addiu     $a2, $a2, %lo(D_800948E4)
/* 139C8 800231C8 0180043C */  lui        $a0, %hi(D_80010D88)
/* 139CC 800231CC 880D8424 */  addiu      $a0, $a0, %lo(D_80010D88)
/* 139D0 800231D0 15000524 */  addiu      $a1, $zero, 0x15
/* 139D4 800231D4 0980063C */  lui        $a2, %hi(D_800948E8)
/* 139D8 800231D8 E889000C */  jal        InitEnemyActor
/* 139DC 800231DC E848C624 */   addiu     $a2, $a2, %lo(D_800948E8)
/* 139E0 800231E0 0180043C */  lui        $a0, %hi(D_80010D9C)
/* 139E4 800231E4 9C0D8424 */  addiu      $a0, $a0, %lo(D_80010D9C)
/* 139E8 800231E8 16000524 */  addiu      $a1, $zero, 0x16
/* 139EC 800231EC 0980063C */  lui        $a2, %hi(D_800948EC)
/* 139F0 800231F0 E889000C */  jal        InitEnemyActor
/* 139F4 800231F4 EC48C624 */   addiu     $a2, $a2, %lo(D_800948EC)
/* 139F8 800231F8 0180043C */  lui        $a0, %hi(D_80010DB0)
/* 139FC 800231FC B00D8424 */  addiu      $a0, $a0, %lo(D_80010DB0)
/* 13A00 80023200 17000524 */  addiu      $a1, $zero, 0x17
/* 13A04 80023204 0980063C */  lui        $a2, %hi(D_800948F0)
/* 13A08 80023208 E889000C */  jal        InitEnemyActor
/* 13A0C 8002320C F048C624 */   addiu     $a2, $a2, %lo(D_800948F0)
/* 13A10 80023210 0180043C */  lui        $a0, %hi(D_80010DC4)
/* 13A14 80023214 C40D8424 */  addiu      $a0, $a0, %lo(D_80010DC4)
/* 13A18 80023218 18000524 */  addiu      $a1, $zero, 0x18
/* 13A1C 8002321C 0980063C */  lui        $a2, %hi(D_800948F4)
/* 13A20 80023220 E889000C */  jal        InitEnemyActor
/* 13A24 80023224 F448C624 */   addiu     $a2, $a2, %lo(D_800948F4)
/* 13A28 80023228 0180043C */  lui        $a0, %hi(D_80010DD8)
/* 13A2C 8002322C D80D8424 */  addiu      $a0, $a0, %lo(D_80010DD8)
/* 13A30 80023230 19000524 */  addiu      $a1, $zero, 0x19
/* 13A34 80023234 0980063C */  lui        $a2, %hi(D_800948F8)
/* 13A38 80023238 E889000C */  jal        InitEnemyActor
/* 13A3C 8002323C F848C624 */   addiu     $a2, $a2, %lo(D_800948F8)
/* 13A40 80023240 0180043C */  lui        $a0, %hi(D_80010DEC)
/* 13A44 80023244 EC0D8424 */  addiu      $a0, $a0, %lo(D_80010DEC)
/* 13A48 80023248 1A000524 */  addiu      $a1, $zero, 0x1A
/* 13A4C 8002324C 0980063C */  lui        $a2, %hi(D_800948FC)
/* 13A50 80023250 E889000C */  jal        InitEnemyActor
/* 13A54 80023254 FC48C624 */   addiu     $a2, $a2, %lo(D_800948FC)
/* 13A58 80023258 0180043C */  lui        $a0, %hi(D_80010E00)
/* 13A5C 8002325C 000E8424 */  addiu      $a0, $a0, %lo(D_80010E00)
/* 13A60 80023260 1B000524 */  addiu      $a1, $zero, 0x1B
/* 13A64 80023264 0980063C */  lui        $a2, %hi(D_80094900)
/* 13A68 80023268 E889000C */  jal        InitEnemyActor
/* 13A6C 8002326C 0049C624 */   addiu     $a2, $a2, %lo(D_80094900)
/* 13A70 80023270 0180043C */  lui        $a0, %hi(D_80010E14)
/* 13A74 80023274 140E8424 */  addiu      $a0, $a0, %lo(D_80010E14)
/* 13A78 80023278 1C000524 */  addiu      $a1, $zero, 0x1C
/* 13A7C 8002327C 0980063C */  lui        $a2, %hi(D_80094904)
/* 13A80 80023280 E889000C */  jal        InitEnemyActor
/* 13A84 80023284 0449C624 */   addiu     $a2, $a2, %lo(D_80094904)
/* 13A88 80023288 0180043C */  lui        $a0, %hi(D_80010E2C)
/* 13A8C 8002328C 2C0E8424 */  addiu      $a0, $a0, %lo(D_80010E2C)
/* 13A90 80023290 1D000524 */  addiu      $a1, $zero, 0x1D
/* 13A94 80023294 0980063C */  lui        $a2, %hi(D_80094908)
/* 13A98 80023298 E889000C */  jal        InitEnemyActor
/* 13A9C 8002329C 0849C624 */   addiu     $a2, $a2, %lo(D_80094908)
/* 13AA0 800232A0 0180043C */  lui        $a0, %hi(D_80010E44)
/* 13AA4 800232A4 440E8424 */  addiu      $a0, $a0, %lo(D_80010E44)
/* 13AA8 800232A8 1E000524 */  addiu      $a1, $zero, 0x1E
/* 13AAC 800232AC 0980063C */  lui        $a2, %hi(D_8009490C)
/* 13AB0 800232B0 E889000C */  jal        InitEnemyActor
/* 13AB4 800232B4 0C49C624 */   addiu     $a2, $a2, %lo(D_8009490C)
/* 13AB8 800232B8 0180043C */  lui        $a0, %hi(D_80010E58)
/* 13ABC 800232BC 580E8424 */  addiu      $a0, $a0, %lo(D_80010E58)
/* 13AC0 800232C0 1F000524 */  addiu      $a1, $zero, 0x1F
/* 13AC4 800232C4 0980063C */  lui        $a2, %hi(D_80094910)
/* 13AC8 800232C8 E889000C */  jal        InitEnemyActor
/* 13ACC 800232CC 1049C624 */   addiu     $a2, $a2, %lo(D_80094910)
/* 13AD0 800232D0 0180043C */  lui        $a0, %hi(D_80010E6C)
/* 13AD4 800232D4 6C0E8424 */  addiu      $a0, $a0, %lo(D_80010E6C)
/* 13AD8 800232D8 20000524 */  addiu      $a1, $zero, 0x20
/* 13ADC 800232DC 0980063C */  lui        $a2, %hi(D_80094914)
/* 13AE0 800232E0 E889000C */  jal        InitEnemyActor
/* 13AE4 800232E4 1449C624 */   addiu     $a2, $a2, %lo(D_80094914)
/* 13AE8 800232E8 0180043C */  lui        $a0, %hi(D_80010E80)
/* 13AEC 800232EC 800E8424 */  addiu      $a0, $a0, %lo(D_80010E80)
/* 13AF0 800232F0 21000524 */  addiu      $a1, $zero, 0x21
/* 13AF4 800232F4 0980063C */  lui        $a2, %hi(D_80094918)
/* 13AF8 800232F8 E889000C */  jal        InitEnemyActor
/* 13AFC 800232FC 1849C624 */   addiu     $a2, $a2, %lo(D_80094918)
/* 13B00 80023300 0180043C */  lui        $a0, %hi(D_80010E94)
/* 13B04 80023304 940E8424 */  addiu      $a0, $a0, %lo(D_80010E94)
/* 13B08 80023308 22000524 */  addiu      $a1, $zero, 0x22
/* 13B0C 8002330C 0980063C */  lui        $a2, %hi(D_8009491C)
/* 13B10 80023310 E889000C */  jal        InitEnemyActor
/* 13B14 80023314 1C49C624 */   addiu     $a2, $a2, %lo(D_8009491C)
/* 13B18 80023318 0180043C */  lui        $a0, %hi(D_80010EA8)
/* 13B1C 8002331C A80E8424 */  addiu      $a0, $a0, %lo(D_80010EA8)
/* 13B20 80023320 23000524 */  addiu      $a1, $zero, 0x23
/* 13B24 80023324 0980063C */  lui        $a2, %hi(D_80094920)
/* 13B28 80023328 E889000C */  jal        InitEnemyActor
/* 13B2C 8002332C 2049C624 */   addiu     $a2, $a2, %lo(D_80094920)
/* 13B30 80023330 0180043C */  lui        $a0, %hi(D_80010EBC)
/* 13B34 80023334 BC0E8424 */  addiu      $a0, $a0, %lo(D_80010EBC)
/* 13B38 80023338 2F000524 */  addiu      $a1, $zero, 0x2F
/* 13B3C 8002333C 0980063C */  lui        $a2, %hi(D_80094924)
/* 13B40 80023340 E889000C */  jal        InitEnemyActor
/* 13B44 80023344 2449C624 */   addiu     $a2, $a2, %lo(D_80094924)
/* 13B48 80023348 0180043C */  lui        $a0, %hi(D_80010ED0)
/* 13B4C 8002334C 52E2000C */  jal        LoadAnimations
/* 13B50 80023350 D00E8424 */   addiu     $a0, $a0, %lo(D_80010ED0)
/* 13B54 80023354 F00862AE */  sw         $v0, 0x8F0($s3)
/* 13B58 80023358 2000848E */  lw         $a0, 0x20($s4)
/* 13B5C 8002335C 1C000224 */  addiu      $v0, $zero, 0x1C
/* 13B60 80023360 B80862AE */  sw         $v0, 0x8B8($s3)
/* 13B64 80023364 3C02838C */  lw         $v1, 0x23C($a0)
/* 13B68 80023368 00000000 */  nop
/* 13B6C 8002336C 23006010 */  beqz       $v1, .L800233FC
/* 13B70 80023370 1000A427 */   addiu     $a0, $sp, 0x10
/* 13B74 80023374 0180053C */  lui        $a1, %hi(D_80010EF0)
/* 13B78 80023378 53C5010C */  jal        sprintf
/* 13B7C 8002337C F00EA524 */   addiu     $a1, $a1, %lo(D_80010EF0)
/* 13B80 80023380 BB5C010C */  jal        FileExist
/* 13B84 80023384 1000A427 */   addiu     $a0, $sp, 0x10
/* 13B88 80023388 04004018 */  blez       $v0, .L8002339C
/* 13B8C 8002338C 00000000 */   nop
/* 13B90 80023390 52E2000C */  jal        LoadAnimations
/* 13B94 80023394 1000A427 */   addiu     $a0, $sp, 0x10
/* 13B98 80023398 F80762AE */  sw         $v0, 0x7F8($s3)
.L8002339C:
/* 13B9C 8002339C 1000A427 */  addiu      $a0, $sp, 0x10
/* 13BA0 800233A0 0180053C */  lui        $a1, %hi(D_80010F10)
/* 13BA4 800233A4 53C5010C */  jal        sprintf
/* 13BA8 800233A8 100FA524 */   addiu     $a1, $a1, %lo(D_80010F10)
/* 13BAC 800233AC BB5C010C */  jal        FileExist
/* 13BB0 800233B0 1000A427 */   addiu     $a0, $sp, 0x10
/* 13BB4 800233B4 52E2000C */  jal        LoadAnimations
/* 13BB8 800233B8 1000A427 */   addiu     $a0, $sp, 0x10
/* 13BBC 800233BC 0180043C */  lui        $a0, %hi(D_80010F30)
/* 13BC0 800233C0 300F8424 */  addiu      $a0, $a0, %lo(D_80010F30)
/* 13BC4 800233C4 21280000 */  addu       $a1, $zero, $zero
/* 13BC8 800233C8 21300000 */  addu       $a2, $zero, $zero
/* 13BCC 800233CC AA2C010C */  jal        LoadModelAndTextures
/* 13BD0 800233D0 7C0062AE */   sw        $v0, 0x7C($s3)
/* 13BD4 800233D4 2000838E */  lw         $v1, 0x20($s4)
/* 13BD8 800233D8 00000000 */  nop
/* 13BDC 800233DC 400362AC */  sw         $v0, 0x340($v1)
/* 13BE0 800233E0 2000848E */  lw         $a0, 0x20($s4)
/* 13BE4 800233E4 30196226 */  addiu      $v0, $s3, 0x1930
/* 13BE8 800233E8 440382AC */  sw         $v0, 0x344($a0)
/* 13BEC 800233EC F810638E */  lw         $v1, 0x10F8($s3)
/* 13BF0 800233F0 F410628E */  lw         $v0, 0x10F4($s3)
/* 13BF4 800233F4 341963AE */  sw         $v1, 0x1934($s3)
/* 13BF8 800233F8 301962AE */  sw         $v0, 0x1930($s3)
.L800233FC:
/* 13BFC 800233FC 8C65D126 */  addiu      $s1, $s6, %lo(TestWorld)
/* 13C00 80023400 2000228E */  lw         $v0, 0x20($s1)
/* 13C04 80023404 00000000 */  nop
/* 13C08 80023408 2C02438C */  lw         $v1, 0x22C($v0)
/* 13C0C 8002340C 00000000 */  nop
/* 13C10 80023410 27006010 */  beqz       $v1, .L800234B0
/* 13C14 80023414 1000A427 */   addiu     $a0, $sp, 0x10
/* 13C18 80023418 0180053C */  lui        $a1, %hi(D_80010F48)
/* 13C1C 8002341C 53C5010C */  jal        sprintf
/* 13C20 80023420 480FA524 */   addiu     $a1, $a1, %lo(D_80010F48)
/* 13C24 80023424 BB5C010C */  jal        FileExist
/* 13C28 80023428 1000A427 */   addiu     $a0, $sp, 0x10
/* 13C2C 8002342C 05004018 */  blez       $v0, .L80023444
/* 13C30 80023430 00000000 */   nop
/* 13C34 80023434 52E2000C */  jal        LoadAnimations
/* 13C38 80023438 1000A427 */   addiu     $a0, $sp, 0x10
/* 13C3C 8002343C 8051A326 */  addiu      $v1, $s5, %lo(AnimationList)
/* 13C40 80023440 F80762AC */  sw         $v0, 0x7F8($v1)
.L80023444:
/* 13C44 80023444 1000A427 */  addiu      $a0, $sp, 0x10
/* 13C48 80023448 0180053C */  lui        $a1, %hi(D_80010F68)
/* 13C4C 8002344C 53C5010C */  jal        sprintf
/* 13C50 80023450 680FA524 */   addiu     $a1, $a1, %lo(D_80010F68)
/* 13C54 80023454 BB5C010C */  jal        FileExist
/* 13C58 80023458 1000A427 */   addiu     $a0, $sp, 0x10
/* 13C5C 8002345C 52E2000C */  jal        LoadAnimations
/* 13C60 80023460 1000A427 */   addiu     $a0, $sp, 0x10
/* 13C64 80023464 0180043C */  lui        $a0, %hi(D_80010F88)
/* 13C68 80023468 880F8424 */  addiu      $a0, $a0, %lo(D_80010F88)
/* 13C6C 8002346C 21280000 */  addu       $a1, $zero, $zero
/* 13C70 80023470 21300000 */  addu       $a2, $zero, $zero
/* 13C74 80023474 8051B026 */  addiu      $s0, $s5, %lo(AnimationList)
/* 13C78 80023478 AA2C010C */  jal        LoadModelAndTextures
/* 13C7C 8002347C 7C0002AE */   sw        $v0, 0x7C($s0)
/* 13C80 80023480 2000238E */  lw         $v1, 0x20($s1)
/* 13C84 80023484 00000000 */  nop
/* 13C88 80023488 400362AC */  sw         $v0, 0x340($v1)
/* 13C8C 8002348C 2000248E */  lw         $a0, 0x20($s1)
/* 13C90 80023490 30190226 */  addiu      $v0, $s0, 0x1930
/* 13C94 80023494 440382AC */  sw         $v0, 0x344($a0)
/* 13C98 80023498 7C10038E */  lw         $v1, 0x107C($s0)
/* 13C9C 8002349C 7810028E */  lw         $v0, 0x1078($s0)
/* 13CA0 800234A0 341903AE */  sw         $v1, 0x1934($s0)
/* 13CA4 800234A4 301902AE */  sw         $v0, 0x1930($s0)
/* 13CA8 800234A8 8C65D126 */  addiu      $s1, $s6, %lo(TestWorld)
/* 13CAC 800234AC 2000228E */  lw         $v0, 0x20($s1)
.L800234B0:
/* 13CB0 800234B0 00000000 */  nop
/* 13CB4 800234B4 1C02438C */  lw         $v1, 0x21C($v0)
/* 13CB8 800234B8 00000000 */  nop
/* 13CBC 800234BC 25006010 */  beqz       $v1, .L80023554
/* 13CC0 800234C0 1000A427 */   addiu     $a0, $sp, 0x10
/* 13CC4 800234C4 0180053C */  lui        $a1, %hi(D_80010FA0)
/* 13CC8 800234C8 53C5010C */  jal        sprintf
/* 13CCC 800234CC A00FA524 */   addiu     $a1, $a1, %lo(D_80010FA0)
/* 13CD0 800234D0 BB5C010C */  jal        FileExist
/* 13CD4 800234D4 1000A427 */   addiu     $a0, $sp, 0x10
/* 13CD8 800234D8 05004018 */  blez       $v0, .L800234F0
/* 13CDC 800234DC 00000000 */   nop
/* 13CE0 800234E0 52E2000C */  jal        LoadAnimations
/* 13CE4 800234E4 1000A427 */   addiu     $a0, $sp, 0x10
/* 13CE8 800234E8 8051A326 */  addiu      $v1, $s5, %lo(AnimationList)
/* 13CEC 800234EC F80762AC */  sw         $v0, 0x7F8($v1)
.L800234F0:
/* 13CF0 800234F0 1000A427 */  addiu      $a0, $sp, 0x10
/* 13CF4 800234F4 0180053C */  lui        $a1, %hi(D_80010FC0)
/* 13CF8 800234F8 53C5010C */  jal        sprintf
/* 13CFC 800234FC C00FA524 */   addiu     $a1, $a1, %lo(D_80010FC0)
/* 13D00 80023500 BB5C010C */  jal        FileExist
/* 13D04 80023504 1000A427 */   addiu     $a0, $sp, 0x10
/* 13D08 80023508 52E2000C */  jal        LoadAnimations
/* 13D0C 8002350C 1000A427 */   addiu     $a0, $sp, 0x10
/* 13D10 80023510 0180043C */  lui        $a0, %hi(D_80010FE0)
/* 13D14 80023514 E00F8424 */  addiu      $a0, $a0, %lo(D_80010FE0)
/* 13D18 80023518 21280000 */  addu       $a1, $zero, $zero
/* 13D1C 8002351C 21300000 */  addu       $a2, $zero, $zero
/* 13D20 80023520 8051B026 */  addiu      $s0, $s5, %lo(AnimationList)
/* 13D24 80023524 AA2C010C */  jal        LoadModelAndTextures
/* 13D28 80023528 7C0002AE */   sw        $v0, 0x7C($s0)
/* 13D2C 8002352C 2000238E */  lw         $v1, 0x20($s1)
/* 13D30 80023530 00000000 */  nop
/* 13D34 80023534 400362AC */  sw         $v0, 0x340($v1)
/* 13D38 80023538 2000248E */  lw         $a0, 0x20($s1)
/* 13D3C 8002353C 30190226 */  addiu      $v0, $s0, 0x1930
/* 13D40 80023540 440382AC */  sw         $v0, 0x344($a0)
/* 13D44 80023544 0010038E */  lw         $v1, 0x1000($s0)
/* 13D48 80023548 FC0F028E */  lw         $v0, 0xFFC($s0)
/* 13D4C 8002354C 341903AE */  sw         $v1, 0x1934($s0)
/* 13D50 80023550 301902AE */  sw         $v0, 0x1930($s0)
.L80023554:
/* 13D54 80023554 356F000C */  jal        InitMeshIDTable
/* 13D58 80023558 00000000 */   nop
/* 13D5C 8002355C 7A3A010C */  jal        InitCelMem
/* 13D60 80023560 00000000 */   nop
/* 13D64 80023564 CC00BF8F */  lw         $ra, 0xCC($sp)
/* 13D68 80023568 C800B68F */  lw         $s6, 0xC8($sp)
/* 13D6C 8002356C C400B58F */  lw         $s5, 0xC4($sp)
/* 13D70 80023570 C000B48F */  lw         $s4, 0xC0($sp)
/* 13D74 80023574 BC00B38F */  lw         $s3, 0xBC($sp)
/* 13D78 80023578 B800B28F */  lw         $s2, 0xB8($sp)
/* 13D7C 8002357C B400B18F */  lw         $s1, 0xB4($sp)
/* 13D80 80023580 B000B08F */  lw         $s0, 0xB0($sp)
/* 13D84 80023584 0800E003 */  jr         $ra
/* 13D88 80023588 D000BD27 */   addiu     $sp, $sp, 0xD0
.size InitIsoData, . - InitIsoData
