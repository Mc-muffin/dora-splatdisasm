.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetSoundCellAnimation
/* 55B6C 8006536C 40100400 */  sll        $v0, $a0, 1
/* 55B70 80065370 21104400 */  addu       $v0, $v0, $a0
/* 55B74 80065374 80100200 */  sll        $v0, $v0, 2
/* 55B78 80065378 21104400 */  addu       $v0, $v0, $a0
/* 55B7C 8006537C C017838F */  lw         $v1, %gp_rel(LocalCellAnims)($gp)
/* 55B80 80065380 80100200 */  sll        $v0, $v0, 2
/* 55B84 80065384 21186200 */  addu       $v1, $v1, $v0
/* 55B88 80065388 20006294 */  lhu        $v0, 0x20($v1)
/* 55B8C 8006538C 0800E003 */  jr         $ra
/* 55B90 80065390 00000000 */   nop
.size GetSoundCellAnimation, . - GetSoundCellAnimation
