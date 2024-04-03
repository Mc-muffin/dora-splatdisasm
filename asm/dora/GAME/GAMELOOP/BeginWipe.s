.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BeginWipe
/* 21D30 80031530 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 21D34 80031534 1000B0AF */  sw         $s0, 0x10($sp)
/* 21D38 80031538 0980103C */  lui        $s0, %hi(ETActor)
/* 21D3C 8003153C B05A1026 */  addiu      $s0, $s0, %lo(ETActor)
/* 21D40 80031540 1800BFAF */  sw         $ra, 0x18($sp)
/* 21D44 80031544 F866010C */  jal        ClearJoyPad
/* 21D48 80031548 1400B1AF */   sw        $s1, 0x14($sp)
/* 21D4C 8003154C 0814848F */  lw         $a0, %gp_rel(gSection)($gp)
/* 21D50 80031550 6C001126 */  addiu      $s1, $s0, 0x6C
/* 21D54 80031554 300020AE */  sw         $zero, 0x30($s1)
/* 21D58 80031558 340020AE */  sw         $zero, 0x34($s1)
/* 21D5C 8003155C 380020AE */  sw         $zero, 0x38($s1)
/* 21D60 80031560 1000028E */  lw         $v0, 0x10($s0)
/* 21D64 80031564 FFFE0324 */  addiu      $v1, $zero, -0x101
/* 21D68 80031568 24104300 */  and        $v0, $v0, $v1
/* 21D6C 8003156C B357000C */  jal        SetETPosition
/* 21D70 80031570 100002AE */   sw        $v0, 0x10($s0)
/* 21D74 80031574 1C6C000C */  jal        ForceScrollPosition
/* 21D78 80031578 00000000 */   nop
/* 21D7C 8003157C 07ED000C */  jal        SetAggressive
/* 21D80 80031580 04000424 */   addiu     $a0, $zero, 0x4
/* 21D84 80031584 F7EC000C */  jal        SetLocaleAggressive
/* 21D88 80031588 04000424 */   addiu     $a0, $zero, 0x4
/* 21D8C 8003158C 0400248E */  lw         $a0, 0x4($s1)
/* 21D90 80031590 0800258E */  lw         $a1, 0x8($s1)
/* 21D94 80031594 0C00268E */  lw         $a2, 0xC($s1)
/* 21D98 80031598 E70C010C */  jal        CheckActorsVisible
/* 21D9C 8003159C 01001124 */   addiu     $s1, $zero, 0x1
/* 21DA0 800315A0 21200002 */  addu       $a0, $s0, $zero
/* 21DA4 800315A4 2C011026 */  addiu      $s0, $s0, 0x12C
/* 21DA8 800315A8 21280002 */  addu       $a1, $s0, $zero
/* 21DAC 800315AC EC08838F */  lw         $v1, %gp_rel(BEAMDOWNMAX)($gp)
/* 21DB0 800315B0 0A000224 */  addiu      $v0, $zero, 0xA
/* 21DB4 800315B4 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
/* 21DB8 800315B8 2800028E */  lw         $v0, 0x28($s0)
/* 21DBC 800315BC 0980013C */  lui        $at, %hi(MINDIV)
/* 21DC0 800315C0 644331AC */  sw         $s1, %lo(MINDIV)($at)
/* 21DC4 800315C4 0980013C */  lui        $at, %hi(CheckIdle)
/* 21DC8 800315C8 684320AC */  sw         $zero, %lo(CheckIdle)($at)
/* 21DCC 800315CC F00883AF */  sw         $v1, %gp_rel(BeamTimer)($gp)
/* 21DD0 800315D0 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 21DD4 800315D4 25104300 */  or         $v0, $v0, $v1
/* 21DD8 800315D8 10DE000C */  jal        CheckNextAnim
/* 21DDC 800315DC 280002AE */   sw        $v0, 0x28($s0)
/* 21DE0 800315E0 12000424 */  addiu      $a0, $zero, 0x12
/* 21DE4 800315E4 21280000 */  addu       $a1, $zero, $zero
/* 21DE8 800315E8 6F4A010C */  jal        pxm_sendevent
/* 21DEC 800315EC 21300000 */   addu      $a2, $zero, $zero
/* 21DF0 800315F0 02000324 */  addiu      $v1, $zero, 0x2
/* 21DF4 800315F4 E808848F */  lw         $a0, %gp_rel(BEAMWIPEMAX)($gp)
/* 21DF8 800315F8 09000224 */  addiu      $v0, $zero, 0x9
/* 21DFC 800315FC 0980013C */  lui        $at, %hi(UpdateETHSV)
/* 21E00 80031600 844223AC */  sw         $v1, %lo(UpdateETHSV)($at)
/* 21E04 80031604 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
/* 21E08 80031608 F00884AF */  sw         $a0, %gp_rel(BeamTimer)($gp)
/* 21E0C 8003160C F866010C */  jal        ClearJoyPad
/* 21E10 80031610 00000000 */   nop
/* 21E14 80031614 0980013C */  lui        $at, %hi(MINDIV)
/* 21E18 80031618 644331AC */  sw         $s1, %lo(MINDIV)($at)
/* 21E1C 8003161C 07ED000C */  jal        SetAggressive
/* 21E20 80031620 21200000 */   addu      $a0, $zero, $zero
/* 21E24 80031624 F7EC000C */  jal        SetLocaleAggressive
/* 21E28 80031628 21200000 */   addu      $a0, $zero, $zero
/* 21E2C 8003162C A1E8000C */  jal        CameraMan
/* 21E30 80031630 00000000 */   nop
/* 21E34 80031634 16EB000C */  jal        UpdateCamera
/* 21E38 80031638 00000000 */   nop
/* 21E3C 8003163C 0814848F */  lw         $a0, %gp_rel(gSection)($gp)
/* 21E40 80031640 DC0880AF */  sw         $zero, %gp_rel(BeamUpTimer)($gp)
/* 21E44 80031644 B357000C */  jal        SetETPosition
/* 21E48 80031648 00000000 */   nop
/* 21E4C 8003164C 1800BF8F */  lw         $ra, 0x18($sp)
/* 21E50 80031650 1400B18F */  lw         $s1, 0x14($sp)
/* 21E54 80031654 1000B08F */  lw         $s0, 0x10($sp)
/* 21E58 80031658 0800E003 */  jr         $ra
/* 21E5C 8003165C 2000BD27 */   addiu     $sp, $sp, 0x20
.size BeginWipe, . - BeginWipe
