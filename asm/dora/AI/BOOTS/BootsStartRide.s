.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel BootsStartRide
/* 26008 80035808 0A80033C */  lui        $v1, %hi(boots_aidata)
/* 2600C 8003580C 06000224 */  addiu      $v0, $zero, 0x6
/* 26010 80035810 0800E003 */  jr         $ra
/* 26014 80035814 588F62AC */   sw        $v0, %lo(boots_aidata)($v1)
.size BootsStartRide, . - BootsStartRide
