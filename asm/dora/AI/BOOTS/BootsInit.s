.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BootsInit
/* 24CC0 800344C0 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 24CC4 800344C4 0180023C */  lui        $v0, %hi(D_8001277C)
/* 24CC8 800344C8 1800B2AF */  sw         $s2, 0x18($sp)
/* 24CCC 800344CC 7C275224 */  addiu      $s2, $v0, %lo(D_8001277C)
/* 24CD0 800344D0 21204002 */  addu       $a0, $s2, $zero
/* 24CD4 800344D4 3400BFAF */  sw         $ra, 0x34($sp)
/* 24CD8 800344D8 3000BEAF */  sw         $fp, 0x30($sp)
/* 24CDC 800344DC 2C00B7AF */  sw         $s7, 0x2C($sp)
/* 24CE0 800344E0 2800B6AF */  sw         $s6, 0x28($sp)
/* 24CE4 800344E4 2400B5AF */  sw         $s5, 0x24($sp)
/* 24CE8 800344E8 2000B4AF */  sw         $s4, 0x20($sp)
/* 24CEC 800344EC 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 24CF0 800344F0 1400B1AF */  sw         $s1, 0x14($sp)
/* 24CF4 800344F4 B35C010C */  jal        GetSizeOfFile
/* 24CF8 800344F8 1000B0AF */   sw        $s0, 0x10($sp)
/* 24CFC 800344FC 2B3F010C */  jal        new_malloc
/* 24D00 80034500 21204000 */   addu      $a0, $v0, $zero
/* 24D04 80034504 0980133C */  lui        $s3, %hi(ETActor)
/* 24D08 80034508 B05A7426 */  addiu      $s4, $s3, %lo(ETActor)
/* 24D0C 8003450C 0A80153C */  lui        $s5, %hi(BootsActor)
/* 24D10 80034510 988DB126 */  addiu      $s1, $s5, %lo(BootsActor)
/* 24D14 80034514 0A801E3C */  lui        $fp, %hi(boots_aidata)
/* 24D18 80034518 588FD727 */  addiu      $s7, $fp, %lo(boots_aidata)
/* 24D1C 8003451C 21804000 */  addu       $s0, $v0, $zero
/* 24D20 80034520 05000012 */  beqz       $s0, .L80034538
/* 24D24 80034524 6C003626 */   addiu     $s6, $s1, 0x6C
/* 24D28 80034528 21204002 */  addu       $a0, $s2, $zero
/* 24D2C 8003452C 495C010C */  jal        LoadFile
/* 24D30 80034530 21280002 */   addu      $a1, $s0, $zero
/* 24D34 80034534 D00990AF */  sw         $s0, %gp_rel(BootsExpressionFile)($gp)
.L80034538:
/* 24D38 80034538 0880063C */  lui        $a2, %hi(BootsSpawn)
/* 24D3C 8003453C 047DC624 */  addiu      $a2, $a2, %lo(BootsSpawn)
/* 24D40 80034540 1000238E */  lw         $v1, 0x10($s1)
/* 24D44 80034544 4400248E */  lw         $a0, 0x44($s1)
/* 24D48 80034548 000C6334 */  ori        $v1, $v1, 0xC00
/* 24D4C 8003454C 100023AE */  sw         $v1, 0x10($s1)
/* 24D50 80034550 1C00828C */  lw         $v0, 0x1C($a0)
/* 24D54 80034554 0880033C */  lui        $v1, %hi(TestWorld + 0x20)
/* 24D58 80034558 00084234 */  ori        $v0, $v0, 0x800
/* 24D5C 8003455C 1C0082AC */  sw         $v0, 0x1C($a0)
/* 24D60 80034560 2120C000 */  addu       $a0, $a2, $zero
/* 24D64 80034564 AC65678C */  lw         $a3, %lo(TestWorld + 0x20)($v1)
/* 24D68 80034568 E3000224 */  addiu      $v0, $zero, 0xE3
/* 24D6C 8003456C 0001E88C */  lw         $t0, 0x100($a3)
/* 24D70 80034570 10000324 */  addiu      $v1, $zero, 0x10
/* 24D74 80034574 0800E0AE */  sw         $zero, 0x8($s7)
/* 24D78 80034578 5C0022AE */  sw         $v0, 0x5C($s1)
/* 24D7C 8003457C 1C0023AE */  sw         $v1, 0x1C($s1)
/* 24D80 80034580 440026AE */  sw         $a2, 0x44($s1)
/* 24D84 80034584 200128AE */  sw         $t0, 0x120($s1)
/* 24D88 80034588 0401E98C */  lw         $t1, 0x104($a3)
/* 24D8C 8003458C B05A628E */  lw         $v0, %lo(ETActor)($s3)
/* 24D90 80034590 0400838E */  lw         $v1, 0x4($s4)
/* 24D94 80034594 0800868E */  lw         $a2, 0x8($s4)
/* 24D98 80034598 80FF4224 */  addiu      $v0, $v0, -0x80
/* 24D9C 8003459C 988DA2AE */  sw         $v0, %lo(BootsActor)($s5)
/* 24DA0 800345A0 1000228E */  lw         $v0, 0x10($s1)
/* 24DA4 800345A4 21280000 */  addu       $a1, $zero, $zero
/* 24DA8 800345A8 040023AE */  sw         $v1, 0x4($s1)
/* 24DAC 800345AC 080026AE */  sw         $a2, 0x8($s1)
/* 24DB0 800345B0 8000C38E */  lw         $v1, 0x80($s6)
/* 24DB4 800345B4 00014234 */  ori        $v0, $v0, 0x100
/* 24DB8 800345B8 01006334 */  ori        $v1, $v1, 0x1
/* 24DBC 800345BC 100022AE */  sw         $v0, 0x10($s1)
/* 24DC0 800345C0 8000C3AE */  sw         $v1, 0x80($s6)
/* 24DC4 800345C4 2C00E0AE */  sw         $zero, 0x2C($s7)
/* 24DC8 800345C8 B728010C */  jal        creategenericAI
/* 24DCC 800345CC 840129AE */   sw        $t1, 0x184($s1)
/* 24DD0 800345D0 DA25010C */  jal        GenericActorInit
/* 24DD4 800345D4 21202002 */   addu      $a0, $s1, $zero
/* 24DD8 800345D8 2001248E */  lw         $a0, 0x120($s1)
/* 24DDC 800345DC 82E3000C */  jal        InitModelJointsBuffer
/* 24DE0 800345E0 00000000 */   nop
/* 24DE4 800345E4 21202002 */  addu       $a0, $s1, $zero
/* 24DE8 800345E8 00100224 */  addiu      $v0, $zero, 0x1000
/* 24DEC 800345EC 588FC0AF */  sw         $zero, %lo(boots_aidata)($fp)
/* 24DF0 800345F0 2025010C */  jal        CommonActorPostBrains
/* 24DF4 800345F4 140022AE */   sw        $v0, 0x14($s1)
/* 24DF8 800345F8 2025010C */  jal        CommonActorPostBrains
/* 24DFC 800345FC 21202002 */   addu      $a0, $s1, $zero
/* 24E00 80034600 40000324 */  addiu      $v1, $zero, 0x40
/* 24E04 80034604 17000424 */  addiu      $a0, $zero, 0x17
/* 24E08 80034608 3400BF8F */  lw         $ra, 0x34($sp)
/* 24E0C 8003460C 3000BE8F */  lw         $fp, 0x30($sp)
/* 24E10 80034610 2C00B78F */  lw         $s7, 0x2C($sp)
/* 24E14 80034614 2800B68F */  lw         $s6, 0x28($sp)
/* 24E18 80034618 2400B58F */  lw         $s5, 0x24($sp)
/* 24E1C 8003461C 2000B48F */  lw         $s4, 0x20($sp)
/* 24E20 80034620 1C00B38F */  lw         $s3, 0x1C($sp)
/* 24E24 80034624 1800B28F */  lw         $s2, 0x18($sp)
/* 24E28 80034628 1F000224 */  addiu      $v0, $zero, 0x1F
/* 24E2C 8003462C 240022AE */  sw         $v0, 0x24($s1)
/* 24E30 80034630 30000224 */  addiu      $v0, $zero, 0x30
/* 24E34 80034634 4C0023AE */  sw         $v1, 0x4C($s1)
/* 24E38 80034638 500023AE */  sw         $v1, 0x50($s1)
/* 24E3C 8003463C 200024AE */  sw         $a0, 0x20($s1)
/* 24E40 80034640 280024AE */  sw         $a0, 0x28($s1)
/* 24E44 80034644 F00023AE */  sw         $v1, 0xF0($s1)
/* 24E48 80034648 480022AE */  sw         $v0, 0x48($s1)
/* 24E4C 8003464C 580020AE */  sw         $zero, 0x58($s1)
/* 24E50 80034650 540020AE */  sw         $zero, 0x54($s1)
/* 24E54 80034654 1400B18F */  lw         $s1, 0x14($sp)
/* 24E58 80034658 1000B08F */  lw         $s0, 0x10($sp)
/* 24E5C 8003465C 0800E003 */  jr         $ra
/* 24E60 80034660 3800BD27 */   addiu     $sp, $sp, 0x38
.size BootsInit, . - BootsInit
