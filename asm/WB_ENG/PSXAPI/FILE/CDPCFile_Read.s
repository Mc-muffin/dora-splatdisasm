.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDPCFile_Read
/* 47C18 80057418 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47C1C 8005741C 1000BFAF */  sw         $ra, 0x10($sp)
/* 47C20 80057420 845A010C */  jal        CDFile_Read
/* 47C24 80057424 00000000 */   nop
/* 47C28 80057428 1000BF8F */  lw         $ra, 0x10($sp)
/* 47C2C 8005742C 00000000 */  nop
/* 47C30 80057430 0800E003 */  jr         $ra
/* 47C34 80057434 1800BD27 */   addiu     $sp, $sp, 0x18
.size CDPCFile_Read, . - CDPCFile_Read
