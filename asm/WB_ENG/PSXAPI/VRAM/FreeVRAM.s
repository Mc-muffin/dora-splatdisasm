.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FreeVRAM
/* 4D31C 8005CB1C FFFF8D30 */  andi       $t5, $a0, 0xFFFF
/* 4D320 8005CB20 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 4D324 8005CB24 2900A211 */  beq        $t5, $v0, .L8005CBCC
/* 4D328 8005CB28 0C80073C */   lui       $a3, %hi(VRAMItems)
/* 4D32C 8005CB2C 38ADE324 */  addiu      $v1, $a3, %lo(VRAMItems)
/* 4D330 8005CB30 80300D00 */  sll        $a2, $t5, 2
/* 4D334 8005CB34 2110CD00 */  addu       $v0, $a2, $t5
/* 4D338 8005CB38 80100200 */  sll        $v0, $v0, 2
/* 4D33C 8005CB3C 21104300 */  addu       $v0, $v0, $v1
/* 4D340 8005CB40 0A004590 */  lbu        $a1, 0xA($v0)
/* 4D344 8005CB44 0C004490 */  lbu        $a0, 0xC($v0)
/* 4D348 8005CB48 0B004C90 */  lbu        $t4, 0xB($v0)
/* 4D34C 8005CB4C 0D004390 */  lbu        $v1, 0xD($v0)
/* 4D350 8005CB50 2148A000 */  addu       $t1, $a1, $zero
/* 4D354 8005CB54 2128A400 */  addu       $a1, $a1, $a0
/* 4D358 8005CB58 2A102501 */  slt        $v0, $t1, $a1
/* 4D35C 8005CB5C 16004010 */  beqz       $v0, .L8005CBB8
/* 4D360 8005CB60 21588301 */   addu      $t3, $t4, $v1
/* 4D364 8005CB64 18178E8F */  lw         $t6, %gp_rel(XCnt)($gp)
/* 4D368 8005CB68 0C80023C */  lui        $v0, %hi(VRAMGrid)
/* 4D36C 8005CB6C 38974F24 */  addiu      $t7, $v0, %lo(VRAMGrid)
/* 4D370 8005CB70 21208001 */  addu       $a0, $t4, $zero
.L8005CB74:
/* 4D374 8005CB74 2A108B00 */  slt        $v0, $a0, $t3
/* 4D378 8005CB78 0B004010 */  beqz       $v0, .L8005CBA8
/* 4D37C 8005CB7C 01002A25 */   addiu     $t2, $t1, 0x1
/* 4D380 8005CB80 2140C001 */  addu       $t0, $t6, $zero
/* 4D384 8005CB84 18008800 */  mult       $a0, $t0
/* 4D388 8005CB88 23206401 */  subu       $a0, $t3, $a0
/* 4D38C 8005CB8C 21102F01 */  addu       $v0, $t1, $t7
/* 4D390 8005CB90 12180000 */  mflo       $v1
/* 4D394 8005CB94 21106200 */  addu       $v0, $v1, $v0
.L8005CB98:
/* 4D398 8005CB98 000040A0 */  sb         $zero, 0x0($v0)
/* 4D39C 8005CB9C FFFF8424 */  addiu      $a0, $a0, -0x1
/* 4D3A0 8005CBA0 FDFF8014 */  bnez       $a0, .L8005CB98
/* 4D3A4 8005CBA4 21104800 */   addu      $v0, $v0, $t0
.L8005CBA8:
/* 4D3A8 8005CBA8 21484001 */  addu       $t1, $t2, $zero
/* 4D3AC 8005CBAC 2A102501 */  slt        $v0, $t1, $a1
/* 4D3B0 8005CBB0 F0FF4014 */  bnez       $v0, .L8005CB74
/* 4D3B4 8005CBB4 21208001 */   addu      $a0, $t4, $zero
.L8005CBB8:
/* 4D3B8 8005CBB8 38ADE324 */  addiu      $v1, $a3, %lo(VRAMItems)
/* 4D3BC 8005CBBC 2110CD00 */  addu       $v0, $a2, $t5
/* 4D3C0 8005CBC0 80100200 */  sll        $v0, $v0, 2
/* 4D3C4 8005CBC4 21104300 */  addu       $v0, $v0, $v1
/* 4D3C8 8005CBC8 100040A0 */  sb         $zero, 0x10($v0)
.L8005CBCC:
/* 4D3CC 8005CBCC 0800E003 */  jr         $ra
/* 4D3D0 8005CBD0 00000000 */   nop
.size FreeVRAM, . - FreeVRAM
