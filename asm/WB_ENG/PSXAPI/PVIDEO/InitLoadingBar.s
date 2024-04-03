.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitLoadingBar
/* 4B378 8005AB78 0B80023C */  lui        $v0, %hi(theVPoly)
/* 4B37C 8005AB7C 78BA5924 */  addiu      $t9, $v0, %lo(theVPoly)
/* 4B380 8005AB80 08000F24 */  addiu      $t7, $zero, 0x8
/* 4B384 8005AB84 38000E24 */  addiu      $t6, $zero, 0x38
/* 4B388 8005AB88 0A000C24 */  addiu      $t4, $zero, 0xA
/* 4B38C 8005AB8C 3C000B24 */  addiu      $t3, $zero, 0x3C
/* 4B390 8005AB90 05000A24 */  addiu      $t2, $zero, 0x5
/* 4B394 8005AB94 50000924 */  addiu      $t1, $zero, 0x50
/* 4B398 8005AB98 F6000824 */  addiu      $t0, $zero, 0xF6
/* 4B39C 8005AB9C 1E000724 */  addiu      $a3, $zero, 0x1E
/* 4B3A0 8005ABA0 0B80023C */  lui        $v0, %hi(theVPoly2)
/* 4B3A4 8005ABA4 20BB5824 */  addiu      $t8, $v0, %lo(theVPoly2)
/* 4B3A8 8005ABA8 21300000 */  addu       $a2, $zero, $zero
/* 4B3AC 8005ABAC 01000D24 */  addiu      $t5, $zero, 0x1
/* 4B3B0 8005ABB0 0980033C */  lui        $v1, %hi(EffectsVolume)
/* 4B3B4 8005ABB4 A049638C */  lw         $v1, %lo(EffectsVolume)($v1)
/* 4B3B8 8005ABB8 01000224 */  addiu      $v0, $zero, 0x1
/* 4B3BC 8005ABBC 401182AF */  sw         $v0, %gp_rel(gShowingLoadingBar)($gp)
/* 4B3C0 8005ABC0 441183AF */  sw         $v1, %gp_rel(LoadingVol)($gp)
.L8005ABC4:
/* 4B3C4 8005ABC4 2128D900 */  addu       $a1, $a2, $t9
/* 4B3C8 8005ABC8 0300AFA0 */  sb         $t7, 0x3($a1)
/* 4B3CC 8005ABCC 0700AEA0 */  sb         $t6, 0x7($a1)
/* 4B3D0 8005ABD0 0400ACA0 */  sb         $t4, 0x4($a1)
/* 4B3D4 8005ABD4 0C00ACA0 */  sb         $t4, 0xC($a1)
/* 4B3D8 8005ABD8 0500ABA0 */  sb         $t3, 0x5($a1)
/* 4B3DC 8005ABDC 0D00ABA0 */  sb         $t3, 0xD($a1)
/* 4B3E0 8005ABE0 0600AAA0 */  sb         $t2, 0x6($a1)
/* 4B3E4 8005ABE4 0E00AAA0 */  sb         $t2, 0xE($a1)
/* 4B3E8 8005ABE8 1400A9A0 */  sb         $t1, 0x14($a1)
/* 4B3EC 8005ABEC 1C00A9A0 */  sb         $t1, 0x1C($a1)
/* 4B3F0 8005ABF0 1500A8A0 */  sb         $t0, 0x15($a1)
/* 4B3F4 8005ABF4 1D00A8A0 */  sb         $t0, 0x1D($a1)
/* 4B3F8 8005ABF8 1600A7A0 */  sb         $a3, 0x16($a1)
/* 4B3FC 8005ABFC 1E00A7A0 */  sb         $a3, 0x1E($a1)
/* 4B400 8005AC00 30118297 */  lhu        $v0, %gp_rel(LOADING_START_X)($gp)
/* 4B404 8005AC04 34118397 */  lhu        $v1, %gp_rel(LOADING_START_Y)($gp)
/* 4B408 8005AC08 3C118497 */  lhu        $a0, %gp_rel(LOADING_H)($gp)
/* 4B40C 8005AC0C FFFFAD25 */  addiu      $t5, $t5, -0x1
/* 4B410 8005AC10 1200A3A4 */  sh         $v1, 0x12($a1)
/* 4B414 8005AC14 0A00A3A4 */  sh         $v1, 0xA($a1)
/* 4B418 8005AC18 21186400 */  addu       $v1, $v1, $a0
/* 4B41C 8005AC1C 2000A2A4 */  sh         $v0, 0x20($a1)
/* 4B420 8005AC20 1800A2A4 */  sh         $v0, 0x18($a1)
/* 4B424 8005AC24 1000A2A4 */  sh         $v0, 0x10($a1)
/* 4B428 8005AC28 0800A2A4 */  sh         $v0, 0x8($a1)
/* 4B42C 8005AC2C 2200A3A4 */  sh         $v1, 0x22($a1)
/* 4B430 8005AC30 1A00A3A4 */  sh         $v1, 0x1A($a1)
/* 4B434 8005AC34 2128D800 */  addu       $a1, $a2, $t8
/* 4B438 8005AC38 2400C624 */  addiu      $a2, $a2, 0x24
/* 4B43C 8005AC3C 0300AFA0 */  sb         $t7, 0x3($a1)
/* 4B440 8005AC40 0700AEA0 */  sb         $t6, 0x7($a1)
/* 4B444 8005AC44 1400ACA0 */  sb         $t4, 0x14($a1)
/* 4B448 8005AC48 1C00ACA0 */  sb         $t4, 0x1C($a1)
/* 4B44C 8005AC4C 1500ABA0 */  sb         $t3, 0x15($a1)
/* 4B450 8005AC50 1D00ABA0 */  sb         $t3, 0x1D($a1)
/* 4B454 8005AC54 1600AAA0 */  sb         $t2, 0x16($a1)
/* 4B458 8005AC58 1E00AAA0 */  sb         $t2, 0x1E($a1)
/* 4B45C 8005AC5C 0400A9A0 */  sb         $t1, 0x4($a1)
/* 4B460 8005AC60 0C00A9A0 */  sb         $t1, 0xC($a1)
/* 4B464 8005AC64 0500A8A0 */  sb         $t0, 0x5($a1)
/* 4B468 8005AC68 0D00A8A0 */  sb         $t0, 0xD($a1)
/* 4B46C 8005AC6C 0600A7A0 */  sb         $a3, 0x6($a1)
/* 4B470 8005AC70 0E00A7A0 */  sb         $a3, 0xE($a1)
/* 4B474 8005AC74 34118497 */  lhu        $a0, %gp_rel(LOADING_START_Y)($gp)
/* 4B478 8005AC78 3C118397 */  lhu        $v1, %gp_rel(LOADING_H)($gp)
/* 4B47C 8005AC7C 30118297 */  lhu        $v0, %gp_rel(LOADING_START_X)($gp)
/* 4B480 8005AC80 21208300 */  addu       $a0, $a0, $v1
/* 4B484 8005AC84 2000A2A4 */  sh         $v0, 0x20($a1)
/* 4B488 8005AC88 1800A2A4 */  sh         $v0, 0x18($a1)
/* 4B48C 8005AC8C 1000A2A4 */  sh         $v0, 0x10($a1)
/* 4B490 8005AC90 0800A2A4 */  sh         $v0, 0x8($a1)
/* 4B494 8005AC94 FFFF8224 */  addiu      $v0, $a0, -0x1
/* 4B498 8005AC98 21186400 */  addu       $v1, $v1, $a0
/* 4B49C 8005AC9C FFFF6324 */  addiu      $v1, $v1, -0x1
/* 4B4A0 8005ACA0 1200A2A4 */  sh         $v0, 0x12($a1)
/* 4B4A4 8005ACA4 0A00A2A4 */  sh         $v0, 0xA($a1)
/* 4B4A8 8005ACA8 2200A3A4 */  sh         $v1, 0x22($a1)
/* 4B4AC 8005ACAC C5FFA105 */  bgez       $t5, .L8005ABC4
/* 4B4B0 8005ACB0 1A00A3A4 */   sh        $v1, 0x1A($a1)
/* 4B4B4 8005ACB4 2C1180AF */  sw         $zero, %gp_rel(rightEdge)($gp)
/* 4B4B8 8005ACB8 0800E003 */  jr         $ra
/* 4B4BC 8005ACBC 00000000 */   nop
.size InitLoadingBar, . - InitLoadingBar
