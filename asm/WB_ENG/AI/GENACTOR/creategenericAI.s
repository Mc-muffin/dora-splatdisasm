.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel creategenericAI
/* 3AADC 8004A2DC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3AAE0 8004A2E0 1000B0AF */  sw         $s0, 0x10($sp)
/* 3AAE4 8004A2E4 21808000 */  addu       $s0, $a0, $zero
/* 3AAE8 8004A2E8 1400B1AF */  sw         $s1, 0x14($sp)
/* 3AAEC 8004A2EC 2188A000 */  addu       $s1, $a1, $zero
/* 3AAF0 8004A2F0 1800BFAF */  sw         $ra, 0x18($sp)
/* 3AAF4 8004A2F4 2B3F010C */  jal        new_malloc
/* 3AAF8 8004A2F8 40000424 */   addiu     $a0, $zero, 0x40
/* 3AAFC 8004A2FC 8000033C */  lui        $v1, (0x800000 >> 16)
/* 3AB00 8004A300 040040AC */  sw         $zero, 0x4($v0)
/* 3AB04 8004A304 080040AC */  sw         $zero, 0x8($v0)
/* 3AB08 8004A308 000040AC */  sw         $zero, 0x0($v0)
/* 3AB0C 8004A30C 0C0040AC */  sw         $zero, 0xC($v0)
/* 3AB10 8004A310 2C0040AC */  sw         $zero, 0x2C($v0)
/* 3AB14 8004A314 300040AC */  sw         $zero, 0x30($v0)
/* 3AB18 8004A318 380051AC */  sw         $s1, 0x38($v0)
/* 3AB1C 8004A31C 180002AE */  sw         $v0, 0x18($s0)
/* 3AB20 8004A320 1C00028E */  lw         $v0, 0x1C($s0)
/* 3AB24 8004A324 1800BF8F */  lw         $ra, 0x18($sp)
/* 3AB28 8004A328 1400B18F */  lw         $s1, 0x14($sp)
/* 3AB2C 8004A32C 25104300 */  or         $v0, $v0, $v1
/* 3AB30 8004A330 1C0002AE */  sw         $v0, 0x1C($s0)
/* 3AB34 8004A334 1000B08F */  lw         $s0, 0x10($sp)
/* 3AB38 8004A338 0800E003 */  jr         $ra
/* 3AB3C 8004A33C 2000BD27 */   addiu     $sp, $sp, 0x20
.size creategenericAI, . - creategenericAI
