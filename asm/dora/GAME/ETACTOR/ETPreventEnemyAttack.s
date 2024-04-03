.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ETPreventEnemyAttack
/* AA34 8001A234 0980023C */  lui        $v0, %hi(ETActor + 0x140)
/* AA38 8001A238 F05B448C */  lw         $a0, %lo(ETActor + 0x140)($v0)
/* AA3C 8001A23C 05000324 */  addiu      $v1, $zero, 0x5
/* AA40 8001A240 06008310 */  beq        $a0, $v1, .L8001A25C
/* AA44 8001A244 08000224 */   addiu     $v0, $zero, 0x8
/* AA48 8001A248 0980033C */  lui        $v1, %hi(gGameState)
/* AA4C 8001A24C 8456638C */  lw         $v1, %lo(gGameState)($v1)
/* AA50 8001A250 00000000 */  nop
/* AA54 8001A254 03006214 */  bne        $v1, $v0, .L8001A264
/* AA58 8001A258 00000000 */   nop
.L8001A25C:
/* AA5C 8001A25C 0800E003 */  jr         $ra
/* AA60 8001A260 01000224 */   addiu     $v0, $zero, 0x1
.L8001A264:
/* AA64 8001A264 0800E003 */  jr         $ra
/* AA68 8001A268 21100000 */   addu      $v0, $zero, $zero
.size ETPreventEnemyAttack, . - ETPreventEnemyAttack
