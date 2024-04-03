.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetOffsets
/* 2BD0C 8003B50C 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2BD10 8003B510 00000000 */  nop
/* 2BD14 8003B514 140040AC */  sw         $zero, 0x14($v0)
/* 2BD18 8003B518 180040AC */  sw         $zero, 0x18($v0)
/* 2BD1C 8003B51C 1C0040AC */  sw         $zero, 0x1C($v0)
/* 2BD20 8003B520 800040AC */  sw         $zero, 0x80($v0)
/* 2BD24 8003B524 920040A4 */  sh         $zero, 0x92($v0)
/* 2BD28 8003B528 0800E003 */  jr         $ra
/* 2BD2C 8003B52C 780040AC */   sw        $zero, 0x78($v0)
.size ResetOffsets, . - ResetOffsets
