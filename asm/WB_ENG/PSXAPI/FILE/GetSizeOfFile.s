.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel GetSizeOfFile
/* 47ACC 800572CC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47AD0 800572D0 1000BFAF */  sw         $ra, 0x10($sp)
/* 47AD4 800572D4 425E010C */  jal        CDFile_GetSize
/* 47AD8 800572D8 00000000 */   nop
/* 47ADC 800572DC 1000BF8F */  lw         $ra, 0x10($sp)
/* 47AE0 800572E0 00000000 */  nop
/* 47AE4 800572E4 0800E003 */  jr         $ra
/* 47AE8 800572E8 1800BD27 */   addiu     $sp, $sp, 0x18
.size GetSizeOfFile, . - GetSizeOfFile
