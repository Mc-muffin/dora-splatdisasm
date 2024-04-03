.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CalculateCelIndex
/* 55D00 80065500 0880023C */  lui        $v0, %hi(TestWorld + 0x18)
/* 55D04 80065504 A465438C */  lw         $v1, %lo(TestWorld + 0x18)($v0)
/* 55D08 80065508 00000000 */  nop
/* 55D0C 8006550C 23208300 */  subu       $a0, $a0, $v1
/* 55D10 80065510 83300400 */  sra        $a2, $a0, 2
/* 55D14 80065514 FF03C430 */  andi       $a0, $a2, 0x3FF
/* 55D18 80065518 80180400 */  sll        $v1, $a0, 2
/* 55D1C 8006551C 21186400 */  addu       $v1, $v1, $a0
/* 55D20 80065520 C0180300 */  sll        $v1, $v1, 3
/* 55D24 80065524 2128A300 */  addu       $a1, $a1, $v1
/* 55D28 80065528 0800A48C */  lw         $a0, 0x8($a1)
/* 55D2C 8006552C 1000033C */  lui        $v1, (0x100000 >> 16)
/* 55D30 80065530 24208300 */  and        $a0, $a0, $v1
/* 55D34 80065534 02008014 */  bnez       $a0, .L80065540
/* 55D38 80065538 FF030224 */   addiu     $v0, $zero, 0x3FF
/* 55D3C 8006553C 2110C000 */  addu       $v0, $a2, $zero
.L80065540:
/* 55D40 80065540 0800E003 */  jr         $ra
/* 55D44 80065544 00000000 */   nop
.size CalculateCelIndex, . - CalculateCelIndex
