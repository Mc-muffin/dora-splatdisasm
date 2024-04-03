.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckPlatformGravity
/* 2D9E4 8003D1E4 21600000 */  addu       $t4, $zero, $zero
/* 2D9E8 8003D1E8 21388000 */  addu       $a3, $a0, $zero
/* 2D9EC 8003D1EC 0A80023C */  lui        $v0, %hi(SpawnServiceList)
/* 2D9F0 8003D1F0 0980033C */  lui        $v1, %hi(NumSpawnedActors)
/* 2D9F4 8003D1F4 044F638C */  lw         $v1, %lo(NumSpawnedActors)($v1)
/* 2D9F8 8003D1F8 B8C04224 */  addiu      $v0, $v0, %lo(SpawnServiceList)
/* 2D9FC 8003D1FC 57006018 */  blez       $v1, .L8003D35C
/* 2DA00 8003D200 1C00E0AC */   sw        $zero, 0x1C($a3)
/* 2DA04 8003D204 34030D24 */  addiu      $t5, $zero, 0x334
/* 2DA08 8003D208 6C004624 */  addiu      $a2, $v0, 0x6C
.L8003D20C:
/* 2DA0C 8003D20C A4FFC28C */  lw         $v0, -0x5C($a2)
/* 2DA10 8003D210 D8FFC38C */  lw         $v1, -0x28($a2)
/* 2DA14 8003D214 00014230 */  andi       $v0, $v0, 0x100
/* 2DA18 8003D218 0C00638C */  lw         $v1, 0xC($v1)
/* 2DA1C 8003D21C 48004010 */  beqz       $v0, .L8003D340
/* 2DA20 8003D220 0C000224 */   addiu     $v0, $zero, 0xC
/* 2DA24 8003D224 46006214 */  bne        $v1, $v0, .L8003D340
/* 2DA28 8003D228 00000000 */   nop
/* 2DA2C 8003D22C 4400C710 */  beq        $a2, $a3, .L8003D340
/* 2DA30 8003D230 00000000 */   nop
/* 2DA34 8003D234 E4FFC38C */  lw         $v1, -0x1C($a2)
/* 2DA38 8003D238 0400C58C */  lw         $a1, 0x4($a2)
/* 2DA3C 8003D23C 0400E88C */  lw         $t0, 0x4($a3)
/* 2DA40 8003D240 0800EB8C */  lw         $t3, 0x8($a3)
/* 2DA44 8003D244 0C00E98C */  lw         $t1, 0xC($a3)
/* 2DA48 8003D248 0800CA8C */  lw         $t2, 0x8($a2)
/* 2DA4C 8003D24C 0C00C48C */  lw         $a0, 0xC($a2)
/* 2DA50 8003D250 2310A300 */  subu       $v0, $a1, $v1
/* 2DA54 8003D254 2A100201 */  slt        $v0, $t0, $v0
/* 2DA58 8003D258 39004014 */  bnez       $v0, .L8003D340
/* 2DA5C 8003D25C 2110A300 */   addu      $v0, $a1, $v1
/* 2DA60 8003D260 2A104800 */  slt        $v0, $v0, $t0
/* 2DA64 8003D264 36004014 */  bnez       $v0, .L8003D340
/* 2DA68 8003D268 23108300 */   subu      $v0, $a0, $v1
/* 2DA6C 8003D26C 2A102201 */  slt        $v0, $t1, $v0
/* 2DA70 8003D270 33004014 */  bnez       $v0, .L8003D340
/* 2DA74 8003D274 21108300 */   addu      $v0, $a0, $v1
/* 2DA78 8003D278 2A104900 */  slt        $v0, $v0, $t1
/* 2DA7C 8003D27C 30004014 */  bnez       $v0, .L8003D340
/* 2DA80 8003D280 80FF4325 */   addiu     $v1, $t2, -0x80
/* 2DA84 8003D284 2A106B00 */  slt        $v0, $v1, $t3
/* 2DA88 8003D288 2D004010 */  beqz       $v0, .L8003D340
/* 2DA8C 8003D28C 2A106A01 */   slt       $v0, $t3, $t2
/* 2DA90 8003D290 2C004010 */  beqz       $v0, .L8003D344
/* 2DA94 8003D294 01008C25 */   addiu     $t4, $t4, 0x1
/* 2DA98 8003D298 3000E58C */  lw         $a1, 0x30($a3)
/* 2DA9C 8003D29C 00000000 */  nop
/* 2DAA0 8003D2A0 1800AD00 */  mult       $a1, $t5
/* 2DAA4 8003D2A4 12280000 */  mflo       $a1
/* 2DAA8 8003D2A8 080C848F */  lw         $a0, %gp_rel(TWEAK_FRICTION_DIV)($gp)
/* 2DAAC 8003D2AC 00000000 */  nop
/* 2DAB0 8003D2B0 1A00A400 */  div        $zero, $a1, $a0
/* 2DAB4 8003D2B4 0800E3AC */  sw         $v1, 0x8($a3)
/* 2DAB8 8003D2B8 0400C28C */  lw         $v0, 0x4($a2)
/* 2DABC 8003D2BC 1000C38C */  lw         $v1, 0x10($a2)
/* 2DAC0 8003D2C0 00000000 */  nop
/* 2DAC4 8003D2C4 23104300 */  subu       $v0, $v0, $v1
/* 2DAC8 8003D2C8 21100201 */  addu       $v0, $t0, $v0
/* 2DACC 8003D2CC 0400E2AC */  sw         $v0, 0x4($a3)
/* 2DAD0 8003D2D0 0C00C38C */  lw         $v1, 0xC($a2)
/* 2DAD4 8003D2D4 1800C28C */  lw         $v0, 0x18($a2)
/* 2DAD8 8003D2D8 00000000 */  nop
/* 2DADC 8003D2DC 23186200 */  subu       $v1, $v1, $v0
/* 2DAE0 8003D2E0 21182301 */  addu       $v1, $t1, $v1
/* 2DAE4 8003D2E4 0C00E3AC */  sw         $v1, 0xC($a3)
/* 2DAE8 8003D2E8 12280000 */  mflo       $a1
/* 2DAEC 8003D2EC 02008014 */  bnez       $a0, .L8003D2F8
/* 2DAF0 8003D2F0 00000000 */   nop
/* 2DAF4 8003D2F4 CD010000 */  break      0, 7
.L8003D2F8:
/* 2DAF8 8003D2F8 3800E38C */  lw         $v1, 0x38($a3)
/* 2DAFC 8003D2FC 34030224 */  addiu      $v0, $zero, 0x334
/* 2DB00 8003D300 18006200 */  mult       $v1, $v0
/* 2DB04 8003D304 12180000 */  mflo       $v1
/* 2DB08 8003D308 00000000 */  nop
/* 2DB0C 8003D30C 00000000 */  nop
/* 2DB10 8003D310 1A006400 */  div        $zero, $v1, $a0
/* 2DB14 8003D314 3000E5AC */  sw         $a1, 0x30($a3)
/* 2DB18 8003D318 12180000 */  mflo       $v1
/* 2DB1C 8003D31C 02008014 */  bnez       $a0, .L8003D328
/* 2DB20 8003D320 00000000 */   nop
/* 2DB24 8003D324 CD010000 */  break      0, 7
.L8003D328:
/* 2DB28 8003D328 01000224 */  addiu      $v0, $zero, 0x1
/* 2DB2C 8003D32C 3800E3AC */  sw         $v1, 0x38($a3)
/* 2DB30 8003D330 01000324 */  addiu      $v1, $zero, 0x1
/* 2DB34 8003D334 3400E0AC */  sw         $zero, 0x34($a3)
/* 2DB38 8003D338 0800E003 */  jr         $ra
/* 2DB3C 8003D33C 1C00E3AC */   sw        $v1, 0x1C($a3)
.L8003D340:
/* 2DB40 8003D340 01008C25 */  addiu      $t4, $t4, 0x1
.L8003D344:
/* 2DB44 8003D344 0980023C */  lui        $v0, %hi(NumSpawnedActors)
/* 2DB48 8003D348 044F428C */  lw         $v0, %lo(NumSpawnedActors)($v0)
/* 2DB4C 8003D34C 00000000 */  nop
/* 2DB50 8003D350 2A108201 */  slt        $v0, $t4, $v0
/* 2DB54 8003D354 ADFF4014 */  bnez       $v0, .L8003D20C
/* 2DB58 8003D358 8801C624 */   addiu     $a2, $a2, 0x188
.L8003D35C:
/* 2DB5C 8003D35C 0800E003 */  jr         $ra
/* 2DB60 8003D360 21100000 */   addu      $v0, $zero, $zero
.size CheckPlatformGravity, . - CheckPlatformGravity
