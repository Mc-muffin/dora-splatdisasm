.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_que_all_sounds_off
/* 43F30 80053730 0980023C */  lui        $v0, %hi(pxm_tticks)
/* 43F34 80053734 5858428C */  lw         $v0, %lo(pxm_tticks)($v0)
/* 43F38 80053738 00000000 */  nop
/* 43F3C 8005373C 21104400 */  addu       $v0, $v0, $a0
/* 43F40 80053740 FFFF4230 */  andi       $v0, $v0, 0xFFFF
/* 43F44 80053744 EC0F82AF */  sw         $v0, %gp_rel(pxm_tticks_all_sounds_off)($gp)
/* 43F48 80053748 0800E003 */  jr         $ra
/* 43F4C 8005374C 00000000 */   nop
.size pxm_que_all_sounds_off, . - pxm_que_all_sounds_off
