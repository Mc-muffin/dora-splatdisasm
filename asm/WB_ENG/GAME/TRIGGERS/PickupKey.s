.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PickupKey
/* 30D70 80040570 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 30D74 80040574 1000BFAF */  sw         $ra, 0x10($sp)
/* 30D78 80040578 4B79000C */  jal        AddInventoryItem
/* 30D7C 8004057C 00000000 */   nop
/* 30D80 80040580 1000BF8F */  lw         $ra, 0x10($sp)
/* 30D84 80040584 00000000 */  nop
/* 30D88 80040588 0800E003 */  jr         $ra
/* 30D8C 8004058C 1800BD27 */   addiu     $sp, $sp, 0x18
.size PickupKey, . - PickupKey
