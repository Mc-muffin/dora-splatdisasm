.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel cdplayF
/* 4F798 8005EF98 4017828F */  lw         $v0, %gp_rel(theXAFile)($gp)
/* 4F79C 8005EF9C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4F7A0 8005EFA0 1800B0AF */  sw         $s0, 0x18($sp)
/* 4F7A4 8005EFA4 FF009030 */  andi       $s0, $a0, 0xFF
/* 4F7A8 8005EFA8 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 4F7AC 8005EFAC 0800448C */  lw         $a0, 0x8($v0)
/* 4F7B0 8005EFB0 4BD2010C */  jal        CdIntToPos
/* 4F7B4 8005EFB4 1000A527 */   addiu     $a1, $sp, 0x10
/* 4F7B8 8005EFB8 21200002 */  addu       $a0, $s0, $zero
/* 4F7BC 8005EFBC 12D3010C */  jal        CdControlF
/* 4F7C0 8005EFC0 1000A527 */   addiu     $a1, $sp, 0x10
/* 4F7C4 8005EFC4 4017838F */  lw         $v1, %gp_rel(theXAFile)($gp)
/* 4F7C8 8005EFC8 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 4F7CC 8005EFCC 1800B08F */  lw         $s0, 0x18($sp)
/* 4F7D0 8005EFD0 0800648C */  lw         $a0, 0x8($v1)
/* 4F7D4 8005EFD4 21100000 */  addu       $v0, $zero, $zero
/* 4F7D8 8005EFD8 100064AC */  sw         $a0, 0x10($v1)
/* 4F7DC 8005EFDC 140064AC */  sw         $a0, 0x14($v1)
/* 4F7E0 8005EFE0 0800E003 */  jr         $ra
/* 4F7E4 8005EFE4 2000BD27 */   addiu     $sp, $sp, 0x20
.size cdplayF, . - cdplayF
