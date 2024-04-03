.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel FadeOutAll
/* 4C234 8005BA34 4411828F */  lw         $v0, %gp_rel(LoadingVol)($gp)
/* 4C238 8005BA38 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4C23C 8005BA3C 1000BFAF */  sw         $ra, 0x10($sp)
/* 4C240 8005BA40 FCFF4224 */  addiu      $v0, $v0, -0x4
/* 4C244 8005BA44 441182AF */  sw         $v0, %gp_rel(LoadingVol)($gp)
/* 4C248 8005BA48 02004104 */  bgez       $v0, .L8005BA54
/* 4C24C 8005BA4C 00000000 */   nop
/* 4C250 8005BA50 441180AF */  sw         $zero, %gp_rel(LoadingVol)($gp)
.L8005BA54:
/* 4C254 8005BA54 4411828F */  lw         $v0, %gp_rel(LoadingVol)($gp)
/* 4C258 8005BA58 00000000 */  nop
/* 4C25C 8005BA5C C0210200 */  sll        $a0, $v0, 7
/* 4C260 8005BA60 21208200 */  addu       $a0, $a0, $v0
/* 4C264 8005BA64 00240400 */  sll        $a0, $a0, 16
/* 4C268 8005BA68 2B3D010C */  jal        mov_setvolume
/* 4C26C 8005BA6C 03240400 */   sra       $a0, $a0, 16
/* 4C270 8005BA70 1000BF8F */  lw         $ra, 0x10($sp)
/* 4C274 8005BA74 00000000 */  nop
/* 4C278 8005BA78 0800E003 */  jr         $ra
/* 4C27C 8005BA7C 1800BD27 */   addiu     $sp, $sp, 0x18
.size FadeOutAll, . - FadeOutAll
