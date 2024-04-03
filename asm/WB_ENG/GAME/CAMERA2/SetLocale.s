.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetLocale
/* 2BBA4 8003B3A4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BBA8 8003B3A8 FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 2BBAC 8003B3AC 0800E003 */  jr         $ra
/* 2BBB0 8003B3B0 880044AC */   sw        $a0, 0x88($v0)
.size SetLocale, . - SetLocale
