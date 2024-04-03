.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel EditLevelPaintMenu
/* 3E904 8004E104 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 3E908 8004E108 2800B2AF */  sw         $s2, 0x28($sp)
/* 3E90C 8004E10C 0980123C */  lui        $s2, %hi(ETActor)
/* 3E910 8004E110 B05A4426 */  addiu      $a0, $s2, %lo(ETActor)
/* 3E914 8004E114 3000BFAF */  sw         $ra, 0x30($sp)
/* 3E918 8004E118 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 3E91C 8004E11C 2400B1AF */  sw         $s1, 0x24($sp)
/* 3E920 8004E120 E862000C */  jal        ETBrains
/* 3E924 8004E124 2000B0AF */   sw        $s0, 0x20($sp)
/* 3E928 8004E128 8F49010C */  jal        UITB_SetBoxStyle
/* 3E92C 8004E12C 21200000 */   addu      $a0, $zero, $zero
/* 3E930 8004E130 8949010C */  jal        UITB_SetBorderStyle
/* 3E934 8004E134 21200000 */   addu      $a0, $zero, $zero
/* 3E938 8004E138 21200000 */  addu       $a0, $zero, $zero
/* 3E93C 8004E13C 21280000 */  addu       $a1, $zero, $zero
/* 3E940 8004E140 45000624 */  addiu      $a2, $zero, 0x45
/* 3E944 8004E144 05000724 */  addiu      $a3, $zero, 0x5
/* 3E948 8004E148 05000224 */  addiu      $v0, $zero, 0x5
/* 3E94C 8004E14C 80000324 */  addiu      $v1, $zero, 0x80
/* 3E950 8004E150 1000A2AF */  sw         $v0, 0x10($sp)
/* 3E954 8004E154 7A49010C */  jal        UITB_SetDrawBoxColor
/* 3E958 8004E158 1400A3AF */   sw        $v1, 0x14($sp)
/* 3E95C 8004E15C 0A000424 */  addiu      $a0, $zero, 0xA
/* 3E960 8004E160 1E000524 */  addiu      $a1, $zero, 0x1E
/* 3E964 8004E164 78000624 */  addiu      $a2, $zero, 0x78
/* 3E968 8004E168 A0000724 */  addiu      $a3, $zero, 0xA0
/* 3E96C 8004E16C 01001124 */  addiu      $s1, $zero, 0x1
/* 3E970 8004E170 32000224 */  addiu      $v0, $zero, 0x32
/* 3E974 8004E174 1000B1AF */  sw         $s1, 0x10($sp)
/* 3E978 8004E178 1400B1AF */  sw         $s1, 0x14($sp)
/* 3E97C 8004E17C B043010C */  jal        UITB_DrawBox
/* 3E980 8004E180 1800A2AF */   sw        $v0, 0x18($sp)
/* 3E984 8004E184 980E8493 */  lbu        $a0, %gp_rel(ISOHL_R)($gp)
/* 3E988 8004E188 990E8593 */  lbu        $a1, %gp_rel(ISOHL_G)($gp)
/* 3E98C 8004E18C 9A0E8693 */  lbu        $a2, %gp_rel(ISOHL_B)($gp)
/* 3E990 8004E190 5363010C */  jal        TextSetTextColor
/* 3E994 8004E194 0880103C */   lui       $s0, %hi(TestWorld)
/* 3E998 8004E198 12000424 */  addiu      $a0, $zero, 0x12
/* 3E99C 8004E19C 1E000524 */  addiu      $a1, $zero, 0x1E
/* 3E9A0 8004E1A0 21300000 */  addu       $a2, $zero, $zero
/* 3E9A4 8004E1A4 0180073C */  lui        $a3, %hi(D_80012E70)
/* 3E9A8 8004E1A8 3063010C */  jal        Print
/* 3E9AC 8004E1AC 702EE724 */   addiu     $a3, $a3, %lo(D_80012E70)
/* 3E9B0 8004E1B0 12000424 */  addiu      $a0, $zero, 0x12
/* 3E9B4 8004E1B4 27000524 */  addiu      $a1, $zero, 0x27
/* 3E9B8 8004E1B8 21300000 */  addu       $a2, $zero, $zero
/* 3E9BC 8004E1BC 0180073C */  lui        $a3, %hi(D_80012E7C)
/* 3E9C0 8004E1C0 0980023C */  lui        $v0, %hi(NumISOCels)
/* 3E9C4 8004E1C4 7C51428C */  lw         $v0, %lo(NumISOCels)($v0)
/* 3E9C8 8004E1C8 7C2EE724 */  addiu      $a3, $a3, %lo(D_80012E7C)
/* 3E9CC 8004E1CC 3063010C */  jal        Print
/* 3E9D0 8004E1D0 1000A2AF */   sw        $v0, 0x10($sp)
/* 3E9D4 8004E1D4 12000424 */  addiu      $a0, $zero, 0x12
/* 3E9D8 8004E1D8 30000524 */  addiu      $a1, $zero, 0x30
/* 3E9DC 8004E1DC 21300000 */  addu       $a2, $zero, $zero
/* 3E9E0 8004E1E0 0980073C */  lui        $a3, %hi(D_8009511C)
/* 3E9E4 8004E1E4 0980023C */  lui        $v0, %hi(NumF3Cels)
/* 3E9E8 8004E1E8 5C51428C */  lw         $v0, %lo(NumF3Cels)($v0)
/* 3E9EC 8004E1EC 1C51E724 */  addiu      $a3, $a3, %lo(D_8009511C)
/* 3E9F0 8004E1F0 3063010C */  jal        Print
/* 3E9F4 8004E1F4 1000A2AF */   sw        $v0, 0x10($sp)
/* 3E9F8 8004E1F8 12000424 */  addiu      $a0, $zero, 0x12
/* 3E9FC 8004E1FC 39000524 */  addiu      $a1, $zero, 0x39
/* 3EA00 8004E200 21300000 */  addu       $a2, $zero, $zero
/* 3EA04 8004E204 0980073C */  lui        $a3, %hi(D_80095124)
/* 3EA08 8004E208 0980023C */  lui        $v0, %hi(NumF4Cels)
/* 3EA0C 8004E20C 6051428C */  lw         $v0, %lo(NumF4Cels)($v0)
/* 3EA10 8004E210 2451E724 */  addiu      $a3, $a3, %lo(D_80095124)
/* 3EA14 8004E214 3063010C */  jal        Print
/* 3EA18 8004E218 1000A2AF */   sw        $v0, 0x10($sp)
/* 3EA1C 8004E21C 12000424 */  addiu      $a0, $zero, 0x12
/* 3EA20 8004E220 42000524 */  addiu      $a1, $zero, 0x42
/* 3EA24 8004E224 21300000 */  addu       $a2, $zero, $zero
/* 3EA28 8004E228 0980073C */  lui        $a3, %hi(D_8009512C)
/* 3EA2C 8004E22C 0980023C */  lui        $v0, %hi(NumG3Cels)
/* 3EA30 8004E230 6451428C */  lw         $v0, %lo(NumG3Cels)($v0)
/* 3EA34 8004E234 2C51E724 */  addiu      $a3, $a3, %lo(D_8009512C)
/* 3EA38 8004E238 3063010C */  jal        Print
/* 3EA3C 8004E23C 1000A2AF */   sw        $v0, 0x10($sp)
/* 3EA40 8004E240 12000424 */  addiu      $a0, $zero, 0x12
/* 3EA44 8004E244 4B000524 */  addiu      $a1, $zero, 0x4B
/* 3EA48 8004E248 21300000 */  addu       $a2, $zero, $zero
/* 3EA4C 8004E24C 0980073C */  lui        $a3, %hi(D_80095134)
/* 3EA50 8004E250 0980023C */  lui        $v0, %hi(NumG4Cels)
/* 3EA54 8004E254 6851428C */  lw         $v0, %lo(NumG4Cels)($v0)
/* 3EA58 8004E258 3451E724 */  addiu      $a3, $a3, %lo(D_80095134)
/* 3EA5C 8004E25C 3063010C */  jal        Print
/* 3EA60 8004E260 1000A2AF */   sw        $v0, 0x10($sp)
/* 3EA64 8004E264 12000424 */  addiu      $a0, $zero, 0x12
/* 3EA68 8004E268 54000524 */  addiu      $a1, $zero, 0x54
/* 3EA6C 8004E26C 21300000 */  addu       $a2, $zero, $zero
/* 3EA70 8004E270 0180073C */  lui        $a3, %hi(D_80012E88)
/* 3EA74 8004E274 0980023C */  lui        $v0, %hi(NumFT3Cels)
/* 3EA78 8004E278 6C51428C */  lw         $v0, %lo(NumFT3Cels)($v0)
/* 3EA7C 8004E27C 882EE724 */  addiu      $a3, $a3, %lo(D_80012E88)
/* 3EA80 8004E280 3063010C */  jal        Print
/* 3EA84 8004E284 1000A2AF */   sw        $v0, 0x10($sp)
/* 3EA88 8004E288 12000424 */  addiu      $a0, $zero, 0x12
/* 3EA8C 8004E28C 5D000524 */  addiu      $a1, $zero, 0x5D
/* 3EA90 8004E290 21300000 */  addu       $a2, $zero, $zero
/* 3EA94 8004E294 0180073C */  lui        $a3, %hi(D_80012E94)
/* 3EA98 8004E298 0980023C */  lui        $v0, %hi(NumFT4Cels)
/* 3EA9C 8004E29C 7051428C */  lw         $v0, %lo(NumFT4Cels)($v0)
/* 3EAA0 8004E2A0 942EE724 */  addiu      $a3, $a3, %lo(D_80012E94)
/* 3EAA4 8004E2A4 3063010C */  jal        Print
/* 3EAA8 8004E2A8 1000A2AF */   sw        $v0, 0x10($sp)
/* 3EAAC 8004E2AC 12000424 */  addiu      $a0, $zero, 0x12
/* 3EAB0 8004E2B0 66000524 */  addiu      $a1, $zero, 0x66
/* 3EAB4 8004E2B4 21300000 */  addu       $a2, $zero, $zero
/* 3EAB8 8004E2B8 0180073C */  lui        $a3, %hi(D_80012EA0)
/* 3EABC 8004E2BC 0980023C */  lui        $v0, %hi(NumGT3Cels)
/* 3EAC0 8004E2C0 7451428C */  lw         $v0, %lo(NumGT3Cels)($v0)
/* 3EAC4 8004E2C4 A02EE724 */  addiu      $a3, $a3, %lo(D_80012EA0)
/* 3EAC8 8004E2C8 3063010C */  jal        Print
/* 3EACC 8004E2CC 1000A2AF */   sw        $v0, 0x10($sp)
/* 3EAD0 8004E2D0 12000424 */  addiu      $a0, $zero, 0x12
/* 3EAD4 8004E2D4 6F000524 */  addiu      $a1, $zero, 0x6F
/* 3EAD8 8004E2D8 21300000 */  addu       $a2, $zero, $zero
/* 3EADC 8004E2DC 0180073C */  lui        $a3, %hi(D_80012EAC)
/* 3EAE0 8004E2E0 0980023C */  lui        $v0, %hi(NumGT4Cels)
/* 3EAE4 8004E2E4 7851428C */  lw         $v0, %lo(NumGT4Cels)($v0)
/* 3EAE8 8004E2E8 AC2EE724 */  addiu      $a3, $a3, %lo(D_80012EAC)
/* 3EAEC 8004E2EC 3063010C */  jal        Print
/* 3EAF0 8004E2F0 1000A2AF */   sw        $v0, 0x10($sp)
/* 3EAF4 8004E2F4 12000424 */  addiu      $a0, $zero, 0x12
/* 3EAF8 8004E2F8 78000524 */  addiu      $a1, $zero, 0x78
/* 3EAFC 8004E2FC 21300000 */  addu       $a2, $zero, $zero
/* 3EB00 8004E300 0180073C */  lui        $a3, %hi(D_80012EB8)
/* 3EB04 8004E304 B82EE724 */  addiu      $a3, $a3, %lo(D_80012EB8)
/* 3EB08 8004E308 0980023C */  lui        $v0, %hi(NumF3Cels)
/* 3EB0C 8004E30C 5C51428C */  lw         $v0, %lo(NumF3Cels)($v0)
/* 3EB10 8004E310 0980033C */  lui        $v1, %hi(NumF4Cels)
/* 3EB14 8004E314 6051638C */  lw         $v1, %lo(NumF4Cels)($v1)
/* 3EB18 8004E318 0980083C */  lui        $t0, %hi(NumG3Cels)
/* 3EB1C 8004E31C 6451088D */  lw         $t0, %lo(NumG3Cels)($t0)
/* 3EB20 8004E320 21104300 */  addu       $v0, $v0, $v1
/* 3EB24 8004E324 21104800 */  addu       $v0, $v0, $t0
/* 3EB28 8004E328 0980033C */  lui        $v1, %hi(NumG4Cels)
/* 3EB2C 8004E32C 6851638C */  lw         $v1, %lo(NumG4Cels)($v1)
/* 3EB30 8004E330 0980083C */  lui        $t0, %hi(NumFT3Cels)
/* 3EB34 8004E334 6C51088D */  lw         $t0, %lo(NumFT3Cels)($t0)
/* 3EB38 8004E338 21104300 */  addu       $v0, $v0, $v1
/* 3EB3C 8004E33C 21104800 */  addu       $v0, $v0, $t0
/* 3EB40 8004E340 0980033C */  lui        $v1, %hi(NumFT4Cels)
/* 3EB44 8004E344 7051638C */  lw         $v1, %lo(NumFT4Cels)($v1)
/* 3EB48 8004E348 0980083C */  lui        $t0, %hi(NumGT3Cels)
/* 3EB4C 8004E34C 7451088D */  lw         $t0, %lo(NumGT3Cels)($t0)
/* 3EB50 8004E350 21104300 */  addu       $v0, $v0, $v1
/* 3EB54 8004E354 0980033C */  lui        $v1, %hi(NumGT4Cels)
/* 3EB58 8004E358 7851638C */  lw         $v1, %lo(NumGT4Cels)($v1)
/* 3EB5C 8004E35C 21104800 */  addu       $v0, $v0, $t0
/* 3EB60 8004E360 21104300 */  addu       $v0, $v0, $v1
/* 3EB64 8004E364 3063010C */  jal        Print
/* 3EB68 8004E368 1000A2AF */   sw        $v0, 0x10($sp)
/* 3EB6C 8004E36C 21200000 */  addu       $a0, $zero, $zero
/* 3EB70 8004E370 00040624 */  addiu      $a2, $zero, 0x400
/* 3EB74 8004E374 8C650226 */  addiu      $v0, $s0, %lo(TestWorld)
/* 3EB78 8004E378 00010724 */  addiu      $a3, $zero, 0x100
/* 3EB7C 8004E37C 0C00458C */  lw         $a1, 0xC($v0)
/* 3EB80 8004E380 0980033C */  lui        $v1, %hi(Trg1)
/* 3EB84 8004E384 32596384 */  lh         $v1, %lo(Trg1)($v1)
/* 3EB88 8004E388 240E8227 */  addiu      $v0, $gp, %gp_rel(EditCel)
/* 3EB8C 8004E38C 1400B1AF */  sw         $s1, 0x14($sp)
/* 3EB90 8004E390 1800A2AF */  sw         $v0, 0x18($sp)
/* 3EB94 8004E394 4649010C */  jal        CheckOption
/* 3EB98 8004E398 1000A3AF */   sw        $v1, 0x10($sp)
/* 3EB9C 8004E39C 12000424 */  addiu      $a0, $zero, 0x12
/* 3EBA0 8004E3A0 8A000524 */  addiu      $a1, $zero, 0x8A
/* 3EBA4 8004E3A4 21300000 */  addu       $a2, $zero, $zero
/* 3EBA8 8004E3A8 0180073C */  lui        $a3, %hi(D_80012EC4)
/* 3EBAC 8004E3AC 240E828F */  lw         $v0, %gp_rel(EditCel)($gp)
/* 3EBB0 8004E3B0 C42EE724 */  addiu      $a3, $a3, %lo(D_80012EC4)
/* 3EBB4 8004E3B4 3063010C */  jal        Print
/* 3EBB8 8004E3B8 1000A2AF */   sw        $v0, 0x10($sp)
/* 3EBBC 8004E3BC 21200000 */  addu       $a0, $zero, $zero
/* 3EBC0 8004E3C0 04000524 */  addiu      $a1, $zero, 0x4
/* 3EBC4 8004E3C4 21300000 */  addu       $a2, $zero, $zero
/* 3EBC8 8004E3C8 00100724 */  addiu      $a3, $zero, 0x1000
/* 3EBCC 8004E3CC 0980033C */  lui        $v1, %hi(Trg1)
/* 3EBD0 8004E3D0 32596384 */  lh         $v1, %lo(Trg1)($v1)
/* 3EBD4 8004E3D4 140E8227 */  addiu      $v0, $gp, %gp_rel(EditCelRotation)
/* 3EBD8 8004E3D8 1400B1AF */  sw         $s1, 0x14($sp)
/* 3EBDC 8004E3DC 1800A2AF */  sw         $v0, 0x18($sp)
/* 3EBE0 8004E3E0 4649010C */  jal        CheckOption
/* 3EBE4 8004E3E4 1000A3AF */   sw        $v1, 0x10($sp)
/* 3EBE8 8004E3E8 21984002 */  addu       $s3, $s2, $zero
/* 3EBEC 8004E3EC 140E838F */  lw         $v1, %gp_rel(EditCelRotation)($gp)
/* 3EBF0 8004E3F0 00000000 */  nop
/* 3EBF4 8004E3F4 16007110 */  beq        $v1, $s1, .L8004E450
/* 3EBF8 8004E3F8 21900002 */   addu      $s2, $s0, $zero
/* 3EBFC 8004E3FC 02006228 */  slti       $v0, $v1, 0x2
/* 3EC00 8004E400 05004010 */  beqz       $v0, .L8004E418
/* 3EC04 8004E404 02000224 */   addiu     $v0, $zero, 0x2
/* 3EC08 8004E408 09006010 */  beqz       $v1, .L8004E430
/* 3EC0C 8004E40C 21200000 */   addu      $a0, $zero, $zero
/* 3EC10 8004E410 2C390108 */  j          .L8004E4B0
/* 3EC14 8004E414 40000624 */   addiu     $a2, $zero, 0x40
.L8004E418:
/* 3EC18 8004E418 15006210 */  beq        $v1, $v0, .L8004E470
/* 3EC1C 8004E41C 03000224 */   addiu     $v0, $zero, 0x3
/* 3EC20 8004E420 1B006210 */  beq        $v1, $v0, .L8004E490
/* 3EC24 8004E424 21200000 */   addu      $a0, $zero, $zero
/* 3EC28 8004E428 2C390108 */  j          .L8004E4B0
/* 3EC2C 8004E42C 40000624 */   addiu     $a2, $zero, 0x40
.L8004E430:
/* 3EC30 8004E430 12000424 */  addiu      $a0, $zero, 0x12
/* 3EC34 8004E434 93000524 */  addiu      $a1, $zero, 0x93
/* 3EC38 8004E438 21300000 */  addu       $a2, $zero, $zero
/* 3EC3C 8004E43C 0180073C */  lui        $a3, %hi(D_80012ED0)
/* 3EC40 8004E440 3063010C */  jal        Print
/* 3EC44 8004E444 D02EE724 */   addiu     $a3, $a3, %lo(D_80012ED0)
/* 3EC48 8004E448 2B390108 */  j          .L8004E4AC
/* 3EC4C 8004E44C 21200000 */   addu      $a0, $zero, $zero
.L8004E450:
/* 3EC50 8004E450 12000424 */  addiu      $a0, $zero, 0x12
/* 3EC54 8004E454 93000524 */  addiu      $a1, $zero, 0x93
/* 3EC58 8004E458 21300000 */  addu       $a2, $zero, $zero
/* 3EC5C 8004E45C 0180073C */  lui        $a3, %hi(D_80012EDC)
/* 3EC60 8004E460 3063010C */  jal        Print
/* 3EC64 8004E464 DC2EE724 */   addiu     $a3, $a3, %lo(D_80012EDC)
/* 3EC68 8004E468 2B390108 */  j          .L8004E4AC
/* 3EC6C 8004E46C 21200000 */   addu      $a0, $zero, $zero
.L8004E470:
/* 3EC70 8004E470 12000424 */  addiu      $a0, $zero, 0x12
/* 3EC74 8004E474 93000524 */  addiu      $a1, $zero, 0x93
/* 3EC78 8004E478 21300000 */  addu       $a2, $zero, $zero
/* 3EC7C 8004E47C 0180073C */  lui        $a3, %hi(D_80012EE8)
/* 3EC80 8004E480 3063010C */  jal        Print
/* 3EC84 8004E484 E82EE724 */   addiu     $a3, $a3, %lo(D_80012EE8)
/* 3EC88 8004E488 2B390108 */  j          .L8004E4AC
/* 3EC8C 8004E48C 21200000 */   addu      $a0, $zero, $zero
.L8004E490:
/* 3EC90 8004E490 12000424 */  addiu      $a0, $zero, 0x12
/* 3EC94 8004E494 93000524 */  addiu      $a1, $zero, 0x93
/* 3EC98 8004E498 21300000 */  addu       $a2, $zero, $zero
/* 3EC9C 8004E49C 0180073C */  lui        $a3, %hi(D_80012EF8)
/* 3ECA0 8004E4A0 3063010C */  jal        Print
/* 3ECA4 8004E4A4 F82EE724 */   addiu     $a3, $a3, %lo(D_80012EF8)
/* 3ECA8 8004E4A8 21200000 */  addu       $a0, $zero, $zero
.L8004E4AC:
/* 3ECAC 8004E4AC 40000624 */  addiu      $a2, $zero, 0x40
.L8004E4B0:
/* 3ECB0 8004E4B0 8C655026 */  addiu      $s0, $s2, %lo(TestWorld)
/* 3ECB4 8004E4B4 10000724 */  addiu      $a3, $zero, 0x10
/* 3ECB8 8004E4B8 0800058E */  lw         $a1, 0x8($s0)
/* 3ECBC 8004E4BC 0980033C */  lui        $v1, %hi(Trg1)
/* 3ECC0 8004E4C0 32596384 */  lh         $v1, %lo(Trg1)($v1)
/* 3ECC4 8004E4C4 200E8227 */  addiu      $v0, $gp, %gp_rel(EditCelZ)
/* 3ECC8 8004E4C8 1400A0AF */  sw         $zero, 0x14($sp)
/* 3ECCC 8004E4CC 1800A2AF */  sw         $v0, 0x18($sp)
/* 3ECD0 8004E4D0 4649010C */  jal        CheckOption
/* 3ECD4 8004E4D4 1000A3AF */   sw        $v1, 0x10($sp)
/* 3ECD8 8004E4D8 12000424 */  addiu      $a0, $zero, 0x12
/* 3ECDC 8004E4DC 9C000524 */  addiu      $a1, $zero, 0x9C
/* 3ECE0 8004E4E0 21300000 */  addu       $a2, $zero, $zero
/* 3ECE4 8004E4E4 0980073C */  lui        $a3, %hi(D_8009513C)
/* 3ECE8 8004E4E8 180E828F */  lw         $v0, %gp_rel(EditCelX)($gp)
/* 3ECEC 8004E4EC 3C51E724 */  addiu      $a3, $a3, %lo(D_8009513C)
/* 3ECF0 8004E4F0 3063010C */  jal        Print
/* 3ECF4 8004E4F4 1000A2AF */   sw        $v0, 0x10($sp)
/* 3ECF8 8004E4F8 21200000 */  addu       $a0, $zero, $zero
/* 3ECFC 8004E4FC 00080624 */  addiu      $a2, $zero, 0x800
/* 3ED00 8004E500 00020724 */  addiu      $a3, $zero, 0x200
/* 3ED04 8004E504 0400058E */  lw         $a1, 0x4($s0)
/* 3ED08 8004E508 0980033C */  lui        $v1, %hi(Trg1)
/* 3ED0C 8004E50C 32596384 */  lh         $v1, %lo(Trg1)($v1)
/* 3ED10 8004E510 1C0E8227 */  addiu      $v0, $gp, %gp_rel(EditCelY)
/* 3ED14 8004E514 1400A0AF */  sw         $zero, 0x14($sp)
/* 3ED18 8004E518 1800A2AF */  sw         $v0, 0x18($sp)
/* 3ED1C 8004E51C 4649010C */  jal        CheckOption
/* 3ED20 8004E520 1000A3AF */   sw        $v1, 0x10($sp)
/* 3ED24 8004E524 12000424 */  addiu      $a0, $zero, 0x12
/* 3ED28 8004E528 A5000524 */  addiu      $a1, $zero, 0xA5
/* 3ED2C 8004E52C 21300000 */  addu       $a2, $zero, $zero
/* 3ED30 8004E530 0980073C */  lui        $a3, %hi(D_80095144)
/* 3ED34 8004E534 1C0E828F */  lw         $v0, %gp_rel(EditCelY)($gp)
/* 3ED38 8004E538 4451E724 */  addiu      $a3, $a3, %lo(D_80095144)
/* 3ED3C 8004E53C 3063010C */  jal        Print
/* 3ED40 8004E540 1000A2AF */   sw        $v0, 0x10($sp)
/* 3ED44 8004E544 21200000 */  addu       $a0, $zero, $zero
/* 3ED48 8004E548 80000624 */  addiu      $a2, $zero, 0x80
/* 3ED4C 8004E54C 20000724 */  addiu      $a3, $zero, 0x20
/* 3ED50 8004E550 8C65458E */  lw         $a1, %lo(TestWorld)($s2)
/* 3ED54 8004E554 0980033C */  lui        $v1, %hi(Trg1)
/* 3ED58 8004E558 32596384 */  lh         $v1, %lo(Trg1)($v1)
/* 3ED5C 8004E55C 180E8227 */  addiu      $v0, $gp, %gp_rel(EditCelX)
/* 3ED60 8004E560 1400A0AF */  sw         $zero, 0x14($sp)
/* 3ED64 8004E564 1800A2AF */  sw         $v0, 0x18($sp)
/* 3ED68 8004E568 4649010C */  jal        CheckOption
/* 3ED6C 8004E56C 1000A3AF */   sw        $v1, 0x10($sp)
/* 3ED70 8004E570 12000424 */  addiu      $a0, $zero, 0x12
/* 3ED74 8004E574 AE000524 */  addiu      $a1, $zero, 0xAE
/* 3ED78 8004E578 21300000 */  addu       $a2, $zero, $zero
/* 3ED7C 8004E57C 0980073C */  lui        $a3, %hi(D_8009514C)
/* 3ED80 8004E580 200E828F */  lw         $v0, %gp_rel(EditCelZ)($gp)
/* 3ED84 8004E584 4C51E724 */  addiu      $a3, $a3, %lo(D_8009514C)
/* 3ED88 8004E588 3063010C */  jal        Print
/* 3ED8C 8004E58C 1000A2AF */   sw        $v0, 0x10($sp)
/* 3ED90 8004E590 0980033C */  lui        $v1, %hi(Trg1)
/* 3ED94 8004E594 32596394 */  lhu        $v1, %lo(Trg1)($v1)
/* 3ED98 8004E598 00000000 */  nop
/* 3ED9C 8004E59C 08006330 */  andi       $v1, $v1, 0x8
/* 3EDA0 8004E5A0 14006010 */  beqz       $v1, .L8004E5F4
/* 3EDA4 8004E5A4 00000000 */   nop
/* 3EDA8 8004E5A8 B05A628E */  lw         $v0, %lo(ETActor)($s3)
/* 3EDAC 8004E5AC 00000000 */  nop
/* 3EDB0 8004E5B0 02004104 */  bgez       $v0, .L8004E5BC
/* 3EDB4 8004E5B4 B05A7226 */   addiu     $s2, $s3, %lo(ETActor)
/* 3EDB8 8004E5B8 7F004224 */  addiu      $v0, $v0, 0x7F
.L8004E5BC:
/* 3EDBC 8004E5BC 0400438E */  lw         $v1, 0x4($s2)
/* 3EDC0 8004E5C0 C3110200 */  sra        $v0, $v0, 7
/* 3EDC4 8004E5C4 180E82AF */  sw         $v0, %gp_rel(EditCelX)($gp)
/* 3EDC8 8004E5C8 02006104 */  bgez       $v1, .L8004E5D4
/* 3EDCC 8004E5CC 00000000 */   nop
/* 3EDD0 8004E5D0 7F006324 */  addiu      $v1, $v1, 0x7F
.L8004E5D4:
/* 3EDD4 8004E5D4 0800528E */  lw         $s2, 0x8($s2)
/* 3EDD8 8004E5D8 C3110300 */  sra        $v0, $v1, 7
/* 3EDDC 8004E5DC 1C0E82AF */  sw         $v0, %gp_rel(EditCelY)($gp)
/* 3EDE0 8004E5E0 03004106 */  bgez       $s2, .L8004E5F0
/* 3EDE4 8004E5E4 C3111200 */   sra       $v0, $s2, 7
/* 3EDE8 8004E5E8 7F005226 */  addiu      $s2, $s2, 0x7F
/* 3EDEC 8004E5EC C3111200 */  sra        $v0, $s2, 7
.L8004E5F0:
/* 3EDF0 8004E5F0 200E82AF */  sw         $v0, %gp_rel(EditCelZ)($gp)
.L8004E5F4:
/* 3EDF4 8004E5F4 300E828F */  lw         $v0, %gp_rel(FlipFlopState)($gp)
/* 3EDF8 8004E5F8 00000000 */  nop
/* 3EDFC 8004E5FC 18004014 */  bnez       $v0, .L8004E660
/* 3EE00 8004E600 00000000 */   nop
/* 3EE04 8004E604 0980033C */  lui        $v1, %hi(Pad1)
/* 3EE08 8004E608 2E596394 */  lhu        $v1, %lo(Pad1)($v1)
/* 3EE0C 8004E60C 00000000 */  nop
/* 3EE10 8004E610 00406230 */  andi       $v0, $v1, 0x4000
/* 3EE14 8004E614 0B004010 */  beqz       $v0, .L8004E644
/* 3EE18 8004E618 00206230 */   andi      $v0, $v1, 0x2000
/* 3EE1C 8004E61C 180E848F */  lw         $a0, %gp_rel(EditCelX)($gp)
/* 3EE20 8004E620 1C0E858F */  lw         $a1, %gp_rel(EditCelY)($gp)
/* 3EE24 8004E624 200E868F */  lw         $a2, %gp_rel(EditCelZ)($gp)
/* 3EE28 8004E628 140E878F */  lw         $a3, %gp_rel(EditCelRotation)($gp)
/* 3EE2C 8004E62C 240E828F */  lw         $v0, %gp_rel(EditCel)($gp)
/* 3EE30 8004E630 803B0700 */  sll        $a3, $a3, 14
/* 3EE34 8004E634 2C94010C */  jal        SetCelIndex
/* 3EE38 8004E638 25384700 */   or        $a3, $v0, $a3
/* 3EE3C 8004E63C 98390108 */  j          .L8004E660
/* 3EE40 8004E640 00000000 */   nop
.L8004E644:
/* 3EE44 8004E644 06004010 */  beqz       $v0, .L8004E660
/* 3EE48 8004E648 00000000 */   nop
/* 3EE4C 8004E64C 180E848F */  lw         $a0, %gp_rel(EditCelX)($gp)
/* 3EE50 8004E650 1C0E858F */  lw         $a1, %gp_rel(EditCelY)($gp)
/* 3EE54 8004E654 200E868F */  lw         $a2, %gp_rel(EditCelZ)($gp)
/* 3EE58 8004E658 2C94010C */  jal        SetCelIndex
/* 3EE5C 8004E65C FFFF0724 */   addiu     $a3, $zero, -0x1
.L8004E660:
/* 3EE60 8004E660 0980023C */  lui        $v0, %hi(Trg0)
/* 3EE64 8004E664 30594294 */  lhu        $v0, %lo(Trg0)($v0)
/* 3EE68 8004E668 00000000 */  nop
/* 3EE6C 8004E66C 08004230 */  andi       $v0, $v0, 0x8
/* 3EE70 8004E670 02004010 */  beqz       $v0, .L8004E67C
/* 3EE74 8004E674 00000000 */   nop
/* 3EE78 8004E678 0C0E80AF */  sw         $zero, %gp_rel(EditLevelState)($gp)
.L8004E67C:
/* 3EE7C 8004E67C ED35010C */  jal        FlashCursor
/* 3EE80 8004E680 00000000 */   nop
/* 3EE84 8004E684 3000BF8F */  lw         $ra, 0x30($sp)
/* 3EE88 8004E688 2C00B38F */  lw         $s3, 0x2C($sp)
/* 3EE8C 8004E68C 2800B28F */  lw         $s2, 0x28($sp)
/* 3EE90 8004E690 2400B18F */  lw         $s1, 0x24($sp)
/* 3EE94 8004E694 2000B08F */  lw         $s0, 0x20($sp)
/* 3EE98 8004E698 0800E003 */  jr         $ra
/* 3EE9C 8004E69C 3800BD27 */   addiu     $sp, $sp, 0x38
.size EditLevelPaintMenu, . - EditLevelPaintMenu
