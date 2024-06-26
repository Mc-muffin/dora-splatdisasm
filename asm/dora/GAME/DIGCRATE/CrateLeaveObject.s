.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CrateLeaveObject
/* 11740 80020F40 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 11744 80020F44 7813828F */  lw         $v0, %gp_rel(g_totalcrate)($gp)
/* 11748 80020F48 21300000 */  addu       $a2, $zero, $zero
/* 1174C 80020F4C 2000B2AF */  sw         $s2, 0x20($sp)
/* 11750 80020F50 2190A000 */  addu       $s2, $a1, $zero
/* 11754 80020F54 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 11758 80020F58 0980153C */  lui        $s5, %hi(ETActor)
/* 1175C 80020F5C 3000BFAF */  sw         $ra, 0x30($sp)
/* 11760 80020F60 2800B4AF */  sw         $s4, 0x28($sp)
/* 11764 80020F64 2400B3AF */  sw         $s3, 0x24($sp)
/* 11768 80020F68 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 1176C 80020F6C 13004018 */  blez       $v0, .L80020FBC
/* 11770 80020F70 1800B0AF */   sw        $s0, 0x18($sp)
/* 11774 80020F74 21384000 */  addu       $a3, $v0, $zero
/* 11778 80020F78 0000458E */  lw         $a1, 0x0($s2)
/* 1177C 80020F7C 7C13838F */  lw         $v1, %gp_rel(WorldCratePtr)($gp)
.L80020F80:
/* 11780 80020F80 00000000 */  nop
/* 11784 80020F84 21206000 */  addu       $a0, $v1, $zero
/* 11788 80020F88 1000828C */  lw         $v0, 0x10($a0)
/* 1178C 80020F8C 00000000 */  nop
/* 11790 80020F90 06004514 */  bne        $v0, $a1, .L80020FAC
/* 11794 80020F94 00000000 */   nop
/* 11798 80020F98 1800838C */  lw         $v1, 0x18($a0)
/* 1179C 80020F9C 0800428E */  lw         $v0, 0x8($s2)
/* 117A0 80020FA0 00000000 */  nop
/* 117A4 80020FA4 06006210 */  beq        $v1, $v0, .L80020FC0
/* 117A8 80020FA8 21988000 */   addu      $s3, $a0, $zero
.L80020FAC:
/* 117AC 80020FAC 0100C624 */  addiu      $a2, $a2, 0x1
/* 117B0 80020FB0 2A10C700 */  slt        $v0, $a2, $a3
/* 117B4 80020FB4 F2FF4014 */  bnez       $v0, .L80020F80
/* 117B8 80020FB8 30008324 */   addiu     $v1, $a0, 0x30
.L80020FBC:
/* 117BC 80020FBC 21980000 */  addu       $s3, $zero, $zero
.L80020FC0:
/* 117C0 80020FC0 95006012 */  beqz       $s3, .L80021218
/* 117C4 80020FC4 B05AB426 */   addiu     $s4, $s5, %lo(ETActor)
/* 117C8 80020FC8 2400638E */  lw         $v1, 0x24($s3)
/* 117CC 80020FCC 01000224 */  addiu      $v0, $zero, 0x1
/* 117D0 80020FD0 91006214 */  bne        $v1, $v0, .L80021218
/* 117D4 80020FD4 02001024 */   addiu     $s0, $zero, 0x2
/* 117D8 80020FD8 21208002 */  addu       $a0, $s4, $zero
/* 117DC 80020FDC 11000524 */  addiu      $a1, $zero, 0x11
/* 117E0 80020FE0 240070AE */  sw         $s0, 0x24($s3)
/* 117E4 80020FE4 0000468E */  lw         $a2, 0x0($s2)
/* 117E8 80020FE8 0400478E */  lw         $a3, 0x4($s2)
/* 117EC 80020FEC 0800428E */  lw         $v0, 0x8($s2)
/* 117F0 80020FF0 2800718E */  lw         $s1, 0x28($s3)
/* 117F4 80020FF4 C0310600 */  sll        $a2, $a2, 7
/* 117F8 80020FF8 4000C634 */  ori        $a2, $a2, 0x40
/* 117FC 80020FFC FFFFE724 */  addiu      $a3, $a3, -0x1
/* 11800 80021000 C0390700 */  sll        $a3, $a3, 7
/* 11804 80021004 C0110200 */  sll        $v0, $v0, 7
/* 11808 80021008 40004224 */  addiu      $v0, $v0, 0x40
/* 1180C 8002100C 69BE000C */  jal        RequestParticle
/* 11810 80021010 1000A2AF */   sw        $v0, 0x10($sp)
/* 11814 80021014 22003012 */  beq        $s1, $s0, .L800210A0
/* 11818 80021018 08800A3C */   lui       $t2, %hi(DynamicPreSpawn)
/* 1181C 8002101C 0300222A */  slti       $v0, $s1, 0x3
/* 11820 80021020 05004010 */  beqz       $v0, .L80021038
/* 11824 80021024 00000000 */   nop
/* 11828 80021028 0B002012 */  beqz       $s1, .L80021058
/* 1182C 8002102C 00000000 */   nop
/* 11830 80021030 86840008 */  j          .L80021218
/* 11834 80021034 00000000 */   nop
.L80021038:
/* 11838 80021038 03000224 */  addiu      $v0, $zero, 0x3
/* 1183C 8002103C 48002212 */  beq        $s1, $v0, .L80021160
/* 11840 80021040 08800A3C */   lui       $t2, %hi(DynamicPreSpawn)
/* 11844 80021044 06000224 */  addiu      $v0, $zero, 0x6
/* 11848 80021048 0D002212 */  beq        $s1, $v0, .L80021080
/* 1184C 8002104C 00000000 */   nop
/* 11850 80021050 86840008 */  j          .L80021218
/* 11854 80021054 00000000 */   nop
.L80021058:
/* 11858 80021058 0000448E */  lw         $a0, 0x0($s2)
/* 1185C 8002105C 0400458E */  lw         $a1, 0x4($s2)
/* 11860 80021060 0800468E */  lw         $a2, 0x8($s2)
/* 11864 80021064 C0210400 */  sll        $a0, $a0, 7
/* 11868 80021068 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 1186C 8002106C C0290500 */  sll        $a1, $a1, 7
/* 11870 80021070 1172000C */  jal        LeavePickup
/* 11874 80021074 C0310600 */   sll       $a2, $a2, 7
/* 11878 80021078 86840008 */  j          .L80021218
/* 1187C 8002107C 00000000 */   nop
.L80021080:
/* 11880 80021080 2C00648E */  lw         $a0, 0x2C($s3)
/* 11884 80021084 B05AA58E */  lw         $a1, %lo(ETActor)($s5)
/* 11888 80021088 0400868E */  lw         $a2, 0x4($s4)
/* 1188C 8002108C 0800878E */  lw         $a3, 0x8($s4)
/* 11890 80021090 2302010C */  jal        LeavePickupTrigger
/* 11894 80021094 00FFC624 */   addiu     $a2, $a2, -0x100
/* 11898 80021098 86840008 */  j          .L80021218
/* 1189C 8002109C 240060AE */   sw        $zero, 0x24($s3)
.L800210A0:
/* 118A0 800210A0 48644625 */  addiu      $a2, $t2, %lo(DynamicPreSpawn)
/* 118A4 800210A4 2158C000 */  addu       $t3, $a2, $zero
/* 118A8 800210A8 20006C25 */  addiu      $t4, $t3, 0x20
/* 118AC 800210AC 06000224 */  addiu      $v0, $zero, 0x6
/* 118B0 800210B0 0880053C */  lui        $a1, %hi(TestWorld)
/* 118B4 800210B4 0000478E */  lw         $a3, 0x0($s2)
/* 118B8 800210B8 0400488E */  lw         $t0, 0x4($s2)
/* 118BC 800210BC 0800498E */  lw         $t1, 0x8($s2)
/* 118C0 800210C0 8C65A524 */  addiu      $a1, $a1, %lo(TestWorld)
/* 118C4 800210C4 1000C2AC */  sw         $v0, 0x10($a2)
/* 118C8 800210C8 1000A48C */  lw         $a0, 0x10($a1)
/* 118CC 800210CC 07000324 */  addiu      $v1, $zero, 0x7
/* 118D0 800210D0 0C00C3AC */  sw         $v1, 0xC($a2)
/* 118D4 800210D4 1C00A38C */  lw         $v1, 0x1C($a1)
/* 118D8 800210D8 C0100400 */  sll        $v0, $a0, 3
/* 118DC 800210DC 21104400 */  addu       $v0, $v0, $a0
/* 118E0 800210E0 80100200 */  sll        $v0, $v0, 2
/* 118E4 800210E4 21806200 */  addu       $s0, $v1, $v0
/* 118E8 800210E8 21100002 */  addu       $v0, $s0, $zero
/* 118EC 800210EC 01008424 */  addiu      $a0, $a0, 0x1
/* 118F0 800210F0 C0390700 */  sll        $a3, $a3, 7
/* 118F4 800210F4 C0410800 */  sll        $t0, $t0, 7
/* 118F8 800210F8 C0490900 */  sll        $t1, $t1, 7
/* 118FC 800210FC 1000A4AC */  sw         $a0, 0x10($a1)
/* 11900 80021100 486447AD */  sw         $a3, %lo(DynamicPreSpawn)($t2)
/* 11904 80021104 0400C8AC */  sw         $t0, 0x4($a2)
/* 11908 80021108 0800C9AC */  sw         $t1, 0x8($a2)
.L8002110C:
/* 1190C 8002110C 0000638D */  lw         $v1, 0x0($t3)
/* 11910 80021110 0400648D */  lw         $a0, 0x4($t3)
/* 11914 80021114 0800658D */  lw         $a1, 0x8($t3)
/* 11918 80021118 0C00668D */  lw         $a2, 0xC($t3)
/* 1191C 8002111C 000043AC */  sw         $v1, 0x0($v0)
/* 11920 80021120 040044AC */  sw         $a0, 0x4($v0)
/* 11924 80021124 080045AC */  sw         $a1, 0x8($v0)
/* 11928 80021128 0C0046AC */  sw         $a2, 0xC($v0)
/* 1192C 8002112C 10006B25 */  addiu      $t3, $t3, 0x10
/* 11930 80021130 F6FF6C15 */  bne        $t3, $t4, .L8002110C
/* 11934 80021134 10004224 */   addiu     $v0, $v0, 0x10
/* 11938 80021138 0000638D */  lw         $v1, 0x0($t3)
/* 1193C 8002113C 00000000 */  nop
/* 11940 80021140 000043AC */  sw         $v1, 0x0($v0)
/* 11944 80021144 21200002 */  addu       $a0, $s0, $zero
/* 11948 80021148 B728010C */  jal        creategenericAI
/* 1194C 8002114C 21280000 */   addu      $a1, $zero, $zero
/* 11950 80021150 490A010C */  jal        InitSpawn
/* 11954 80021154 21200002 */   addu      $a0, $s0, $zero
/* 11958 80021158 86840008 */  j          .L80021218
/* 1195C 8002115C 00000000 */   nop
.L80021160:
/* 11960 80021160 48644625 */  addiu      $a2, $t2, %lo(DynamicPreSpawn)
/* 11964 80021164 2158C000 */  addu       $t3, $a2, $zero
/* 11968 80021168 20006C25 */  addiu      $t4, $t3, 0x20
/* 1196C 8002116C 08000224 */  addiu      $v0, $zero, 0x8
/* 11970 80021170 0880053C */  lui        $a1, %hi(TestWorld)
/* 11974 80021174 0000478E */  lw         $a3, 0x0($s2)
/* 11978 80021178 0400488E */  lw         $t0, 0x4($s2)
/* 1197C 8002117C 0800498E */  lw         $t1, 0x8($s2)
/* 11980 80021180 8C65A524 */  addiu      $a1, $a1, %lo(TestWorld)
/* 11984 80021184 1000C2AC */  sw         $v0, 0x10($a2)
/* 11988 80021188 1000A48C */  lw         $a0, 0x10($a1)
/* 1198C 8002118C 07000324 */  addiu      $v1, $zero, 0x7
/* 11990 80021190 0C00C3AC */  sw         $v1, 0xC($a2)
/* 11994 80021194 1C00A38C */  lw         $v1, 0x1C($a1)
/* 11998 80021198 C0100400 */  sll        $v0, $a0, 3
/* 1199C 8002119C 21104400 */  addu       $v0, $v0, $a0
/* 119A0 800211A0 80100200 */  sll        $v0, $v0, 2
/* 119A4 800211A4 21806200 */  addu       $s0, $v1, $v0
/* 119A8 800211A8 21100002 */  addu       $v0, $s0, $zero
/* 119AC 800211AC 01008424 */  addiu      $a0, $a0, 0x1
/* 119B0 800211B0 C0390700 */  sll        $a3, $a3, 7
/* 119B4 800211B4 C0410800 */  sll        $t0, $t0, 7
/* 119B8 800211B8 C0490900 */  sll        $t1, $t1, 7
/* 119BC 800211BC 1000A4AC */  sw         $a0, 0x10($a1)
/* 119C0 800211C0 486447AD */  sw         $a3, %lo(DynamicPreSpawn)($t2)
/* 119C4 800211C4 0400C8AC */  sw         $t0, 0x4($a2)
/* 119C8 800211C8 0800C9AC */  sw         $t1, 0x8($a2)
.L800211CC:
/* 119CC 800211CC 0000638D */  lw         $v1, 0x0($t3)
/* 119D0 800211D0 0400648D */  lw         $a0, 0x4($t3)
/* 119D4 800211D4 0800658D */  lw         $a1, 0x8($t3)
/* 119D8 800211D8 0C00668D */  lw         $a2, 0xC($t3)
/* 119DC 800211DC 000043AC */  sw         $v1, 0x0($v0)
/* 119E0 800211E0 040044AC */  sw         $a0, 0x4($v0)
/* 119E4 800211E4 080045AC */  sw         $a1, 0x8($v0)
/* 119E8 800211E8 0C0046AC */  sw         $a2, 0xC($v0)
/* 119EC 800211EC 10006B25 */  addiu      $t3, $t3, 0x10
/* 119F0 800211F0 F6FF6C15 */  bne        $t3, $t4, .L800211CC
/* 119F4 800211F4 10004224 */   addiu     $v0, $v0, 0x10
/* 119F8 800211F8 0000638D */  lw         $v1, 0x0($t3)
/* 119FC 800211FC 00000000 */  nop
/* 11A00 80021200 000043AC */  sw         $v1, 0x0($v0)
/* 11A04 80021204 21200002 */  addu       $a0, $s0, $zero
/* 11A08 80021208 B728010C */  jal        creategenericAI
/* 11A0C 8002120C 21280000 */   addu      $a1, $zero, $zero
/* 11A10 80021210 490A010C */  jal        InitSpawn
/* 11A14 80021214 21200002 */   addu      $a0, $s0, $zero
.L80021218:
/* 11A18 80021218 3000BF8F */  lw         $ra, 0x30($sp)
/* 11A1C 8002121C 2C00B58F */  lw         $s5, 0x2C($sp)
/* 11A20 80021220 2800B48F */  lw         $s4, 0x28($sp)
/* 11A24 80021224 2400B38F */  lw         $s3, 0x24($sp)
/* 11A28 80021228 2000B28F */  lw         $s2, 0x20($sp)
/* 11A2C 8002122C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 11A30 80021230 1800B08F */  lw         $s0, 0x18($sp)
/* 11A34 80021234 0800E003 */  jr         $ra
/* 11A38 80021238 3800BD27 */   addiu     $sp, $sp, 0x38
.size CrateLeaveObject, . - CrateLeaveObject
