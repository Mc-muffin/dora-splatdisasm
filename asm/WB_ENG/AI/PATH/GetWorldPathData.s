.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetWorldPathData
/* 35550 80044D50 40180400 */  sll        $v1, $a0, 1
/* 35554 80044D54 21186400 */  addu       $v1, $v1, $a0
/* 35558 80044D58 EC14828F */  lw         $v0, %gp_rel(WorldPaths)($gp)
/* 3555C 80044D5C 80180300 */  sll        $v1, $v1, 2
/* 35560 80044D60 0800E003 */  jr         $ra
/* 35564 80044D64 21104300 */   addu      $v0, $v0, $v1
.size GetWorldPathData, . - GetWorldPathData
