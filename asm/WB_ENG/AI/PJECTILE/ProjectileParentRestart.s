.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ProjectileParentRestart
/* 36C18 80046418 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 36C1C 8004641C 1000BFAF */  sw         $ra, 0x10($sp)
/* 36C20 80046420 2801828C */  lw         $v0, 0x128($a0)
/* 36C24 80046424 01000324 */  addiu      $v1, $zero, 0x1
/* 36C28 80046428 3C0040AC */  sw         $zero, 0x3C($v0)
/* 36C2C 8004642C 400040AC */  sw         $zero, 0x40($v0)
/* 36C30 80046430 440043AC */  sw         $v1, 0x44($v0)
/* 36C34 80046434 DC28010C */  jal        GenericReInit
/* 36C38 80046438 540040AC */   sw        $zero, 0x54($v0)
/* 36C3C 8004643C 1000BF8F */  lw         $ra, 0x10($sp)
/* 36C40 80046440 00000000 */  nop
/* 36C44 80046444 0800E003 */  jr         $ra
/* 36C48 80046448 1800BD27 */   addiu     $sp, $sp, 0x18
.size ProjectileParentRestart, . - ProjectileParentRestart
