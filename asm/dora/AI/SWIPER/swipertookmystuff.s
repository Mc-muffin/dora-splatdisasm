.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel swipertookmystuff
/* 27038 80036838 F409828F */  lw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 2703C 8003683C 00000000 */  nop
/* 27040 80036840 01004224 */  addiu      $v0, $v0, 0x1
/* 27044 80036844 F40982AF */  sw         $v0, %gp_rel(SwiperWaitState)($gp)
/* 27048 80036848 0800E003 */  jr         $ra
/* 2704C 8003684C 00000000 */   nop
.size swipertookmystuff, . - swipertookmystuff
