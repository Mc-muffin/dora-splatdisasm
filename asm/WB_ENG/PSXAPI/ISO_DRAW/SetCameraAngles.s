.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetCameraAngles
/* 56DB8 800665B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 56DBC 800665BC 0A80023C */  lui        $v0, %hi(GeomEnv)
/* 56DC0 800665C0 40B14224 */  addiu      $v0, $v0, %lo(GeomEnv)
/* 56DC4 800665C4 1800BFAF */  sw         $ra, 0x18($sp)
/* 56DC8 800665C8 1400B1AF */  sw         $s1, 0x14($sp)
/* 56DCC 800665CC 1000B0AF */  sw         $s0, 0x10($sp)
/* 56DD0 800665D0 0800518C */  lw         $s1, 0x8($v0)
/* 56DD4 800665D4 3800438C */  lw         $v1, 0x38($v0)
/* 56DD8 800665D8 1000508C */  lw         $s0, 0x10($v0)
/* 56DDC 800665DC 23882302 */  subu       $s1, $s1, $v1
/* 56DE0 800665E0 4000438C */  lw         $v1, 0x40($v0)
/* 56DE4 800665E4 21202002 */  addu       $a0, $s1, $zero
/* 56DE8 800665E8 23800302 */  subu       $s0, $s0, $v1
/* 56DEC 800665EC 63EF010C */  jal        ratan2
/* 56DF0 800665F0 21280002 */   addu      $a1, $s0, $zero
/* 56DF4 800665F4 18003102 */  mult       $s1, $s1
/* 56DF8 800665F8 12880000 */  mflo       $s1
/* 56DFC 800665FC 00000000 */  nop
/* 56E00 80066600 00000000 */  nop
/* 56E04 80066604 18001002 */  mult       $s0, $s0
/* 56E08 80066608 8C12838F */  lw         $v1, %gp_rel(eggzeroangangle)($gp)
/* 56E0C 8006660C FF0F4230 */  andi       $v0, $v0, 0xFFF
/* 56E10 80066610 21104300 */  addu       $v0, $v0, $v1
/* 56E14 80066614 7C1782AF */  sw         $v0, %gp_rel(zeroangleXZ)($gp)
/* 56E18 80066618 12800000 */  mflo       $s0
/* 56E1C 8006661C C7EB010C */  jal        SquareRoot0
/* 56E20 80066620 21203002 */   addu      $a0, $s1, $s0
/* 56E24 80066624 1800BF8F */  lw         $ra, 0x18($sp)
/* 56E28 80066628 1400B18F */  lw         $s1, 0x14($sp)
/* 56E2C 8006662C 1000B08F */  lw         $s0, 0x10($sp)
/* 56E30 80066630 801782AF */  sw         $v0, %gp_rel(camhyp)($gp)
/* 56E34 80066634 0800E003 */  jr         $ra
/* 56E38 80066638 2000BD27 */   addiu     $sp, $sp, 0x20
.size SetCameraAngles, . - SetCameraAngles
