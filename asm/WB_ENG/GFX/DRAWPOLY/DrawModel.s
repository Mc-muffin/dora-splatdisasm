.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Handwritten function */
glabel DrawModel
/* 4F8C0 8005F0C0 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* 4F8C4 8005F0C4 801F0F3C */  lui        $t7, (0x1F8003FC >> 16)
/* 4F8C8 8005F0C8 FC03EF35 */  ori        $t7, $t7, (0x1F8003FC & 0xFFFF)
/* 4F8CC 8005F0CC 21600000 */  addu       $t4, $zero, $zero
/* 4F8D0 8005F0D0 0980183C */  lui        $t8, %hi(ot_ndx)
/* 4F8D4 8005F0D4 4853188F */  lw         $t8, %lo(ot_ndx)($t8)
/* 4F8D8 8005F0D8 0800B2AF */  sw         $s2, 0x8($sp)
/* 4F8DC 8005F0DC 0400B1AF */  sw         $s1, 0x4($sp)
/* 4F8E0 8005F0E0 0000B0AF */  sw         $s0, 0x0($sp)
/* 4F8E4 8005F0E4 3800A28C */  lw         $v0, 0x38($a1)
/* 4F8E8 8005F0E8 0980193C */  lui        $t9, %hi(DistBuf)
/* 4F8EC 8005F0EC 9057398F */  lw         $t9, %lo(DistBuf)($t9)
/* 4F8F0 8005F0F0 40191800 */  sll        $v1, $t8, 5
/* 4F8F4 8005F0F4 21504300 */  addu       $t2, $v0, $v1
/* 4F8F8 8005F0F8 40004824 */  addiu      $t0, $v0, 0x40
/* 4F8FC 8005F0FC 5000A294 */  lhu        $v0, 0x50($a1)
/* 4F900 8005F100 09800B3C */  lui        $t3, %hi(ScreenXY)
/* 4F904 8005F104 94576B8D */  lw         $t3, %lo(ScreenXY)($t3)
/* 4F908 8005F108 36004010 */  beqz       $v0, .L8005F1E4
/* 4F90C 8005F10C 21708000 */   addu      $t6, $a0, $zero
/* 4F910 8005F110 FF000D3C */  lui        $t5, (0xFFFFFF >> 16)
/* 4F914 8005F114 FFFFAD35 */  ori        $t5, $t5, (0xFFFFFF & 0xFFFF)
/* 4F918 8005F118 0007103C */  lui        $s0, (0x7000000 >> 16)
.L8005F11C:
/* 4F91C 8005F11C 00000395 */  lhu        $v1, 0x0($t0)
/* 4F920 8005F120 00000000 */  nop
/* 4F924 8005F124 80200300 */  sll        $a0, $v1, 2
/* 4F928 8005F128 21108B00 */  addu       $v0, $a0, $t3
/* 4F92C 8005F12C 21209900 */  addu       $a0, $a0, $t9
/* 4F930 8005F130 0000498C */  lw         $t1, 0x0($v0)
/* 4F934 8005F134 02000395 */  lhu        $v1, 0x2($t0)
/* 4F938 8005F138 0000848C */  lw         $a0, 0x0($a0)
/* 4F93C 8005F13C 04000295 */  lhu        $v0, 0x4($t0)
/* 4F940 8005F140 80180300 */  sll        $v1, $v1, 2
/* 4F944 8005F144 21186B00 */  addu       $v1, $v1, $t3
/* 4F948 8005F148 80100200 */  sll        $v0, $v0, 2
/* 4F94C 8005F14C 21104B00 */  addu       $v0, $v0, $t3
/* 4F950 8005F150 0000668C */  lw         $a2, 0x0($v1)
/* 4F954 8005F154 0000438C */  lw         $v1, 0x0($v0)
/* 4F958 8005F158 00608948 */  mtc2       $t1, $12 /* handwritten instruction */
/* 4F95C 8005F15C 00708348 */  mtc2       $v1, $14 /* handwritten instruction */
/* 4F960 8005F160 00688648 */  mtc2       $a2, $13 /* handwritten instruction */
/* 4F964 8005F164 00000000 */  nop
/* 4F968 8005F168 00000000 */  nop
/* 4F96C 8005F16C 0600404B */  NCLIP
/* 4F970 8005F170 0000F8E9 */  swc2       $24, 0x0($t7)
/* 4F974 8005F174 801F023C */  lui        $v0, (0x1F8003FC >> 16)
/* 4F978 8005F178 FC03428C */  lw         $v0, (0x1F8003FC & 0xFFFF)($v0)
/* 4F97C 8005F17C 00000000 */  nop
/* 4F980 8005F180 11004104 */  bgez       $v0, .L8005F1C8
/* 4F984 8005F184 00000000 */   nop
/* 4F988 8005F188 08004CE9 */  swc2       $12, 0x8($t2)
/* 4F98C 8005F18C 10004DE9 */  swc2       $13, 0x10($t2)
/* 4F990 8005F190 18004EE9 */  swc2       $14, 0x18($t2)
/* 4F994 8005F194 C0100400 */  sll        $v0, $a0, 3
/* 4F998 8005F198 21384E00 */  addu       $a3, $v0, $t6
/* 4F99C 8005F19C 0000E68C */  lw         $a2, 0x0($a3)
/* 4F9A0 8005F1A0 00000000 */  nop
/* 4F9A4 8005F1A4 0500C010 */  beqz       $a2, .L8005F1BC
/* 4F9A8 8005F1A8 21184000 */   addu      $v1, $v0, $zero
/* 4F9AC 8005F1AC 2410CD00 */  and        $v0, $a2, $t5
/* 4F9B0 8005F1B0 25105000 */  or         $v0, $v0, $s0
/* 4F9B4 8005F1B4 707C0108 */  j          .L8005F1C0
/* 4F9B8 8005F1B8 000042AD */   sw        $v0, 0x0($t2)
.L8005F1BC:
/* 4F9BC 8005F1BC 0400EAAC */  sw         $t2, 0x4($a3)
.L8005F1C0:
/* 4F9C0 8005F1C0 21106E00 */  addu       $v0, $v1, $t6
/* 4F9C4 8005F1C4 00004AAC */  sw         $t2, 0x0($v0)
.L8005F1C8:
/* 4F9C8 8005F1C8 48000825 */  addiu      $t0, $t0, 0x48
/* 4F9CC 8005F1CC 5000A294 */  lhu        $v0, 0x50($a1)
/* 4F9D0 8005F1D0 01008C25 */  addiu      $t4, $t4, 0x1
/* 4F9D4 8005F1D4 2A108201 */  slt        $v0, $t4, $v0
/* 4F9D8 8005F1D8 D0FF4014 */  bnez       $v0, .L8005F11C
/* 4F9DC 8005F1DC 48004A25 */   addiu     $t2, $t2, 0x48
/* 4F9E0 8005F1E0 21600000 */  addu       $t4, $zero, $zero
.L8005F1E4:
/* 4F9E4 8005F1E4 80201800 */  sll        $a0, $t8, 2
/* 4F9E8 8005F1E8 21109800 */  addu       $v0, $a0, $t8
/* 4F9EC 8005F1EC C0100200 */  sll        $v0, $v0, 3
/* 4F9F0 8005F1F0 21808000 */  addu       $s0, $a0, $zero
/* 4F9F4 8005F1F4 3C00A38C */  lw         $v1, 0x3C($a1)
/* 4F9F8 8005F1F8 40901800 */  sll        $s2, $t8, 1
/* 4F9FC 8005F1FC 21506200 */  addu       $t2, $v1, $v0
/* 4FA00 8005F200 5200A294 */  lhu        $v0, 0x52($a1)
/* 4FA04 8005F204 00000000 */  nop
/* 4FA08 8005F208 3A004010 */  beqz       $v0, .L8005F2F4
/* 4FA0C 8005F20C 50006824 */   addiu     $t0, $v1, 0x50
/* 4FA10 8005F210 FF000D3C */  lui        $t5, (0xFFFFFF >> 16)
/* 4FA14 8005F214 FFFFAD35 */  ori        $t5, $t5, (0xFFFFFF & 0xFFFF)
/* 4FA18 8005F218 0009113C */  lui        $s1, (0x9000000 >> 16)
.L8005F21C:
/* 4FA1C 8005F21C 00000395 */  lhu        $v1, 0x0($t0)
/* 4FA20 8005F220 00000000 */  nop
/* 4FA24 8005F224 80180300 */  sll        $v1, $v1, 2
/* 4FA28 8005F228 21106B00 */  addu       $v0, $v1, $t3
/* 4FA2C 8005F22C 21187900 */  addu       $v1, $v1, $t9
/* 4FA30 8005F230 0000498C */  lw         $t1, 0x0($v0)
/* 4FA34 8005F234 02000295 */  lhu        $v0, 0x2($t0)
/* 4FA38 8005F238 0000648C */  lw         $a0, 0x0($v1)
/* 4FA3C 8005F23C 04000395 */  lhu        $v1, 0x4($t0)
/* 4FA40 8005F240 80100200 */  sll        $v0, $v0, 2
/* 4FA44 8005F244 21104B00 */  addu       $v0, $v0, $t3
/* 4FA48 8005F248 80180300 */  sll        $v1, $v1, 2
/* 4FA4C 8005F24C 21186B00 */  addu       $v1, $v1, $t3
/* 4FA50 8005F250 0000468C */  lw         $a2, 0x0($v0)
/* 4FA54 8005F254 06000295 */  lhu        $v0, 0x6($t0)
/* 4FA58 8005F258 0000638C */  lw         $v1, 0x0($v1)
/* 4FA5C 8005F25C 80100200 */  sll        $v0, $v0, 2
/* 4FA60 8005F260 21104B00 */  addu       $v0, $v0, $t3
/* 4FA64 8005F264 0000478C */  lw         $a3, 0x0($v0)
/* 4FA68 8005F268 00608948 */  mtc2       $t1, $12 /* handwritten instruction */
/* 4FA6C 8005F26C 00708348 */  mtc2       $v1, $14 /* handwritten instruction */
/* 4FA70 8005F270 00688648 */  mtc2       $a2, $13 /* handwritten instruction */
/* 4FA74 8005F274 00000000 */  nop
/* 4FA78 8005F278 00000000 */  nop
/* 4FA7C 8005F27C 0600404B */  NCLIP
/* 4FA80 8005F280 0000F8E9 */  swc2       $24, 0x0($t7)
/* 4FA84 8005F284 801F023C */  lui        $v0, (0x1F8003FC >> 16)
/* 4FA88 8005F288 FC03428C */  lw         $v0, (0x1F8003FC & 0xFFFF)($v0)
/* 4FA8C 8005F28C 00000000 */  nop
/* 4FA90 8005F290 12004104 */  bgez       $v0, .L8005F2DC
/* 4FA94 8005F294 00000000 */   nop
/* 4FA98 8005F298 08004CE9 */  swc2       $12, 0x8($t2)
/* 4FA9C 8005F29C 10004DE9 */  swc2       $13, 0x10($t2)
/* 4FAA0 8005F2A0 18004EE9 */  swc2       $14, 0x18($t2)
/* 4FAA4 8005F2A4 C0100400 */  sll        $v0, $a0, 3
/* 4FAA8 8005F2A8 200047AD */  sw         $a3, 0x20($t2)
/* 4FAAC 8005F2AC 21384E00 */  addu       $a3, $v0, $t6
/* 4FAB0 8005F2B0 0000E68C */  lw         $a2, 0x0($a3)
/* 4FAB4 8005F2B4 00000000 */  nop
/* 4FAB8 8005F2B8 0500C010 */  beqz       $a2, .L8005F2D0
/* 4FABC 8005F2BC 21184000 */   addu      $v1, $v0, $zero
/* 4FAC0 8005F2C0 2410CD00 */  and        $v0, $a2, $t5
/* 4FAC4 8005F2C4 25105100 */  or         $v0, $v0, $s1
/* 4FAC8 8005F2C8 B57C0108 */  j          .L8005F2D4
/* 4FACC 8005F2CC 000042AD */   sw        $v0, 0x0($t2)
.L8005F2D0:
/* 4FAD0 8005F2D0 0400EAAC */  sw         $t2, 0x4($a3)
.L8005F2D4:
/* 4FAD4 8005F2D4 21106E00 */  addu       $v0, $v1, $t6
/* 4FAD8 8005F2D8 00004AAC */  sw         $t2, 0x0($v0)
.L8005F2DC:
/* 4FADC 8005F2DC 5C000825 */  addiu      $t0, $t0, 0x5C
/* 4FAE0 8005F2E0 5200A294 */  lhu        $v0, 0x52($a1)
/* 4FAE4 8005F2E4 01008C25 */  addiu      $t4, $t4, 0x1
/* 4FAE8 8005F2E8 2A108201 */  slt        $v0, $t4, $v0
/* 4FAEC 8005F2EC CBFF4014 */  bnez       $v0, .L8005F21C
/* 4FAF0 8005F2F0 5C004A25 */   addiu     $t2, $t2, 0x5C
.L8005F2F4:
/* 4FAF4 8005F2F4 21600000 */  addu       $t4, $zero, $zero
/* 4FAF8 8005F2F8 21101802 */  addu       $v0, $s0, $t8
/* 4FAFC 8005F2FC C0100200 */  sll        $v0, $v0, 3
/* 4FB00 8005F300 4000A48C */  lw         $a0, 0x40($a1)
/* 4FB04 8005F304 5400A394 */  lhu        $v1, 0x54($a1)
/* 4FB08 8005F308 21508200 */  addu       $t2, $a0, $v0
/* 4FB0C 8005F30C 36006010 */  beqz       $v1, .L8005F3E8
/* 4FB10 8005F310 50008824 */   addiu     $t0, $a0, 0x50
/* 4FB14 8005F314 FF000D3C */  lui        $t5, (0xFFFFFF >> 16)
/* 4FB18 8005F318 FFFFAD35 */  ori        $t5, $t5, (0xFFFFFF & 0xFFFF)
/* 4FB1C 8005F31C 0009103C */  lui        $s0, (0x9000000 >> 16)
.L8005F320:
/* 4FB20 8005F320 00000395 */  lhu        $v1, 0x0($t0)
/* 4FB24 8005F324 00000000 */  nop
/* 4FB28 8005F328 80200300 */  sll        $a0, $v1, 2
/* 4FB2C 8005F32C 21108B00 */  addu       $v0, $a0, $t3
/* 4FB30 8005F330 21209900 */  addu       $a0, $a0, $t9
/* 4FB34 8005F334 0000498C */  lw         $t1, 0x0($v0)
/* 4FB38 8005F338 02000395 */  lhu        $v1, 0x2($t0)
/* 4FB3C 8005F33C 0000848C */  lw         $a0, 0x0($a0)
/* 4FB40 8005F340 04000295 */  lhu        $v0, 0x4($t0)
/* 4FB44 8005F344 80180300 */  sll        $v1, $v1, 2
/* 4FB48 8005F348 21186B00 */  addu       $v1, $v1, $t3
/* 4FB4C 8005F34C 80100200 */  sll        $v0, $v0, 2
/* 4FB50 8005F350 21104B00 */  addu       $v0, $v0, $t3
/* 4FB54 8005F354 0000668C */  lw         $a2, 0x0($v1)
/* 4FB58 8005F358 0000438C */  lw         $v1, 0x0($v0)
/* 4FB5C 8005F35C 00608948 */  mtc2       $t1, $12 /* handwritten instruction */
/* 4FB60 8005F360 00708348 */  mtc2       $v1, $14 /* handwritten instruction */
/* 4FB64 8005F364 00688648 */  mtc2       $a2, $13 /* handwritten instruction */
/* 4FB68 8005F368 00000000 */  nop
/* 4FB6C 8005F36C 00000000 */  nop
/* 4FB70 8005F370 0600404B */  NCLIP
/* 4FB74 8005F374 0000F8E9 */  swc2       $24, 0x0($t7)
/* 4FB78 8005F378 801F023C */  lui        $v0, (0x1F8003FC >> 16)
/* 4FB7C 8005F37C FC03428C */  lw         $v0, (0x1F8003FC & 0xFFFF)($v0)
/* 4FB80 8005F380 00000000 */  nop
/* 4FB84 8005F384 11004104 */  bgez       $v0, .L8005F3CC
/* 4FB88 8005F388 00000000 */   nop
/* 4FB8C 8005F38C 08004CE9 */  swc2       $12, 0x8($t2)
/* 4FB90 8005F390 14004DE9 */  swc2       $13, 0x14($t2)
/* 4FB94 8005F394 20004EE9 */  swc2       $14, 0x20($t2)
/* 4FB98 8005F398 C0100400 */  sll        $v0, $a0, 3
/* 4FB9C 8005F39C 21384E00 */  addu       $a3, $v0, $t6
/* 4FBA0 8005F3A0 0000E68C */  lw         $a2, 0x0($a3)
/* 4FBA4 8005F3A4 00000000 */  nop
/* 4FBA8 8005F3A8 0500C010 */  beqz       $a2, .L8005F3C0
/* 4FBAC 8005F3AC 21184000 */   addu      $v1, $v0, $zero
/* 4FBB0 8005F3B0 2410CD00 */  and        $v0, $a2, $t5
/* 4FBB4 8005F3B4 25105000 */  or         $v0, $v0, $s0
/* 4FBB8 8005F3B8 F17C0108 */  j          .L8005F3C4
/* 4FBBC 8005F3BC 000042AD */   sw        $v0, 0x0($t2)
.L8005F3C0:
/* 4FBC0 8005F3C0 0400EAAC */  sw         $t2, 0x4($a3)
.L8005F3C4:
/* 4FBC4 8005F3C4 21106E00 */  addu       $v0, $v1, $t6
/* 4FBC8 8005F3C8 00004AAC */  sw         $t2, 0x0($v0)
.L8005F3CC:
/* 4FBCC 8005F3CC 58000825 */  addiu      $t0, $t0, 0x58
/* 4FBD0 8005F3D0 5400A294 */  lhu        $v0, 0x54($a1)
/* 4FBD4 8005F3D4 01008C25 */  addiu      $t4, $t4, 0x1
/* 4FBD8 8005F3D8 2A108201 */  slt        $v0, $t4, $v0
/* 4FBDC 8005F3DC D0FF4014 */  bnez       $v0, .L8005F320
/* 4FBE0 8005F3E0 58004A25 */   addiu     $t2, $t2, 0x58
/* 4FBE4 8005F3E4 21600000 */  addu       $t4, $zero, $zero
.L8005F3E8:
/* 4FBE8 8005F3E8 21105802 */  addu       $v0, $s2, $t8
/* 4FBEC 8005F3EC 80100200 */  sll        $v0, $v0, 2
/* 4FBF0 8005F3F0 21105800 */  addu       $v0, $v0, $t8
/* 4FBF4 8005F3F4 80100200 */  sll        $v0, $v0, 2
/* 4FBF8 8005F3F8 4400A48C */  lw         $a0, 0x44($a1)
/* 4FBFC 8005F3FC 5600A394 */  lhu        $v1, 0x56($a1)
/* 4FC00 8005F400 21508200 */  addu       $t2, $a0, $v0
/* 4FC04 8005F404 3A006010 */  beqz       $v1, .L8005F4F0
/* 4FC08 8005F408 68008824 */   addiu     $t0, $a0, 0x68
/* 4FC0C 8005F40C FF000D3C */  lui        $t5, (0xFFFFFF >> 16)
/* 4FC10 8005F410 FFFFAD35 */  ori        $t5, $t5, (0xFFFFFF & 0xFFFF)
/* 4FC14 8005F414 000D103C */  lui        $s0, (0xD000000 >> 16)
.L8005F418:
/* 4FC18 8005F418 00000395 */  lhu        $v1, 0x0($t0)
/* 4FC1C 8005F41C 00000000 */  nop
/* 4FC20 8005F420 80180300 */  sll        $v1, $v1, 2
/* 4FC24 8005F424 21106B00 */  addu       $v0, $v1, $t3
/* 4FC28 8005F428 21187900 */  addu       $v1, $v1, $t9
/* 4FC2C 8005F42C 0000498C */  lw         $t1, 0x0($v0)
/* 4FC30 8005F430 02000295 */  lhu        $v0, 0x2($t0)
/* 4FC34 8005F434 0000648C */  lw         $a0, 0x0($v1)
/* 4FC38 8005F438 04000395 */  lhu        $v1, 0x4($t0)
/* 4FC3C 8005F43C 80100200 */  sll        $v0, $v0, 2
/* 4FC40 8005F440 21104B00 */  addu       $v0, $v0, $t3
/* 4FC44 8005F444 80180300 */  sll        $v1, $v1, 2
/* 4FC48 8005F448 21186B00 */  addu       $v1, $v1, $t3
/* 4FC4C 8005F44C 0000468C */  lw         $a2, 0x0($v0)
/* 4FC50 8005F450 06000295 */  lhu        $v0, 0x6($t0)
/* 4FC54 8005F454 0000638C */  lw         $v1, 0x0($v1)
/* 4FC58 8005F458 80100200 */  sll        $v0, $v0, 2
/* 4FC5C 8005F45C 21104B00 */  addu       $v0, $v0, $t3
/* 4FC60 8005F460 0000478C */  lw         $a3, 0x0($v0)
/* 4FC64 8005F464 00608948 */  mtc2       $t1, $12 /* handwritten instruction */
/* 4FC68 8005F468 00708348 */  mtc2       $v1, $14 /* handwritten instruction */
/* 4FC6C 8005F46C 00688648 */  mtc2       $a2, $13 /* handwritten instruction */
/* 4FC70 8005F470 00000000 */  nop
/* 4FC74 8005F474 00000000 */  nop
/* 4FC78 8005F478 0600404B */  NCLIP
/* 4FC7C 8005F47C 0000F8E9 */  swc2       $24, 0x0($t7)
/* 4FC80 8005F480 801F023C */  lui        $v0, (0x1F8003FC >> 16)
/* 4FC84 8005F484 FC03428C */  lw         $v0, (0x1F8003FC & 0xFFFF)($v0)
/* 4FC88 8005F488 00000000 */  nop
/* 4FC8C 8005F48C 12004104 */  bgez       $v0, .L8005F4D8
/* 4FC90 8005F490 00000000 */   nop
/* 4FC94 8005F494 08004CE9 */  swc2       $12, 0x8($t2)
/* 4FC98 8005F498 14004DE9 */  swc2       $13, 0x14($t2)
/* 4FC9C 8005F49C 20004EE9 */  swc2       $14, 0x20($t2)
/* 4FCA0 8005F4A0 C0100400 */  sll        $v0, $a0, 3
/* 4FCA4 8005F4A4 2C0047AD */  sw         $a3, 0x2C($t2)
/* 4FCA8 8005F4A8 21384E00 */  addu       $a3, $v0, $t6
/* 4FCAC 8005F4AC 0000E68C */  lw         $a2, 0x0($a3)
/* 4FCB0 8005F4B0 00000000 */  nop
/* 4FCB4 8005F4B4 0500C010 */  beqz       $a2, .L8005F4CC
/* 4FCB8 8005F4B8 21184000 */   addu      $v1, $v0, $zero
/* 4FCBC 8005F4BC 2410CD00 */  and        $v0, $a2, $t5
/* 4FCC0 8005F4C0 25105000 */  or         $v0, $v0, $s0
/* 4FCC4 8005F4C4 347D0108 */  j          .L8005F4D0
/* 4FCC8 8005F4C8 000042AD */   sw        $v0, 0x0($t2)
.L8005F4CC:
/* 4FCCC 8005F4CC 0400EAAC */  sw         $t2, 0x4($a3)
.L8005F4D0:
/* 4FCD0 8005F4D0 21106E00 */  addu       $v0, $v1, $t6
/* 4FCD4 8005F4D4 00004AAC */  sw         $t2, 0x0($v0)
.L8005F4D8:
/* 4FCD8 8005F4D8 74000825 */  addiu      $t0, $t0, 0x74
/* 4FCDC 8005F4DC 5600A294 */  lhu        $v0, 0x56($a1)
/* 4FCE0 8005F4E0 01008C25 */  addiu      $t4, $t4, 0x1
/* 4FCE4 8005F4E4 2A108201 */  slt        $v0, $t4, $v0
/* 4FCE8 8005F4E8 CBFF4014 */  bnez       $v0, .L8005F418
/* 4FCEC 8005F4EC 74004A25 */   addiu     $t2, $t2, 0x74
.L8005F4F0:
/* 4FCF0 8005F4F0 0800B28F */  lw         $s2, 0x8($sp)
/* 4FCF4 8005F4F4 0400B18F */  lw         $s1, 0x4($sp)
/* 4FCF8 8005F4F8 0000B08F */  lw         $s0, 0x0($sp)
/* 4FCFC 8005F4FC 0800E003 */  jr         $ra
/* 4FD00 8005F500 1000BD27 */   addiu     $sp, $sp, 0x10
.size DrawModel, . - DrawModel
