.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_init
/* 44438 80053C38 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4443C 80053C3C 1000B0AF */  sw         $s0, 0x10($sp)
/* 44440 80053C40 21808000 */  addu       $s0, $a0, $zero
/* 44444 80053C44 1400B1AF */  sw         $s1, 0x14($sp)
/* 44448 80053C48 21880000 */  addu       $s1, $zero, $zero
/* 4444C 80053C4C 0B80023C */  lui        $v0, %hi(pxm_sndfiles)
/* 44450 80053C50 E0864324 */  addiu      $v1, $v0, %lo(pxm_sndfiles)
/* 44454 80053C54 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 44458 80053C58 1800B2AF */  sw         $s2, 0x18($sp)
/* 4445C 80053C5C F80F90AF */  sw         $s0, %gp_rel(pxm_currentstate)($gp)
.L80053C60:
/* 44460 80053C60 0C0060AC */  sw         $zero, 0xC($v1)
/* 44464 80053C64 040060AC */  sw         $zero, 0x4($v1)
/* 44468 80053C68 01003126 */  addiu      $s1, $s1, 0x1
/* 4446C 80053C6C 0400222E */  sltiu      $v0, $s1, 0x4
/* 44470 80053C70 FBFF4014 */  bnez       $v0, .L80053C60
/* 44474 80053C74 2C006324 */   addiu     $v1, $v1, 0x2C
/* 44478 80053C78 0980013C */  lui        $at, %hi(pxm_num_sounds_queued)
/* 4447C 80053C7C 645220AC */  sw         $zero, %lo(pxm_num_sounds_queued)($at)
/* 44480 80053C80 0980013C */  lui        $at, %hi(pxm_num_del_sounds_queued)
/* 44484 80053C84 685220AC */  sw         $zero, %lo(pxm_num_del_sounds_queued)($at)
/* 44488 80053C88 0980013C */  lui        $at, %hi(pxm_vo_playing)
/* 4448C 80053C8C 6C5220AC */  sw         $zero, %lo(pxm_vo_playing)($at)
/* 44490 80053C90 E653010C */  jal        pxm_clear_sfx_queues
/* 44494 80053C94 21880000 */   addu      $s1, $zero, $zero
/* 44498 80053C98 2C4A010C */  jal        pxm_stop
/* 4449C 80053C9C FFFF1226 */   addiu     $s2, $s0, -0x1
/* 444A0 80053CA0 73FF010C */  jal        SpuInit
/* 444A4 80053CA4 00000000 */   nop
/* 444A8 80053CA8 04000424 */  addiu      $a0, $zero, 0x4
/* 444AC 80053CAC 0B80053C */  lui        $a1, %hi(spu_malloc_rec)
/* 444B0 80053CB0 D302020C */  jal        SpuInitMalloc
/* 444B4 80053CB4 9087A524 */   addiu     $a1, $a1, %lo(spu_malloc_rec)
/* 444B8 80053CB8 0700033C */  lui        $v1, (0x7A000 >> 16)
/* 444BC 80053CBC 00A06334 */  ori        $v1, $v1, (0x7A000 & 0xFFFF)
/* 444C0 80053CC0 0B80023C */  lui        $v0, %hi(pxm_voicestat)
/* 444C4 80053CC4 A8825024 */  addiu      $s0, $v0, %lo(pxm_voicestat)
/* 444C8 80053CC8 0980013C */  lui        $at, %hi(pxm_spumem_free)
/* 444CC 80053CCC 2C5223AC */  sw         $v1, %lo(pxm_spumem_free)($at)
.L80053CD0:
/* 444D0 80053CD0 180011AE */  sw         $s1, 0x18($s0)
/* 444D4 80053CD4 7955010C */  jal        pxm_free_voice
/* 444D8 80053CD8 21200002 */   addu      $a0, $s0, $zero
/* 444DC 80053CDC 01003126 */  addiu      $s1, $s1, 0x1
/* 444E0 80053CE0 1800222E */  sltiu      $v0, $s1, 0x18
/* 444E4 80053CE4 FAFF4014 */  bnez       $v0, .L80053CD0
/* 444E8 80053CE8 28001026 */   addiu     $s0, $s0, 0x28
/* 444EC 80053CEC 0600422E */  sltiu      $v0, $s2, 0x6
/* 444F0 80053CF0 E3004010 */  beqz       $v0, .L80054080
/* 444F4 80053CF4 0180023C */   lui       $v0, %hi(jtbl_80012F78)
/* 444F8 80053CF8 782F4224 */  addiu      $v0, $v0, %lo(jtbl_80012F78)
/* 444FC 80053CFC 80181200 */  sll        $v1, $s2, 2
/* 44500 80053D00 21186200 */  addu       $v1, $v1, $v0
/* 44504 80053D04 0000648C */  lw         $a0, 0x0($v1)
/* 44508 80053D08 00000000 */  nop
/* 4450C 80053D0C 08008000 */  jr         $a0
/* 44510 80053D10 00000000 */   nop
jlabel .L80053D14
/* 44514 80053D14 17000224 */  addiu      $v0, $zero, 0x17
/* 44518 80053D18 FC0F80A3 */  sb         $zero, %gp_rel(pxm_enable_crowd)($gp)
/* 4451C 80053D1C FD0F80A3 */  sb         $zero, %gp_rel(pxm_enable_midimusic)($gp)
/* 44520 80053D20 0980013C */  lui        $at, %hi(pxm_numemitters)
/* 44524 80053D24 645820AC */  sw         $zero, %lo(pxm_numemitters)($at)
/* 44528 80053D28 5F1680A3 */  sb         $zero, %gp_rel(PXM_MUSIC_FIRSTVC)($gp)
/* 4452C 80053D2C 5E1682A3 */  sb         $v0, %gp_rel(PXM_MUSIC_LASTVC)($gp)
/* 44530 80053D30 184A010C */  jal        pxm_setspumastervolume
/* 44534 80053D34 FF3F0424 */   addiu     $a0, $zero, 0x3FFF
/* 44538 80053D38 FC49010C */  jal        pxm_setvolume
/* 4453C 80053D3C 7F000424 */   addiu     $a0, $zero, 0x7F
/* 44540 80053D40 0980043C */  lui        $a0, %hi(atv)
/* 44544 80053D44 08588424 */  addiu      $a0, $a0, %lo(atv)
/* 44548 80053D48 0A80073C */  lui        $a3, %hi(pxm_mix)
/* 4454C 80053D4C C87FE624 */  addiu      $a2, $a3, %lo(pxm_mix)
/* 44550 80053D50 7F000224 */  addiu      $v0, $zero, 0x7F
/* 44554 80053D54 1000C2AC */  sw         $v0, 0x10($a2)
/* 44558 80053D58 0980023C */  lui        $v0, %hi(MusicVolume)
/* 4455C 80053D5C 9C49428C */  lw         $v0, %lo(MusicVolume)($v0)
/* 44560 80053D60 40000324 */  addiu      $v1, $zero, 0x40
/* 44564 80053D64 0C00C3AC */  sw         $v1, 0xC($a2)
/* 44568 80053D68 0980033C */  lui        $v1, %hi(EffectsVolume)
/* 4456C 80053D6C A049638C */  lw         $v1, %lo(EffectsVolume)($v1)
/* 44570 80053D70 21284000 */  addu       $a1, $v0, $zero
/* 44574 80053D74 C87FE2AC */  sw         $v0, %lo(pxm_mix)($a3)
/* 44578 80053D78 0400C3AC */  sw         $v1, 0x4($a2)
/* 4457C 80053D7C 2BCD000C */  jal        cdSetVol
/* 44580 80053D80 00000000 */   nop
/* 44584 80053D84 284A010C */  jal        pxm_play
/* 44588 80053D88 00000000 */   nop
/* 4458C 80053D8C DA49010C */  jal        pxm_resetctrs
/* 44590 80053D90 00000000 */   nop
/* 44594 80053D94 0180043C */  lui        $a0, %hi(D_80012F48)
/* 44598 80053D98 482F8424 */  addiu      $a0, $a0, %lo(D_80012F48)
/* 4459C 80053D9C 0180053C */  lui        $a1, %hi(D_80012F5C)
/* 445A0 80053DA0 5C2FA524 */  addiu      $a1, $a1, %lo(D_80012F5C)
/* 445A4 80053DA4 2650010C */  jal        pxm_loadsndbank
/* 445A8 80053DA8 21300000 */   addu      $a2, $zero, $zero
/* 445AC 80053DAC 20500108 */  j          .L80054080
/* 445B0 80053DB0 00000000 */   nop
jlabel .L80053DB4
/* 445B4 80053DB4 17000224 */  addiu      $v0, $zero, 0x17
/* 445B8 80053DB8 0980013C */  lui        $at, %hi(pxm_numemitters)
/* 445BC 80053DBC 645820AC */  sw         $zero, %lo(pxm_numemitters)($at)
/* 445C0 80053DC0 FC0F80A3 */  sb         $zero, %gp_rel(pxm_enable_crowd)($gp)
/* 445C4 80053DC4 FD0F80A3 */  sb         $zero, %gp_rel(pxm_enable_midimusic)($gp)
/* 445C8 80053DC8 5F1680A3 */  sb         $zero, %gp_rel(PXM_MUSIC_FIRSTVC)($gp)
/* 445CC 80053DCC 5E1682A3 */  sb         $v0, %gp_rel(PXM_MUSIC_LASTVC)($gp)
/* 445D0 80053DD0 184A010C */  jal        pxm_setspumastervolume
/* 445D4 80053DD4 FF3F0424 */   addiu     $a0, $zero, 0x3FFF
/* 445D8 80053DD8 FC49010C */  jal        pxm_setvolume
/* 445DC 80053DDC 7F000424 */   addiu     $a0, $zero, 0x7F
/* 445E0 80053DE0 0980043C */  lui        $a0, %hi(atv)
/* 445E4 80053DE4 08588424 */  addiu      $a0, $a0, %lo(atv)
/* 445E8 80053DE8 0A80073C */  lui        $a3, %hi(pxm_mix)
/* 445EC 80053DEC C87FE624 */  addiu      $a2, $a3, %lo(pxm_mix)
/* 445F0 80053DF0 7F000224 */  addiu      $v0, $zero, 0x7F
/* 445F4 80053DF4 1000C2AC */  sw         $v0, 0x10($a2)
/* 445F8 80053DF8 0980023C */  lui        $v0, %hi(MusicVolume)
/* 445FC 80053DFC 9C49428C */  lw         $v0, %lo(MusicVolume)($v0)
/* 44600 80053E00 30000324 */  addiu      $v1, $zero, 0x30
/* 44604 80053E04 0C00C3AC */  sw         $v1, 0xC($a2)
/* 44608 80053E08 0980033C */  lui        $v1, %hi(EffectsVolume)
/* 4460C 80053E0C A049638C */  lw         $v1, %lo(EffectsVolume)($v1)
/* 44610 80053E10 21284000 */  addu       $a1, $v0, $zero
/* 44614 80053E14 C87FE2AC */  sw         $v0, %lo(pxm_mix)($a3)
/* 44618 80053E18 0400C3AC */  sw         $v1, 0x4($a2)
/* 4461C 80053E1C 2BCD000C */  jal        cdSetVol
/* 44620 80053E20 00000000 */   nop
/* 44624 80053E24 284A010C */  jal        pxm_play
/* 44628 80053E28 00000000 */   nop
/* 4462C 80053E2C DA49010C */  jal        pxm_resetctrs
/* 44630 80053E30 00000000 */   nop
/* 44634 80053E34 0180043C */  lui        $a0, %hi(D_80012F48)
/* 44638 80053E38 482F8424 */  addiu      $a0, $a0, %lo(D_80012F48)
/* 4463C 80053E3C 0180053C */  lui        $a1, %hi(D_80012F5C)
/* 44640 80053E40 5C2FA524 */  addiu      $a1, $a1, %lo(D_80012F5C)
/* 44644 80053E44 2650010C */  jal        pxm_loadsndbank
/* 44648 80053E48 21300000 */   addu      $a2, $zero, $zero
/* 4464C 80053E4C 02D1000C */  jal        pxm_init_world
/* 44650 80053E50 00000000 */   nop
/* 44654 80053E54 01000224 */  addiu      $v0, $zero, 0x1
/* 44658 80053E58 0980013C */  lui        $at, %hi(pxm_emitter_global_switch)
/* 4465C 80053E5C 485222AC */  sw         $v0, %lo(pxm_emitter_global_switch)($at)
/* 44660 80053E60 20500108 */  j          .L80054080
/* 44664 80053E64 00000000 */   nop
jlabel .L80053E68
/* 44668 80053E68 17000224 */  addiu      $v0, $zero, 0x17
/* 4466C 80053E6C FC0F80A3 */  sb         $zero, %gp_rel(pxm_enable_crowd)($gp)
/* 44670 80053E70 FD0F80A3 */  sb         $zero, %gp_rel(pxm_enable_midimusic)($gp)
/* 44674 80053E74 5F1680A3 */  sb         $zero, %gp_rel(PXM_MUSIC_FIRSTVC)($gp)
/* 44678 80053E78 5E1682A3 */  sb         $v0, %gp_rel(PXM_MUSIC_LASTVC)($gp)
/* 4467C 80053E7C 184A010C */  jal        pxm_setspumastervolume
/* 44680 80053E80 FF3F0424 */   addiu     $a0, $zero, 0x3FFF
/* 44684 80053E84 FC49010C */  jal        pxm_setvolume
/* 44688 80053E88 7F000424 */   addiu     $a0, $zero, 0x7F
/* 4468C 80053E8C 0980043C */  lui        $a0, %hi(atv)
/* 44690 80053E90 08588424 */  addiu      $a0, $a0, %lo(atv)
/* 44694 80053E94 0A80073C */  lui        $a3, %hi(pxm_mix)
/* 44698 80053E98 C87FE624 */  addiu      $a2, $a3, %lo(pxm_mix)
/* 4469C 80053E9C 7F000224 */  addiu      $v0, $zero, 0x7F
/* 446A0 80053EA0 1000C2AC */  sw         $v0, 0x10($a2)
/* 446A4 80053EA4 0980023C */  lui        $v0, %hi(MusicVolume)
/* 446A8 80053EA8 9C49428C */  lw         $v0, %lo(MusicVolume)($v0)
/* 446AC 80053EAC 30000324 */  addiu      $v1, $zero, 0x30
/* 446B0 80053EB0 0C00C3AC */  sw         $v1, 0xC($a2)
/* 446B4 80053EB4 0980033C */  lui        $v1, %hi(EffectsVolume)
/* 446B8 80053EB8 A049638C */  lw         $v1, %lo(EffectsVolume)($v1)
/* 446BC 80053EBC 21284000 */  addu       $a1, $v0, $zero
/* 446C0 80053EC0 C87FE2AC */  sw         $v0, %lo(pxm_mix)($a3)
/* 446C4 80053EC4 0400C3AC */  sw         $v1, 0x4($a2)
/* 446C8 80053EC8 2BCD000C */  jal        cdSetVol
/* 446CC 80053ECC 00000000 */   nop
/* 446D0 80053ED0 284A010C */  jal        pxm_play
/* 446D4 80053ED4 00000000 */   nop
/* 446D8 80053ED8 DA49010C */  jal        pxm_resetctrs
/* 446DC 80053EDC 00000000 */   nop
/* 446E0 80053EE0 FDCE000C */  jal        pxm_init_worldPreMalloc
/* 446E4 80053EE4 00000000 */   nop
/* 446E8 80053EE8 01500108 */  j          .L80054004
/* 446EC 80053EEC 01000324 */   addiu     $v1, $zero, 0x1
jlabel .L80053EF0
/* 446F0 80053EF0 17000224 */  addiu      $v0, $zero, 0x17
/* 446F4 80053EF4 FC0F80A3 */  sb         $zero, %gp_rel(pxm_enable_crowd)($gp)
/* 446F8 80053EF8 FD0F80A3 */  sb         $zero, %gp_rel(pxm_enable_midimusic)($gp)
/* 446FC 80053EFC 5F1680A3 */  sb         $zero, %gp_rel(PXM_MUSIC_FIRSTVC)($gp)
/* 44700 80053F00 5E1682A3 */  sb         $v0, %gp_rel(PXM_MUSIC_LASTVC)($gp)
/* 44704 80053F04 184A010C */  jal        pxm_setspumastervolume
/* 44708 80053F08 FF3F0424 */   addiu     $a0, $zero, 0x3FFF
/* 4470C 80053F0C FC49010C */  jal        pxm_setvolume
/* 44710 80053F10 7F000424 */   addiu     $a0, $zero, 0x7F
/* 44714 80053F14 0980043C */  lui        $a0, %hi(atv)
/* 44718 80053F18 08588424 */  addiu      $a0, $a0, %lo(atv)
/* 4471C 80053F1C 0A80073C */  lui        $a3, %hi(pxm_mix)
/* 44720 80053F20 C87FE624 */  addiu      $a2, $a3, %lo(pxm_mix)
/* 44724 80053F24 7F000224 */  addiu      $v0, $zero, 0x7F
/* 44728 80053F28 1000C2AC */  sw         $v0, 0x10($a2)
/* 4472C 80053F2C 0980023C */  lui        $v0, %hi(MusicVolume)
/* 44730 80053F30 9C49428C */  lw         $v0, %lo(MusicVolume)($v0)
/* 44734 80053F34 30000324 */  addiu      $v1, $zero, 0x30
/* 44738 80053F38 0C00C3AC */  sw         $v1, 0xC($a2)
/* 4473C 80053F3C 0980033C */  lui        $v1, %hi(EffectsVolume)
/* 44740 80053F40 A049638C */  lw         $v1, %lo(EffectsVolume)($v1)
/* 44744 80053F44 21284000 */  addu       $a1, $v0, $zero
/* 44748 80053F48 C87FE2AC */  sw         $v0, %lo(pxm_mix)($a3)
/* 4474C 80053F4C 0400C3AC */  sw         $v1, 0x4($a2)
/* 44750 80053F50 2BCD000C */  jal        cdSetVol
/* 44754 80053F54 00000000 */   nop
/* 44758 80053F58 284A010C */  jal        pxm_play
/* 4475C 80053F5C 00000000 */   nop
/* 44760 80053F60 DA49010C */  jal        pxm_resetctrs
/* 44764 80053F64 00000000 */   nop
/* 44768 80053F68 00D0000C */  jal        pxm_init_cinematic
/* 4476C 80053F6C 00000000 */   nop
/* 44770 80053F70 01500108 */  j          .L80054004
/* 44774 80053F74 01000324 */   addiu     $v1, $zero, 0x1
jlabel .L80053F78
/* 44778 80053F78 17000224 */  addiu      $v0, $zero, 0x17
/* 4477C 80053F7C 0980013C */  lui        $at, %hi(pxm_numemitters)
/* 44780 80053F80 645820AC */  sw         $zero, %lo(pxm_numemitters)($at)
/* 44784 80053F84 FC0F80A3 */  sb         $zero, %gp_rel(pxm_enable_crowd)($gp)
/* 44788 80053F88 FD0F80A3 */  sb         $zero, %gp_rel(pxm_enable_midimusic)($gp)
/* 4478C 80053F8C 5F1680A3 */  sb         $zero, %gp_rel(PXM_MUSIC_FIRSTVC)($gp)
/* 44790 80053F90 5E1682A3 */  sb         $v0, %gp_rel(PXM_MUSIC_LASTVC)($gp)
/* 44794 80053F94 184A010C */  jal        pxm_setspumastervolume
/* 44798 80053F98 FF3F0424 */   addiu     $a0, $zero, 0x3FFF
/* 4479C 80053F9C FC49010C */  jal        pxm_setvolume
/* 447A0 80053FA0 7F000424 */   addiu     $a0, $zero, 0x7F
/* 447A4 80053FA4 0980043C */  lui        $a0, %hi(atv)
/* 447A8 80053FA8 08588424 */  addiu      $a0, $a0, %lo(atv)
/* 447AC 80053FAC 0A80073C */  lui        $a3, %hi(pxm_mix)
/* 447B0 80053FB0 C87FE624 */  addiu      $a2, $a3, %lo(pxm_mix)
/* 447B4 80053FB4 7F000224 */  addiu      $v0, $zero, 0x7F
/* 447B8 80053FB8 1000C2AC */  sw         $v0, 0x10($a2)
/* 447BC 80053FBC 0980023C */  lui        $v0, %hi(MusicVolume)
/* 447C0 80053FC0 9C49428C */  lw         $v0, %lo(MusicVolume)($v0)
/* 447C4 80053FC4 30000324 */  addiu      $v1, $zero, 0x30
/* 447C8 80053FC8 0C00C3AC */  sw         $v1, 0xC($a2)
/* 447CC 80053FCC 0980033C */  lui        $v1, %hi(EffectsVolume)
/* 447D0 80053FD0 A049638C */  lw         $v1, %lo(EffectsVolume)($v1)
/* 447D4 80053FD4 21284000 */  addu       $a1, $v0, $zero
/* 447D8 80053FD8 C87FE2AC */  sw         $v0, %lo(pxm_mix)($a3)
/* 447DC 80053FDC 0400C3AC */  sw         $v1, 0x4($a2)
/* 447E0 80053FE0 2BCD000C */  jal        cdSetVol
/* 447E4 80053FE4 00000000 */   nop
/* 447E8 80053FE8 284A010C */  jal        pxm_play
/* 447EC 80053FEC 00000000 */   nop
/* 447F0 80053FF0 DA49010C */  jal        pxm_resetctrs
/* 447F4 80053FF4 00000000 */   nop
/* 447F8 80053FF8 15CE000C */  jal        pxm_init_loading
/* 447FC 80053FFC 00000000 */   nop
/* 44800 80054000 01000324 */  addiu      $v1, $zero, 0x1
.L80054004:
/* 44804 80054004 0980013C */  lui        $at, %hi(pxm_emitter_global_switch)
/* 44808 80054008 485223AC */  sw         $v1, %lo(pxm_emitter_global_switch)($at)
/* 4480C 8005400C 20500108 */  j          .L80054080
/* 44810 80054010 00000000 */   nop
jlabel .L80054014
/* 44814 80054014 FC0F80A3 */  sb         $zero, %gp_rel(pxm_enable_crowd)($gp)
/* 44818 80054018 FD0F80A3 */  sb         $zero, %gp_rel(pxm_enable_midimusic)($gp)
/* 4481C 8005401C 0980013C */  lui        $at, %hi(pxm_numemitters)
/* 44820 80054020 645820AC */  sw         $zero, %lo(pxm_numemitters)($at)
/* 44824 80054024 DA49010C */  jal        pxm_resetctrs
/* 44828 80054028 00000000 */   nop
/* 4482C 8005402C 284A010C */  jal        pxm_play
/* 44830 80054030 00000000 */   nop
/* 44834 80054034 184A010C */  jal        pxm_setspumastervolume
/* 44838 80054038 FF3F0424 */   addiu     $a0, $zero, 0x3FFF
/* 4483C 8005403C FC49010C */  jal        pxm_setvolume
/* 44840 80054040 7F000424 */   addiu     $a0, $zero, 0x7F
/* 44844 80054044 0A80063C */  lui        $a2, %hi(pxm_mix)
/* 44848 80054048 C87FC324 */  addiu      $v1, $a2, %lo(pxm_mix)
/* 4484C 8005404C 0980043C */  lui        $a0, %hi(EffectsVolume)
/* 44850 80054050 A049848C */  lw         $a0, %lo(EffectsVolume)($a0)
/* 44854 80054054 0980053C */  lui        $a1, %hi(MusicVolume)
/* 44858 80054058 9C49A58C */  lw         $a1, %lo(MusicVolume)($a1)
/* 4485C 8005405C 3A000224 */  addiu      $v0, $zero, 0x3A
/* 44860 80054060 100062AC */  sw         $v0, 0x10($v1)
/* 44864 80054064 140062AC */  sw         $v0, 0x14($v1)
/* 44868 80054068 10000224 */  addiu      $v0, $zero, 0x10
/* 4486C 8005406C 0C0062AC */  sw         $v0, 0xC($v1)
/* 44870 80054070 7F000224 */  addiu      $v0, $zero, 0x7F
/* 44874 80054074 040064AC */  sw         $a0, 0x4($v1)
/* 44878 80054078 080062AC */  sw         $v0, 0x8($v1)
/* 4487C 8005407C C87FC5AC */  sw         $a1, %lo(pxm_mix)($a2)
.L80054080:
/* 44880 80054080 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 44884 80054084 1800B28F */  lw         $s2, 0x18($sp)
/* 44888 80054088 1400B18F */  lw         $s1, 0x14($sp)
/* 4488C 8005408C 1000B08F */  lw         $s0, 0x10($sp)
/* 44890 80054090 0800E003 */  jr         $ra
/* 44894 80054094 2000BD27 */   addiu     $sp, $sp, 0x20
.size pxm_init, . - pxm_init
