.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LinkAffectedActorToTrigger
/* 30D2C 8004052C C414828F */  lw         $v0, %gp_rel(gnumpressuretriggers)($gp)
/* 30D30 80040530 00000000 */  nop
/* 30D34 80040534 0C004018 */  blez       $v0, .L80040568
/* 30D38 80040538 21384000 */   addu      $a3, $v0, $zero
/* 30D3C 8004053C C014838F */  lw         $v1, %gp_rel(PressureTrigger)($gp)
.L80040540:
/* 30D40 80040540 00000000 */  nop
/* 30D44 80040544 0000628C */  lw         $v0, 0x0($v1)
/* 30D48 80040548 00000000 */  nop
/* 30D4C 8004054C 03004514 */  bne        $v0, $a1, .L8004055C
/* 30D50 80040550 00000000 */   nop
/* 30D54 80040554 640064AC */  sw         $a0, 0x64($v1)
/* 30D58 80040558 400066AC */  sw         $a2, 0x40($v1)
.L8004055C:
/* 30D5C 8004055C FFFFE724 */  addiu      $a3, $a3, -0x1
/* 30D60 80040560 F7FFE014 */  bnez       $a3, .L80040540
/* 30D64 80040564 88006324 */   addiu     $v1, $v1, 0x88
.L80040568:
/* 30D68 80040568 0800E003 */  jr         $ra
/* 30D6C 8004056C 00000000 */   nop
.size LinkAffectedActorToTrigger, . - LinkAffectedActorToTrigger
