.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_loadsndbankPreMallocedSplit
/* 24A80 80034280 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 24A84 80034284 1000B0AF */  sw         $s0, 0x10($sp)
/* 24A88 80034288 21808000 */  addu       $s0, $a0, $zero
/* 24A8C 8003428C 2800B6AF */  sw         $s6, 0x28($sp)
/* 24A90 80034290 21B0A000 */  addu       $s6, $a1, $zero
/* 24A94 80034294 2400B5AF */  sw         $s5, 0x24($sp)
/* 24A98 80034298 21A8C000 */  addu       $s5, $a2, $zero
/* 24A9C 8003429C 40100700 */  sll        $v0, $a3, 1
/* 24AA0 800342A0 21104700 */  addu       $v0, $v0, $a3
/* 24AA4 800342A4 80100200 */  sll        $v0, $v0, 2
/* 24AA8 800342A8 23104700 */  subu       $v0, $v0, $a3
/* 24AAC 800342AC 80100200 */  sll        $v0, $v0, 2
/* 24AB0 800342B0 2000B4AF */  sw         $s4, 0x20($sp)
/* 24AB4 800342B4 4000B48F */  lw         $s4, 0x40($sp)
/* 24AB8 800342B8 0B80033C */  lui        $v1, %hi(pxm_sndfiles)
/* 24ABC 800342BC 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 24AC0 800342C0 4400B38F */  lw         $s3, 0x44($sp)
/* 24AC4 800342C4 E0866324 */  addiu      $v1, $v1, %lo(pxm_sndfiles)
/* 24AC8 800342C8 1800B2AF */  sw         $s2, 0x18($sp)
/* 24ACC 800342CC 21904300 */  addu       $s2, $v0, $v1
/* 24AD0 800342D0 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 24AD4 800342D4 B35C010C */  jal        GetSizeOfFile
/* 24AD8 800342D8 1400B1AF */   sw        $s1, 0x14($sp)
/* 24ADC 800342DC 21884000 */  addu       $s1, $v0, $zero
/* 24AE0 800342E0 21200002 */  addu       $a0, $s0, $zero
/* 24AE4 800342E4 40881100 */  sll        $s1, $s1, 1
/* 24AE8 800342E8 495C010C */  jal        LoadFile
/* 24AEC 800342EC 21288002 */   addu      $a1, $s4, $zero
/* 24AF0 800342F0 AF05020C */  jal        SpuSetTransferMode
/* 24AF4 800342F4 01000424 */   addiu     $a0, $zero, 0x1
/* 24AF8 800342F8 EB02020C */  jal        SpuMalloc
/* 24AFC 800342FC 21202002 */   addu      $a0, $s1, $zero
/* 24B00 80034300 21184000 */  addu       $v1, $v0, $zero
/* 24B04 80034304 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 24B08 80034308 02006210 */  beq        $v1, $v0, .L80034314
/* 24B0C 8003430C 00000000 */   nop
/* 24B10 80034310 000043AE */  sw         $v1, 0x0($s2)
.L80034314:
/* 24B14 80034314 0000448E */  lw         $a0, 0x0($s2)
/* 24B18 80034318 0980023C */  lui        $v0, %hi(pxm_spumem_free)
/* 24B1C 8003431C 2C52428C */  lw         $v0, %lo(pxm_spumem_free)($v0)
/* 24B20 80034320 040051AE */  sw         $s1, 0x4($s2)
/* 24B24 80034324 23105100 */  subu       $v0, $v0, $s1
/* 24B28 80034328 0980013C */  lui        $at, %hi(pxm_spumem_free)
/* 24B2C 8003432C 2C5222AC */  sw         $v0, %lo(pxm_spumem_free)($at)
/* 24B30 80034330 9705020C */  jal        SpuSetTransferStartAddr
/* 24B34 80034334 42801100 */   srl       $s0, $s1, 1
/* 24B38 80034338 21208002 */  addu       $a0, $s4, $zero
/* 24B3C 8003433C 7F05020C */  jal        SpuWrite
/* 24B40 80034340 21280002 */   addu      $a1, $s0, $zero
/* 24B44 80034344 2120C002 */  addu       $a0, $s6, $zero
/* 24B48 80034348 495C010C */  jal        LoadFile
/* 24B4C 8003434C 21288002 */   addu      $a1, $s4, $zero
/* 24B50 80034350 0000448E */  lw         $a0, 0x0($s2)
/* 24B54 80034354 9705020C */  jal        SpuSetTransferStartAddr
/* 24B58 80034358 21209000 */   addu      $a0, $a0, $s0
/* 24B5C 8003435C 21208002 */  addu       $a0, $s4, $zero
/* 24B60 80034360 7F05020C */  jal        SpuWrite
/* 24B64 80034364 21280002 */   addu      $a1, $s0, $zero
/* 24B68 80034368 B35C010C */  jal        GetSizeOfFile
/* 24B6C 8003436C 2120A002 */   addu      $a0, $s5, $zero
/* 24B70 80034370 2120A002 */  addu       $a0, $s5, $zero
/* 24B74 80034374 495C010C */  jal        LoadFile
/* 24B78 80034378 21286002 */   addu      $a1, $s3, $zero
/* 24B7C 8003437C 180053AE */  sw         $s3, 0x18($s2)
/* 24B80 80034380 0000628E */  lw         $v0, 0x0($s3)
/* 24B84 80034384 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 24B88 80034388 2800B68F */  lw         $s6, 0x28($sp)
/* 24B8C 8003438C 2400B58F */  lw         $s5, 0x24($sp)
/* 24B90 80034390 2000B48F */  lw         $s4, 0x20($sp)
/* 24B94 80034394 1400B18F */  lw         $s1, 0x14($sp)
/* 24B98 80034398 1000B08F */  lw         $s0, 0x10($sp)
/* 24B9C 8003439C C0180200 */  sll        $v1, $v0, 3
/* 24BA0 800343A0 10006324 */  addiu      $v1, $v1, 0x10
/* 24BA4 800343A4 080042AE */  sw         $v0, 0x8($s2)
/* 24BA8 800343A8 0400648E */  lw         $a0, 0x4($s3)
/* 24BAC 800343AC 21386302 */  addu       $a3, $s3, $v1
/* 24BB0 800343B0 40100400 */  sll        $v0, $a0, 1
/* 24BB4 800343B4 21104400 */  addu       $v0, $v0, $a0
/* 24BB8 800343B8 80100200 */  sll        $v0, $v0, 2
/* 24BBC 800343BC 21186200 */  addu       $v1, $v1, $v0
/* 24BC0 800343C0 0C0044AE */  sw         $a0, 0xC($s2)
/* 24BC4 800343C4 0800658E */  lw         $a1, 0x8($s3)
/* 24BC8 800343C8 21306302 */  addu       $a2, $s3, $v1
/* 24BCC 800343CC 80100500 */  sll        $v0, $a1, 2
/* 24BD0 800343D0 21186200 */  addu       $v1, $v1, $v0
/* 24BD4 800343D4 10006226 */  addiu      $v0, $s3, 0x10
/* 24BD8 800343D8 21186302 */  addu       $v1, $s3, $v1
/* 24BDC 800343DC 100045AE */  sw         $a1, 0x10($s2)
/* 24BE0 800343E0 0C00648E */  lw         $a0, 0xC($s3)
/* 24BE4 800343E4 1C00B38F */  lw         $s3, 0x1C($sp)
/* 24BE8 800343E8 200042AE */  sw         $v0, 0x20($s2)
/* 24BEC 800343EC 240047AE */  sw         $a3, 0x24($s2)
/* 24BF0 800343F0 280046AE */  sw         $a2, 0x28($s2)
/* 24BF4 800343F4 1C0043AE */  sw         $v1, 0x1C($s2)
/* 24BF8 800343F8 140044AE */  sw         $a0, 0x14($s2)
/* 24BFC 800343FC 1800B28F */  lw         $s2, 0x18($sp)
/* 24C00 80034400 0800E003 */  jr         $ra
/* 24C04 80034404 3000BD27 */   addiu     $sp, $sp, 0x30
.size pxm_loadsndbankPreMallocedSplit, . - pxm_loadsndbankPreMallocedSplit
