.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawHUDSprites
/* EA70 8001E270 0980053C */  lui        $a1, %hi(HUDSpriteArray)
/* EA74 8001E274 A060A524 */  addiu      $a1, $a1, %lo(HUDSpriteArray)
/* EA78 8001E278 0980033C */  lui        $v1, %hi(ot_ndx)
/* EA7C 8001E27C 4853638C */  lw         $v1, %lo(ot_ndx)($v1)
/* EA80 8001E280 B803878F */  lw         $a3, %gp_rel(StarsX)($gp)
/* EA84 8001E284 5000A68C */  lw         $a2, 0x50($a1)
/* EA88 8001E288 5400A88C */  lw         $t0, 0x54($a1)
/* EA8C 8001E28C 80100300 */  sll        $v0, $v1, 2
/* EA90 8001E290 21104300 */  addu       $v0, $v0, $v1
/* EA94 8001E294 C0100200 */  sll        $v0, $v0, 3
/* EA98 8001E298 21284500 */  addu       $a1, $v0, $a1
/* EA9C 8001E29C 2130E600 */  addu       $a2, $a3, $a2
/* EAA0 8001E2A0 BC03838F */  lw         $v1, %gp_rel(StarsY)($gp)
/* EAA4 8001E2A4 0B80023C */  lui        $v0, %hi(g_nt + 0x8)
/* EAA8 8001E2A8 1000A6A4 */  sh         $a2, 0x10($a1)
/* EAAC 8001E2AC 2000A6A4 */  sh         $a2, 0x20($a1)
/* EAB0 8001E2B0 21304000 */  addu       $a2, $v0, $zero
/* EAB4 8001E2B4 0800A7A4 */  sh         $a3, 0x8($a1)
/* EAB8 8001E2B8 1800A7A4 */  sh         $a3, 0x18($a1)
/* EABC 8001E2BC 04006324 */  addiu      $v1, $v1, 0x4
/* EAC0 8001E2C0 21186400 */  addu       $v1, $v1, $a0
/* EAC4 8001E2C4 0A00A3A4 */  sh         $v1, 0xA($a1)
/* EAC8 8001E2C8 1200A3A4 */  sh         $v1, 0x12($a1)
/* EACC 8001E2CC 21186800 */  addu       $v1, $v1, $t0
/* EAD0 8001E2D0 1A00A3A4 */  sh         $v1, 0x1A($a1)
/* EAD4 8001E2D4 2200A3A4 */  sh         $v1, 0x22($a1)
/* EAD8 8001E2D8 70BB438C */  lw         $v1, %lo(g_nt + 0x8)($v0)
/* EADC 8001E2DC 00000000 */  nop
/* EAE0 8001E2E0 09006010 */  beqz       $v1, .L8001E308
/* EAE4 8001E2E4 70BB4424 */   addiu     $a0, $v0, %lo(g_nt + 0x8)
/* EAE8 8001E2E8 02008388 */  lwl        $v1, 0x2($a0)
/* EAEC 8001E2EC 70BBC28C */  lw         $v0, %lo(g_nt + 0x8)($a2)
/* EAF0 8001E2F0 00000000 */  nop
/* EAF4 8001E2F4 00120200 */  sll        $v0, $v0, 8
/* EAF8 8001E2F8 0200A2A8 */  swl        $v0, 0x2($a1)
/* EAFC 8001E2FC 0200A3A8 */  swl        $v1, 0x2($a1)
/* EB00 8001E300 0800E003 */  jr         $ra
/* EB04 8001E304 70BBC5AC */   sw        $a1, %lo(g_nt + 0x8)($a2)
.L8001E308:
/* EB08 8001E308 040085AC */  sw         $a1, 0x4($a0)
/* EB0C 8001E30C 70BBC5AC */  sw         $a1, %lo(g_nt + 0x8)($a2)
/* EB10 8001E310 0800E003 */  jr         $ra
/* EB14 8001E314 00000000 */   nop
.size DrawHUDSprites, . - DrawHUDSprites
