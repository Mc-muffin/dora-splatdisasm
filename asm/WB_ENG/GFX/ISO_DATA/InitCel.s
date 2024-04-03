.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitCel
/* 3DEF4 8004D6F4 0000828C */  lw         $v0, 0x0($a0)
/* 3DEF8 8004D6F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 3DEFC 8004D6FC 1000BFAF */  sw         $ra, 0x10($sp)
/* 3DF00 8004D700 2C00838C */  lw         $v1, 0x2C($a0)
/* 3DF04 8004D704 641584AF */  sw         $a0, %gp_rel(CEL_ADDR)($gp)
/* 3DF08 8004D708 21108200 */  addu       $v0, $a0, $v0
/* 3DF0C 8004D70C 000082AC */  sw         $v0, 0x0($a0)
/* 3DF10 8004D710 0800828C */  lw         $v0, 0x8($a0)
/* 3DF14 8004D714 21188300 */  addu       $v1, $a0, $v1
/* 3DF18 8004D718 2C0083AC */  sw         $v1, 0x2C($a0)
/* 3DF1C 8004D71C 0C00838C */  lw         $v1, 0xC($a0)
/* 3DF20 8004D720 21108200 */  addu       $v0, $a0, $v0
/* 3DF24 8004D724 080082AC */  sw         $v0, 0x8($a0)
/* 3DF28 8004D728 1000828C */  lw         $v0, 0x10($a0)
/* 3DF2C 8004D72C 21188300 */  addu       $v1, $a0, $v1
/* 3DF30 8004D730 0C0083AC */  sw         $v1, 0xC($a0)
/* 3DF34 8004D734 1400838C */  lw         $v1, 0x14($a0)
/* 3DF38 8004D738 21108200 */  addu       $v0, $a0, $v0
/* 3DF3C 8004D73C 100082AC */  sw         $v0, 0x10($a0)
/* 3DF40 8004D740 1800828C */  lw         $v0, 0x18($a0)
/* 3DF44 8004D744 21188300 */  addu       $v1, $a0, $v1
/* 3DF48 8004D748 140083AC */  sw         $v1, 0x14($a0)
/* 3DF4C 8004D74C 1C00838C */  lw         $v1, 0x1C($a0)
/* 3DF50 8004D750 21108200 */  addu       $v0, $a0, $v0
/* 3DF54 8004D754 180082AC */  sw         $v0, 0x18($a0)
/* 3DF58 8004D758 2000828C */  lw         $v0, 0x20($a0)
/* 3DF5C 8004D75C 21188300 */  addu       $v1, $a0, $v1
/* 3DF60 8004D760 1C0083AC */  sw         $v1, 0x1C($a0)
/* 3DF64 8004D764 2400838C */  lw         $v1, 0x24($a0)
/* 3DF68 8004D768 21108200 */  addu       $v0, $a0, $v0
/* 3DF6C 8004D76C 21188300 */  addu       $v1, $a0, $v1
/* 3DF70 8004D770 200082AC */  sw         $v0, 0x20($a0)
/* 3DF74 8004D774 3D33010C */  jal        SetUpPolygons
/* 3DF78 8004D778 240083AC */   sw        $v1, 0x24($a0)
/* 3DF7C 8004D77C 1000BF8F */  lw         $ra, 0x10($sp)
/* 3DF80 8004D780 00000000 */  nop
/* 3DF84 8004D784 0800E003 */  jr         $ra
/* 3DF88 8004D788 1800BD27 */   addiu     $sp, $sp, 0x18
.size InitCel, . - InitCel
