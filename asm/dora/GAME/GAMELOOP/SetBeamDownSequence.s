.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetBeamDownSequence
/* 23B90 80033390 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 23B94 80033394 1000B0AF */  sw         $s0, 0x10($sp)
/* 23B98 80033398 0980103C */  lui        $s0, %hi(ETActor)
/* 23B9C 8003339C B05A1026 */  addiu      $s0, $s0, %lo(ETActor)
/* 23BA0 800333A0 1800BFAF */  sw         $ra, 0x18($sp)
/* 23BA4 800333A4 F866010C */  jal        ClearJoyPad
/* 23BA8 800333A8 1400B1AF */   sw        $s1, 0x14($sp)
/* 23BAC 800333AC 0814848F */  lw         $a0, %gp_rel(gSection)($gp)
/* 23BB0 800333B0 6C001126 */  addiu      $s1, $s0, 0x6C
/* 23BB4 800333B4 300020AE */  sw         $zero, 0x30($s1)
/* 23BB8 800333B8 340020AE */  sw         $zero, 0x34($s1)
/* 23BBC 800333BC 380020AE */  sw         $zero, 0x38($s1)
/* 23BC0 800333C0 1000028E */  lw         $v0, 0x10($s0)
/* 23BC4 800333C4 FFFE0324 */  addiu      $v1, $zero, -0x101
/* 23BC8 800333C8 24104300 */  and        $v0, $v0, $v1
/* 23BCC 800333CC B357000C */  jal        SetETPosition
/* 23BD0 800333D0 100002AE */   sw        $v0, 0x10($s0)
/* 23BD4 800333D4 1C6C000C */  jal        ForceScrollPosition
/* 23BD8 800333D8 00000000 */   nop
/* 23BDC 800333DC 07ED000C */  jal        SetAggressive
/* 23BE0 800333E0 04000424 */   addiu     $a0, $zero, 0x4
/* 23BE4 800333E4 F7EC000C */  jal        SetLocaleAggressive
/* 23BE8 800333E8 04000424 */   addiu     $a0, $zero, 0x4
/* 23BEC 800333EC 0400248E */  lw         $a0, 0x4($s1)
/* 23BF0 800333F0 0800258E */  lw         $a1, 0x8($s1)
/* 23BF4 800333F4 0C00268E */  lw         $a2, 0xC($s1)
/* 23BF8 800333F8 E70C010C */  jal        CheckActorsVisible
/* 23BFC 800333FC 00000000 */   nop
/* 23C00 80033400 21200002 */  addu       $a0, $s0, $zero
/* 23C04 80033404 2C011026 */  addiu      $s0, $s0, 0x12C
/* 23C08 80033408 EC08838F */  lw         $v1, %gp_rel(BEAMDOWNMAX)($gp)
/* 23C0C 8003340C 0A000224 */  addiu      $v0, $zero, 0xA
/* 23C10 80033410 201482AF */  sw         $v0, %gp_rel(gGameState)($gp)
/* 23C14 80033414 01000224 */  addiu      $v0, $zero, 0x1
/* 23C18 80033418 0980013C */  lui        $at, %hi(MINDIV)
/* 23C1C 8003341C 644322AC */  sw         $v0, %lo(MINDIV)($at)
/* 23C20 80033420 2800028E */  lw         $v0, 0x28($s0)
/* 23C24 80033424 21280002 */  addu       $a1, $s0, $zero
/* 23C28 80033428 0980013C */  lui        $at, %hi(CheckIdle)
/* 23C2C 8003342C 684320AC */  sw         $zero, %lo(CheckIdle)($at)
/* 23C30 80033430 F00883AF */  sw         $v1, %gp_rel(BeamTimer)($gp)
/* 23C34 80033434 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 23C38 80033438 25104300 */  or         $v0, $v0, $v1
/* 23C3C 8003343C 10DE000C */  jal        CheckNextAnim
/* 23C40 80033440 280002AE */   sw        $v0, 0x28($s0)
/* 23C44 80033444 12000424 */  addiu      $a0, $zero, 0x12
/* 23C48 80033448 21280000 */  addu       $a1, $zero, $zero
/* 23C4C 8003344C 6F4A010C */  jal        pxm_sendevent
/* 23C50 80033450 21300000 */   addu      $a2, $zero, $zero
/* 23C54 80033454 1800BF8F */  lw         $ra, 0x18($sp)
/* 23C58 80033458 1400B18F */  lw         $s1, 0x14($sp)
/* 23C5C 8003345C 1000B08F */  lw         $s0, 0x10($sp)
/* 23C60 80033460 02000324 */  addiu      $v1, $zero, 0x2
/* 23C64 80033464 0980013C */  lui        $at, %hi(UpdateETHSV)
/* 23C68 80033468 844223AC */  sw         $v1, %lo(UpdateETHSV)($at)
/* 23C6C 8003346C 0800E003 */  jr         $ra
/* 23C70 80033470 2000BD27 */   addiu     $sp, $sp, 0x20
.size SetBeamDownSequence, . - SetBeamDownSequence
