.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_clock_h
/* 43120 80052920 0C16828F */  lw         $v0, %gp_rel(pxm_Vtticks)($gp)
/* 43124 80052924 00000000 */  nop
/* 43128 80052928 01004224 */  addiu      $v0, $v0, 0x1
/* 4312C 8005292C 0C1682AF */  sw         $v0, %gp_rel(pxm_Vtticks)($gp)
/* 43130 80052930 0C16838F */  lw         $v1, %gp_rel(pxm_Vtticks)($gp)
/* 43134 80052934 00000000 */  nop
/* 43138 80052938 F41583AF */  sw         $v1, %gp_rel(pxm_tticks)($gp)
/* 4313C 8005293C F415848F */  lw         $a0, %gp_rel(pxm_tticks)($gp)
/* 43140 80052940 0100023C */  lui        $v0, (0x10000 >> 16)
/* 43144 80052944 03008214 */  bne        $a0, $v0, .L80052954
/* 43148 80052948 00000000 */   nop
/* 4314C 8005294C 0C1680AF */  sw         $zero, %gp_rel(pxm_Vtticks)($gp)
/* 43150 80052950 F41580AF */  sw         $zero, %gp_rel(pxm_tticks)($gp)
.L80052954:
/* 43154 80052954 2416828F */  lw         $v0, %gp_rel(pxm_tjif)($gp)
/* 43158 80052958 1A168397 */  lhu        $v1, %gp_rel(pxm_timebase)($gp)
/* 4315C 8005295C 01004224 */  addiu      $v0, $v0, 0x1
/* 43160 80052960 241682AF */  sw         $v0, %gp_rel(pxm_tjif)($gp)
/* 43164 80052964 2416828F */  lw         $v0, %gp_rel(pxm_tjif)($gp)
/* 43168 80052968 041680A3 */  sb         $zero, %gp_rel(pxm_stepcontrol)($gp)
/* 4316C 8005296C 2B104300 */  sltu       $v0, $v0, $v1
/* 43170 80052970 10004014 */  bnez       $v0, .L800529B4
/* 43174 80052974 00000000 */   nop
/* 43178 80052978 241680AF */  sw         $zero, %gp_rel(pxm_tjif)($gp)
/* 4317C 8005297C 2816828F */  lw         $v0, %gp_rel(pxm_tsec)($gp)
/* 43180 80052980 00000000 */  nop
/* 43184 80052984 01004224 */  addiu      $v0, $v0, 0x1
/* 43188 80052988 281682AF */  sw         $v0, %gp_rel(pxm_tsec)($gp)
/* 4318C 8005298C 2816838F */  lw         $v1, %gp_rel(pxm_tsec)($gp)
/* 43190 80052990 00000000 */  nop
/* 43194 80052994 3C00632C */  sltiu      $v1, $v1, 0x3C
/* 43198 80052998 06006014 */  bnez       $v1, .L800529B4
/* 4319C 8005299C 00000000 */   nop
/* 431A0 800529A0 281680AF */  sw         $zero, %gp_rel(pxm_tsec)($gp)
/* 431A4 800529A4 2C16828F */  lw         $v0, %gp_rel(pxm_tmin)($gp)
/* 431A8 800529A8 00000000 */  nop
/* 431AC 800529AC 01004224 */  addiu      $v0, $v0, 0x1
/* 431B0 800529B0 2C1682AF */  sw         $v0, %gp_rel(pxm_tmin)($gp)
.L800529B4:
/* 431B4 800529B4 0800E003 */  jr         $ra
/* 431B8 800529B8 00000000 */   nop
.size pxm_clock_h, . - pxm_clock_h
