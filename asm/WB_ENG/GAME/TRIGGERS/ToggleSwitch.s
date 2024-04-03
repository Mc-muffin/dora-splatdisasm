.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ToggleSwitch
/* 301CC 8003F9CC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 301D0 8003F9D0 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 301D4 8003F9D4 01001324 */  addiu      $s3, $zero, 0x1
/* 301D8 8003F9D8 1400B1AF */  sw         $s1, 0x14($sp)
/* 301DC 8003F9DC 21888000 */  addu       $s1, $a0, $zero
/* 301E0 8003F9E0 2000BFAF */  sw         $ra, 0x20($sp)
/* 301E4 8003F9E4 1800B2AF */  sw         $s2, 0x18($sp)
/* 301E8 8003F9E8 1000B0AF */  sw         $s0, 0x10($sp)
/* 301EC 8003F9EC 0800228E */  lw         $v0, 0x8($s1)
/* 301F0 8003F9F0 6800328E */  lw         $s2, 0x68($s1)
/* 301F4 8003F9F4 1800248E */  lw         $a0, 0x18($s1)
/* 301F8 8003F9F8 0100422C */  sltiu      $v0, $v0, 0x1
/* 301FC 8003F9FC 5B008004 */  bltz       $a0, .L8003FB6C
/* 30200 8003FA00 080022AE */   sw        $v0, 0x8($s1)
/* 30204 8003FA04 3A004010 */  beqz       $v0, .L8003FAF0
/* 30208 8003FA08 21800000 */   addu      $s0, $zero, $zero
/* 3020C 8003FA0C 86002296 */  lhu        $v0, 0x86($s1)
/* 30210 8003FA10 00000000 */  nop
/* 30214 8003FA14 4E004014 */  bnez       $v0, .L8003FB50
/* 30218 8003FA18 00000000 */   nop
/* 3021C 8003FA1C 0C00A010 */  beqz       $a1, .L8003FA50
/* 30220 8003FA20 0A80103C */   lui       $s0, %hi(gkeytriggersCount)
/* 30224 8003FA24 0A80043C */  lui        $a0, %hi(gkeytriggersMax)
/* 30228 8003FA28 68BA8424 */  addiu      $a0, $a0, %lo(gkeytriggersMax)
/* 3022C 8003FA2C 1C00228E */  lw         $v0, 0x1C($s1)
/* 30230 8003FA30 E0BA0326 */  addiu      $v1, $s0, %lo(gkeytriggersCount)
/* 30234 8003FA34 80100200 */  sll        $v0, $v0, 2
/* 30238 8003FA38 21204400 */  addu       $a0, $v0, $a0
/* 3023C 8003FA3C 21104300 */  addu       $v0, $v0, $v1
/* 30240 8003FA40 0000858C */  lw         $a1, 0x0($a0)
/* 30244 8003FA44 0000448C */  lw         $a0, 0x0($v0)
/* 30248 8003FA48 B26C000C */  jal        FoundInventorySwitch
/* 3024C 8003FA4C 2320A400 */   subu      $a0, $a1, $a0
.L8003FA50:
/* 30250 8003FA50 0A80053C */  lui        $a1, %hi(ggrouptriggersCount)
/* 30254 8003FA54 1800238E */  lw         $v1, 0x18($s1)
/* 30258 8003FA58 F0B9A524 */  addiu      $a1, $a1, %lo(ggrouptriggersCount)
/* 3025C 8003FA5C 80180300 */  sll        $v1, $v1, 2
/* 30260 8003FA60 21186500 */  addu       $v1, $v1, $a1
/* 30264 8003FA64 0000628C */  lw         $v0, 0x0($v1)
/* 30268 8003FA68 00000000 */  nop
/* 3026C 8003FA6C 01004224 */  addiu      $v0, $v0, 0x1
/* 30270 8003FA70 000062AC */  sw         $v0, 0x0($v1)
/* 30274 8003FA74 1C00248E */  lw         $a0, 0x1C($s1)
/* 30278 8003FA78 E0BA0326 */  addiu      $v1, $s0, %lo(gkeytriggersCount)
/* 3027C 8003FA7C 80200400 */  sll        $a0, $a0, 2
/* 30280 8003FA80 21208300 */  addu       $a0, $a0, $v1
/* 30284 8003FA84 0000828C */  lw         $v0, 0x0($a0)
/* 30288 8003FA88 00000000 */  nop
/* 3028C 8003FA8C 01004224 */  addiu      $v0, $v0, 0x1
/* 30290 8003FA90 000082AC */  sw         $v0, 0x0($a0)
/* 30294 8003FA94 0A80023C */  lui        $v0, %hi(ggrouptriggersMax)
/* 30298 8003FA98 1800238E */  lw         $v1, 0x18($s1)
/* 3029C 8003FA9C 58BB4224 */  addiu      $v0, $v0, %lo(ggrouptriggersMax)
/* 302A0 8003FAA0 80180300 */  sll        $v1, $v1, 2
/* 302A4 8003FAA4 21286500 */  addu       $a1, $v1, $a1
/* 302A8 8003FAA8 21186200 */  addu       $v1, $v1, $v0
/* 302AC 8003FAAC 0000A48C */  lw         $a0, 0x0($a1)
/* 302B0 8003FAB0 0000628C */  lw         $v0, 0x0($v1)
/* 302B4 8003FAB4 00000000 */  nop
/* 302B8 8003FAB8 04008214 */  bne        $a0, $v0, .L8003FACC
/* 302BC 8003FABC 00000000 */   nop
/* 302C0 8003FAC0 7000308E */  lw         $s0, 0x70($s1)
/* 302C4 8003FAC4 D4FE0008 */  j          .L8003FB50
/* 302C8 8003FAC8 00000000 */   nop
.L8003FACC:
/* 302CC 8003FACC 2C00258E */  lw         $a1, 0x2C($s1)
/* 302D0 8003FAD0 6C00308E */  lw         $s0, 0x6C($s1)
/* 302D4 8003FAD4 1E00A004 */  bltz       $a1, .L8003FB50
/* 302D8 8003FAD8 21980000 */   addu      $s3, $zero, $zero
/* 302DC 8003FADC 3400268E */  lw         $a2, 0x34($s1)
/* 302E0 8003FAE0 6F4A010C */  jal        pxm_sendevent
/* 302E4 8003FAE4 2E000424 */   addiu     $a0, $zero, 0x2E
/* 302E8 8003FAE8 D4FE0008 */  j          .L8003FB50
/* 302EC 8003FAEC 00000000 */   nop
.L8003FAF0:
/* 302F0 8003FAF0 0A80033C */  lui        $v1, %hi(ggrouptriggersCount)
/* 302F4 8003FAF4 F0B96324 */  addiu      $v1, $v1, %lo(ggrouptriggersCount)
/* 302F8 8003FAF8 80200400 */  sll        $a0, $a0, 2
/* 302FC 8003FAFC 21288300 */  addu       $a1, $a0, $v1
/* 30300 8003FB00 0A80023C */  lui        $v0, %hi(ggrouptriggersMax)
/* 30304 8003FB04 58BB4224 */  addiu      $v0, $v0, %lo(ggrouptriggersMax)
/* 30308 8003FB08 21208200 */  addu       $a0, $a0, $v0
/* 3030C 8003FB0C 0000A38C */  lw         $v1, 0x0($a1)
/* 30310 8003FB10 0000828C */  lw         $v0, 0x0($a0)
/* 30314 8003FB14 00000000 */  nop
/* 30318 8003FB18 02006214 */  bne        $v1, $v0, .L8003FB24
/* 3031C 8003FB1C 21980000 */   addu      $s3, $zero, $zero
/* 30320 8003FB20 7000308E */  lw         $s0, 0x70($s1)
.L8003FB24:
/* 30324 8003FB24 FFFF6224 */  addiu      $v0, $v1, -0x1
/* 30328 8003FB28 0A80043C */  lui        $a0, %hi(gkeytriggersCount)
/* 3032C 8003FB2C 0000A2AC */  sw         $v0, 0x0($a1)
/* 30330 8003FB30 1C00238E */  lw         $v1, 0x1C($s1)
/* 30334 8003FB34 E0BA8424 */  addiu      $a0, $a0, %lo(gkeytriggersCount)
/* 30338 8003FB38 80180300 */  sll        $v1, $v1, 2
/* 3033C 8003FB3C 21186400 */  addu       $v1, $v1, $a0
/* 30340 8003FB40 0000628C */  lw         $v0, 0x0($v1)
/* 30344 8003FB44 00000000 */  nop
/* 30348 8003FB48 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 3034C 8003FB4C 000062AC */  sw         $v0, 0x0($v1)
.L8003FB50:
/* 30350 8003FB50 17000012 */  beqz       $s0, .L8003FBB0
/* 30354 8003FB54 00000000 */   nop
/* 30358 8003FB58 0400048E */  lw         $a0, 0x4($s0)
/* 3035C 8003FB5C A38A010C */  jal        ToggleCellAnimation
/* 30360 8003FB60 00000000 */   nop
/* 30364 8003FB64 ECFE0008 */  j          .L8003FBB0
/* 30368 8003FB68 00000000 */   nop
.L8003FB6C:
/* 3036C 8003FB6C 86002296 */  lhu        $v0, 0x86($s1)
/* 30370 8003FB70 4400248E */  lw         $a0, 0x44($s1)
/* 30374 8003FB74 0E004014 */  bnez       $v0, .L8003FBB0
/* 30378 8003FB78 44003026 */   addiu     $s0, $s1, 0x44
/* 3037C 8003FB7C 0C008010 */  beqz       $a0, .L8003FBB0
/* 30380 8003FB80 00000000 */   nop
.L8003FB84:
/* 30384 8003FB84 8779000C */  jal        CheckIfInventoryActor
/* 30388 8003FB88 00000000 */   nop
/* 3038C 8003FB8C 03004010 */  beqz       $v0, .L8003FB9C
/* 30390 8003FB90 00000000 */   nop
/* 30394 8003FB94 B26C000C */  jal        FoundInventorySwitch
/* 30398 8003FB98 21200000 */   addu      $a0, $zero, $zero
.L8003FB9C:
/* 3039C 8003FB9C 04001026 */  addiu      $s0, $s0, 0x4
/* 303A0 8003FBA0 0000048E */  lw         $a0, 0x0($s0)
/* 303A4 8003FBA4 00000000 */  nop
/* 303A8 8003FBA8 F6FF8014 */  bnez       $a0, .L8003FB84
/* 303AC 8003FBAC 00000000 */   nop
.L8003FBB0:
/* 303B0 8003FBB0 2E006012 */  beqz       $s3, .L8003FC6C
/* 303B4 8003FBB4 00000000 */   nop
/* 303B8 8003FBB8 4000228E */  lw         $v0, 0x40($s1)
/* 303BC 8003FBBC 00000000 */  nop
/* 303C0 8003FBC0 11004010 */  beqz       $v0, .L8003FC08
/* 303C4 8003FBC4 00000000 */   nop
/* 303C8 8003FBC8 6400248E */  lw         $a0, 0x64($s1)
/* 303CC 8003FBCC 00000000 */  nop
/* 303D0 8003FBD0 02008014 */  bnez       $a0, .L8003FBDC
/* 303D4 8003FBD4 00000000 */   nop
/* 303D8 8003FBD8 21200000 */  addu       $a0, $zero, $zero
.L8003FBDC:
/* 303DC 8003FBDC 09F84000 */  jalr       $v0
/* 303E0 8003FBE0 00000000 */   nop
/* 303E4 8003FBE4 08004014 */  bnez       $v0, .L8003FC08
/* 303E8 8003FBE8 00000000 */   nop
/* 303EC 8003FBEC 0800228E */  lw         $v0, 0x8($s1)
/* 303F0 8003FBF0 0C00238E */  lw         $v1, 0xC($s1)
/* 303F4 8003FBF4 0100422C */  sltiu      $v0, $v0, 0x1
/* 303F8 8003FBF8 0100632C */  sltiu      $v1, $v1, 0x1
/* 303FC 8003FBFC 080022AE */  sw         $v0, 0x8($s1)
/* 30400 8003FC00 2DFF0008 */  j          .L8003FCB4
/* 30404 8003FC04 0C0023AE */   sw        $v1, 0xC($s1)
.L8003FC08:
/* 30408 8003FC08 2800258E */  lw         $a1, 0x28($s1)
/* 3040C 8003FC0C 00000000 */  nop
/* 30410 8003FC10 0400A004 */  bltz       $a1, .L8003FC24
/* 30414 8003FC14 00000000 */   nop
/* 30418 8003FC18 3400268E */  lw         $a2, 0x34($s1)
/* 3041C 8003FC1C 6F4A010C */  jal        pxm_sendevent
/* 30420 8003FC20 2E000424 */   addiu     $a0, $zero, 0x2E
.L8003FC24:
/* 30424 8003FC24 2400258E */  lw         $a1, 0x24($s1)
/* 30428 8003FC28 00000000 */  nop
/* 3042C 8003FC2C 0400A004 */  bltz       $a1, .L8003FC40
/* 30430 8003FC30 00000000 */   nop
/* 30434 8003FC34 3400268E */  lw         $a2, 0x34($s1)
/* 30438 8003FC38 6F4A010C */  jal        pxm_sendevent
/* 3043C 8003FC3C 2E000424 */   addiu     $a0, $zero, 0x2E
.L8003FC40:
/* 30440 8003FC40 1800228E */  lw         $v0, 0x18($s1)
/* 30444 8003FC44 00000000 */  nop
/* 30448 8003FC48 08004104 */  bgez       $v0, .L8003FC6C
/* 3044C 8003FC4C 00000000 */   nop
/* 30450 8003FC50 7000228E */  lw         $v0, 0x70($s1)
/* 30454 8003FC54 00000000 */  nop
/* 30458 8003FC58 04004010 */  beqz       $v0, .L8003FC6C
/* 3045C 8003FC5C 00000000 */   nop
/* 30460 8003FC60 0400448C */  lw         $a0, 0x4($v0)
/* 30464 8003FC64 A38A010C */  jal        ToggleCellAnimation
/* 30468 8003FC68 00000000 */   nop
.L8003FC6C:
/* 3046C 8003FC6C 11004012 */  beqz       $s2, .L8003FCB4
/* 30470 8003FC70 00000000 */   nop
/* 30474 8003FC74 8000258E */  lw         $a1, 0x80($s1)
/* 30478 8003FC78 0800268E */  lw         $a2, 0x8($s1)
/* 3047C 8003FC7C 6F4A010C */  jal        pxm_sendevent
/* 30480 8003FC80 1C000424 */   addiu     $a0, $zero, 0x1C
.L8003FC84:
/* 30484 8003FC84 0800428E */  lw         $v0, 0x8($s2)
/* 30488 8003FC88 00000000 */  nop
/* 3048C 8003FC8C 03004230 */  andi       $v0, $v0, 0x3
/* 30490 8003FC90 04004014 */  bnez       $v0, .L8003FCA4
/* 30494 8003FC94 00000000 */   nop
/* 30498 8003FC98 0400448E */  lw         $a0, 0x4($s2)
/* 3049C 8003FC9C A38A010C */  jal        ToggleCellAnimation
/* 304A0 8003FCA0 00000000 */   nop
.L8003FCA4:
/* 304A4 8003FCA4 0C00528E */  lw         $s2, 0xC($s2)
/* 304A8 8003FCA8 00000000 */  nop
/* 304AC 8003FCAC F5FF4016 */  bnez       $s2, .L8003FC84
/* 304B0 8003FCB0 00000000 */   nop
.L8003FCB4:
/* 304B4 8003FCB4 2000BF8F */  lw         $ra, 0x20($sp)
/* 304B8 8003FCB8 1C00B38F */  lw         $s3, 0x1C($sp)
/* 304BC 8003FCBC 1800B28F */  lw         $s2, 0x18($sp)
/* 304C0 8003FCC0 1400B18F */  lw         $s1, 0x14($sp)
/* 304C4 8003FCC4 1000B08F */  lw         $s0, 0x10($sp)
/* 304C8 8003FCC8 0800E003 */  jr         $ra
/* 304CC 8003FCCC 2800BD27 */   addiu     $sp, $sp, 0x28
.size ToggleSwitch, . - ToggleSwitch
