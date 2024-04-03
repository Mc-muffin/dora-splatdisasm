.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ISPlayerRunning
/* AA6C 8001A26C 0980023C */  lui        $v0, %hi(ETActor + 0x140)
/* AA70 8001A270 F05B448C */  lw         $a0, %lo(ETActor + 0x140)($v0)
/* AA74 8001A274 07000324 */  addiu      $v1, $zero, 0x7
/* AA78 8001A278 03008310 */  beq        $a0, $v1, .L8001A288
/* AA7C 8001A27C 02000224 */   addiu     $v0, $zero, 0x2
/* AA80 8001A280 03008214 */  bne        $a0, $v0, .L8001A290
/* AA84 8001A284 00000000 */   nop
.L8001A288:
/* AA88 8001A288 0800E003 */  jr         $ra
/* AA8C 8001A28C 01000224 */   addiu     $v0, $zero, 0x1
.L8001A290:
/* AA90 8001A290 0800E003 */  jr         $ra
/* AA94 8001A294 21100000 */   addu      $v0, $zero, $zero
.size ISPlayerRunning, . - ISPlayerRunning
