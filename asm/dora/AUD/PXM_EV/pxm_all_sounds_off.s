.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_all_sounds_off
/* 43F50 80053750 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 43F54 80053754 1800BFAF */  sw         $ra, 0x18($sp)
/* 43F58 80053758 1400B1AF */  sw         $s1, 0x14($sp)
/* 43F5C 8005375C E653010C */  jal        pxm_clear_sfx_queues
/* 43F60 80053760 1000B0AF */   sw        $s0, 0x10($sp)
/* 43F64 80053764 21200000 */  addu       $a0, $zero, $zero
/* 43F68 80053768 FF00053C */  lui        $a1, (0xFFFFFF >> 16)
/* 43F6C 8005376C 0F05020C */  jal        SpuSetKey
/* 43F70 80053770 FFFFA534 */   ori       $a1, $a1, (0xFFFFFF & 0xFFFF)
/* 43F74 80053774 21800000 */  addu       $s0, $zero, $zero
/* 43F78 80053778 0B80023C */  lui        $v0, %hi(pxm_voicestat)
/* 43F7C 8005377C A8825124 */  addiu      $s1, $v0, %lo(pxm_voicestat)
/* 43F80 80053780 0980013C */  lui        $at, %hi(pxm_spu_chan_bits)
/* 43F84 80053784 7C5220AC */  sw         $zero, %lo(pxm_spu_chan_bits)($at)
.L80053788:
/* 43F88 80053788 180030AE */  sw         $s0, 0x18($s1)
/* 43F8C 8005378C 7955010C */  jal        pxm_free_voice
/* 43F90 80053790 21202002 */   addu      $a0, $s1, $zero
/* 43F94 80053794 5855010C */  jal        pxm_free_spuchan
/* 43F98 80053798 21200002 */   addu      $a0, $s0, $zero
/* 43F9C 8005379C 01001026 */  addiu      $s0, $s0, 0x1
/* 43FA0 800537A0 1700022E */  sltiu      $v0, $s0, 0x17
/* 43FA4 800537A4 F8FF4014 */  bnez       $v0, .L80053788
/* 43FA8 800537A8 28003126 */   addiu     $s1, $s1, 0x28
/* 43FAC 800537AC 0980043C */  lui        $a0, %hi(pxm_numemitters)
/* 43FB0 800537B0 6458848C */  lw         $a0, %lo(pxm_numemitters)($a0)
/* 43FB4 800537B4 0980023C */  lui        $v0, %hi(pxm_emitters)
/* 43FB8 800537B8 8458428C */  lw         $v0, %lo(pxm_emitters)($v0)
/* 43FBC 800537BC 07008010 */  beqz       $a0, .L800537DC
/* 43FC0 800537C0 21800000 */   addu      $s0, $zero, $zero
/* 43FC4 800537C4 0C004324 */  addiu      $v1, $v0, 0xC
.L800537C8:
/* 43FC8 800537C8 000060AC */  sw         $zero, 0x0($v1)
/* 43FCC 800537CC 01001026 */  addiu      $s0, $s0, 0x1
/* 43FD0 800537D0 2B100402 */  sltu       $v0, $s0, $a0
/* 43FD4 800537D4 FCFF4014 */  bnez       $v0, .L800537C8
/* 43FD8 800537D8 2C006324 */   addiu     $v1, $v1, 0x2C
.L800537DC:
/* 43FDC 800537DC 1800BF8F */  lw         $ra, 0x18($sp)
/* 43FE0 800537E0 1400B18F */  lw         $s1, 0x14($sp)
/* 43FE4 800537E4 1000B08F */  lw         $s0, 0x10($sp)
/* 43FE8 800537E8 EC0F80AF */  sw         $zero, %gp_rel(pxm_tticks_all_sounds_off)($gp)
/* 43FEC 800537EC 0800E003 */  jr         $ra
/* 43FF0 800537F0 2000BD27 */   addiu     $sp, $sp, 0x20
.size pxm_all_sounds_off, . - pxm_all_sounds_off
