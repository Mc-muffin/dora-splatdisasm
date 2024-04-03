.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawHUDActor
/* EFFC 8001E7FC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* F000 8001E800 1000BFAF */  sw         $ra, 0x10($sp)
/* F004 8001E804 B19A010C */  jal        DrawActor
/* F008 8001E808 21280000 */   addu      $a1, $zero, $zero
/* F00C 8001E80C 1000BF8F */  lw         $ra, 0x10($sp)
/* F010 8001E810 00000000 */  nop
/* F014 8001E814 0800E003 */  jr         $ra
/* F018 8001E818 1800BD27 */   addiu     $sp, $sp, 0x18
.size DrawHUDActor, . - DrawHUDActor
