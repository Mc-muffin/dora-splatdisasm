.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetAltitudeOffset
/* 2BCD4 8003B4D4 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BCD8 8003B4D8 0800E003 */  jr         $ra
/* 2BCDC 8003B4DC 780044AC */   sw        $a0, 0x78($v0)
.size SetAltitudeOffset, . - SetAltitudeOffset
