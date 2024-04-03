.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ApplyGravityETActor
/* 86A8 80017EA8 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 86AC 80017EAC 4000BEAF */  sw         $fp, 0x40($sp)
/* 86B0 80017EB0 21F08000 */  addu       $fp, $a0, $zero
/* 86B4 80017EB4 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 86B8 80017EB8 2198A000 */  addu       $s3, $a1, $zero
/* 86BC 80017EBC 21206002 */  addu       $a0, $s3, $zero
/* 86C0 80017EC0 4400BFAF */  sw         $ra, 0x44($sp)
/* 86C4 80017EC4 3C00B7AF */  sw         $s7, 0x3C($sp)
/* 86C8 80017EC8 3800B6AF */  sw         $s6, 0x38($sp)
/* 86CC 80017ECC 3400B5AF */  sw         $s5, 0x34($sp)
/* 86D0 80017ED0 3000B4AF */  sw         $s4, 0x30($sp)
/* 86D4 80017ED4 2800B2AF */  sw         $s2, 0x28($sp)
/* 86D8 80017ED8 2400B1AF */  sw         $s1, 0x24($sp)
/* 86DC 80017EDC 2000B0AF */  sw         $s0, 0x20($sp)
/* 86E0 80017EE0 0800728E */  lw         $s2, 0x8($s3)
/* 86E4 80017EE4 0400768E */  lw         $s6, 0x4($s3)
/* 86E8 80017EE8 8400628E */  lw         $v0, 0x84($s3)
/* 86EC 80017EEC 0C00748E */  lw         $s4, 0xC($s3)
/* 86F0 80017EF0 0100C526 */  addiu      $a1, $s6, 0x1
/* 86F4 80017EF4 C21F0200 */  srl        $v1, $v0, 31
/* 86F8 80017EF8 21104300 */  addu       $v0, $v0, $v1
/* 86FC 80017EFC 43800200 */  sra        $s0, $v0, 1
/* 8700 80017F00 23B8B000 */  subu       $s7, $a1, $s0
/* 8704 80017F04 2128E002 */  addu       $a1, $s7, $zero
/* 8708 80017F08 21304002 */  addu       $a2, $s2, $zero
/* 870C 80017F0C 01008226 */  addiu      $v0, $s4, 0x1
/* 8710 80017F10 23885000 */  subu       $s1, $v0, $s0
/* 8714 80017F14 7BF0000C */  jal        CheckDoor
/* 8718 80017F18 21382002 */   addu      $a3, $s1, $zero
/* 871C 80017F1C C8004014 */  bnez       $v0, .L80018240
/* 8720 80017F20 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 8724 80017F24 21206002 */  addu       $a0, $s3, $zero
/* 8728 80017F28 FFFFC226 */  addiu      $v0, $s6, -0x1
/* 872C 80017F2C 21A85000 */  addu       $s5, $v0, $s0
/* 8730 80017F30 2128A002 */  addu       $a1, $s5, $zero
/* 8734 80017F34 21304002 */  addu       $a2, $s2, $zero
/* 8738 80017F38 7BF0000C */  jal        CheckDoor
/* 873C 80017F3C 21382002 */   addu      $a3, $s1, $zero
/* 8740 80017F40 BF004014 */  bnez       $v0, .L80018240
/* 8744 80017F44 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 8748 80017F48 21206002 */  addu       $a0, $s3, $zero
/* 874C 80017F4C 2128E002 */  addu       $a1, $s7, $zero
/* 8750 80017F50 21304002 */  addu       $a2, $s2, $zero
/* 8754 80017F54 FFFF8226 */  addiu      $v0, $s4, -0x1
/* 8758 80017F58 21885000 */  addu       $s1, $v0, $s0
/* 875C 80017F5C 7BF0000C */  jal        CheckDoor
/* 8760 80017F60 21382002 */   addu      $a3, $s1, $zero
/* 8764 80017F64 B6004014 */  bnez       $v0, .L80018240
/* 8768 80017F68 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 876C 80017F6C 21206002 */  addu       $a0, $s3, $zero
/* 8770 80017F70 2128A002 */  addu       $a1, $s5, $zero
/* 8774 80017F74 21304002 */  addu       $a2, $s2, $zero
/* 8778 80017F78 7BF0000C */  jal        CheckDoor
/* 877C 80017F7C 21382002 */   addu      $a3, $s1, $zero
/* 8780 80017F80 AF004014 */  bnez       $v0, .L80018240
/* 8784 80017F84 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 8788 80017F88 0980023C */  lui        $v0, %hi(GRAVITY)
/* 878C 80017F8C 084E428C */  lw         $v0, %lo(GRAVITY)($v0)
/* 8790 80017F90 00000000 */  nop
/* 8794 80017F94 21904202 */  addu       $s2, $s2, $v0
/* 8798 80017F98 0980013C */  lui        $at, %hi(ACTUALCURRENTY)
/* 879C 80017F9C 0C4E32AC */  sw         $s2, %lo(ACTUALCURRENTY)($at)
/* 87A0 80017FA0 03004106 */  bgez       $s2, .L80017FB0
/* 87A4 80017FA4 21884002 */   addu      $s1, $s2, $zero
/* 87A8 80017FA8 21880000 */  addu       $s1, $zero, $zero
/* 87AC 80017FAC 080060AE */  sw         $zero, 0x8($s3)
.L80017FB0:
/* 87B0 80017FB0 2120C002 */  addu       $a0, $s6, $zero
/* 87B4 80017FB4 21308002 */  addu       $a2, $s4, $zero
/* 87B8 80017FB8 0980073C */  lui        $a3, %hi(tempyheight1)
/* 87BC 80017FBC F856E724 */  addiu      $a3, $a3, %lo(tempyheight1)
/* 87C0 80017FC0 0980053C */  lui        $a1, %hi(TV1)
/* 87C4 80017FC4 104EA58C */  lw         $a1, %lo(TV1)($a1)
/* 87C8 80017FC8 FFFF1026 */  addiu      $s0, $s0, -0x1
/* 87CC 80017FCC 1000B0AF */  sw         $s0, 0x10($sp)
/* 87D0 80017FD0 1400B3AF */  sw         $s3, 0x14($sp)
/* 87D4 80017FD4 A1F1000C */  jal        CheckCollisionCelHeight4Bottom
/* 87D8 80017FD8 21282502 */   addu      $a1, $s1, $a1
/* 87DC 80017FDC 2120C002 */  addu       $a0, $s6, $zero
/* 87E0 80017FE0 21282002 */  addu       $a1, $s1, $zero
/* 87E4 80017FE4 21308002 */  addu       $a2, $s4, $zero
/* 87E8 80017FE8 0980073C */  lui        $a3, %hi(tempyheight2)
/* 87EC 80017FEC FC56E724 */  addiu      $a3, $a3, %lo(tempyheight2)
/* 87F0 80017FF0 1000B0AF */  sw         $s0, 0x10($sp)
/* 87F4 80017FF4 21804000 */  addu       $s0, $v0, $zero
/* 87F8 80017FF8 C9F0000C */  jal        CheckCollisionCelHeight4
/* 87FC 80017FFC 1400B3AF */   sw        $s3, 0x14($sp)
/* 8800 80018000 21184000 */  addu       $v1, $v0, $zero
/* 8804 80018004 FF030232 */  andi       $v0, $s0, 0x3FF
/* 8808 80018008 FF030424 */  addiu      $a0, $zero, 0x3FF
/* 880C 8001800C 0980063C */  lui        $a2, %hi(tempyheight1)
/* 8810 80018010 F856C68C */  lw         $a2, %lo(tempyheight1)($a2)
/* 8814 80018014 0980053C */  lui        $a1, %hi(tempyheight2)
/* 8818 80018018 FC56A58C */  lw         $a1, %lo(tempyheight2)($a1)
/* 881C 8001801C 03004414 */  bne        $v0, $a0, .L8001802C
/* 8820 80018020 FF036230 */   andi      $v0, $v1, 0x3FF
/* 8824 80018024 7E004410 */  beq        $v0, $a0, .L80018220
/* 8828 80018028 00000000 */   nop
.L8001802C:
/* 882C 8001802C 05004410 */  beq        $v0, $a0, .L80018044
/* 8830 80018030 80FFA224 */   addiu     $v0, $a1, -0x80
/* 8834 80018034 0980013C */  lui        $at, %hi(TV4)
/* 8838 80018038 1C4E22AC */  sw         $v0, %lo(TV4)($at)
/* 883C 8001803C 13600008 */  j          .L8001804C
/* 8840 80018040 21806000 */   addu      $s0, $v1, $zero
.L80018044:
/* 8844 80018044 0980013C */  lui        $at, %hi(TV4)
/* 8848 80018048 1C4E26AC */  sw         $a2, %lo(TV4)($at)
.L8001804C:
/* 884C 8001804C 0400648E */  lw         $a0, 0x4($s3)
/* 8850 80018050 0800658E */  lw         $a1, 0x8($s3)
/* 8854 80018054 0C00668E */  lw         $a2, 0xC($s3)
/* 8858 80018058 CDEF000C */  jal        GetHeight
/* 885C 8001805C 00000000 */   nop
/* 8860 80018060 080062AE */  sw         $v0, 0x8($s3)
/* 8864 80018064 0C00C38F */  lw         $v1, 0xC($fp)
/* 8868 80018068 07000224 */  addiu      $v0, $zero, 0x7
/* 886C 8001806C 03006210 */  beq        $v1, $v0, .L8001807C
/* 8870 80018070 0A000224 */   addiu     $v0, $zero, 0xA
/* 8874 80018074 72006214 */  bne        $v1, $v0, .L80018240
/* 8878 80018078 21100002 */   addu      $v0, $s0, $zero
.L8001807C:
/* 887C 8001807C 0C000424 */  addiu      $a0, $zero, 0xC
/* 8880 80018080 21280000 */  addu       $a1, $zero, $zero
/* 8884 80018084 21300000 */  addu       $a2, $zero, $zero
/* 8888 80018088 5401C28F */  lw         $v0, 0x154($fp)
/* 888C 8001808C 0080033C */  lui        $v1, (0x80000000 >> 16)
/* 8890 80018090 0C00C0AF */  sw         $zero, 0xC($fp)
/* 8894 80018094 25104300 */  or         $v0, $v0, $v1
/* 8898 80018098 5401C2AF */  sw         $v0, 0x154($fp)
/* 889C 8001809C 6F4A010C */  jal        pxm_sendevent
/* 88A0 800180A0 880070AE */   sw        $s0, 0x88($s3)
/* 88A4 800180A4 0980033C */  lui        $v1, %hi(Pad0)
/* 88A8 800180A8 2C596394 */  lhu        $v1, %lo(Pad0)($v1)
/* 88AC 800180AC 00000000 */  nop
/* 88B0 800180B0 F0006330 */  andi       $v1, $v1, 0xF0
/* 88B4 800180B4 0F006014 */  bnez       $v1, .L800180F4
/* 88B8 800180B8 2120C003 */   addu      $a0, $fp, $zero
/* 88BC 800180BC 0980043C */  lui        $a0, %hi(AnalogueFlag)
/* 88C0 800180C0 1853848C */  lw         $a0, %lo(AnalogueFlag)($a0)
/* 88C4 800180C4 00000000 */  nop
/* 88C8 800180C8 21008010 */  beqz       $a0, .L80018150
/* 88CC 800180CC 00000000 */   nop
/* 88D0 800180D0 0980023C */  lui        $v0, %hi(AnalogueLR)
/* 88D4 800180D4 1C53428C */  lw         $v0, %lo(AnalogueLR)($v0)
/* 88D8 800180D8 0980033C */  lui        $v1, %hi(AnalogueUD)
/* 88DC 800180DC 2053638C */  lw         $v1, %lo(AnalogueUD)($v1)
/* 88E0 800180E0 00000000 */  nop
/* 88E4 800180E4 25104300 */  or         $v0, $v0, $v1
/* 88E8 800180E8 19004010 */  beqz       $v0, .L80018150
/* 88EC 800180EC 00000000 */   nop
/* 88F0 800180F0 2120C003 */  addu       $a0, $fp, $zero
.L800180F4:
/* 88F4 800180F4 28E3000C */  jal        GetSeqNumFrames
/* 88F8 800180F8 0A000524 */   addiu     $a1, $zero, 0xA
/* 88FC 800180FC 2120C003 */  addu       $a0, $fp, $zero
/* 8900 80018100 0A000524 */  addiu      $a1, $zero, 0xA
/* 8904 80018104 21300000 */  addu       $a2, $zero, $zero
/* 8908 80018108 21384000 */  addu       $a3, $v0, $zero
/* 890C 8001810C 01000224 */  addiu      $v0, $zero, 0x1
/* 8910 80018110 02000324 */  addiu      $v1, $zero, 0x2
/* 8914 80018114 1000A2AF */  sw         $v0, 0x10($sp)
/* 8918 80018118 2C01C227 */  addiu      $v0, $fp, 0x12C
/* 891C 8001811C 1400A3AF */  sw         $v1, 0x14($sp)
/* 8920 80018120 72E2000C */  jal        RequestAnim
/* 8924 80018124 1800A2AF */   sw        $v0, 0x18($sp)
/* 8928 80018128 21200000 */  addu       $a0, $zero, $zero
/* 892C 8001812C A0000524 */  addiu      $a1, $zero, 0xA0
/* 8930 80018130 8666010C */  jal        Sys_VibrationBuzzWork
/* 8934 80018134 0A000624 */   addiu     $a2, $zero, 0xA
/* 8938 80018138 21200000 */  addu       $a0, $zero, $zero
/* 893C 8001813C B9000524 */  addiu      $a1, $zero, 0xB9
/* 8940 80018140 6266010C */  jal        Sys_VibrationWaveWork
/* 8944 80018144 0A000624 */   addiu     $a2, $zero, 0xA
/* 8948 80018148 90600008 */  j          .L80018240
/* 894C 8001814C 21100002 */   addu      $v0, $s0, $zero
.L80018150:
/* 8950 80018150 0980023C */  lui        $v0, %hi(Pad0)
/* 8954 80018154 2C594294 */  lhu        $v0, %lo(Pad0)($v0)
/* 8958 80018158 00000000 */  nop
/* 895C 8001815C F0004230 */  andi       $v0, $v0, 0xF0
/* 8960 80018160 37004014 */  bnez       $v0, .L80018240
/* 8964 80018164 21100002 */   addu      $v0, $s0, $zero
/* 8968 80018168 0A008010 */  beqz       $a0, .L80018194
/* 896C 8001816C 21280000 */   addu      $a1, $zero, $zero
/* 8970 80018170 0980023C */  lui        $v0, %hi(AnalogueLR)
/* 8974 80018174 1C53428C */  lw         $v0, %lo(AnalogueLR)($v0)
/* 8978 80018178 0980033C */  lui        $v1, %hi(AnalogueUD)
/* 897C 8001817C 2053638C */  lw         $v1, %lo(AnalogueUD)($v1)
/* 8980 80018180 00000000 */  nop
/* 8984 80018184 25104300 */  or         $v0, $v0, $v1
/* 8988 80018188 2D004014 */  bnez       $v0, .L80018240
/* 898C 8001818C 21100002 */   addu      $v0, $s0, $zero
/* 8990 80018190 21280000 */  addu       $a1, $zero, $zero
.L80018194:
/* 8994 80018194 08000224 */  addiu      $v0, $zero, 0x8
/* 8998 80018198 0C00C2AF */  sw         $v0, 0xC($fp)
/* 899C 8001819C 3000648E */  lw         $a0, 0x30($s3)
/* 89A0 800181A0 E2FA000C */  jal        AdjustSpeed
/* 89A4 800181A4 2C010624 */   addiu     $a2, $zero, 0x12C
/* 89A8 800181A8 21280000 */  addu       $a1, $zero, $zero
/* 89AC 800181AC 3800648E */  lw         $a0, 0x38($s3)
/* 89B0 800181B0 2C010624 */  addiu      $a2, $zero, 0x12C
/* 89B4 800181B4 E2FA000C */  jal        AdjustSpeed
/* 89B8 800181B8 300062AE */   sw        $v0, 0x30($s3)
/* 89BC 800181BC 2120C003 */  addu       $a0, $fp, $zero
/* 89C0 800181C0 0D000524 */  addiu      $a1, $zero, 0xD
/* 89C4 800181C4 28E3000C */  jal        GetSeqNumFrames
/* 89C8 800181C8 380062AE */   sw        $v0, 0x38($s3)
/* 89CC 800181CC 2120C003 */  addu       $a0, $fp, $zero
/* 89D0 800181D0 0D000524 */  addiu      $a1, $zero, 0xD
/* 89D4 800181D4 21300000 */  addu       $a2, $zero, $zero
/* 89D8 800181D8 21384000 */  addu       $a3, $v0, $zero
/* 89DC 800181DC 01000224 */  addiu      $v0, $zero, 0x1
/* 89E0 800181E0 02000324 */  addiu      $v1, $zero, 0x2
/* 89E4 800181E4 1000A2AF */  sw         $v0, 0x10($sp)
/* 89E8 800181E8 2C01C227 */  addiu      $v0, $fp, 0x12C
/* 89EC 800181EC 1400A3AF */  sw         $v1, 0x14($sp)
/* 89F0 800181F0 72E2000C */  jal        RequestAnim
/* 89F4 800181F4 1800A2AF */   sw        $v0, 0x18($sp)
/* 89F8 800181F8 21200000 */  addu       $a0, $zero, $zero
/* 89FC 800181FC 64000524 */  addiu      $a1, $zero, 0x64
/* 8A00 80018200 8666010C */  jal        Sys_VibrationBuzzWork
/* 8A04 80018204 0F000624 */   addiu     $a2, $zero, 0xF
/* 8A08 80018208 21200000 */  addu       $a0, $zero, $zero
/* 8A0C 8001820C B4000524 */  addiu      $a1, $zero, 0xB4
/* 8A10 80018210 6266010C */  jal        Sys_VibrationWaveWork
/* 8A14 80018214 0F000624 */   addiu     $a2, $zero, 0xF
/* 8A18 80018218 90600008 */  j          .L80018240
/* 8A1C 8001821C 21100002 */   addu      $v0, $s0, $zero
.L80018220:
/* 8A20 80018220 080072AE */  sw         $s2, 0x8($s3)
/* 8A24 80018224 0C00C38F */  lw         $v1, 0xC($fp)
/* 8A28 80018228 0A000224 */  addiu      $v0, $zero, 0xA
/* 8A2C 8001822C 03006210 */  beq        $v1, $v0, .L8001823C
/* 8A30 80018230 FFFF1024 */   addiu     $s0, $zero, -0x1
/* 8A34 80018234 07000224 */  addiu      $v0, $zero, 0x7
/* 8A38 80018238 0C00C2AF */  sw         $v0, 0xC($fp)
.L8001823C:
/* 8A3C 8001823C 21100002 */  addu       $v0, $s0, $zero
.L80018240:
/* 8A40 80018240 4400BF8F */  lw         $ra, 0x44($sp)
/* 8A44 80018244 4000BE8F */  lw         $fp, 0x40($sp)
/* 8A48 80018248 3C00B78F */  lw         $s7, 0x3C($sp)
/* 8A4C 8001824C 3800B68F */  lw         $s6, 0x38($sp)
/* 8A50 80018250 3400B58F */  lw         $s5, 0x34($sp)
/* 8A54 80018254 3000B48F */  lw         $s4, 0x30($sp)
/* 8A58 80018258 2C00B38F */  lw         $s3, 0x2C($sp)
/* 8A5C 8001825C 2800B28F */  lw         $s2, 0x28($sp)
/* 8A60 80018260 2400B18F */  lw         $s1, 0x24($sp)
/* 8A64 80018264 2000B08F */  lw         $s0, 0x20($sp)
/* 8A68 80018268 0800E003 */  jr         $ra
/* 8A6C 8001826C 4800BD27 */   addiu     $sp, $sp, 0x48
.size ApplyGravityETActor, . - ApplyGravityETActor
