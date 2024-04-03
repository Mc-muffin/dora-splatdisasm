.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_loadsndbankPreMalloced
/* 24934 80034134 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 24938 80034138 1000B0AF */  sw         $s0, 0x10($sp)
/* 2493C 8003413C 21808000 */  addu       $s0, $a0, $zero
/* 24940 80034140 2000B4AF */  sw         $s4, 0x20($sp)
/* 24944 80034144 21A0A000 */  addu       $s4, $a1, $zero
/* 24948 80034148 1C00B3AF */  sw         $s3, 0x1C($sp)
/* 2494C 8003414C 2198E000 */  addu       $s3, $a3, $zero
/* 24950 80034150 40100600 */  sll        $v0, $a2, 1
/* 24954 80034154 21104600 */  addu       $v0, $v0, $a2
/* 24958 80034158 80100200 */  sll        $v0, $v0, 2
/* 2495C 8003415C 23104600 */  subu       $v0, $v0, $a2
/* 24960 80034160 80100200 */  sll        $v0, $v0, 2
/* 24964 80034164 0B80033C */  lui        $v1, %hi(pxm_sndfiles)
/* 24968 80034168 1800B2AF */  sw         $s2, 0x18($sp)
/* 2496C 8003416C 3800B28F */  lw         $s2, 0x38($sp)
/* 24970 80034170 E0866324 */  addiu      $v1, $v1, %lo(pxm_sndfiles)
/* 24974 80034174 1400B1AF */  sw         $s1, 0x14($sp)
/* 24978 80034178 2400BFAF */  sw         $ra, 0x24($sp)
/* 2497C 8003417C B35C010C */  jal        GetSizeOfFile
/* 24980 80034180 21884300 */   addu      $s1, $v0, $v1
/* 24984 80034184 21200002 */  addu       $a0, $s0, $zero
/* 24988 80034188 21286002 */  addu       $a1, $s3, $zero
/* 2498C 8003418C 495C010C */  jal        LoadFile
/* 24990 80034190 21804000 */   addu      $s0, $v0, $zero
/* 24994 80034194 AF05020C */  jal        SpuSetTransferMode
/* 24998 80034198 01000424 */   addiu     $a0, $zero, 0x1
/* 2499C 8003419C EB02020C */  jal        SpuMalloc
/* 249A0 800341A0 21200002 */   addu      $a0, $s0, $zero
/* 249A4 800341A4 21184000 */  addu       $v1, $v0, $zero
/* 249A8 800341A8 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 249AC 800341AC 02006210 */  beq        $v1, $v0, .L800341B8
/* 249B0 800341B0 00000000 */   nop
/* 249B4 800341B4 000023AE */  sw         $v1, 0x0($s1)
.L800341B8:
/* 249B8 800341B8 0000248E */  lw         $a0, 0x0($s1)
/* 249BC 800341BC 0980023C */  lui        $v0, %hi(pxm_spumem_free)
/* 249C0 800341C0 2C52428C */  lw         $v0, %lo(pxm_spumem_free)($v0)
/* 249C4 800341C4 040030AE */  sw         $s0, 0x4($s1)
/* 249C8 800341C8 23105000 */  subu       $v0, $v0, $s0
/* 249CC 800341CC 0980013C */  lui        $at, %hi(pxm_spumem_free)
/* 249D0 800341D0 2C5222AC */  sw         $v0, %lo(pxm_spumem_free)($at)
/* 249D4 800341D4 9705020C */  jal        SpuSetTransferStartAddr
/* 249D8 800341D8 00000000 */   nop
/* 249DC 800341DC 21206002 */  addu       $a0, $s3, $zero
/* 249E0 800341E0 7F05020C */  jal        SpuWrite
/* 249E4 800341E4 21280002 */   addu      $a1, $s0, $zero
/* 249E8 800341E8 B35C010C */  jal        GetSizeOfFile
/* 249EC 800341EC 21208002 */   addu      $a0, $s4, $zero
/* 249F0 800341F0 21208002 */  addu       $a0, $s4, $zero
/* 249F4 800341F4 495C010C */  jal        LoadFile
/* 249F8 800341F8 21284002 */   addu      $a1, $s2, $zero
/* 249FC 800341FC 180032AE */  sw         $s2, 0x18($s1)
/* 24A00 80034200 0000428E */  lw         $v0, 0x0($s2)
/* 24A04 80034204 2400BF8F */  lw         $ra, 0x24($sp)
/* 24A08 80034208 2000B48F */  lw         $s4, 0x20($sp)
/* 24A0C 8003420C 1C00B38F */  lw         $s3, 0x1C($sp)
/* 24A10 80034210 1000B08F */  lw         $s0, 0x10($sp)
/* 24A14 80034214 C0180200 */  sll        $v1, $v0, 3
/* 24A18 80034218 10006324 */  addiu      $v1, $v1, 0x10
/* 24A1C 8003421C 080022AE */  sw         $v0, 0x8($s1)
/* 24A20 80034220 0400448E */  lw         $a0, 0x4($s2)
/* 24A24 80034224 21384302 */  addu       $a3, $s2, $v1
/* 24A28 80034228 40100400 */  sll        $v0, $a0, 1
/* 24A2C 8003422C 21104400 */  addu       $v0, $v0, $a0
/* 24A30 80034230 80100200 */  sll        $v0, $v0, 2
/* 24A34 80034234 21186200 */  addu       $v1, $v1, $v0
/* 24A38 80034238 0C0024AE */  sw         $a0, 0xC($s1)
/* 24A3C 8003423C 0800458E */  lw         $a1, 0x8($s2)
/* 24A40 80034240 21304302 */  addu       $a2, $s2, $v1
/* 24A44 80034244 80100500 */  sll        $v0, $a1, 2
/* 24A48 80034248 21186200 */  addu       $v1, $v1, $v0
/* 24A4C 8003424C 10004226 */  addiu      $v0, $s2, 0x10
/* 24A50 80034250 21184302 */  addu       $v1, $s2, $v1
/* 24A54 80034254 100025AE */  sw         $a1, 0x10($s1)
/* 24A58 80034258 0C00448E */  lw         $a0, 0xC($s2)
/* 24A5C 8003425C 1800B28F */  lw         $s2, 0x18($sp)
/* 24A60 80034260 200022AE */  sw         $v0, 0x20($s1)
/* 24A64 80034264 240027AE */  sw         $a3, 0x24($s1)
/* 24A68 80034268 280026AE */  sw         $a2, 0x28($s1)
/* 24A6C 8003426C 1C0023AE */  sw         $v1, 0x1C($s1)
/* 24A70 80034270 140024AE */  sw         $a0, 0x14($s1)
/* 24A74 80034274 1400B18F */  lw         $s1, 0x14($sp)
/* 24A78 80034278 0800E003 */  jr         $ra
/* 24A7C 8003427C 2800BD27 */   addiu     $sp, $sp, 0x28
.size pxm_loadsndbankPreMalloced, . - pxm_loadsndbankPreMalloced
