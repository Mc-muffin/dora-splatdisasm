.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetNewsPaper
/* 15DC0 800255C0 0980033C */  lui        $v1, %hi(NewsPaperVramIndexes)
/* 15DC4 800255C4 F8676324 */  addiu      $v1, $v1, %lo(NewsPaperVramIndexes)
/* 15DC8 800255C8 C0100400 */  sll        $v0, $a0, 3
/* 15DCC 800255CC 21104300 */  addu       $v0, $v0, $v1
/* 15DD0 800255D0 0000458C */  lw         $a1, 0x0($v0)
/* 15DD4 800255D4 C40684AF */  sw         $a0, %gp_rel(NewsPaperGlobalType)($gp)
/* 15DD8 800255D8 981385AF */  sw         $a1, %gp_rel(newspapervramindex)($gp)
/* 15DDC 800255DC 0800E003 */  jr         $ra
/* 15DE0 800255E0 00000000 */   nop
.size SetNewsPaper, . - SetNewsPaper
