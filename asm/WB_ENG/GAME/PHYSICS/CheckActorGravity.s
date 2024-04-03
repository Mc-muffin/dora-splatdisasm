.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckActorGravity
/* 2F4C4 8003ECC4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2F4C8 8003ECC8 1000BFAF */  sw         $ra, 0x10($sp)
/* 2F4CC 8003ECCC D9F4000C */  jal        CheckGravity
/* 2F4D0 8003ECD0 6C008424 */   addiu     $a0, $a0, 0x6C
/* 2F4D4 8003ECD4 1000BF8F */  lw         $ra, 0x10($sp)
/* 2F4D8 8003ECD8 00000000 */  nop
/* 2F4DC 8003ECDC 0800E003 */  jr         $ra
/* 2F4E0 8003ECE0 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckActorGravity, . - CheckActorGravity
