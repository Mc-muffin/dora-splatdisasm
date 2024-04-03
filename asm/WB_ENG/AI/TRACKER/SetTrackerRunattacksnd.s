.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetTrackerRunattacksnd
/* 376D8 80046ED8 2801828C */  lw         $v0, 0x128($a0)
/* 376DC 80046EDC 0800E003 */  jr         $ra
/* 376E0 80046EE0 0C0045AC */   sw        $a1, 0xC($v0)
.size SetTrackerRunattacksnd, . - SetTrackerRunattacksnd
