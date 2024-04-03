.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetCellAnimFlags
/* 55B3C 8006533C 40100400 */  sll        $v0, $a0, 1
/* 55B40 80065340 21104400 */  addu       $v0, $v0, $a0
/* 55B44 80065344 80100200 */  sll        $v0, $v0, 2
/* 55B48 80065348 21104400 */  addu       $v0, $v0, $a0
/* 55B4C 8006534C C017848F */  lw         $a0, %gp_rel(LocalCellAnims)($gp)
/* 55B50 80065350 80100200 */  sll        $v0, $v0, 2
/* 55B54 80065354 21208200 */  addu       $a0, $a0, $v0
/* 55B58 80065358 1800838C */  lw         $v1, 0x18($a0)
/* 55B5C 8006535C 00000000 */  nop
/* 55B60 80065360 25186500 */  or         $v1, $v1, $a1
/* 55B64 80065364 0800E003 */  jr         $ra
/* 55B68 80065368 180083AC */   sw        $v1, 0x18($a0)
.size SetCellAnimFlags, . - SetCellAnimFlags
