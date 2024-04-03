.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetLocale
/* 2BADC 8003B2DC 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BAE0 8003B2E0 FFFF8430 */  andi       $a0, $a0, 0xFFFF
/* 2BAE4 8003B2E4 860044A4 */  sh         $a0, 0x86($v0)
/* 2BAE8 8003B2E8 880044AC */  sw         $a0, 0x88($v0)
/* 2BAEC 8003B2EC 0800E003 */  jr         $ra
/* 2BAF0 8003B2F0 040045A4 */   sh        $a1, 0x4($v0)
.size ResetLocale, . - ResetLocale
