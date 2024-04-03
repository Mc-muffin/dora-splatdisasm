.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ISOMove
/* 3E0FC 8004D8FC C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 3E100 8004D900 2000B2AF */  sw         $s2, 0x20($sp)
/* 3E104 8004D904 540E928F */  lw         $s2, %gp_rel(ObjectXPos)($gp)
/* 3E108 8004D908 2800B4AF */  sw         $s4, 0x28($sp)
/* 3E10C 8004D90C 580E948F */  lw         $s4, %gp_rel(ObjectYPos)($gp)
/* 3E110 8004D910 0980033C */  lui        $v1, %hi(Pad1)
/* 3E114 8004D914 2E596394 */  lhu        $v1, %lo(Pad1)($v1)
/* 3E118 8004D918 1800B0AF */  sw         $s0, 0x18($sp)
/* 3E11C 8004D91C 5C0E908F */  lw         $s0, %gp_rel(ObjectZPos)($gp)
/* 3E120 8004D920 3000BFAF */  sw         $ra, 0x30($sp)
/* 3E124 8004D924 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 3E128 8004D928 2400B3AF */  sw         $s3, 0x24($sp)
/* 3E12C 8004D92C 20006230 */  andi       $v0, $v1, 0x20
/* 3E130 8004D930 13004010 */  beqz       $v0, .L8004D980
/* 3E134 8004D934 1C00B1AF */   sw        $s1, 0x1C($sp)
/* 3E138 8004D938 10005226 */  addiu      $s2, $s2, 0x10
/* 3E13C 8004D93C 63005126 */  addiu      $s1, $s2, 0x63
/* 3E140 8004D940 21202002 */  addu       $a0, $s1, $zero
/* 3E144 8004D944 21288002 */  addu       $a1, $s4, $zero
/* 3E148 8004D948 D1F9000C */  jal        CheckCollisionCel
/* 3E14C 8004D94C 21300002 */   addu      $a2, $s0, $zero
/* 3E150 8004D950 06004014 */  bnez       $v0, .L8004D96C
/* 3E154 8004D954 21202002 */   addu      $a0, $s1, $zero
/* 3E158 8004D958 21288002 */  addu       $a1, $s4, $zero
/* 3E15C 8004D95C D1F9000C */  jal        CheckCollisionCel
/* 3E160 8004D960 63000626 */   addiu     $a2, $s0, 0x63
/* 3E164 8004D964 1A004010 */  beqz       $v0, .L8004D9D0
/* 3E168 8004D968 00000000 */   nop
.L8004D96C:
/* 3E16C 8004D96C 02004106 */  bgez       $s2, .L8004D978
/* 3E170 8004D970 21104002 */   addu      $v0, $s2, $zero
/* 3E174 8004D974 7F004226 */  addiu      $v0, $s2, 0x7F
.L8004D978:
/* 3E178 8004D978 73360108 */  j          .L8004D9CC
/* 3E17C 8004D97C C3110200 */   sra       $v0, $v0, 7
.L8004D980:
/* 3E180 8004D980 80006230 */  andi       $v0, $v1, 0x80
/* 3E184 8004D984 12004010 */  beqz       $v0, .L8004D9D0
/* 3E188 8004D988 21288002 */   addu      $a1, $s4, $zero
/* 3E18C 8004D98C F0FF5226 */  addiu      $s2, $s2, -0x10
/* 3E190 8004D990 21204002 */  addu       $a0, $s2, $zero
/* 3E194 8004D994 D1F9000C */  jal        CheckCollisionCel
/* 3E198 8004D998 21300002 */   addu      $a2, $s0, $zero
/* 3E19C 8004D99C 06004014 */  bnez       $v0, .L8004D9B8
/* 3E1A0 8004D9A0 21204002 */   addu      $a0, $s2, $zero
/* 3E1A4 8004D9A4 21288002 */  addu       $a1, $s4, $zero
/* 3E1A8 8004D9A8 D1F9000C */  jal        CheckCollisionCel
/* 3E1AC 8004D9AC 63000626 */   addiu     $a2, $s0, 0x63
/* 3E1B0 8004D9B0 07004010 */  beqz       $v0, .L8004D9D0
/* 3E1B4 8004D9B4 00000000 */   nop
.L8004D9B8:
/* 3E1B8 8004D9B8 02004106 */  bgez       $s2, .L8004D9C4
/* 3E1BC 8004D9BC 21104002 */   addu      $v0, $s2, $zero
/* 3E1C0 8004D9C0 7F004226 */  addiu      $v0, $s2, 0x7F
.L8004D9C4:
/* 3E1C4 8004D9C4 C3110200 */  sra        $v0, $v0, 7
/* 3E1C8 8004D9C8 01004224 */  addiu      $v0, $v0, 0x1
.L8004D9CC:
/* 3E1CC 8004D9CC C0910200 */  sll        $s2, $v0, 7
.L8004D9D0:
/* 3E1D0 8004D9D0 0980033C */  lui        $v1, %hi(Pad1)
/* 3E1D4 8004D9D4 2E596394 */  lhu        $v1, %lo(Pad1)($v1)
/* 3E1D8 8004D9D8 00000000 */  nop
/* 3E1DC 8004D9DC 10006230 */  andi       $v0, $v1, 0x10
/* 3E1E0 8004D9E0 12004010 */  beqz       $v0, .L8004DA2C
/* 3E1E4 8004D9E4 21204002 */   addu      $a0, $s2, $zero
/* 3E1E8 8004D9E8 10001026 */  addiu      $s0, $s0, 0x10
/* 3E1EC 8004D9EC 21288002 */  addu       $a1, $s4, $zero
/* 3E1F0 8004D9F0 63001126 */  addiu      $s1, $s0, 0x63
/* 3E1F4 8004D9F4 D1F9000C */  jal        CheckCollisionCel
/* 3E1F8 8004D9F8 21302002 */   addu      $a2, $s1, $zero
/* 3E1FC 8004D9FC 06004014 */  bnez       $v0, .L8004DA18
/* 3E200 8004DA00 63004426 */   addiu     $a0, $s2, 0x63
/* 3E204 8004DA04 21288002 */  addu       $a1, $s4, $zero
/* 3E208 8004DA08 D1F9000C */  jal        CheckCollisionCel
/* 3E20C 8004DA0C 21302002 */   addu      $a2, $s1, $zero
/* 3E210 8004DA10 19004010 */  beqz       $v0, .L8004DA78
/* 3E214 8004DA14 00000000 */   nop
.L8004DA18:
/* 3E218 8004DA18 02000106 */  bgez       $s0, .L8004DA24
/* 3E21C 8004DA1C 21100002 */   addu      $v0, $s0, $zero
/* 3E220 8004DA20 7F000226 */  addiu      $v0, $s0, 0x7F
.L8004DA24:
/* 3E224 8004DA24 9D360108 */  j          .L8004DA74
/* 3E228 8004DA28 C3110200 */   sra       $v0, $v0, 7
.L8004DA2C:
/* 3E22C 8004DA2C 40006230 */  andi       $v0, $v1, 0x40
/* 3E230 8004DA30 11004010 */  beqz       $v0, .L8004DA78
/* 3E234 8004DA34 21288002 */   addu      $a1, $s4, $zero
/* 3E238 8004DA38 F0FF1026 */  addiu      $s0, $s0, -0x10
/* 3E23C 8004DA3C D1F9000C */  jal        CheckCollisionCel
/* 3E240 8004DA40 21300002 */   addu      $a2, $s0, $zero
/* 3E244 8004DA44 06004014 */  bnez       $v0, .L8004DA60
/* 3E248 8004DA48 63004426 */   addiu     $a0, $s2, 0x63
/* 3E24C 8004DA4C 21288002 */  addu       $a1, $s4, $zero
/* 3E250 8004DA50 D1F9000C */  jal        CheckCollisionCel
/* 3E254 8004DA54 21300002 */   addu      $a2, $s0, $zero
/* 3E258 8004DA58 07004010 */  beqz       $v0, .L8004DA78
/* 3E25C 8004DA5C 00000000 */   nop
.L8004DA60:
/* 3E260 8004DA60 02000106 */  bgez       $s0, .L8004DA6C
/* 3E264 8004DA64 21100002 */   addu      $v0, $s0, $zero
/* 3E268 8004DA68 7F000226 */  addiu      $v0, $s0, 0x7F
.L8004DA6C:
/* 3E26C 8004DA6C C3110200 */  sra        $v0, $v0, 7
/* 3E270 8004DA70 01004224 */  addiu      $v0, $v0, 0x1
.L8004DA74:
/* 3E274 8004DA74 C0810200 */  sll        $s0, $v0, 7
.L8004DA78:
/* 3E278 8004DA78 30009426 */  addiu      $s4, $s4, 0x30
/* 3E27C 8004DA7C 21204002 */  addu       $a0, $s2, $zero
/* 3E280 8004DA80 63009126 */  addiu      $s1, $s4, 0x63
/* 3E284 8004DA84 21282002 */  addu       $a1, $s1, $zero
/* 3E288 8004DA88 D1F9000C */  jal        CheckCollisionCel
/* 3E28C 8004DA8C 21300002 */   addu      $a2, $s0, $zero
/* 3E290 8004DA90 12004014 */  bnez       $v0, .L8004DADC
/* 3E294 8004DA94 63005526 */   addiu     $s5, $s2, 0x63
/* 3E298 8004DA98 2120A002 */  addu       $a0, $s5, $zero
/* 3E29C 8004DA9C 21282002 */  addu       $a1, $s1, $zero
/* 3E2A0 8004DAA0 D1F9000C */  jal        CheckCollisionCel
/* 3E2A4 8004DAA4 21300002 */   addu      $a2, $s0, $zero
/* 3E2A8 8004DAA8 0C004014 */  bnez       $v0, .L8004DADC
/* 3E2AC 8004DAAC 21204002 */   addu      $a0, $s2, $zero
/* 3E2B0 8004DAB0 21282002 */  addu       $a1, $s1, $zero
/* 3E2B4 8004DAB4 63001326 */  addiu      $s3, $s0, 0x63
/* 3E2B8 8004DAB8 D1F9000C */  jal        CheckCollisionCel
/* 3E2BC 8004DABC 21306002 */   addu      $a2, $s3, $zero
/* 3E2C0 8004DAC0 06004014 */  bnez       $v0, .L8004DADC
/* 3E2C4 8004DAC4 2120A002 */   addu      $a0, $s5, $zero
/* 3E2C8 8004DAC8 21282002 */  addu       $a1, $s1, $zero
/* 3E2CC 8004DACC D1F9000C */  jal        CheckCollisionCel
/* 3E2D0 8004DAD0 21306002 */   addu      $a2, $s3, $zero
/* 3E2D4 8004DAD4 07004010 */  beqz       $v0, .L8004DAF4
/* 3E2D8 8004DAD8 0880033C */   lui       $v1, %hi(TestWorld)
.L8004DADC:
/* 3E2DC 8004DADC 02008106 */  bgez       $s4, .L8004DAE8
/* 3E2E0 8004DAE0 21108002 */   addu      $v0, $s4, $zero
/* 3E2E4 8004DAE4 7F008226 */  addiu      $v0, $s4, 0x7F
.L8004DAE8:
/* 3E2E8 8004DAE8 C3110200 */  sra        $v0, $v0, 7
/* 3E2EC 8004DAEC C0A10200 */  sll        $s4, $v0, 7
/* 3E2F0 8004DAF0 0880033C */  lui        $v1, %hi(TestWorld)
.L8004DAF4:
/* 3E2F4 8004DAF4 8C65628C */  lw         $v0, %lo(TestWorld)($v1)
/* 3E2F8 8004DAF8 21204002 */  addu       $a0, $s2, $zero
/* 3E2FC 8004DAFC 8C656624 */  addiu      $a2, $v1, %lo(TestWorld)
/* 3E300 8004DB00 02004106 */  bgez       $s2, .L8004DB0C
/* 3E304 8004DB04 C0290200 */   sll       $a1, $v0, 7
/* 3E308 8004DB08 21200000 */  addu       $a0, $zero, $zero
.L8004DB0C:
/* 3E30C 8004DB0C 2A10A400 */  slt        $v0, $a1, $a0
/* 3E310 8004DB10 02004010 */  beqz       $v0, .L8004DB1C
/* 3E314 8004DB14 00000000 */   nop
/* 3E318 8004DB18 2120A000 */  addu       $a0, $a1, $zero
.L8004DB1C:
/* 3E31C 8004DB1C 0980033C */  lui        $v1, %hi(ScrollXSize)
/* 3E320 8004DB20 D459638C */  lw         $v1, %lo(ScrollXSize)($v1)
/* 3E324 8004DB24 0980023C */  lui        $v0, %hi(ScrollXOffset)
/* 3E328 8004DB28 7C54428C */  lw         $v0, %lo(ScrollXOffset)($v0)
/* 3E32C 8004DB2C 540E84AF */  sw         $a0, %gp_rel(ObjectXPos)($gp)
/* 3E330 8004DB30 C0190300 */  sll        $v1, $v1, 7
/* 3E334 8004DB34 C0110200 */  sll        $v0, $v0, 7
/* 3E338 8004DB38 23208200 */  subu       $a0, $a0, $v0
/* 3E33C 8004DB3C 02008104 */  bgez       $a0, .L8004DB48
/* 3E340 8004DB40 2328A300 */   subu      $a1, $a1, $v1
/* 3E344 8004DB44 21200000 */  addu       $a0, $zero, $zero
.L8004DB48:
/* 3E348 8004DB48 2A10A400 */  slt        $v0, $a1, $a0
/* 3E34C 8004DB4C 03004010 */  beqz       $v0, .L8004DB5C
/* 3E350 8004DB50 21108000 */   addu      $v0, $a0, $zero
/* 3E354 8004DB54 2120A000 */  addu       $a0, $a1, $zero
/* 3E358 8004DB58 21108000 */  addu       $v0, $a0, $zero
.L8004DB5C:
/* 3E35C 8004DB5C 02004104 */  bgez       $v0, .L8004DB68
/* 3E360 8004DB60 21208002 */   addu      $a0, $s4, $zero
/* 3E364 8004DB64 7F004224 */  addiu      $v0, $v0, 0x7F
.L8004DB68:
/* 3E368 8004DB68 0400C38C */  lw         $v1, 0x4($a2)
/* 3E36C 8004DB6C C3110200 */  sra        $v0, $v0, 7
/* 3E370 8004DB70 0980013C */  lui        $at, %hi(ScrollXPos)
/* 3E374 8004DB74 705422AC */  sw         $v0, %lo(ScrollXPos)($at)
/* 3E378 8004DB78 02008106 */  bgez       $s4, .L8004DB84
/* 3E37C 8004DB7C C0290300 */   sll       $a1, $v1, 7
/* 3E380 8004DB80 21200000 */  addu       $a0, $zero, $zero
.L8004DB84:
/* 3E384 8004DB84 2A10A400 */  slt        $v0, $a1, $a0
/* 3E388 8004DB88 02004010 */  beqz       $v0, .L8004DB94
/* 3E38C 8004DB8C 00000000 */   nop
/* 3E390 8004DB90 2120A000 */  addu       $a0, $a1, $zero
.L8004DB94:
/* 3E394 8004DB94 0980033C */  lui        $v1, %hi(ScrollYSize)
/* 3E398 8004DB98 D859638C */  lw         $v1, %lo(ScrollYSize)($v1)
/* 3E39C 8004DB9C 0980023C */  lui        $v0, %hi(ScrollYOffset)
/* 3E3A0 8004DBA0 8054428C */  lw         $v0, %lo(ScrollYOffset)($v0)
/* 3E3A4 8004DBA4 580E84AF */  sw         $a0, %gp_rel(ObjectYPos)($gp)
/* 3E3A8 8004DBA8 C0190300 */  sll        $v1, $v1, 7
/* 3E3AC 8004DBAC C0110200 */  sll        $v0, $v0, 7
/* 3E3B0 8004DBB0 23208200 */  subu       $a0, $a0, $v0
/* 3E3B4 8004DBB4 02008104 */  bgez       $a0, .L8004DBC0
/* 3E3B8 8004DBB8 2328A300 */   subu      $a1, $a1, $v1
/* 3E3BC 8004DBBC 21200000 */  addu       $a0, $zero, $zero
.L8004DBC0:
/* 3E3C0 8004DBC0 2A10A400 */  slt        $v0, $a1, $a0
/* 3E3C4 8004DBC4 03004010 */  beqz       $v0, .L8004DBD4
/* 3E3C8 8004DBC8 21108000 */   addu      $v0, $a0, $zero
/* 3E3CC 8004DBCC 2120A000 */  addu       $a0, $a1, $zero
/* 3E3D0 8004DBD0 21108000 */  addu       $v0, $a0, $zero
.L8004DBD4:
/* 3E3D4 8004DBD4 02004104 */  bgez       $v0, .L8004DBE0
/* 3E3D8 8004DBD8 21200002 */   addu      $a0, $s0, $zero
/* 3E3DC 8004DBDC 7F004224 */  addiu      $v0, $v0, 0x7F
.L8004DBE0:
/* 3E3E0 8004DBE0 0800C38C */  lw         $v1, 0x8($a2)
/* 3E3E4 8004DBE4 C3110200 */  sra        $v0, $v0, 7
/* 3E3E8 8004DBE8 0980013C */  lui        $at, %hi(ScrollYPos)
/* 3E3EC 8004DBEC 745422AC */  sw         $v0, %lo(ScrollYPos)($at)
/* 3E3F0 8004DBF0 02000106 */  bgez       $s0, .L8004DBFC
/* 3E3F4 8004DBF4 C0290300 */   sll       $a1, $v1, 7
/* 3E3F8 8004DBF8 21200000 */  addu       $a0, $zero, $zero
.L8004DBFC:
/* 3E3FC 8004DBFC 2A10A400 */  slt        $v0, $a1, $a0
/* 3E400 8004DC00 02004010 */  beqz       $v0, .L8004DC0C
/* 3E404 8004DC04 00000000 */   nop
/* 3E408 8004DC08 2120A000 */  addu       $a0, $a1, $zero
.L8004DC0C:
/* 3E40C 8004DC0C 0980033C */  lui        $v1, %hi(ScrollZSize)
/* 3E410 8004DC10 DC59638C */  lw         $v1, %lo(ScrollZSize)($v1)
/* 3E414 8004DC14 0980023C */  lui        $v0, %hi(ScrollZOffset)
/* 3E418 8004DC18 8454428C */  lw         $v0, %lo(ScrollZOffset)($v0)
/* 3E41C 8004DC1C 5C0E84AF */  sw         $a0, %gp_rel(ObjectZPos)($gp)
/* 3E420 8004DC20 C0190300 */  sll        $v1, $v1, 7
/* 3E424 8004DC24 C0110200 */  sll        $v0, $v0, 7
/* 3E428 8004DC28 23208200 */  subu       $a0, $a0, $v0
/* 3E42C 8004DC2C 02008104 */  bgez       $a0, .L8004DC38
/* 3E430 8004DC30 2328A300 */   subu      $a1, $a1, $v1
/* 3E434 8004DC34 21200000 */  addu       $a0, $zero, $zero
.L8004DC38:
/* 3E438 8004DC38 2A10A400 */  slt        $v0, $a1, $a0
/* 3E43C 8004DC3C 03004010 */  beqz       $v0, .L8004DC4C
/* 3E440 8004DC40 21108000 */   addu      $v0, $a0, $zero
/* 3E444 8004DC44 2120A000 */  addu       $a0, $a1, $zero
/* 3E448 8004DC48 21108000 */  addu       $v0, $a0, $zero
.L8004DC4C:
/* 3E44C 8004DC4C 02004104 */  bgez       $v0, .L8004DC58
/* 3E450 8004DC50 00000000 */   nop
/* 3E454 8004DC54 7F004224 */  addiu      $v0, $v0, 0x7F
.L8004DC58:
/* 3E458 8004DC58 C3110200 */  sra        $v0, $v0, 7
/* 3E45C 8004DC5C 0980013C */  lui        $at, %hi(ScrollZPos)
/* 3E460 8004DC60 785422AC */  sw         $v0, %lo(ScrollZPos)($at)
/* 3E464 8004DC64 80000224 */  addiu      $v0, $zero, 0x80
/* 3E468 8004DC68 540E848F */  lw         $a0, %gp_rel(ObjectXPos)($gp)
/* 3E46C 8004DC6C 580E858F */  lw         $a1, %gp_rel(ObjectYPos)($gp)
/* 3E470 8004DC70 5C0E868F */  lw         $a2, %gp_rel(ObjectZPos)($gp)
/* 3E474 8004DC74 80000724 */  addiu      $a3, $zero, 0x80
/* 3E478 8004DC78 1000A2AF */  sw         $v0, 0x10($sp)
/* 3E47C 8004DC7C 1400A2AF */  sw         $v0, 0x14($sp)
/* 3E480 8004DC80 C0FF8424 */  addiu      $a0, $a0, -0x40
/* 3E484 8004DC84 C0FFA524 */  addiu      $a1, $a1, -0x40
/* 3E488 8004DC88 CF89010C */  jal        DrawBox
/* 3E48C 8004DC8C C0FFC624 */   addiu     $a2, $a2, -0x40
/* 3E490 8004DC90 3000BF8F */  lw         $ra, 0x30($sp)
/* 3E494 8004DC94 2C00B58F */  lw         $s5, 0x2C($sp)
/* 3E498 8004DC98 580E94AF */  sw         $s4, %gp_rel(ObjectYPos)($gp)
/* 3E49C 8004DC9C 2800B48F */  lw         $s4, 0x28($sp)
/* 3E4A0 8004DCA0 2400B38F */  lw         $s3, 0x24($sp)
/* 3E4A4 8004DCA4 540E92AF */  sw         $s2, %gp_rel(ObjectXPos)($gp)
/* 3E4A8 8004DCA8 2000B28F */  lw         $s2, 0x20($sp)
/* 3E4AC 8004DCAC 1C00B18F */  lw         $s1, 0x1C($sp)
/* 3E4B0 8004DCB0 5C0E90AF */  sw         $s0, %gp_rel(ObjectZPos)($gp)
/* 3E4B4 8004DCB4 1800B08F */  lw         $s0, 0x18($sp)
/* 3E4B8 8004DCB8 0800E003 */  jr         $ra
/* 3E4BC 8004DCBC 3800BD27 */   addiu     $sp, $sp, 0x38
.size ISOMove, . - ISOMove
