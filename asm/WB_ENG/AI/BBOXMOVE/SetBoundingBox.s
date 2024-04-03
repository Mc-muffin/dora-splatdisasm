.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetBoundingBox
/* 35D58 80045558 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 35D5C 8004555C 00110600 */  sll        $v0, $a2, 4
/* 35D60 80045560 1000B0AF */  sw         $s0, 0x10($sp)
/* 35D64 80045564 F414908F */  lw         $s0, %gp_rel(boundingboxes)($gp)
/* 35D68 80045568 23104600 */  subu       $v0, $v0, $a2
/* 35D6C 8004556C 1800B2AF */  sw         $s2, 0x18($sp)
/* 35D70 80045570 3000B28F */  lw         $s2, 0x30($sp)
/* 35D74 80045574 80100200 */  sll        $v0, $v0, 2
/* 35D78 80045578 1400B1AF */  sw         $s1, 0x14($sp)
/* 35D7C 8004557C 2188E000 */  addu       $s1, $a3, $zero
/* 35D80 80045580 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 35D84 80045584 21800202 */  addu       $s0, $s0, $v0
/* 35D88 80045588 000005AE */  sw         $a1, 0x0($s0)
/* 35D8C 8004558C 28000526 */  addiu      $a1, $s0, 0x28
/* 35D90 80045590 4114010C */  jal        PointInPolyCenter
/* 35D94 80045594 380004AE */   sw        $a0, 0x38($s0)
/* 35D98 80045598 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 35D9C 8004559C 100012AE */  sw         $s2, 0x10($s0)
/* 35DA0 800455A0 1800B28F */  lw         $s2, 0x18($sp)
/* 35DA4 800455A4 0C0011AE */  sw         $s1, 0xC($s0)
/* 35DA8 800455A8 1400B18F */  lw         $s1, 0x14($sp)
/* 35DAC 800455AC 00100224 */  addiu      $v0, $zero, 0x1000
/* 35DB0 800455B0 140000AE */  sw         $zero, 0x14($s0)
/* 35DB4 800455B4 040002AE */  sw         $v0, 0x4($s0)
/* 35DB8 800455B8 080002AE */  sw         $v0, 0x8($s0)
/* 35DBC 800455BC 1000B08F */  lw         $s0, 0x10($sp)
/* 35DC0 800455C0 0800E003 */  jr         $ra
/* 35DC4 800455C4 2000BD27 */   addiu     $sp, $sp, 0x20
.size SetBoundingBox, . - SetBoundingBox
