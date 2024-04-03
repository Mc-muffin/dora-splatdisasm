.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PlayMovie
/* 401BC 8004F9BC 0000828C */  lw         $v0, 0x0($a0)
/* 401C0 8004F9C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 401C4 8004F9C4 03004010 */  beqz       $v0, .L8004F9D4
/* 401C8 8004F9C8 1000BFAF */   sw        $ra, 0x10($sp)
/* 401CC 8004F9CC B43A010C */  jal        InitMovie
/* 401D0 8004F9D0 21280000 */   addu      $a1, $zero, $zero
.L8004F9D4:
/* 401D4 8004F9D4 1000BF8F */  lw         $ra, 0x10($sp)
/* 401D8 8004F9D8 00000000 */  nop
/* 401DC 8004F9DC 0800E003 */  jr         $ra
/* 401E0 8004F9E0 1800BD27 */   addiu     $sp, $sp, 0x18
.size PlayMovie, . - PlayMovie
