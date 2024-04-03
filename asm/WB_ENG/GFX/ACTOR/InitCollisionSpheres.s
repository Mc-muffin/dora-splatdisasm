.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCollisionSpheres
/* 52614 80061E14 21388000 */  addu       $a3, $a0, $zero
/* 52618 80061E18 2001E28C */  lw         $v0, 0x120($a3)
/* 5261C 80061E1C 00000000 */  nop
/* 52620 80061E20 08004894 */  lhu        $t0, 0x8($v0)
/* 52624 80061E24 00000000 */  nop
/* 52628 80061E28 0E000011 */  beqz       $t0, .L80061E64
/* 5262C 80061E2C 21300000 */   addu      $a2, $zero, $zero
.L80061E30:
/* 52630 80061E30 2001E28C */  lw         $v0, 0x120($a3)
/* 52634 80061E34 40290600 */  sll        $a1, $a2, 5
/* 52638 80061E38 2000438C */  lw         $v1, 0x20($v0)
/* 5263C 80061E3C 0000E48C */  lw         $a0, 0x0($a3)
/* 52640 80061E40 21186500 */  addu       $v1, $v1, $a1
/* 52644 80061E44 100064AC */  sw         $a0, 0x10($v1)
/* 52648 80061E48 0400E28C */  lw         $v0, 0x4($a3)
/* 5264C 80061E4C 0100C624 */  addiu      $a2, $a2, 0x1
/* 52650 80061E50 140062AC */  sw         $v0, 0x14($v1)
/* 52654 80061E54 0800E48C */  lw         $a0, 0x8($a3)
/* 52658 80061E58 2A10C800 */  slt        $v0, $a2, $t0
/* 5265C 80061E5C F4FF4014 */  bnez       $v0, .L80061E30
/* 52660 80061E60 180064AC */   sw        $a0, 0x18($v1)
.L80061E64:
/* 52664 80061E64 0800E003 */  jr         $ra
/* 52668 80061E68 00000000 */   nop
.size InitCollisionSpheres, . - InitCollisionSpheres
