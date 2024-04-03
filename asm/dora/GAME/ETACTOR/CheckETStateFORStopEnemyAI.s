.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckETStateFORStopEnemyAI
/* AA00 8001A200 0980033C */  lui        $v1, %hi(ETActor + 0xC)
/* AA04 8001A204 BC5A638C */  lw         $v1, %lo(ETActor + 0xC)($v1)
/* AA08 8001A208 00000000 */  nop
/* AA0C 8001A20C F0FF6224 */  addiu      $v0, $v1, -0x10
/* AA10 8001A210 0200422C */  sltiu      $v0, $v0, 0x2
/* AA14 8001A214 03004014 */  bnez       $v0, .L8001A224
/* AA18 8001A218 06000224 */   addiu     $v0, $zero, 0x6
/* AA1C 8001A21C 03006214 */  bne        $v1, $v0, .L8001A22C
/* AA20 8001A220 00000000 */   nop
.L8001A224:
/* AA24 8001A224 0800E003 */  jr         $ra
/* AA28 8001A228 01000224 */   addiu     $v0, $zero, 0x1
.L8001A22C:
/* AA2C 8001A22C 0800E003 */  jr         $ra
/* AA30 8001A230 21100000 */   addu      $v0, $zero, $zero
.size CheckETStateFORStopEnemyAI, . - CheckETStateFORStopEnemyAI
