.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCollisionCelHeight
/* 2C89C 8003C09C 2158C000 */  addu       $t3, $a2, $zero
/* 2C8A0 8003C0A0 0880063C */  lui        $a2, %hi(TestWorld)
/* 2C8A4 8003C0A4 8C65C38C */  lw         $v1, %lo(TestWorld)($a2)
/* 2C8A8 8003C0A8 C3110B00 */  sra        $v0, $t3, 7
/* 2C8AC 8003C0AC 18004300 */  mult       $v0, $v1
/* 2C8B0 8003C0B0 12100000 */  mflo       $v0
/* 2C8B4 8003C0B4 C3290500 */  sra        $a1, $a1, 7
/* 2C8B8 8003C0B8 00000000 */  nop
/* 2C8BC 8003C0BC 1800A300 */  mult       $a1, $v1
/* 2C8C0 8003C0C0 8C65C624 */  addiu      $a2, $a2, %lo(TestWorld)
/* 2C8C4 8003C0C4 12280000 */  mflo       $a1
/* 2C8C8 8003C0C8 0400C38C */  lw         $v1, 0x4($a2)
/* 2C8CC 8003C0CC 00000000 */  nop
/* 2C8D0 8003C0D0 18004300 */  mult       $v0, $v1
/* 2C8D4 8003C0D4 21508000 */  addu       $t2, $a0, $zero
/* 2C8D8 8003C0D8 1400C48C */  lw         $a0, 0x14($a2)
/* 2C8DC 8003C0DC C3190A00 */  sra        $v1, $t2, 7
/* 2C8E0 8003C0E0 40180300 */  sll        $v1, $v1, 1
/* 2C8E4 8003C0E4 40280500 */  sll        $a1, $a1, 1
/* 2C8E8 8003C0E8 12100000 */  mflo       $v0
/* 2C8EC 8003C0EC 40100200 */  sll        $v0, $v0, 1
/* 2C8F0 8003C0F0 21104400 */  addu       $v0, $v0, $a0
/* 2C8F4 8003C0F4 2128A200 */  addu       $a1, $a1, $v0
/* 2C8F8 8003C0F8 21186500 */  addu       $v1, $v1, $a1
/* 2C8FC 8003C0FC 00006984 */  lh         $t1, 0x0($v1)
/* 2C900 8003C100 FF030224 */  addiu      $v0, $zero, 0x3FF
/* 2C904 8003C104 FF032331 */  andi       $v1, $t1, 0x3FF
/* 2C908 8003C108 0C006210 */  beq        $v1, $v0, .L8003C13C
/* 2C90C 8003C10C 2160E000 */   addu      $t4, $a3, $zero
/* 2C910 8003C110 80100300 */  sll        $v0, $v1, 2
/* 2C914 8003C114 21104300 */  addu       $v0, $v0, $v1
/* 2C918 8003C118 0980033C */  lui        $v1, %hi(CellAttributesPtr)
/* 2C91C 8003C11C 6C50638C */  lw         $v1, %lo(CellAttributesPtr)($v1)
/* 2C920 8003C120 C0100200 */  sll        $v0, $v0, 3
/* 2C924 8003C124 21406200 */  addu       $t0, $v1, $v0
/* 2C928 8003C128 0800038D */  lw         $v1, 0x8($t0)
/* 2C92C 8003C12C 1000023C */  lui        $v0, (0x100000 >> 16)
/* 2C930 8003C130 24106200 */  and        $v0, $v1, $v0
/* 2C934 8003C134 03004010 */  beqz       $v0, .L8003C144
/* 2C938 8003C138 00016230 */   andi      $v0, $v1, 0x100
.L8003C13C:
/* 2C93C 8003C13C 0800E003 */  jr         $ra
/* 2C940 8003C140 FFFF0224 */   addiu     $v0, $zero, -0x1
.L8003C144:
/* 2C944 8003C144 09004014 */  bnez       $v0, .L8003C16C
/* 2C948 8003C148 00000000 */   nop
/* 2C94C 8003C14C 1400028D */  lw         $v0, 0x14($t0)
/* 2C950 8003C150 00000000 */  nop
/* 2C954 8003C154 05004014 */  bnez       $v0, .L8003C16C
/* 2C958 8003C158 00000000 */   nop
/* 2C95C 8003C15C 1800028D */  lw         $v0, 0x18($t0)
/* 2C960 8003C160 00000000 */  nop
/* 2C964 8003C164 1C004010 */  beqz       $v0, .L8003C1D8
/* 2C968 8003C168 00000000 */   nop
.L8003C16C:
/* 2C96C 8003C16C 18000585 */  lh         $a1, 0x18($t0)
/* 2C970 8003C170 1A000385 */  lh         $v1, 0x1A($t0)
/* 2C974 8003C174 7F004631 */  andi       $a2, $t2, 0x7F
/* 2C978 8003C178 23186500 */  subu       $v1, $v1, $a1
/* 2C97C 8003C17C 18006600 */  mult       $v1, $a2
/* 2C980 8003C180 14000485 */  lh         $a0, 0x14($t0)
/* 2C984 8003C184 16000285 */  lh         $v0, 0x16($t0)
/* 2C988 8003C188 12180000 */  mflo       $v1
/* 2C98C 8003C18C 23104400 */  subu       $v0, $v0, $a0
/* 2C990 8003C190 00000000 */  nop
/* 2C994 8003C194 18004600 */  mult       $v0, $a2
/* 2C998 8003C198 7F006731 */  andi       $a3, $t3, 0x7F
/* 2C99C 8003C19C C3190300 */  sra        $v1, $v1, 7
/* 2C9A0 8003C1A0 2128A300 */  addu       $a1, $a1, $v1
/* 2C9A4 8003C1A4 12100000 */  mflo       $v0
/* 2C9A8 8003C1A8 C3110200 */  sra        $v0, $v0, 7
/* 2C9AC 8003C1AC 21208200 */  addu       $a0, $a0, $v0
/* 2C9B0 8003C1B0 23208500 */  subu       $a0, $a0, $a1
/* 2C9B4 8003C1B4 18008700 */  mult       $a0, $a3
/* 2C9B8 8003C1B8 0800028D */  lw         $v0, 0x8($t0)
/* 2C9BC 8003C1BC 00000000 */  nop
/* 2C9C0 8003C1C0 00014234 */  ori        $v0, $v0, 0x100
/* 2C9C4 8003C1C4 080002AD */  sw         $v0, 0x8($t0)
/* 2C9C8 8003C1C8 12200000 */  mflo       $a0
/* 2C9CC 8003C1CC C3210400 */  sra        $a0, $a0, 7
/* 2C9D0 8003C1D0 77F00008 */  j          .L8003C1DC
/* 2C9D4 8003C1D4 2110A400 */   addu      $v0, $a1, $a0
.L8003C1D8:
/* 2C9D8 8003C1D8 14000285 */  lh         $v0, 0x14($t0)
.L8003C1DC:
/* 2C9DC 8003C1DC 00000000 */  nop
/* 2C9E0 8003C1E0 000082AD */  sw         $v0, 0x0($t4)
/* 2C9E4 8003C1E4 0800E003 */  jr         $ra
/* 2C9E8 8003C1E8 21102001 */   addu      $v0, $t1, $zero
.size CheckCollisionCelHeight, . - CheckCollisionCelHeight
