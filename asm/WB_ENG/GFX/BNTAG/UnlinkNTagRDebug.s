.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel UnlinkNTagRDebug
/* 3B3B4 8004ABB4 C0100500 */  sll        $v0, $a1, 3
/* 3B3B8 8004ABB8 F8FF4224 */  addiu      $v0, $v0, -0x8
/* 3B3BC 8004ABBC 21208200 */  addu       $a0, $a0, $v0
/* 3B3C0 8004ABC0 D40D80AF */  sw         $zero, %gp_rel(debugfirstprim)($gp)
/* 3B3C4 8004ABC4 1200A010 */  beqz       $a1, .L8004AC10
/* 3B3C8 8004ABC8 2140A000 */   addu      $t0, $a1, $zero
.L8004ABCC:
/* 3B3CC 8004ABCC 0000878C */  lw         $a3, 0x0($a0)
/* 3B3D0 8004ABD0 00000000 */  nop
/* 3B3D4 8004ABD4 0B00E010 */  beqz       $a3, .L8004AC04
/* 3B3D8 8004ABD8 00000000 */   nop
/* 3B3DC 8004ABDC D40D828F */  lw         $v0, %gp_rel(debugfirstprim)($gp)
/* 3B3E0 8004ABE0 00000000 */  nop
/* 3B3E4 8004ABE4 02004014 */  bnez       $v0, .L8004ABF0
/* 3B3E8 8004ABE8 23180501 */   subu      $v1, $t0, $a1
/* 3B3EC 8004ABEC D40D83AF */  sw         $v1, %gp_rel(debugfirstprim)($gp)
.L8004ABF0:
/* 3B3F0 8004ABF0 00120700 */  sll        $v0, $a3, 8
/* 3B3F4 8004ABF4 D80D83AF */  sw         $v1, %gp_rel(debuglastprim)($gp)
/* 3B3F8 8004ABF8 0200C2A8 */  swl        $v0, 0x2($a2)
/* 3B3FC 8004ABFC 0400868C */  lw         $a2, 0x4($a0)
/* 3B400 8004AC00 000080AC */  sw         $zero, 0x0($a0)
.L8004AC04:
/* 3B404 8004AC04 FFFFA524 */  addiu      $a1, $a1, -0x1
/* 3B408 8004AC08 F0FFA014 */  bnez       $a1, .L8004ABCC
/* 3B40C 8004AC0C F8FF8424 */   addiu     $a0, $a0, -0x8
.L8004AC10:
/* 3B410 8004AC10 D80D848F */  lw         $a0, %gp_rel(debuglastprim)($gp)
/* 3B414 8004AC14 D40D838F */  lw         $v1, %gp_rel(debugfirstprim)($gp)
/* 3B418 8004AC18 C80D828F */  lw         $v0, %gp_rel(debugmaxfirstprim)($gp)
/* 3B41C 8004AC1C 23288300 */  subu       $a1, $a0, $v1
/* 3B420 8004AC20 2A106200 */  slt        $v0, $v1, $v0
/* 3B424 8004AC24 DC0D85AF */  sw         $a1, %gp_rel(debugntagsize)($gp)
/* 3B428 8004AC28 02004010 */  beqz       $v0, .L8004AC34
/* 3B42C 8004AC2C 00000000 */   nop
/* 3B430 8004AC30 C80D83AF */  sw         $v1, %gp_rel(debugmaxfirstprim)($gp)
.L8004AC34:
/* 3B434 8004AC34 CC0D828F */  lw         $v0, %gp_rel(debugmaxlastprim)($gp)
/* 3B438 8004AC38 00000000 */  nop
/* 3B43C 8004AC3C 2A104400 */  slt        $v0, $v0, $a0
/* 3B440 8004AC40 02004010 */  beqz       $v0, .L8004AC4C
/* 3B444 8004AC44 00000000 */   nop
/* 3B448 8004AC48 CC0D84AF */  sw         $a0, %gp_rel(debugmaxlastprim)($gp)
.L8004AC4C:
/* 3B44C 8004AC4C D00D828F */  lw         $v0, %gp_rel(debugmaxntagsize)($gp)
/* 3B450 8004AC50 00000000 */  nop
/* 3B454 8004AC54 2A104500 */  slt        $v0, $v0, $a1
/* 3B458 8004AC58 02004010 */  beqz       $v0, .L8004AC64
/* 3B45C 8004AC5C 00000000 */   nop
/* 3B460 8004AC60 D00D85AF */  sw         $a1, %gp_rel(debugmaxntagsize)($gp)
.L8004AC64:
/* 3B464 8004AC64 00FF0224 */  addiu      $v0, $zero, -0x100
/* 3B468 8004AC68 0200C2A8 */  swl        $v0, 0x2($a2)
/* 3B46C 8004AC6C 0800E003 */  jr         $ra
/* 3B470 8004AC70 2110C000 */   addu      $v0, $a2, $zero
.size UnlinkNTagRDebug, . - UnlinkNTagRDebug
