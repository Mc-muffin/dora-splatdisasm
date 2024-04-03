.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadModelData
/* 3C92C 8004C12C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3C930 8004C130 1000B0AF */  sw         $s0, 0x10($sp)
/* 3C934 8004C134 2180A000 */  addu       $s0, $a1, $zero
/* 3C938 8004C138 1400B1AF */  sw         $s1, 0x14($sp)
/* 3C93C 8004C13C 21888000 */  addu       $s1, $a0, $zero
/* 3C940 8004C140 1800B2AF */  sw         $s2, 0x18($sp)
/* 3C944 8004C144 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 3C948 8004C148 B35C010C */  jal        GetSizeOfFile
/* 3C94C 8004C14C 2190C000 */   addu      $s2, $a2, $zero
/* 3C950 8004C150 21204000 */  addu       $a0, $v0, $zero
/* 3C954 8004C154 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 3C958 8004C158 3F008210 */  beq        $a0, $v0, .L8004C258
/* 3C95C 8004C15C 21100000 */   addu      $v0, $zero, $zero
/* 3C960 8004C160 06000016 */  bnez       $s0, .L8004C17C
/* 3C964 8004C164 00000000 */   nop
/* 3C968 8004C168 2B3F010C */  jal        new_malloc
/* 3C96C 8004C16C 00000000 */   nop
/* 3C970 8004C170 21804000 */  addu       $s0, $v0, $zero
/* 3C974 8004C174 36000012 */  beqz       $s0, .L8004C250
/* 3C978 8004C178 00000000 */   nop
.L8004C17C:
/* 3C97C 8004C17C 21202002 */  addu       $a0, $s1, $zero
/* 3C980 8004C180 495C010C */  jal        LoadFile
/* 3C984 8004C184 21280002 */   addu      $a1, $s0, $zero
/* 3C988 8004C188 21200002 */  addu       $a0, $s0, $zero
/* 3C98C 8004C18C 21284002 */  addu       $a1, $s2, $zero
/* 3C990 8004C190 1000028E */  lw         $v0, 0x10($s0)
/* 3C994 8004C194 1400038E */  lw         $v1, 0x14($s0)
/* 3C998 8004C198 1800068E */  lw         $a2, 0x18($s0)
/* 3C99C 8004C19C 21100202 */  addu       $v0, $s0, $v0
/* 3C9A0 8004C1A0 100002AE */  sw         $v0, 0x10($s0)
/* 3C9A4 8004C1A4 1C00028E */  lw         $v0, 0x1C($s0)
/* 3C9A8 8004C1A8 21180302 */  addu       $v1, $s0, $v1
/* 3C9AC 8004C1AC 140003AE */  sw         $v1, 0x14($s0)
/* 3C9B0 8004C1B0 2000038E */  lw         $v1, 0x20($s0)
/* 3C9B4 8004C1B4 21300602 */  addu       $a2, $s0, $a2
/* 3C9B8 8004C1B8 180006AE */  sw         $a2, 0x18($s0)
/* 3C9BC 8004C1BC 21100202 */  addu       $v0, $s0, $v0
/* 3C9C0 8004C1C0 1C0002AE */  sw         $v0, 0x1C($s0)
/* 3C9C4 8004C1C4 0C00028E */  lw         $v0, 0xC($s0)
/* 3C9C8 8004C1C8 21180302 */  addu       $v1, $s0, $v1
/* 3C9CC 8004C1CC 200003AE */  sw         $v1, 0x20($s0)
/* 3C9D0 8004C1D0 2400038E */  lw         $v1, 0x24($s0)
/* 3C9D4 8004C1D4 21100202 */  addu       $v0, $s0, $v0
/* 3C9D8 8004C1D8 0C0002AE */  sw         $v0, 0xC($s0)
/* 3C9DC 8004C1DC 2800028E */  lw         $v0, 0x28($s0)
/* 3C9E0 8004C1E0 21180302 */  addu       $v1, $s0, $v1
/* 3C9E4 8004C1E4 240003AE */  sw         $v1, 0x24($s0)
/* 3C9E8 8004C1E8 2C00038E */  lw         $v1, 0x2C($s0)
/* 3C9EC 8004C1EC 21100202 */  addu       $v0, $s0, $v0
/* 3C9F0 8004C1F0 280002AE */  sw         $v0, 0x28($s0)
/* 3C9F4 8004C1F4 3000028E */  lw         $v0, 0x30($s0)
/* 3C9F8 8004C1F8 21180302 */  addu       $v1, $s0, $v1
/* 3C9FC 8004C1FC 2C0003AE */  sw         $v1, 0x2C($s0)
/* 3CA00 8004C200 3400038E */  lw         $v1, 0x34($s0)
/* 3CA04 8004C204 21100202 */  addu       $v0, $s0, $v0
/* 3CA08 8004C208 300002AE */  sw         $v0, 0x30($s0)
/* 3CA0C 8004C20C 3800028E */  lw         $v0, 0x38($s0)
/* 3CA10 8004C210 21180302 */  addu       $v1, $s0, $v1
/* 3CA14 8004C214 340003AE */  sw         $v1, 0x34($s0)
/* 3CA18 8004C218 3C00038E */  lw         $v1, 0x3C($s0)
/* 3CA1C 8004C21C 21100202 */  addu       $v0, $s0, $v0
/* 3CA20 8004C220 380002AE */  sw         $v0, 0x38($s0)
/* 3CA24 8004C224 4000028E */  lw         $v0, 0x40($s0)
/* 3CA28 8004C228 21180302 */  addu       $v1, $s0, $v1
/* 3CA2C 8004C22C 3C0003AE */  sw         $v1, 0x3C($s0)
/* 3CA30 8004C230 4400038E */  lw         $v1, 0x44($s0)
/* 3CA34 8004C234 21100202 */  addu       $v0, $s0, $v0
/* 3CA38 8004C238 21180302 */  addu       $v1, $s0, $v1
/* 3CA3C 8004C23C 400002AE */  sw         $v0, 0x40($s0)
/* 3CA40 8004C240 4F2B010C */  jal        SetupModelPolys
/* 3CA44 8004C244 440003AE */   sw        $v1, 0x44($s0)
/* 3CA48 8004C248 96300108 */  j          .L8004C258
/* 3CA4C 8004C24C 21100002 */   addu      $v0, $s0, $zero
.L8004C250:
/* 3CA50 8004C250 21800000 */  addu       $s0, $zero, $zero
/* 3CA54 8004C254 21100002 */  addu       $v0, $s0, $zero
.L8004C258:
/* 3CA58 8004C258 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 3CA5C 8004C25C 1800B28F */  lw         $s2, 0x18($sp)
/* 3CA60 8004C260 1400B18F */  lw         $s1, 0x14($sp)
/* 3CA64 8004C264 1000B08F */  lw         $s0, 0x10($sp)
/* 3CA68 8004C268 0800E003 */  jr         $ra
/* 3CA6C 8004C26C 2000BD27 */   addiu     $sp, $sp, 0x20
.size LoadModelData, . - LoadModelData
