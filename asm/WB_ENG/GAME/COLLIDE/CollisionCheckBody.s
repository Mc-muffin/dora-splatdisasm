.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CollisionCheckBody
/* 2FA7C 8003F27C 6C008624 */  addiu      $a2, $a0, 0x6C
/* 2FA80 8003F280 6C00A724 */  addiu      $a3, $a1, 0x6C
/* 2FA84 8003F284 0400C28C */  lw         $v0, 0x4($a2)
/* 2FA88 8003F288 0400E38C */  lw         $v1, 0x4($a3)
/* 2FA8C 8003F28C 00000000 */  nop
/* 2FA90 8003F290 23104300 */  subu       $v0, $v0, $v1
/* 2FA94 8003F294 18004200 */  mult       $v0, $v0
/* 2FA98 8003F298 0C00C38C */  lw         $v1, 0xC($a2)
/* 2FA9C 8003F29C 0C00E28C */  lw         $v0, 0xC($a3)
/* 2FAA0 8003F2A0 12480000 */  mflo       $t1
/* 2FAA4 8003F2A4 23186200 */  subu       $v1, $v1, $v0
/* 2FAA8 8003F2A8 00000000 */  nop
/* 2FAAC 8003F2AC 18006300 */  mult       $v1, $v1
/* 2FAB0 8003F2B0 5000828C */  lw         $v0, 0x50($a0)
/* 2FAB4 8003F2B4 5000A48C */  lw         $a0, 0x50($a1)
/* 2FAB8 8003F2B8 12180000 */  mflo       $v1
/* 2FABC 8003F2BC 21104400 */  addu       $v0, $v0, $a0
/* 2FAC0 8003F2C0 00000000 */  nop
/* 2FAC4 8003F2C4 18004200 */  mult       $v0, $v0
/* 2FAC8 8003F2C8 21182301 */  addu       $v1, $t1, $v1
/* 2FACC 8003F2CC 12400000 */  mflo       $t0
/* 2FAD0 8003F2D0 2A180301 */  slt        $v1, $t0, $v1
/* 2FAD4 8003F2D4 0A006014 */  bnez       $v1, .L8003F300
/* 2FAD8 8003F2D8 21100000 */   addu      $v0, $zero, $zero
/* 2FADC 8003F2DC 0800C28C */  lw         $v0, 0x8($a2)
/* 2FAE0 8003F2E0 0800E38C */  lw         $v1, 0x8($a3)
/* 2FAE4 8003F2E4 00000000 */  nop
/* 2FAE8 8003F2E8 23104300 */  subu       $v0, $v0, $v1
/* 2FAEC 8003F2EC 18004200 */  mult       $v0, $v0
/* 2FAF0 8003F2F0 12100000 */  mflo       $v0
/* 2FAF4 8003F2F4 21102201 */  addu       $v0, $t1, $v0
/* 2FAF8 8003F2F8 2A100201 */  slt        $v0, $t0, $v0
/* 2FAFC 8003F2FC 01004238 */  xori       $v0, $v0, 0x1
.L8003F300:
/* 2FB00 8003F300 0800E003 */  jr         $ra
/* 2FB04 8003F304 00000000 */   nop
.size CollisionCheckBody, . - CollisionCheckBody
