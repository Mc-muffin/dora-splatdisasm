.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawMenuRGBSprites
/* 162E8 80025AE8 0A80023C */  lui        $v0, %hi(MenuRGBSprite)
/* 162EC 80025AEC 18804224 */  addiu      $v0, $v0, %lo(MenuRGBSprite)
/* 162F0 80025AF0 0B80033C */  lui        $v1, %hi(g_nt)
/* 162F4 80025AF4 0980073C */  lui        $a3, %hi(ot_ndx)
/* 162F8 80025AF8 4853E78C */  lw         $a3, %lo(ot_ndx)($a3)
/* 162FC 80025AFC 21306000 */  addu       $a2, $v1, $zero
/* 16300 80025B00 80200700 */  sll        $a0, $a3, 2
/* 16304 80025B04 21208700 */  addu       $a0, $a0, $a3
/* 16308 80025B08 C0200400 */  sll        $a0, $a0, 3
/* 1630C 80025B0C 21288200 */  addu       $a1, $a0, $v0
/* 16310 80025B10 68BB628C */  lw         $v0, %lo(g_nt)($v1)
/* 16314 80025B14 00000000 */  nop
/* 16318 80025B18 09004010 */  beqz       $v0, .L80025B40
/* 1631C 80025B1C 68BB6424 */   addiu     $a0, $v1, %lo(g_nt)
/* 16320 80025B20 02008388 */  lwl        $v1, 0x2($a0)
/* 16324 80025B24 68BBC28C */  lw         $v0, %lo(g_nt)($a2)
/* 16328 80025B28 00000000 */  nop
/* 1632C 80025B2C 00120200 */  sll        $v0, $v0, 8
/* 16330 80025B30 0200A2A8 */  swl        $v0, 0x2($a1)
/* 16334 80025B34 0200A3A8 */  swl        $v1, 0x2($a1)
/* 16338 80025B38 D2960008 */  j          .L80025B48
/* 1633C 80025B3C 80200700 */   sll       $a0, $a3, 2
.L80025B40:
/* 16340 80025B40 040085AC */  sw         $a1, 0x4($a0)
/* 16344 80025B44 80200700 */  sll        $a0, $a3, 2
.L80025B48:
/* 16348 80025B48 21188700 */  addu       $v1, $a0, $a3
/* 1634C 80025B4C C0180300 */  sll        $v1, $v1, 3
/* 16350 80025B50 0A80023C */  lui        $v0, %hi(MenuRGBSprite + 0x50)
/* 16354 80025B54 68804224 */  addiu      $v0, $v0, %lo(MenuRGBSprite + 0x50)
/* 16358 80025B58 68BBC5AC */  sw         $a1, %lo(g_nt)($a2)
/* 1635C 80025B5C 21286200 */  addu       $a1, $v1, $v0
/* 16360 80025B60 68BBC324 */  addiu      $v1, $a2, %lo(g_nt)
/* 16364 80025B64 68BBC28C */  lw         $v0, %lo(g_nt)($a2)
/* 16368 80025B68 00000000 */  nop
/* 1636C 80025B6C 09004010 */  beqz       $v0, .L80025B94
/* 16370 80025B70 21408000 */   addu      $t0, $a0, $zero
/* 16374 80025B74 02006388 */  lwl        $v1, 0x2($v1)
/* 16378 80025B78 68BBC28C */  lw         $v0, %lo(g_nt)($a2)
/* 1637C 80025B7C 00000000 */  nop
/* 16380 80025B80 00120200 */  sll        $v0, $v0, 8
/* 16384 80025B84 0200A2A8 */  swl        $v0, 0x2($a1)
/* 16388 80025B88 0200A3A8 */  swl        $v1, 0x2($a1)
/* 1638C 80025B8C E7960008 */  j          .L80025B9C
/* 16390 80025B90 21100701 */   addu      $v0, $t0, $a3
.L80025B94:
/* 16394 80025B94 040065AC */  sw         $a1, 0x4($v1)
/* 16398 80025B98 21100701 */  addu       $v0, $t0, $a3
.L80025B9C:
/* 1639C 80025B9C C0100200 */  sll        $v0, $v0, 3
/* 163A0 80025BA0 0A80033C */  lui        $v1, %hi(MenuRGBSprite + 0xA0)
/* 163A4 80025BA4 B8806324 */  addiu      $v1, $v1, %lo(MenuRGBSprite + 0xA0)
/* 163A8 80025BA8 68BBC5AC */  sw         $a1, %lo(g_nt)($a2)
/* 163AC 80025BAC 21284300 */  addu       $a1, $v0, $v1
/* 163B0 80025BB0 68BBC48C */  lw         $a0, %lo(g_nt)($a2)
/* 163B4 80025BB4 00000000 */  nop
/* 163B8 80025BB8 09008010 */  beqz       $a0, .L80025BE0
/* 163BC 80025BBC 68BBC224 */   addiu     $v0, $a2, %lo(g_nt)
/* 163C0 80025BC0 02004388 */  lwl        $v1, 0x2($v0)
/* 163C4 80025BC4 68BBC28C */  lw         $v0, %lo(g_nt)($a2)
/* 163C8 80025BC8 00000000 */  nop
/* 163CC 80025BCC 00120200 */  sll        $v0, $v0, 8
/* 163D0 80025BD0 0200A2A8 */  swl        $v0, 0x2($a1)
/* 163D4 80025BD4 0200A3A8 */  swl        $v1, 0x2($a1)
/* 163D8 80025BD8 FA960008 */  j          .L80025BE8
/* 163DC 80025BDC 21100701 */   addu      $v0, $t0, $a3
.L80025BE0:
/* 163E0 80025BE0 040045AC */  sw         $a1, 0x4($v0)
/* 163E4 80025BE4 21100701 */  addu       $v0, $t0, $a3
.L80025BE8:
/* 163E8 80025BE8 C0100200 */  sll        $v0, $v0, 3
/* 163EC 80025BEC 0A80033C */  lui        $v1, %hi(MenuRGBSprite + 0xF0)
/* 163F0 80025BF0 08816324 */  addiu      $v1, $v1, %lo(MenuRGBSprite + 0xF0)
/* 163F4 80025BF4 68BBC5AC */  sw         $a1, %lo(g_nt)($a2)
/* 163F8 80025BF8 21284300 */  addu       $a1, $v0, $v1
/* 163FC 80025BFC 68BBC48C */  lw         $a0, %lo(g_nt)($a2)
/* 16400 80025C00 00000000 */  nop
/* 16404 80025C04 09008010 */  beqz       $a0, .L80025C2C
/* 16408 80025C08 68BBC224 */   addiu     $v0, $a2, %lo(g_nt)
/* 1640C 80025C0C 02004388 */  lwl        $v1, 0x2($v0)
/* 16410 80025C10 68BBC28C */  lw         $v0, %lo(g_nt)($a2)
/* 16414 80025C14 00000000 */  nop
/* 16418 80025C18 00120200 */  sll        $v0, $v0, 8
/* 1641C 80025C1C 0200A2A8 */  swl        $v0, 0x2($a1)
/* 16420 80025C20 0200A3A8 */  swl        $v1, 0x2($a1)
/* 16424 80025C24 0800E003 */  jr         $ra
/* 16428 80025C28 68BBC5AC */   sw        $a1, %lo(g_nt)($a2)
.L80025C2C:
/* 1642C 80025C2C 040045AC */  sw         $a1, 0x4($v0)
/* 16430 80025C30 68BBC5AC */  sw         $a1, %lo(g_nt)($a2)
/* 16434 80025C34 0800E003 */  jr         $ra
/* 16438 80025C38 00000000 */   nop
.size DrawMenuRGBSprites, . - DrawMenuRGBSprites
