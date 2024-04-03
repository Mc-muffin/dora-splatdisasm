.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawCineX
/* 32B78 80042378 0980023C */  lui        $v0, %hi(ot_ndx)
/* 32B7C 8004237C 4853428C */  lw         $v0, %lo(ot_ndx)($v0)
/* 32B80 80042380 00000000 */  nop
/* 32B84 80042384 80180200 */  sll        $v1, $v0, 2
/* 32B88 80042388 21186200 */  addu       $v1, $v1, $v0
/* 32B8C 8004238C C0180300 */  sll        $v1, $v1, 3
/* 32B90 80042390 0A80023C */  lui        $v0, %hi(pausemenuFT4)
/* 32B94 80042394 A0864224 */  addiu      $v0, $v0, %lo(pausemenuFT4)
/* 32B98 80042398 21306200 */  addu       $a2, $v1, $v0
/* 32B9C 8004239C 18008224 */  addiu      $v0, $a0, 0x18
/* 32BA0 800423A0 0A00C5A4 */  sh         $a1, 0xA($a2)
/* 32BA4 800423A4 1200C5A4 */  sh         $a1, 0x12($a2)
/* 32BA8 800423A8 1800A524 */  addiu      $a1, $a1, 0x18
/* 32BAC 800423AC 1000C2A4 */  sh         $v0, 0x10($a2)
/* 32BB0 800423B0 2000C2A4 */  sh         $v0, 0x20($a2)
/* 32BB4 800423B4 0B80023C */  lui        $v0, %hi(g_nt3)
/* 32BB8 800423B8 38774324 */  addiu      $v1, $v0, %lo(g_nt3)
/* 32BBC 800423BC 0800C4A4 */  sh         $a0, 0x8($a2)
/* 32BC0 800423C0 1800C4A4 */  sh         $a0, 0x18($a2)
/* 32BC4 800423C4 1A00C5A4 */  sh         $a1, 0x1A($a2)
/* 32BC8 800423C8 2200C5A4 */  sh         $a1, 0x22($a2)
/* 32BCC 800423CC 3877448C */  lw         $a0, %lo(g_nt3)($v0)
/* 32BD0 800423D0 00000000 */  nop
/* 32BD4 800423D4 09008010 */  beqz       $a0, .L800423FC
/* 32BD8 800423D8 21284000 */   addu      $a1, $v0, $zero
/* 32BDC 800423DC FF00033C */  lui        $v1, (0xFFFFFF >> 16)
/* 32BE0 800423E0 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* 32BE4 800423E4 0089023C */  lui        $v0, (0x89000000 >> 16)
/* 32BE8 800423E8 26108200 */  xor        $v0, $a0, $v0
/* 32BEC 800423EC 2418C300 */  and        $v1, $a2, $v1
/* 32BF0 800423F0 0000C2AC */  sw         $v0, 0x0($a2)
/* 32BF4 800423F4 00090108 */  j          .L80042400
/* 32BF8 800423F8 3877A3AC */   sw        $v1, %lo(g_nt3)($a1)
.L800423FC:
/* 32BFC 800423FC 040066AC */  sw         $a2, 0x4($v1)
.L80042400:
/* 32C00 80042400 0800E003 */  jr         $ra
/* 32C04 80042404 3877A6AC */   sw        $a2, %lo(g_nt3)($a1)
.size DrawCineX, . - DrawCineX
