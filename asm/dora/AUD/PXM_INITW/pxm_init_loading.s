.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pxm_init_loading
/* 24054 80033854 C8FEBD27 */  addiu      $sp, $sp, -0x138
/* 24058 80033858 3001BFAF */  sw         $ra, 0x130($sp)
/* 2405C 8003385C 2C01B3AF */  sw         $s3, 0x12C($sp)
/* 24060 80033860 2801B2AF */  sw         $s2, 0x128($sp)
/* 24064 80033864 2401B1AF */  sw         $s1, 0x124($sp)
/* 24068 80033868 2001B0AF */  sw         $s0, 0x120($sp)
/* 2406C 8003386C 0980013C */  lui        $at, %hi(pxm_framecount_last)
/* 24070 80033870 AC5820AC */  sw         $zero, %lo(pxm_framecount_last)($at)
/* 24074 80033874 D140010C */  jal        u32Random
/* 24078 80033878 03000424 */   addiu     $a0, $zero, 0x3
/* 2407C 8003387C 21184000 */  addu       $v1, $v0, $zero
/* 24080 80033880 01000224 */  addiu      $v0, $zero, 0x1
/* 24084 80033884 2A006210 */  beq        $v1, $v0, .L80033930
/* 24088 80033888 02006228 */   slti      $v0, $v1, 0x2
/* 2408C 8003388C 05004010 */  beqz       $v0, .L800338A4
/* 24090 80033890 00000000 */   nop
/* 24094 80033894 08006010 */  beqz       $v1, .L800338B8
/* 24098 80033898 0180043C */   lui       $a0, %hi(D_80012570)
/* 2409C 8003389C A8CE0008 */  j          .L80033AA0
/* 240A0 800338A0 00000000 */   nop
.L800338A4:
/* 240A4 800338A4 02000224 */  addiu      $v0, $zero, 0x2
/* 240A8 800338A8 40006210 */  beq        $v1, $v0, .L800339AC
/* 240AC 800338AC 0180043C */   lui       $a0, %hi(D_800125CC)
/* 240B0 800338B0 A8CE0008 */  j          .L80033AA0
/* 240B4 800338B4 00000000 */   nop
.L800338B8:
/* 240B8 800338B8 70258424 */  addiu      $a0, $a0, %lo(D_80012570)
/* 240BC 800338BC 1001A527 */  addiu      $a1, $sp, 0x110
/* 240C0 800338C0 0180023C */  lui        $v0, %hi(D_80012584)
/* 240C4 800338C4 84255324 */  addiu      $s3, $v0, %lo(D_80012584)
/* 240C8 800338C8 0B80033C */  lui        $v1, %hi(pxm_sndfiles)
/* 240CC 800338CC 9450010C */  jal        MallocLoad
/* 240D0 800338D0 E0867124 */   addiu     $s1, $v1, %lo(pxm_sndfiles)
/* 240D4 800338D4 01000424 */  addiu      $a0, $zero, 0x1
/* 240D8 800338D8 AF05020C */  jal        SpuSetTransferMode
/* 240DC 800338DC 21904000 */   addu      $s2, $v0, $zero
/* 240E0 800338E0 1001A48F */  lw         $a0, 0x110($sp)
/* 240E4 800338E4 EB02020C */  jal        SpuMalloc
/* 240E8 800338E8 2C003026 */   addiu     $s0, $s1, 0x2C
/* 240EC 800338EC 21184000 */  addu       $v1, $v0, $zero
/* 240F0 800338F0 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 240F4 800338F4 02006210 */  beq        $v1, $v0, .L80033900
/* 240F8 800338F8 00000000 */   nop
/* 240FC 800338FC 2C0023AE */  sw         $v1, 0x2C($s1)
.L80033900:
/* 24100 80033900 0980023C */  lui        $v0, %hi(pxm_spumem_free)
/* 24104 80033904 2C52428C */  lw         $v0, %lo(pxm_spumem_free)($v0)
/* 24108 80033908 1001A38F */  lw         $v1, 0x110($sp)
/* 2410C 8003390C 2C00248E */  lw         $a0, 0x2C($s1)
/* 24110 80033910 23104300 */  subu       $v0, $v0, $v1
/* 24114 80033914 0980013C */  lui        $at, %hi(pxm_spumem_free)
/* 24118 80033918 2C5222AC */  sw         $v0, %lo(pxm_spumem_free)($at)
/* 2411C 8003391C 9705020C */  jal        SpuSetTransferStartAddr
/* 24120 80033920 040003AE */   sw        $v1, 0x4($s0)
/* 24124 80033924 1001A58F */  lw         $a1, 0x110($sp)
/* 24128 80033928 87CE0008 */  j          .L80033A1C
/* 2412C 8003392C 00000000 */   nop
.L80033930:
/* 24130 80033930 0180043C */  lui        $a0, %hi(D_8001259C)
/* 24134 80033934 9C258424 */  addiu      $a0, $a0, %lo(D_8001259C)
/* 24138 80033938 1401A527 */  addiu      $a1, $sp, 0x114
/* 2413C 8003393C 0180023C */  lui        $v0, %hi(D_800125B4)
/* 24140 80033940 B4255324 */  addiu      $s3, $v0, %lo(D_800125B4)
/* 24144 80033944 0B80033C */  lui        $v1, %hi(pxm_sndfiles)
/* 24148 80033948 9450010C */  jal        MallocLoad
/* 2414C 8003394C E0867124 */   addiu     $s1, $v1, %lo(pxm_sndfiles)
/* 24150 80033950 01000424 */  addiu      $a0, $zero, 0x1
/* 24154 80033954 AF05020C */  jal        SpuSetTransferMode
/* 24158 80033958 21904000 */   addu      $s2, $v0, $zero
/* 2415C 8003395C 1401A48F */  lw         $a0, 0x114($sp)
/* 24160 80033960 EB02020C */  jal        SpuMalloc
/* 24164 80033964 2C003026 */   addiu     $s0, $s1, 0x2C
/* 24168 80033968 21184000 */  addu       $v1, $v0, $zero
/* 2416C 8003396C FFFF0224 */  addiu      $v0, $zero, -0x1
/* 24170 80033970 02006210 */  beq        $v1, $v0, .L8003397C
/* 24174 80033974 00000000 */   nop
/* 24178 80033978 2C0023AE */  sw         $v1, 0x2C($s1)
.L8003397C:
/* 2417C 8003397C 0980023C */  lui        $v0, %hi(pxm_spumem_free)
/* 24180 80033980 2C52428C */  lw         $v0, %lo(pxm_spumem_free)($v0)
/* 24184 80033984 1401A38F */  lw         $v1, 0x114($sp)
/* 24188 80033988 2C00248E */  lw         $a0, 0x2C($s1)
/* 2418C 8003398C 23104300 */  subu       $v0, $v0, $v1
/* 24190 80033990 0980013C */  lui        $at, %hi(pxm_spumem_free)
/* 24194 80033994 2C5222AC */  sw         $v0, %lo(pxm_spumem_free)($at)
/* 24198 80033998 9705020C */  jal        SpuSetTransferStartAddr
/* 2419C 8003399C 040003AE */   sw        $v1, 0x4($s0)
/* 241A0 800339A0 1401A58F */  lw         $a1, 0x114($sp)
/* 241A4 800339A4 87CE0008 */  j          .L80033A1C
/* 241A8 800339A8 00000000 */   nop
.L800339AC:
/* 241AC 800339AC CC258424 */  addiu      $a0, $a0, %lo(D_800125CC)
/* 241B0 800339B0 1801A527 */  addiu      $a1, $sp, 0x118
/* 241B4 800339B4 0180023C */  lui        $v0, %hi(D_800125E4)
/* 241B8 800339B8 E4255324 */  addiu      $s3, $v0, %lo(D_800125E4)
/* 241BC 800339BC 0B80033C */  lui        $v1, %hi(pxm_sndfiles)
/* 241C0 800339C0 9450010C */  jal        MallocLoad
/* 241C4 800339C4 E0867124 */   addiu     $s1, $v1, %lo(pxm_sndfiles)
/* 241C8 800339C8 01000424 */  addiu      $a0, $zero, 0x1
/* 241CC 800339CC AF05020C */  jal        SpuSetTransferMode
/* 241D0 800339D0 21904000 */   addu      $s2, $v0, $zero
/* 241D4 800339D4 1801A48F */  lw         $a0, 0x118($sp)
/* 241D8 800339D8 EB02020C */  jal        SpuMalloc
/* 241DC 800339DC 2C003026 */   addiu     $s0, $s1, 0x2C
/* 241E0 800339E0 21184000 */  addu       $v1, $v0, $zero
/* 241E4 800339E4 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 241E8 800339E8 02006210 */  beq        $v1, $v0, .L800339F4
/* 241EC 800339EC 00000000 */   nop
/* 241F0 800339F0 2C0023AE */  sw         $v1, 0x2C($s1)
.L800339F4:
/* 241F4 800339F4 0980023C */  lui        $v0, %hi(pxm_spumem_free)
/* 241F8 800339F8 2C52428C */  lw         $v0, %lo(pxm_spumem_free)($v0)
/* 241FC 800339FC 1801A38F */  lw         $v1, 0x118($sp)
/* 24200 80033A00 2C00248E */  lw         $a0, 0x2C($s1)
/* 24204 80033A04 23104300 */  subu       $v0, $v0, $v1
/* 24208 80033A08 0980013C */  lui        $at, %hi(pxm_spumem_free)
/* 2420C 80033A0C 2C5222AC */  sw         $v0, %lo(pxm_spumem_free)($at)
/* 24210 80033A10 9705020C */  jal        SpuSetTransferStartAddr
/* 24214 80033A14 040003AE */   sw        $v1, 0x4($s0)
/* 24218 80033A18 1801A58F */  lw         $a1, 0x118($sp)
.L80033A1C:
/* 2421C 80033A1C 7F05020C */  jal        SpuWrite
/* 24220 80033A20 21204002 */   addu      $a0, $s2, $zero
/* 24224 80033A24 1C40010C */  jal        new_free
/* 24228 80033A28 21204002 */   addu      $a0, $s2, $zero
/* 2422C 80033A2C 21206002 */  addu       $a0, $s3, $zero
/* 24230 80033A30 9450010C */  jal        MallocLoad
/* 24234 80033A34 21280000 */   addu      $a1, $zero, $zero
/* 24238 80033A38 180002AE */  sw         $v0, 0x18($s0)
/* 2423C 80033A3C 0000438C */  lw         $v1, 0x0($v0)
/* 24240 80033A40 00000000 */  nop
/* 24244 80033A44 C0200300 */  sll        $a0, $v1, 3
/* 24248 80033A48 10008424 */  addiu      $a0, $a0, 0x10
/* 2424C 80033A4C 080003AE */  sw         $v1, 0x8($s0)
/* 24250 80033A50 0400458C */  lw         $a1, 0x4($v0)
/* 24254 80033A54 21404400 */  addu       $t0, $v0, $a0
/* 24258 80033A58 40180500 */  sll        $v1, $a1, 1
/* 2425C 80033A5C 21186500 */  addu       $v1, $v1, $a1
/* 24260 80033A60 80180300 */  sll        $v1, $v1, 2
/* 24264 80033A64 21208300 */  addu       $a0, $a0, $v1
/* 24268 80033A68 0C0005AE */  sw         $a1, 0xC($s0)
/* 2426C 80033A6C 0800468C */  lw         $a2, 0x8($v0)
/* 24270 80033A70 21384400 */  addu       $a3, $v0, $a0
/* 24274 80033A74 80180600 */  sll        $v1, $a2, 2
/* 24278 80033A78 21208300 */  addu       $a0, $a0, $v1
/* 2427C 80033A7C 10004324 */  addiu      $v1, $v0, 0x10
/* 24280 80033A80 100006AE */  sw         $a2, 0x10($s0)
/* 24284 80033A84 0C00458C */  lw         $a1, 0xC($v0)
/* 24288 80033A88 21104400 */  addu       $v0, $v0, $a0
/* 2428C 80033A8C 200003AE */  sw         $v1, 0x20($s0)
/* 24290 80033A90 240008AE */  sw         $t0, 0x24($s0)
/* 24294 80033A94 280007AE */  sw         $a3, 0x28($s0)
/* 24298 80033A98 1C0002AE */  sw         $v0, 0x1C($s0)
/* 2429C 80033A9C 140005AE */  sw         $a1, 0x14($s0)
.L80033AA0:
/* 242A0 80033AA0 3001BF8F */  lw         $ra, 0x130($sp)
/* 242A4 80033AA4 2C01B38F */  lw         $s3, 0x12C($sp)
/* 242A8 80033AA8 2801B28F */  lw         $s2, 0x128($sp)
/* 242AC 80033AAC 2401B18F */  lw         $s1, 0x124($sp)
/* 242B0 80033AB0 2001B08F */  lw         $s0, 0x120($sp)
/* 242B4 80033AB4 0800E003 */  jr         $ra
/* 242B8 80033AB8 3801BD27 */   addiu     $sp, $sp, 0x138
.size pxm_init_loading, . - pxm_init_loading
