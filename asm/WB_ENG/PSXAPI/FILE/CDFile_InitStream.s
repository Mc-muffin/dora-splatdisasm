.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CDFile_InitStream
/* 47B9C 8005739C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 47BA0 800573A0 1000BFAF */  sw         $ra, 0x10($sp)
/* 47BA4 800573A4 2B3F010C */  jal        new_malloc
/* 47BA8 800573A8 00300424 */   addiu     $a0, $zero, 0x3000
/* 47BAC 800573AC 1000BF8F */  lw         $ra, 0x10($sp)
/* 47BB0 800573B0 941682AF */  sw         $v0, %gp_rel(CDStreamBuffer)($gp)
/* 47BB4 800573B4 2B100200 */  sltu       $v0, $zero, $v0
/* 47BB8 800573B8 0800E003 */  jr         $ra
/* 47BBC 800573BC 1800BD27 */   addiu     $sp, $sp, 0x18
.size CDFile_InitStream, . - CDFile_InitStream
