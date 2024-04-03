.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ApplyBootsGravity
/* 24E64 80034664 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 24E68 80034668 2000B2AF */  sw         $s2, 0x20($sp)
/* 24E6C 8003466C 21908000 */  addu       $s2, $a0, $zero
/* 24E70 80034670 3000BFAF */  sw         $ra, 0x30($sp)
/* 24E74 80034674 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 24E78 80034678 2800B4AF */  sw         $s4, 0x28($sp)
/* 24E7C 8003467C 2400B3AF */  sw         $s3, 0x24($sp)
/* 24E80 80034680 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 24E84 80034684 1800B0AF */  sw         $s0, 0x18($sp)
/* 24E88 80034688 8400428E */  lw         $v0, 0x84($s2)
/* 24E8C 8003468C 0400548E */  lw         $s4, 0x4($s2)
/* 24E90 80034690 0800538E */  lw         $s3, 0x8($s2)
/* 24E94 80034694 0C00558E */  lw         $s5, 0xC($s2)
/* 24E98 80034698 0980013C */  lui        $at, %hi(ACTUALCURRENTY)
/* 24E9C 8003469C 0C4E33AC */  sw         $s3, %lo(ACTUALCURRENTY)($at)
/* 24EA0 800346A0 03006106 */  bgez       $s3, .L800346B0
/* 24EA4 800346A4 21886002 */   addu      $s1, $s3, $zero
/* 24EA8 800346A8 21880000 */  addu       $s1, $zero, $zero
/* 24EAC 800346AC 080040AE */  sw         $zero, 0x8($s2)
.L800346B0:
/* 24EB0 800346B0 21208002 */  addu       $a0, $s4, $zero
/* 24EB4 800346B4 2130A002 */  addu       $a2, $s5, $zero
/* 24EB8 800346B8 0980073C */  lui        $a3, %hi(tempyheight1)
/* 24EBC 800346BC F856E724 */  addiu      $a3, $a3, %lo(tempyheight1)
/* 24EC0 800346C0 C2870200 */  srl        $s0, $v0, 31
/* 24EC4 800346C4 21805000 */  addu       $s0, $v0, $s0
/* 24EC8 800346C8 43801000 */  sra        $s0, $s0, 1
/* 24ECC 800346CC 0980053C */  lui        $a1, %hi(TV1)
/* 24ED0 800346D0 104EA58C */  lw         $a1, %lo(TV1)($a1)
/* 24ED4 800346D4 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 24ED8 800346D8 1000B0AF */  sw         $s0, 0x10($sp)
/* 24EDC 800346DC 1400B2AF */  sw         $s2, 0x14($sp)
/* 24EE0 800346E0 A1F1000C */  jal        CheckCollisionCelHeight4Bottom
/* 24EE4 800346E4 21282502 */   addu      $a1, $s1, $a1
/* 24EE8 800346E8 21208002 */  addu       $a0, $s4, $zero
/* 24EEC 800346EC 21282002 */  addu       $a1, $s1, $zero
/* 24EF0 800346F0 2130A002 */  addu       $a2, $s5, $zero
/* 24EF4 800346F4 0980073C */  lui        $a3, %hi(tempyheight2)
/* 24EF8 800346F8 FC56E724 */  addiu      $a3, $a3, %lo(tempyheight2)
/* 24EFC 800346FC 1000B0AF */  sw         $s0, 0x10($sp)
/* 24F00 80034700 21804000 */  addu       $s0, $v0, $zero
/* 24F04 80034704 C9F0000C */  jal        CheckCollisionCelHeight4
/* 24F08 80034708 1400B2AF */   sw        $s2, 0x14($sp)
/* 24F0C 8003470C 21184000 */  addu       $v1, $v0, $zero
/* 24F10 80034710 FF030232 */  andi       $v0, $s0, 0x3FF
/* 24F14 80034714 FF030424 */  addiu      $a0, $zero, 0x3FF
/* 24F18 80034718 0980063C */  lui        $a2, %hi(tempyheight1)
/* 24F1C 8003471C F856C68C */  lw         $a2, %lo(tempyheight1)($a2)
/* 24F20 80034720 0980053C */  lui        $a1, %hi(tempyheight2)
/* 24F24 80034724 FC56A58C */  lw         $a1, %lo(tempyheight2)($a1)
/* 24F28 80034728 03004414 */  bne        $v0, $a0, .L80034738
/* 24F2C 8003472C FF036230 */   andi      $v0, $v1, 0x3FF
/* 24F30 80034730 10004410 */  beq        $v0, $a0, .L80034774
/* 24F34 80034734 00000000 */   nop
.L80034738:
/* 24F38 80034738 05004410 */  beq        $v0, $a0, .L80034750
/* 24F3C 8003473C 80FFA224 */   addiu     $v0, $a1, -0x80
/* 24F40 80034740 0980013C */  lui        $at, %hi(TV4)
/* 24F44 80034744 1C4E22AC */  sw         $v0, %lo(TV4)($at)
/* 24F48 80034748 D6D10008 */  j          .L80034758
/* 24F4C 8003474C 21806000 */   addu      $s0, $v1, $zero
.L80034750:
/* 24F50 80034750 0980013C */  lui        $at, %hi(TV4)
/* 24F54 80034754 1C4E26AC */  sw         $a2, %lo(TV4)($at)
.L80034758:
/* 24F58 80034758 0400448E */  lw         $a0, 0x4($s2)
/* 24F5C 8003475C 0800458E */  lw         $a1, 0x8($s2)
/* 24F60 80034760 0C00468E */  lw         $a2, 0xC($s2)
/* 24F64 80034764 CDEF000C */  jal        GetHeight
/* 24F68 80034768 00000000 */   nop
/* 24F6C 8003476C DFD10008 */  j          .L8003477C
/* 24F70 80034770 080042AE */   sw        $v0, 0x8($s2)
.L80034774:
/* 24F74 80034774 FFFF1024 */  addiu      $s0, $zero, -0x1
/* 24F78 80034778 080053AE */  sw         $s3, 0x8($s2)
.L8003477C:
/* 24F7C 8003477C 21100002 */  addu       $v0, $s0, $zero
/* 24F80 80034780 3000BF8F */  lw         $ra, 0x30($sp)
/* 24F84 80034784 2C00B58F */  lw         $s5, 0x2C($sp)
/* 24F88 80034788 2800B48F */  lw         $s4, 0x28($sp)
/* 24F8C 8003478C 2400B38F */  lw         $s3, 0x24($sp)
/* 24F90 80034790 2000B28F */  lw         $s2, 0x20($sp)
/* 24F94 80034794 1C00B18F */  lw         $s1, 0x1C($sp)
/* 24F98 80034798 1800B08F */  lw         $s0, 0x18($sp)
/* 24F9C 8003479C 0800E003 */  jr         $ra
/* 24FA0 800347A0 3800BD27 */   addiu     $sp, $sp, 0x38
.size ApplyBootsGravity, . - ApplyBootsGravity
