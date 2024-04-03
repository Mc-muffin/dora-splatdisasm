.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel strSetDefDecEnv
/* 3FDB8 8004F5B8 0100083C */  lui        $t0, (0x1E800 >> 16)
/* 3FDBC 8004F5BC 00E80835 */  ori        $t0, $t0, (0x1E800 & 0xFFFF)
/* 3FDC0 8004F5C0 0300093C */  lui        $t1, (0x35000 >> 16)
/* 3FDC4 8004F5C4 00502935 */  ori        $t1, $t1, (0x35000 & 0xFFFF)
/* 3FDC8 8004F5C8 04000A3C */  lui        $t2, (0x44000 >> 16)
/* 3FDCC 8004F5CC 00404A35 */  ori        $t2, $t2, (0x44000 & 0xFFFF)
/* 3FDD0 8004F5D0 2C0F838F */  lw         $v1, %gp_rel(Ring_Buff)($gp)
/* 3FDD4 8004F5D4 01000224 */  addiu      $v0, $zero, 0x1
/* 3FDD8 8004F5D8 280082AC */  sw         $v0, 0x28($a0)
/* 3FDDC 8004F5DC 10000224 */  addiu      $v0, $zero, 0x10
/* 3FDE0 8004F5E0 300082A4 */  sh         $v0, 0x30($a0)
/* 3FDE4 8004F5E4 00800234 */  ori        $v0, $zero, 0x8000
/* 3FDE8 8004F5E8 080080AC */  sw         $zero, 0x8($a0)
/* 3FDEC 8004F5EC 140080AC */  sw         $zero, 0x14($a0)
/* 3FDF0 8004F5F0 260080A4 */  sh         $zero, 0x26($a0)
/* 3FDF4 8004F5F4 240080A4 */  sh         $zero, 0x24($a0)
/* 3FDF8 8004F5F8 1E0080A4 */  sh         $zero, 0x1E($a0)
/* 3FDFC 8004F5FC 1C0080A4 */  sh         $zero, 0x1C($a0)
/* 3FE00 8004F600 180085A4 */  sh         $a1, 0x18($a0)
/* 3FE04 8004F604 1A0086A4 */  sh         $a2, 0x1A($a0)
/* 3FE08 8004F608 200087A4 */  sh         $a3, 0x20($a0)
/* 3FE0C 8004F60C 2C0085A4 */  sh         $a1, 0x2C($a0)
/* 3FE10 8004F610 340080AC */  sw         $zero, 0x34($a0)
/* 3FE14 8004F614 21106200 */  addu       $v0, $v1, $v0
/* 3FE18 8004F618 21406800 */  addu       $t0, $v1, $t0
/* 3FE1C 8004F61C 21486900 */  addu       $t1, $v1, $t1
/* 3FE20 8004F620 000082AC */  sw         $v0, 0x0($a0)
/* 3FE24 8004F624 040088AC */  sw         $t0, 0x4($a0)
/* 3FE28 8004F628 0C0089AC */  sw         $t1, 0xC($a0)
/* 3FE2C 8004F62C 1000A28F */  lw         $v0, 0x10($sp)
/* 3FE30 8004F630 21186A00 */  addu       $v1, $v1, $t2
/* 3FE34 8004F634 100083AC */  sw         $v1, 0x10($a0)
/* 3FE38 8004F638 0800E003 */  jr         $ra
/* 3FE3C 8004F63C 220082A4 */   sh        $v0, 0x22($a0)
.size strSetDefDecEnv, . - strSetDefDecEnv
