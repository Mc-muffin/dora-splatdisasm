.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetLocaleVelocity
/* 2BF60 8003B760 00240400 */  sll        $a0, $a0, 16
/* 2BF64 8003B764 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BF68 8003B768 03240400 */  sra        $a0, $a0, 16
/* 2BF6C 8003B76C 0800E003 */  jr         $ra
/* 2BF70 8003B770 8C0044AC */   sw        $a0, 0x8C($v0)
.size SetLocaleVelocity, . - SetLocaleVelocity
