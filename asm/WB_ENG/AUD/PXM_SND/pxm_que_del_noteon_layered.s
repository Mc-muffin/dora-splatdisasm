.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_que_del_noteon_layered
/* 4586C 8005506C FF008A30 */  andi       $t2, $a0, 0xFF
/* 45870 80055070 FF00AB30 */  andi       $t3, $a1, 0xFF
/* 45874 80055074 FF00C630 */  andi       $a2, $a2, 0xFF
/* 45878 80055078 FF00E730 */  andi       $a3, $a3, 0xFF
/* 4587C 8005507C FFFF0824 */  addiu      $t0, $zero, -0x1
/* 45880 80055080 21180000 */  addu       $v1, $zero, $zero
/* 45884 80055084 FF000924 */  addiu      $t1, $zero, 0xFF
/* 45888 80055088 FFFF0524 */  addiu      $a1, $zero, -0x1
/* 4588C 8005508C 0B80023C */  lui        $v0, %hi(pxm_del_sound_queue)
/* 45890 80055090 B0874D24 */  addiu      $t5, $v0, %lo(pxm_del_sound_queue)
/* 45894 80055094 2120A001 */  addu       $a0, $t5, $zero
/* 45898 80055098 1400AC97 */  lhu        $t4, 0x14($sp)
.L8005509C:
/* 4589C 8005509C 00008290 */  lbu        $v0, 0x0($a0)
/* 458A0 800550A0 00000000 */  nop
/* 458A4 800550A4 02004914 */  bne        $v0, $t1, .L800550B0
/* 458A8 800550A8 00000000 */   nop
/* 458AC 800550AC 21406000 */  addu       $t0, $v1, $zero
.L800550B0:
/* 458B0 800550B0 01006324 */  addiu      $v1, $v1, 0x1
/* 458B4 800550B4 1000622C */  sltiu      $v0, $v1, 0x10
/* 458B8 800550B8 03004010 */  beqz       $v0, .L800550C8
/* 458BC 800550BC 14008424 */   addiu     $a0, $a0, 0x14
/* 458C0 800550C0 F6FF0511 */  beq        $t0, $a1, .L8005509C
/* 458C4 800550C4 00000000 */   nop
.L800550C8:
/* 458C8 800550C8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 458CC 800550CC 18000211 */  beq        $t0, $v0, .L80055130
/* 458D0 800550D0 00220B00 */   sll       $a0, $t3, 8
/* 458D4 800550D4 25204401 */  or         $a0, $t2, $a0
/* 458D8 800550D8 00140600 */  sll        $v0, $a2, 16
/* 458DC 800550DC 25208200 */  or         $a0, $a0, $v0
/* 458E0 800550E0 001E0700 */  sll        $v1, $a3, 24
/* 458E4 800550E4 25208300 */  or         $a0, $a0, $v1
/* 458E8 800550E8 80100800 */  sll        $v0, $t0, 2
/* 458EC 800550EC 21104800 */  addu       $v0, $v0, $t0
/* 458F0 800550F0 80100200 */  sll        $v0, $v0, 2
/* 458F4 800550F4 0980053C */  lui        $a1, %hi(pxm_tticks)
/* 458F8 800550F8 5858A58C */  lw         $a1, %lo(pxm_tticks)($a1)
/* 458FC 800550FC 0410858F */  lw         $a1, %gp_rel(pxm_num_del_sounds_queued)($gp)
/* 45900 80055100 21104D00 */  addu       $v0, $v0, $t5
/* 45904 80055104 00004AA0 */  sb         $t2, 0x0($v0)
/* 45908 80055108 01004BA0 */  sb         $t3, 0x1($v0)
/* 4590C 8005510C 020046A0 */  sb         $a2, 0x2($v0)
/* 45910 80055110 030047A0 */  sb         $a3, 0x3($v0)
/* 45914 80055114 1000A38F */  lw         $v1, 0x10($sp)
/* 45918 80055118 04004CA4 */  sh         $t4, 0x4($v0)
/* 4591C 8005511C 100040AC */  sw         $zero, 0x10($v0)
/* 45920 80055120 0C0044AC */  sw         $a0, 0xC($v0)
/* 45924 80055124 0100A524 */  addiu      $a1, $a1, 0x1
/* 45928 80055128 080043AC */  sw         $v1, 0x8($v0)
/* 4592C 8005512C 041085AF */  sw         $a1, %gp_rel(pxm_num_del_sounds_queued)($gp)
.L80055130:
/* 45930 80055130 0800E003 */  jr         $ra
/* 45934 80055134 21100000 */   addu      $v0, $zero, $zero
.size pxm_que_del_noteon_layered, . - pxm_que_del_noteon_layered
