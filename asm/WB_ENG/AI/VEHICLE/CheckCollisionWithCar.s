.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckCollisionWithCar
/* 388B4 800480B4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 388B8 800480B8 1000B0AF */  sw         $s0, 0x10($sp)
/* 388BC 800480BC 21808000 */  addu       $s0, $a0, $zero
/* 388C0 800480C0 2000BFAF */  sw         $ra, 0x20($sp)
/* 388C4 800480C4 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 388C8 800480C8 1800B2AF */  sw         $s2, 0x18($sp)
/* 388CC 800480CC 1400B1AF */  sw         $s1, 0x14($sp)
/* 388D0 800480D0 2801028E */  lw         $v0, 0x128($s0)
/* 388D4 800480D4 10271224 */  addiu      $s2, $zero, 0x2710
/* 388D8 800480D8 2800438C */  lw         $v1, 0x28($v0)
/* 388DC 800480DC 2198A000 */  addu       $s3, $a1, $zero
/* 388E0 800480E0 2800638C */  lw         $v1, 0x28($v1)
/* 388E4 800480E4 00000000 */  nop
/* 388E8 800480E8 06006014 */  bnez       $v1, .L80048104
/* 388EC 800480EC 0980053C */   lui       $a1, %hi(ETActor)
/* 388F0 800480F0 B05AA38C */  lw         $v1, %lo(ETActor)($a1)
/* 388F4 800480F4 0000028E */  lw         $v0, 0x0($s0)
/* 388F8 800480F8 02000524 */  addiu      $a1, $zero, 0x2
/* 388FC 800480FC 49200108 */  j          .L80048124
/* 38900 80048100 2A884300 */   slt       $s1, $v0, $v1
.L80048104:
/* 38904 80048104 01000224 */  addiu      $v0, $zero, 0x1
/* 38908 80048108 11006214 */  bne        $v1, $v0, .L80048150
/* 3890C 8004810C 8000422A */   slti      $v0, $s2, 0x80
/* 38910 80048110 21200002 */  addu       $a0, $s0, $zero
/* 38914 80048114 B05AA38C */  lw         $v1, %lo(ETActor)($a1)
/* 38918 80048118 0000028E */  lw         $v0, 0x0($s0)
/* 3891C 8004811C 02000524 */  addiu      $a1, $zero, 0x2
/* 38920 80048120 2A886200 */  slt        $s1, $v1, $v0
.L80048124:
/* 38924 80048124 9186010C */  jal        GetMinDistanceFromSpheres
/* 38928 80048128 00000000 */   nop
/* 3892C 8004812C 2A106202 */  slt        $v0, $s3, $v0
/* 38930 80048130 07004014 */  bnez       $v0, .L80048150
/* 38934 80048134 8000422A */   slti      $v0, $s2, 0x80
/* 38938 80048138 05002012 */  beqz       $s1, .L80048150
/* 3893C 8004813C 21200002 */   addu      $a0, $s0, $zero
/* 38940 80048140 9186010C */  jal        GetMinDistanceFromSpheres
/* 38944 80048144 01000524 */   addiu     $a1, $zero, 0x1
/* 38948 80048148 21904000 */  addu       $s2, $v0, $zero
/* 3894C 8004814C 8000422A */  slti       $v0, $s2, 0x80
.L80048150:
/* 38950 80048150 2000BF8F */  lw         $ra, 0x20($sp)
/* 38954 80048154 1C00B38F */  lw         $s3, 0x1C($sp)
/* 38958 80048158 1800B28F */  lw         $s2, 0x18($sp)
/* 3895C 8004815C 1400B18F */  lw         $s1, 0x14($sp)
/* 38960 80048160 1000B08F */  lw         $s0, 0x10($sp)
/* 38964 80048164 0800E003 */  jr         $ra
/* 38968 80048168 2800BD27 */   addiu     $sp, $sp, 0x28
.size CheckCollisionWithCar, . - CheckCollisionWithCar
