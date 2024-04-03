.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetNumLevels
/* 18548 80027D48 0880033C */  lui        $v1, %hi(WorldList)
/* 1854C 80027D4C 8407848F */  lw         $a0, %gp_rel(gmenuworld)($gp)
/* 18550 80027D50 6C646324 */  addiu      $v1, $v1, %lo(WorldList)
/* 18554 80027D54 80100400 */  sll        $v0, $a0, 2
/* 18558 80027D58 21104400 */  addu       $v0, $v0, $a0
/* 1855C 80027D5C 80100200 */  sll        $v0, $v0, 2
/* 18560 80027D60 21186200 */  addu       $v1, $v1, $v0
/* 18564 80027D64 0400628C */  lw         $v0, 0x4($v1)
/* 18568 80027D68 0800E003 */  jr         $ra
/* 1856C 80027D6C 00000000 */   nop
.size GetNumLevels, . - GetNumLevels
