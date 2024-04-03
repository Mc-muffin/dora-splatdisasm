.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PushCel
/* 3EFCC 8004E7CC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3EFD0 8004E7D0 1800B2AF */  sw         $s2, 0x18($sp)
/* 3EFD4 8004E7D4 21908000 */  addu       $s2, $a0, $zero
/* 3EFD8 8004E7D8 1400B1AF */  sw         $s1, 0x14($sp)
/* 3EFDC 8004E7DC 2188A000 */  addu       $s1, $a1, $zero
/* 3EFE0 8004E7E0 1000B0AF */  sw         $s0, 0x10($sp)
/* 3EFE4 8004E7E4 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 3EFE8 8004E7E8 1694010C */  jal        GetCelIndex
/* 3EFEC 8004E7EC 2180C000 */   addu      $s0, $a2, $zero
/* 3EFF0 8004E7F0 21204002 */  addu       $a0, $s2, $zero
/* 3EFF4 8004E7F4 21282002 */  addu       $a1, $s1, $zero
/* 3EFF8 8004E7F8 21300002 */  addu       $a2, $s0, $zero
/* 3EFFC 8004E7FC 0A80083C */  lui        $t0, %hi(CelStack)
/* 3F000 8004E800 240E878F */  lw         $a3, %gp_rel(EditCel)($gp)
/* 3F004 8004E804 306B0325 */  addiu      $v1, $t0, %lo(CelStack)
/* 3F008 8004E808 0C0062A4 */  sh         $v0, 0xC($v1)
/* 3F00C 8004E80C 306B12AD */  sw         $s2, %lo(CelStack)($t0)
/* 3F010 8004E810 040071AC */  sw         $s1, 0x4($v1)
/* 3F014 8004E814 2C94010C */  jal        SetCelIndex
/* 3F018 8004E818 080070AC */   sw        $s0, 0x8($v1)
/* 3F01C 8004E81C 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 3F020 8004E820 1800B28F */  lw         $s2, 0x18($sp)
/* 3F024 8004E824 1400B18F */  lw         $s1, 0x14($sp)
/* 3F028 8004E828 1000B08F */  lw         $s0, 0x10($sp)
/* 3F02C 8004E82C 0800E003 */  jr         $ra
/* 3F030 8004E830 2000BD27 */   addiu     $sp, $sp, 0x20
.size PushCel, . - PushCel
