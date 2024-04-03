.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckDoor
/* 2C9EC 8003C1EC 2158E000 */  addu       $t3, $a3, $zero
/* 2C9F0 8003C1F0 0880073C */  lui        $a3, %hi(TestWorld)
/* 2C9F4 8003C1F4 8C65E28C */  lw         $v0, %lo(TestWorld)($a3)
/* 2C9F8 8003C1F8 C3490B00 */  sra        $t1, $t3, 7
/* 2C9FC 8003C1FC 18002201 */  mult       $t1, $v0
/* 2CA00 8003C200 12180000 */  mflo       $v1
/* 2CA04 8003C204 C3310600 */  sra        $a2, $a2, 7
/* 2CA08 8003C208 00000000 */  nop
/* 2CA0C 8003C20C 1800C200 */  mult       $a2, $v0
/* 2CA10 8003C210 8C65E724 */  addiu      $a3, $a3, %lo(TestWorld)
/* 2CA14 8003C214 12300000 */  mflo       $a2
/* 2CA18 8003C218 0400E28C */  lw         $v0, 0x4($a3)
/* 2CA1C 8003C21C 00000000 */  nop
/* 2CA20 8003C220 18006200 */  mult       $v1, $v0
/* 2CA24 8003C224 2150A000 */  addu       $t2, $a1, $zero
/* 2CA28 8003C228 C3410A00 */  sra        $t0, $t2, 7
/* 2CA2C 8003C22C 1400E58C */  lw         $a1, 0x14($a3)
/* 2CA30 8003C230 40100800 */  sll        $v0, $t0, 1
/* 2CA34 8003C234 40300600 */  sll        $a2, $a2, 1
/* 2CA38 8003C238 12180000 */  mflo       $v1
/* 2CA3C 8003C23C 40180300 */  sll        $v1, $v1, 1
/* 2CA40 8003C240 21186500 */  addu       $v1, $v1, $a1
/* 2CA44 8003C244 2130C300 */  addu       $a2, $a2, $v1
/* 2CA48 8003C248 21104600 */  addu       $v0, $v0, $a2
/* 2CA4C 8003C24C 00004384 */  lh         $v1, 0x0($v0)
/* 2CA50 8003C250 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2CA54 8003C254 FF036330 */  andi       $v1, $v1, 0x3FF
/* 2CA58 8003C258 03006214 */  bne        $v1, $v0, .L8003C268
/* 2CA5C 8003C25C 80100300 */   sll       $v0, $v1, 2
/* 2CA60 8003C260 0800E003 */  jr         $ra
/* 2CA64 8003C264 21100000 */   addu      $v0, $zero, $zero
.L8003C268:
/* 2CA68 8003C268 21104300 */  addu       $v0, $v0, $v1
/* 2CA6C 8003C26C 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2CA70 8003C270 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2CA74 8003C274 C0100200 */  sll        $v0, $v0, 3
/* 2CA78 8003C278 21186200 */  addu       $v1, $v1, $v0
/* 2CA7C 8003C27C 0800638C */  lw         $v1, 0x8($v1)
/* 2CA80 8003C280 0001023C */  lui        $v0, (0x1000000 >> 16)
/* 2CA84 8003C284 24106200 */  and        $v0, $v1, $v0
/* 2CA88 8003C288 23004010 */  beqz       $v0, .L8003C318
/* 2CA8C 8003C28C 0F006330 */   andi      $v1, $v1, 0xF
/* 2CA90 8003C290 02000224 */  addiu      $v0, $zero, 0x2
/* 2CA94 8003C294 15006210 */  beq        $v1, $v0, .L8003C2EC
/* 2CA98 8003C298 01000225 */   addiu     $v0, $t0, 0x1
/* 2CA9C 8003C29C 03006228 */  slti       $v0, $v1, 0x3
/* 2CAA0 8003C2A0 05004010 */  beqz       $v0, .L8003C2B8
/* 2CAA4 8003C2A4 01000224 */   addiu     $v0, $zero, 0x1
/* 2CAA8 8003C2A8 0B006210 */  beq        $v1, $v0, .L8003C2D8
/* 2CAAC 8003C2AC FFFF2225 */   addiu     $v0, $t1, -0x1
/* 2CAB0 8003C2B0 0800E003 */  jr         $ra
/* 2CAB4 8003C2B4 21100000 */   addu      $v0, $zero, $zero
.L8003C2B8:
/* 2CAB8 8003C2B8 04000224 */  addiu      $v0, $zero, 0x4
/* 2CABC 8003C2BC 10006210 */  beq        $v1, $v0, .L8003C300
/* 2CAC0 8003C2C0 01002225 */   addiu     $v0, $t1, 0x1
/* 2CAC4 8003C2C4 08000224 */  addiu      $v0, $zero, 0x8
/* 2CAC8 8003C2C8 10006210 */  beq        $v1, $v0, .L8003C30C
/* 2CACC 8003C2CC FFFF0225 */   addiu     $v0, $t0, -0x1
/* 2CAD0 8003C2D0 0800E003 */  jr         $ra
/* 2CAD4 8003C2D4 21100000 */   addu      $v0, $zero, $zero
.L8003C2D8:
/* 2CAD8 8003C2D8 C0110200 */  sll        $v0, $v0, 7
/* 2CADC 8003C2DC 23104B00 */  subu       $v0, $v0, $t3
.L8003C2E0:
/* 2CAE0 8003C2E0 280082AC */  sw         $v0, 0x28($a0)
/* 2CAE4 8003C2E4 0800E003 */  jr         $ra
/* 2CAE8 8003C2E8 01000224 */   addiu     $v0, $zero, 0x1
.L8003C2EC:
/* 2CAEC 8003C2EC C0110200 */  sll        $v0, $v0, 7
/* 2CAF0 8003C2F0 23104201 */  subu       $v0, $t2, $v0
.L8003C2F4:
/* 2CAF4 8003C2F4 200082AC */  sw         $v0, 0x20($a0)
/* 2CAF8 8003C2F8 0800E003 */  jr         $ra
/* 2CAFC 8003C2FC 01000224 */   addiu     $v0, $zero, 0x1
.L8003C300:
/* 2CB00 8003C300 C0110200 */  sll        $v0, $v0, 7
/* 2CB04 8003C304 B8F00008 */  j          .L8003C2E0
/* 2CB08 8003C308 23106201 */   subu      $v0, $t3, $v0
.L8003C30C:
/* 2CB0C 8003C30C C0110200 */  sll        $v0, $v0, 7
/* 2CB10 8003C310 BDF00008 */  j          .L8003C2F4
/* 2CB14 8003C314 23104A00 */   subu      $v0, $v0, $t2
.L8003C318:
/* 2CB18 8003C318 21100000 */  addu       $v0, $zero, $zero
/* 2CB1C 8003C31C 0800E003 */  jr         $ra
/* 2CB20 8003C320 00000000 */   nop
.size CheckDoor, . - CheckDoor
