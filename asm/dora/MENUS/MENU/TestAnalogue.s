.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TestAnalogue
/* 170E4 800268E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 170E8 800268E8 0A80023C */  lui        $v0, %hi(Dsbuffer0)
/* 170EC 800268EC 1800B0AF */  sw         $s0, 0x18($sp)
/* 170F0 800268F0 58815024 */  addiu      $s0, $v0, %lo(Dsbuffer0)
/* 170F4 800268F4 0A80033C */  lui        $v1, %hi(Dsbuffer1)
/* 170F8 800268F8 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 170FC 800268FC 58827124 */  addiu      $s1, $v1, %lo(Dsbuffer1)
/* 17100 80026900 0980033C */  lui        $v1, %hi(Trg0)
/* 17104 80026904 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 17108 80026908 10000224 */  addiu      $v0, $zero, 0x10
/* 1710C 8002690C 05006214 */  bne        $v1, $v0, .L80026924
/* 17110 80026910 2000BFAF */   sw        $ra, 0x20($sp)
/* 17114 80026914 AC07828F */  lw         $v0, %gp_rel(viber)($gp)
/* 17118 80026918 00000000 */  nop
/* 1711C 8002691C 0A004224 */  addiu      $v0, $v0, 0xA
/* 17120 80026920 AC0782AF */  sw         $v0, %gp_rel(viber)($gp)
.L80026924:
/* 17124 80026924 40000224 */  addiu      $v0, $zero, 0x40
/* 17128 80026928 06006214 */  bne        $v1, $v0, .L80026944
/* 1712C 8002692C 80000224 */   addiu     $v0, $zero, 0x80
/* 17130 80026930 AC07828F */  lw         $v0, %gp_rel(viber)($gp)
/* 17134 80026934 00000000 */  nop
/* 17138 80026938 F6FF4224 */  addiu      $v0, $v0, -0xA
/* 1713C 8002693C AC0782AF */  sw         $v0, %gp_rel(viber)($gp)
/* 17140 80026940 80000224 */  addiu      $v0, $zero, 0x80
.L80026944:
/* 17144 80026944 08006214 */  bne        $v1, $v0, .L80026968
/* 17148 80026948 21200002 */   addu      $a0, $s0, $zero
/* 1714C 8002694C 0180053C */  lui        $a1, %hi(D_80011564)
/* 17150 80026950 B007828F */  lw         $v0, %gp_rel(wtime)($gp)
/* 17154 80026954 6415A524 */  addiu      $a1, $a1, %lo(D_80011564)
/* 17158 80026958 0A004224 */  addiu      $v0, $v0, 0xA
/* 1715C 8002695C B00782AF */  sw         $v0, %gp_rel(wtime)($gp)
/* 17160 80026960 53C5010C */  jal        sprintf
/* 17164 80026964 21304000 */   addu      $a2, $v0, $zero
.L80026968:
/* 17168 80026968 0980033C */  lui        $v1, %hi(Trg0)
/* 1716C 8002696C 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 17170 80026970 20000224 */  addiu      $v0, $zero, 0x20
/* 17174 80026974 0C006214 */  bne        $v1, $v0, .L800269A8
/* 17178 80026978 00100224 */   addiu     $v0, $zero, 0x1000
/* 1717C 8002697C 21200002 */  addu       $a0, $s0, $zero
/* 17180 80026980 0180053C */  lui        $a1, %hi(D_80011564)
/* 17184 80026984 B007828F */  lw         $v0, %gp_rel(wtime)($gp)
/* 17188 80026988 6415A524 */  addiu      $a1, $a1, %lo(D_80011564)
/* 1718C 8002698C F6FF4224 */  addiu      $v0, $v0, -0xA
/* 17190 80026990 B00782AF */  sw         $v0, %gp_rel(wtime)($gp)
/* 17194 80026994 53C5010C */  jal        sprintf
/* 17198 80026998 21304000 */   addu      $a2, $v0, $zero
/* 1719C 8002699C 0980033C */  lui        $v1, %hi(Trg0)
/* 171A0 800269A0 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 171A4 800269A4 00100224 */  addiu      $v0, $zero, 0x1000
.L800269A8:
/* 171A8 800269A8 0E006214 */  bne        $v1, $v0, .L800269E4
/* 171AC 800269AC 00000000 */   nop
/* 171B0 800269B0 5266010C */  jal        Sys_CanPadVibrate
/* 171B4 800269B4 21200000 */   addu      $a0, $zero, $zero
/* 171B8 800269B8 0A004010 */  beqz       $v0, .L800269E4
/* 171BC 800269BC 00000000 */   nop
/* 171C0 800269C0 AC078593 */  lbu        $a1, %gp_rel(viber)($gp)
/* 171C4 800269C4 B007868F */  lw         $a2, %gp_rel(wtime)($gp)
/* 171C8 800269C8 6266010C */  jal        Sys_VibrationWaveWork
/* 171CC 800269CC 21200000 */   addu      $a0, $zero, $zero
/* 171D0 800269D0 21200002 */  addu       $a0, $s0, $zero
/* 171D4 800269D4 0180053C */  lui        $a1, %hi(D_80011570)
/* 171D8 800269D8 AC07868F */  lw         $a2, %gp_rel(viber)($gp)
/* 171DC 800269DC 53C5010C */  jal        sprintf
/* 171E0 800269E0 7015A524 */   addiu     $a1, $a1, %lo(D_80011570)
.L800269E4:
/* 171E4 800269E4 0980033C */  lui        $v1, %hi(Trg0)
/* 171E8 800269E8 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 171EC 800269EC 00800234 */  ori        $v0, $zero, 0x8000
/* 171F0 800269F0 10006214 */  bne        $v1, $v0, .L80026A34
/* 171F4 800269F4 00400224 */   addiu     $v0, $zero, 0x4000
/* 171F8 800269F8 5266010C */  jal        Sys_CanPadVibrate
/* 171FC 800269FC 21200000 */   addu      $a0, $zero, $zero
/* 17200 80026A00 09004010 */  beqz       $v0, .L80026A28
/* 17204 80026A04 21200000 */   addu      $a0, $zero, $zero
/* 17208 80026A08 B007868F */  lw         $a2, %gp_rel(wtime)($gp)
/* 1720C 80026A0C 8666010C */  jal        Sys_VibrationBuzzWork
/* 17210 80026A10 01000524 */   addiu     $a1, $zero, 0x1
/* 17214 80026A14 21200002 */  addu       $a0, $s0, $zero
/* 17218 80026A18 0180053C */  lui        $a1, %hi(D_8001157C)
/* 1721C 80026A1C AC07868F */  lw         $a2, %gp_rel(viber)($gp)
/* 17220 80026A20 53C5010C */  jal        sprintf
/* 17224 80026A24 7C15A524 */   addiu     $a1, $a1, %lo(D_8001157C)
.L80026A28:
/* 17228 80026A28 0980033C */  lui        $v1, %hi(Trg0)
/* 1722C 80026A2C 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 17230 80026A30 00400224 */  addiu      $v0, $zero, 0x4000
.L80026A34:
/* 17234 80026A34 0B006214 */  bne        $v1, $v0, .L80026A64
/* 17238 80026A38 00000000 */   nop
/* 1723C 80026A3C 5266010C */  jal        Sys_CanPadVibrate
/* 17240 80026A40 21200000 */   addu      $a0, $zero, $zero
/* 17244 80026A44 07004010 */  beqz       $v0, .L80026A64
/* 17248 80026A48 00000000 */   nop
/* 1724C 80026A4C 5965010C */  jal        Sys_StopVibration
/* 17250 80026A50 21200000 */   addu      $a0, $zero, $zero
/* 17254 80026A54 21200002 */  addu       $a0, $s0, $zero
/* 17258 80026A58 0180053C */  lui        $a1, %hi(D_80011588)
/* 1725C 80026A5C 53C5010C */  jal        sprintf
/* 17260 80026A60 8815A524 */   addiu     $a1, $a1, %lo(D_80011588)
.L80026A64:
/* 17264 80026A64 0980033C */  lui        $v1, %hi(Trg1)
/* 17268 80026A68 32596394 */  lhu        $v1, %lo(Trg1)($v1)
/* 1726C 80026A6C 00100224 */  addiu      $v0, $zero, 0x1000
/* 17270 80026A70 11006214 */  bne        $v1, $v0, .L80026AB8
/* 17274 80026A74 00800234 */   ori       $v0, $zero, 0x8000
/* 17278 80026A78 5266010C */  jal        Sys_CanPadVibrate
/* 1727C 80026A7C 01000424 */   addiu     $a0, $zero, 0x1
/* 17280 80026A80 0A004010 */  beqz       $v0, .L80026AAC
/* 17284 80026A84 00000000 */   nop
/* 17288 80026A88 AC078593 */  lbu        $a1, %gp_rel(viber)($gp)
/* 1728C 80026A8C B007868F */  lw         $a2, %gp_rel(wtime)($gp)
/* 17290 80026A90 6266010C */  jal        Sys_VibrationWaveWork
/* 17294 80026A94 01000424 */   addiu     $a0, $zero, 0x1
/* 17298 80026A98 21202002 */  addu       $a0, $s1, $zero
/* 1729C 80026A9C 0180053C */  lui        $a1, %hi(D_80011570)
/* 172A0 80026AA0 AC07868F */  lw         $a2, %gp_rel(viber)($gp)
/* 172A4 80026AA4 53C5010C */  jal        sprintf
/* 172A8 80026AA8 7015A524 */   addiu     $a1, $a1, %lo(D_80011570)
.L80026AAC:
/* 172AC 80026AAC 0980033C */  lui        $v1, %hi(Trg1)
/* 172B0 80026AB0 32596394 */  lhu        $v1, %lo(Trg1)($v1)
/* 172B4 80026AB4 00800234 */  ori        $v0, $zero, 0x8000
.L80026AB8:
/* 172B8 80026AB8 0D006214 */  bne        $v1, $v0, .L80026AF0
/* 172BC 80026ABC 00000000 */   nop
/* 172C0 80026AC0 5266010C */  jal        Sys_CanPadVibrate
/* 172C4 80026AC4 01000424 */   addiu     $a0, $zero, 0x1
/* 172C8 80026AC8 09004010 */  beqz       $v0, .L80026AF0
/* 172CC 80026ACC 01000424 */   addiu     $a0, $zero, 0x1
/* 172D0 80026AD0 B007868F */  lw         $a2, %gp_rel(wtime)($gp)
/* 172D4 80026AD4 8666010C */  jal        Sys_VibrationBuzzWork
/* 172D8 80026AD8 01000524 */   addiu     $a1, $zero, 0x1
/* 172DC 80026ADC 21202002 */  addu       $a0, $s1, $zero
/* 172E0 80026AE0 0180053C */  lui        $a1, %hi(D_8001157C)
/* 172E4 80026AE4 AC07868F */  lw         $a2, %gp_rel(viber)($gp)
/* 172E8 80026AE8 53C5010C */  jal        sprintf
/* 172EC 80026AEC 7C15A524 */   addiu     $a1, $a1, %lo(D_8001157C)
.L80026AF0:
/* 172F0 80026AF0 0980033C */  lui        $v1, %hi(Trg1)
/* 172F4 80026AF4 32596394 */  lhu        $v1, %lo(Trg1)($v1)
/* 172F8 80026AF8 00400224 */  addiu      $v0, $zero, 0x4000
/* 172FC 80026AFC 0C006214 */  bne        $v1, $v0, .L80026B30
/* 17300 80026B00 32000424 */   addiu     $a0, $zero, 0x32
/* 17304 80026B04 5266010C */  jal        Sys_CanPadVibrate
/* 17308 80026B08 01000424 */   addiu     $a0, $zero, 0x1
/* 1730C 80026B0C 08004010 */  beqz       $v0, .L80026B30
/* 17310 80026B10 32000424 */   addiu     $a0, $zero, 0x32
/* 17314 80026B14 5965010C */  jal        Sys_StopVibration
/* 17318 80026B18 01000424 */   addiu     $a0, $zero, 0x1
/* 1731C 80026B1C 21202002 */  addu       $a0, $s1, $zero
/* 17320 80026B20 0180053C */  lui        $a1, %hi(D_80011588)
/* 17324 80026B24 53C5010C */  jal        sprintf
/* 17328 80026B28 8815A524 */   addiu     $a1, $a1, %lo(D_80011588)
/* 1732C 80026B2C 32000424 */  addiu      $a0, $zero, 0x32
.L80026B30:
/* 17330 80026B30 64000524 */  addiu      $a1, $zero, 0x64
/* 17334 80026B34 21300000 */  addu       $a2, $zero, $zero
/* 17338 80026B38 0180073C */  lui        $a3, %hi(D_80011598)
/* 1733C 80026B3C AC07828F */  lw         $v0, %gp_rel(viber)($gp)
/* 17340 80026B40 9815E724 */  addiu      $a3, $a3, %lo(D_80011598)
/* 17344 80026B44 3063010C */  jal        Print
/* 17348 80026B48 1000A2AF */   sw        $v0, 0x10($sp)
/* 1734C 80026B4C 32000424 */  addiu      $a0, $zero, 0x32
/* 17350 80026B50 78000524 */  addiu      $a1, $zero, 0x78
/* 17354 80026B54 21300000 */  addu       $a2, $zero, $zero
/* 17358 80026B58 0180073C */  lui        $a3, %hi(D_800115A4)
/* 1735C 80026B5C B007828F */  lw         $v0, %gp_rel(wtime)($gp)
/* 17360 80026B60 A415E724 */  addiu      $a3, $a3, %lo(D_800115A4)
/* 17364 80026B64 3063010C */  jal        Print
/* 17368 80026B68 1000A2AF */   sw        $v0, 0x10($sp)
/* 1736C 80026B6C 82000424 */  addiu      $a0, $zero, 0x82
/* 17370 80026B70 E6000524 */  addiu      $a1, $zero, 0xE6
/* 17374 80026B74 21300000 */  addu       $a2, $zero, $zero
/* 17378 80026B78 0980073C */  lui        $a3, %hi(D_80094A20)
/* 1737C 80026B7C 204AE724 */  addiu      $a3, $a3, %lo(D_80094A20)
/* 17380 80026B80 3063010C */  jal        Print
/* 17384 80026B84 1000B1AF */   sw        $s1, 0x10($sp)
/* 17388 80026B88 2000BF8F */  lw         $ra, 0x20($sp)
/* 1738C 80026B8C 1C00B18F */  lw         $s1, 0x1C($sp)
/* 17390 80026B90 1800B08F */  lw         $s0, 0x18($sp)
/* 17394 80026B94 0800E003 */  jr         $ra
/* 17398 80026B98 2800BD27 */   addiu     $sp, $sp, 0x28
.size TestAnalogue, . - TestAnalogue
