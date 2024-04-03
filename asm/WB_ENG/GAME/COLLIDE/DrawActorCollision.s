.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawActorCollision
/* 2F9A8 8003F1A8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 2F9AC 8003F1AC 21108000 */  addu       $v0, $a0, $zero
/* 2F9B0 8003F1B0 FF000424 */  addiu      $a0, $zero, 0xFF
/* 2F9B4 8003F1B4 FF000524 */  addiu      $a1, $zero, 0xFF
/* 2F9B8 8003F1B8 FF000624 */  addiu      $a2, $zero, 0xFF
/* 2F9BC 8003F1BC 1800B0AF */  sw         $s0, 0x18($sp)
/* 2F9C0 8003F1C0 2000BFAF */  sw         $ra, 0x20($sp)
/* 2F9C4 8003F1C4 1C00B1AF */  sw         $s1, 0x1C($sp)
/* 2F9C8 8003F1C8 5000518C */  lw         $s1, 0x50($v0)
/* 2F9CC 8003F1CC C989010C */  jal        SetLineColor
/* 2F9D0 8003F1D0 6C005024 */   addiu     $s0, $v0, 0x6C
/* 2F9D4 8003F1D4 0400048E */  lw         $a0, 0x4($s0)
/* 2F9D8 8003F1D8 0800058E */  lw         $a1, 0x8($s0)
/* 2F9DC 8003F1DC 0C00068E */  lw         $a2, 0xC($s0)
/* 2F9E0 8003F1E0 23209100 */  subu       $a0, $a0, $s1
/* 2F9E4 8003F1E4 40381100 */  sll        $a3, $s1, 1
/* 2F9E8 8003F1E8 2328A700 */  subu       $a1, $a1, $a3
/* 2F9EC 8003F1EC 2330D100 */  subu       $a2, $a2, $s1
/* 2F9F0 8003F1F0 1000A7AF */  sw         $a3, 0x10($sp)
/* 2F9F4 8003F1F4 CF89010C */  jal        DrawBox
/* 2F9F8 8003F1F8 1400A7AF */   sw        $a3, 0x14($sp)
/* 2F9FC 8003F1FC 2000BF8F */  lw         $ra, 0x20($sp)
/* 2FA00 8003F200 1C00B18F */  lw         $s1, 0x1C($sp)
/* 2FA04 8003F204 1800B08F */  lw         $s0, 0x18($sp)
/* 2FA08 8003F208 0800E003 */  jr         $ra
/* 2FA0C 8003F20C 2800BD27 */   addiu     $sp, $sp, 0x28
.size DrawActorCollision, . - DrawActorCollision
