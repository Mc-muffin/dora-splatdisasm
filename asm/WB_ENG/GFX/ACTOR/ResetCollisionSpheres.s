.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ResetCollisionSpheres
/* 527A0 80061FA0 3C00848C */  lw         $a0, 0x3C($a0)
/* 527A4 80061FA4 01000324 */  addiu      $v1, $zero, 0x1
/* 527A8 80061FA8 1C008224 */  addiu      $v0, $a0, 0x1C
.L80061FAC:
/* 527AC 80061FAC 000040AC */  sw         $zero, 0x0($v0)
/* 527B0 80061FB0 FFFF6324 */  addiu      $v1, $v1, -0x1
/* 527B4 80061FB4 FDFF6104 */  bgez       $v1, .L80061FAC
/* 527B8 80061FB8 E8FF4224 */   addiu     $v0, $v0, -0x18
/* 527BC 80061FBC 000080AC */  sw         $zero, 0x0($a0)
/* 527C0 80061FC0 0800E003 */  jr         $ra
/* 527C4 80061FC4 340080AC */   sw        $zero, 0x34($a0)
.size ResetCollisionSpheres, . - ResetCollisionSpheres
