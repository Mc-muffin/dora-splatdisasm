.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ProjectileParentStunCleanup
/* 36C4C 8004644C 2801828C */  lw         $v0, 0x128($a0)
/* 36C50 80046450 0800E003 */  jr         $ra
/* 36C54 80046454 3C0040AC */   sw        $zero, 0x3C($v0)
.size ProjectileParentStunCleanup, . - ProjectileParentStunCleanup
