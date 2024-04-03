.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerInit
/* 30B34 80040334 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 30B38 80040338 21308000 */  addu       $a2, $a0, $zero
/* 30B3C 8004033C 1000BFAF */  sw         $ra, 0x10($sp)
/* 30B40 80040340 4400C28C */  lw         $v0, 0x44($a2)
/* 30B44 80040344 00000000 */  nop
/* 30B48 80040348 1800478C */  lw         $a3, 0x18($v0)
/* 30B4C 8004034C 00000000 */  nop
/* 30B50 80040350 2801C7AC */  sw         $a3, 0x128($a2)
/* 30B54 80040354 0C00E58C */  lw         $a1, 0xC($a3)
/* 30B58 80040358 00000000 */  nop
/* 30B5C 8004035C 1000A010 */  beqz       $a1, .L800403A0
/* 30B60 80040360 0480023C */   lui       $v0, %hi(PickupKey)
/* 30B64 80040364 C414848F */  lw         $a0, %gp_rel(gnumpressuretriggers)($gp)
/* 30B68 80040368 00000000 */  nop
/* 30B6C 8004036C 0C008018 */  blez       $a0, .L800403A0
/* 30B70 80040370 70054824 */   addiu     $t0, $v0, %lo(PickupKey)
/* 30B74 80040374 C014838F */  lw         $v1, %gp_rel(PressureTrigger)($gp)
.L80040378:
/* 30B78 80040378 00000000 */  nop
/* 30B7C 8004037C 0000628C */  lw         $v0, 0x0($v1)
/* 30B80 80040380 00000000 */  nop
/* 30B84 80040384 03004514 */  bne        $v0, $a1, .L80040394
/* 30B88 80040388 00000000 */   nop
/* 30B8C 8004038C 640066AC */  sw         $a2, 0x64($v1)
/* 30B90 80040390 400068AC */  sw         $t0, 0x40($v1)
.L80040394:
/* 30B94 80040394 FFFF8424 */  addiu      $a0, $a0, -0x1
/* 30B98 80040398 F7FF8014 */  bnez       $a0, .L80040378
/* 30B9C 8004039C 88006324 */   addiu     $v1, $v1, 0x88
.L800403A0:
/* 30BA0 800403A0 4400C28C */  lw         $v0, 0x44($a2)
/* 30BA4 800403A4 00000000 */  nop
/* 30BA8 800403A8 1C00438C */  lw         $v1, 0x1C($v0)
/* 30BAC 800403AC 1000043C */  lui        $a0, (0x100000 >> 16)
/* 30BB0 800403B0 24186400 */  and        $v1, $v1, $a0
/* 30BB4 800403B4 10006010 */  beqz       $v1, .L800403F8
/* 30BB8 800403B8 0A80033C */   lui       $v1, %hi(PickupTrigger)
/* 30BBC 800403BC 0000E28C */  lw         $v0, 0x0($a3)
/* 30BC0 800403C0 D0BB6324 */  addiu      $v1, $v1, %lo(PickupTrigger)
/* 30BC4 800403C4 80100200 */  sll        $v0, $v0, 2
/* 30BC8 800403C8 21104300 */  addu       $v0, $v0, $v1
/* 30BCC 800403CC 000046AC */  sw         $a2, 0x0($v0)
/* 30BD0 800403D0 4400C48C */  lw         $a0, 0x44($a2)
/* 30BD4 800403D4 00000000 */  nop
/* 30BD8 800403D8 1C00828C */  lw         $v0, 0x1C($a0)
/* 30BDC 800403DC 2000033C */  lui        $v1, (0x200000 >> 16)
/* 30BE0 800403E0 25104300 */  or         $v0, $v0, $v1
/* 30BE4 800403E4 1C0082AC */  sw         $v0, 0x1C($a0)
/* 30BE8 800403E8 1000C38C */  lw         $v1, 0x10($a2)
/* 30BEC 800403EC FFFE0224 */  addiu      $v0, $zero, -0x101
/* 30BF0 800403F0 24186200 */  and        $v1, $v1, $v0
/* 30BF4 800403F4 1000C3AC */  sw         $v1, 0x10($a2)
.L800403F8:
/* 30BF8 800403F8 DA25010C */  jal        GenericActorInit
/* 30BFC 800403FC 2120C000 */   addu      $a0, $a2, $zero
/* 30C00 80040400 1000BF8F */  lw         $ra, 0x10($sp)
/* 30C04 80040404 00000000 */  nop
/* 30C08 80040408 0800E003 */  jr         $ra
/* 30C0C 8004040C 1800BD27 */   addiu     $sp, $sp, 0x18
.size TriggerInit, . - TriggerInit
