.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CollisionCheck
/* 2F8E8 8003F0E8 6C008724 */  addiu      $a3, $a0, 0x6C
/* 2F8EC 8003F0EC 6C00A824 */  addiu      $t0, $a1, 0x6C
/* 2F8F0 8003F0F0 0400E28C */  lw         $v0, 0x4($a3)
/* 2F8F4 8003F0F4 0400038D */  lw         $v1, 0x4($t0)
/* 2F8F8 8003F0F8 00000000 */  nop
/* 2F8FC 8003F0FC 23104300 */  subu       $v0, $v0, $v1
/* 2F900 8003F100 18004200 */  mult       $v0, $v0
/* 2F904 8003F104 0C00E68C */  lw         $a2, 0xC($a3)
/* 2F908 8003F108 0C00028D */  lw         $v0, 0xC($t0)
/* 2F90C 8003F10C 12580000 */  mflo       $t3
/* 2F910 8003F110 2330C200 */  subu       $a2, $a2, $v0
/* 2F914 8003F114 00000000 */  nop
/* 2F918 8003F118 1800C600 */  mult       $a2, $a2
/* 2F91C 8003F11C 4C00A38C */  lw         $v1, 0x4C($a1)
/* 2F920 8003F120 4C00828C */  lw         $v0, 0x4C($a0)
/* 2F924 8003F124 12300000 */  mflo       $a2
/* 2F928 8003F128 21104300 */  addu       $v0, $v0, $v1
/* 2F92C 8003F12C 00000000 */  nop
/* 2F930 8003F130 18004200 */  mult       $v0, $v0
/* 2F934 8003F134 5000838C */  lw         $v1, 0x50($a0)
/* 2F938 8003F138 5000A28C */  lw         $v0, 0x50($a1)
/* 2F93C 8003F13C 12480000 */  mflo       $t1
/* 2F940 8003F140 21186200 */  addu       $v1, $v1, $v0
/* 2F944 8003F144 00000000 */  nop
/* 2F948 8003F148 18006300 */  mult       $v1, $v1
/* 2F94C 8003F14C 21306601 */  addu       $a2, $t3, $a2
/* 2F950 8003F150 2A102601 */  slt        $v0, $t1, $a2
/* 2F954 8003F154 12280000 */  mflo       $a1
/* 2F958 8003F158 11004014 */  bnez       $v0, .L8003F1A0
/* 2F95C 8003F15C 21500000 */   addu      $t2, $zero, $zero
/* 2F960 8003F160 0800E28C */  lw         $v0, 0x8($a3)
/* 2F964 8003F164 0800038D */  lw         $v1, 0x8($t0)
/* 2F968 8003F168 00000000 */  nop
/* 2F96C 8003F16C 23104300 */  subu       $v0, $v0, $v1
/* 2F970 8003F170 18004200 */  mult       $v0, $v0
/* 2F974 8003F174 12100000 */  mflo       $v0
/* 2F978 8003F178 21206201 */  addu       $a0, $t3, $v0
/* 2F97C 8003F17C 2A182401 */  slt        $v1, $t1, $a0
/* 2F980 8003F180 07006014 */  bnez       $v1, .L8003F1A0
/* 2F984 8003F184 2A10A600 */   slt       $v0, $a1, $a2
/* 2F988 8003F188 05004014 */  bnez       $v0, .L8003F1A0
/* 2F98C 8003F18C 02000A24 */   addiu     $t2, $zero, 0x2
/* 2F990 8003F190 2A10A400 */  slt        $v0, $a1, $a0
/* 2F994 8003F194 02004014 */  bnez       $v0, .L8003F1A0
/* 2F998 8003F198 00000000 */   nop
/* 2F99C 8003F19C 01000A24 */  addiu      $t2, $zero, 0x1
.L8003F1A0:
/* 2F9A0 8003F1A0 0800E003 */  jr         $ra
/* 2F9A4 8003F1A4 21104001 */   addu      $v0, $t2, $zero
.size CollisionCheck, . - CollisionCheck
