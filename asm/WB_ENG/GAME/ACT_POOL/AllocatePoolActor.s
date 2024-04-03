.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AllocatePoolActor
/* 27CEC 800374EC 0A80033C */  lui        $v1, %hi(ActorDynamicPool)
/* 27CF0 800374F0 88906624 */  addiu      $a2, $v1, %lo(ActorDynamicPool)
/* 27CF4 800374F4 40100500 */  sll        $v0, $a1, 1
/* 27CF8 800374F8 21104500 */  addu       $v0, $v0, $a1
/* 27CFC 800374FC C0100200 */  sll        $v0, $v0, 3
/* 27D00 80037500 23104500 */  subu       $v0, $v0, $a1
/* 27D04 80037504 80100200 */  sll        $v0, $v0, 2
/* 27D08 80037508 2118C200 */  addu       $v1, $a2, $v0
/* 27D0C 8003750C 0800698C */  lw         $t1, 0x8($v1)
/* 27D10 80037510 00000000 */  nop
/* 27D14 80037514 1B002019 */  blez       $t1, .L80037584
/* 27D18 80037518 21380000 */   addu      $a3, $zero, $zero
/* 27D1C 8003751C 21404000 */  addu       $t0, $v0, $zero
/* 27D20 80037520 0C00C224 */  addiu      $v0, $a2, 0xC
/* 27D24 80037524 21500201 */  addu       $t2, $t0, $v0
/* 27D28 80037528 0400CC24 */  addiu      $t4, $a2, 0x4
/* 27D2C 8003752C 1000C224 */  addiu      $v0, $a2, 0x10
/* 27D30 80037530 21300201 */  addu       $a2, $t0, $v0
/* 27D34 80037534 01000B24 */  addiu      $t3, $zero, 0x1
.L80037538:
/* 27D38 80037538 C0100700 */  sll        $v0, $a3, 3
/* 27D3C 8003753C 21284201 */  addu       $a1, $t2, $v0
/* 27D40 80037540 0000A38C */  lw         $v1, 0x0($a1)
/* 27D44 80037544 00000000 */  nop
/* 27D48 80037548 0B006014 */  bnez       $v1, .L80037578
/* 27D4C 8003754C 0100E724 */   addiu     $a3, $a3, 0x1
/* 27D50 80037550 0000C28C */  lw         $v0, 0x0($a2)
/* 27D54 80037554 0000ABAC */  sw         $t3, 0x0($a1)
/* 27D58 80037558 180185AC */  sw         $a1, 0x118($a0)
/* 27D5C 8003755C 21280C01 */  addu       $a1, $t0, $t4
/* 27D60 80037560 1C0185AC */  sw         $a1, 0x11C($a0)
/* 27D64 80037564 0000A38C */  lw         $v1, 0x0($a1)
/* 27D68 80037568 00000000 */  nop
/* 27D6C 8003756C 01006324 */  addiu      $v1, $v1, 0x1
/* 27D70 80037570 0800E003 */  jr         $ra
/* 27D74 80037574 0000A3AC */   sw        $v1, 0x0($a1)
.L80037578:
/* 27D78 80037578 2A10E900 */  slt        $v0, $a3, $t1
/* 27D7C 8003757C EEFF4014 */  bnez       $v0, .L80037538
/* 27D80 80037580 0800C624 */   addiu     $a2, $a2, 0x8
.L80037584:
/* 27D84 80037584 0800E003 */  jr         $ra
/* 27D88 80037588 21100000 */   addu      $v0, $zero, $zero
.size AllocatePoolActor, . - AllocatePoolActor
