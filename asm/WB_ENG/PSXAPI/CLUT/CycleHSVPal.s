.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CycleHSVPal
/* 4ED24 8005E524 2128C500 */  addu       $a1, $a2, $a1
/* 4ED28 8005E528 FF00A530 */  andi       $a1, $a1, 0xFF
/* 4ED2C 8005E52C 2130A000 */  addu       $a2, $a1, $zero
/* 4ED30 8005E530 21400000 */  addu       $t0, $zero, $zero
/* 4ED34 8005E534 0C80033C */  lui        $v1, %hi(SavedPalettes)
/* 4ED38 8005E538 21606000 */  addu       $t4, $v1, $zero
/* 4ED3C 8005E53C FF000724 */  addiu      $a3, $zero, 0xFF
/* 4ED40 8005E540 21488000 */  addu       $t1, $a0, $zero
/* 4ED44 8005E544 28E56324 */  addiu      $v1, $v1, %lo(SavedPalettes)
/* 4ED48 8005E548 40100900 */  sll        $v0, $t1, 1
/* 4ED4C 8005E54C 21104900 */  addu       $v0, $v0, $t1
/* 4ED50 8005E550 80100200 */  sll        $v0, $v0, 2
/* 4ED54 8005E554 21186200 */  addu       $v1, $v1, $v0
/* 4ED58 8005E558 40120900 */  sll        $v0, $t1, 9
/* 4ED5C 8005E55C 2C17848F */  lw         $a0, %gp_rel(DownloadPalettes)($gp)
/* 4ED60 8005E560 08006B8C */  lw         $t3, 0x8($v1)
/* 4ED64 8005E564 21508200 */  addu       $t2, $a0, $v0
.L8005E568:
/* 4ED68 8005E568 FF00C230 */  andi       $v0, $a2, 0xFF
/* 4ED6C 8005E56C 0100C624 */  addiu      $a2, $a2, 0x1
/* 4ED70 8005E570 FF000331 */  andi       $v1, $t0, 0xFF
/* 4ED74 8005E574 01000825 */  addiu      $t0, $t0, 0x1
/* 4ED78 8005E578 FFFFE724 */  addiu      $a3, $a3, -0x1
/* 4ED7C 8005E57C 40180300 */  sll        $v1, $v1, 1
/* 4ED80 8005E580 40100200 */  sll        $v0, $v0, 1
/* 4ED84 8005E584 21104B00 */  addu       $v0, $v0, $t3
/* 4ED88 8005E588 00004494 */  lhu        $a0, 0x0($v0)
/* 4ED8C 8005E58C 21186A00 */  addu       $v1, $v1, $t2
/* 4ED90 8005E590 F5FFE104 */  bgez       $a3, .L8005E568
/* 4ED94 8005E594 000064A4 */   sh        $a0, 0x0($v1)
/* 4ED98 8005E598 28E58225 */  addiu      $v0, $t4, %lo(SavedPalettes)
/* 4ED9C 8005E59C 40180900 */  sll        $v1, $t1, 1
/* 4EDA0 8005E5A0 21186900 */  addu       $v1, $v1, $t1
/* 4EDA4 8005E5A4 80180300 */  sll        $v1, $v1, 2
/* 4EDA8 8005E5A8 21186200 */  addu       $v1, $v1, $v0
/* 4EDAC 8005E5AC 01000424 */  addiu      $a0, $zero, 0x1
/* 4EDB0 8005E5B0 000064AC */  sw         $a0, 0x0($v1)
/* 4EDB4 8005E5B4 0800E003 */  jr         $ra
/* 4EDB8 8005E5B8 2110A000 */   addu      $v0, $a1, $zero
.size CycleHSVPal, . - CycleHSVPal
