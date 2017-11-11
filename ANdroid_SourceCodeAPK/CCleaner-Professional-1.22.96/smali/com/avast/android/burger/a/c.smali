.class public final Lcom/avast/android/burger/a/c;
.super Lcom/avast/android/burger/a/i;
.source "SourceFile"


# static fields
.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avast/android/burger/a/c;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1c
        0x1
    .end array-data
.end method

.method private constructor <init>([B)V
    .locals 2

    .prologue
    .line 37
    .line 38
    invoke-static {}, Lcom/avast/android/burger/a/i;->a()Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    sget-object v1, Lcom/avast/android/burger/a/c;->b:[I

    .line 39
    invoke-virtual {v0, v1}, Lcom/avast/android/burger/a/i$a;->a([I)Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    .line 2373
    const/4 v1, 0x1

    iput v1, v0, Lcom/avast/android/burger/a/i$a;->d:I

    .line 41
    invoke-virtual {v0, p1}, Lcom/avast/android/burger/a/i$a;->a([B)Lcom/avast/android/burger/a/i$a;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/avast/android/burger/a/i;-><init>(Lcom/avast/android/burger/a/i$a;)V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/avast/android/burger/a/c;
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-static {}, Lcom/avast/a/a/a/b/a$a;->d()Lcom/avast/a/a/a/b/a$a$a;

    move-result-object v4

    .line 55
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2503
    if-nez v0, :cond_0

    .line 2504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2506
    :cond_0
    iget v5, v4, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 2507
    iput-object v0, v4, Lcom/avast/a/a/a/b/a$a$a;->b:Ljava/lang/Object;

    .line 55
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2609
    if-nez v0, :cond_1

    .line 2610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2612
    :cond_1
    iget v5, v4, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 2613
    iput-object v0, v4, Lcom/avast/a/a/a/b/a$a$a;->c:Ljava/lang/Object;

    .line 56
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2860
    if-nez v0, :cond_2

    .line 2861
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2863
    :cond_2
    iget v5, v4, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 2864
    iput-object v0, v4, Lcom/avast/a/a/a/b/a$a$a;->e:Ljava/lang/Object;

    .line 57
    sget-wide v6, Landroid/os/Build;->TIME:J

    .line 58
    invoke-virtual {v4, v6, v7}, Lcom/avast/a/a/a/b/a$a$a;->a(J)Lcom/avast/a/a/a/b/a$a$a;

    .line 59
    invoke-static {v4}, Lcom/avast/android/burger/internal/e/a;->a(Lcom/avast/a/a/a/b/a$a$a;)V

    .line 3255
    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "/proc/meminfo"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "MemTotal: "

    invoke-static {v0, v5}, Lcom/avast/android/burger/internal/e/b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3256
    if-eqz v0, :cond_3

    .line 3259
    const-string/jumbo v5, ":"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3263
    const-string/jumbo v5, " "

    invoke-static {v0, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3264
    array-length v0, v5

    if-ne v0, v3, :cond_3

    aget-object v0, v5, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, v5, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3292
    :cond_3
    :goto_0
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3293
    if-nez v0, :cond_6

    .line 3294
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "Unable to get window manager"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4283
    :goto_1
    invoke-virtual {v4}, Lcom/avast/a/a/a/b/a$a$a;->a()Lcom/avast/a/a/a/b/a$a;

    move-result-object v0

    .line 4284
    invoke-virtual {v0}, Lcom/avast/a/a/a/b/a$a;->b()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 4285
    throw v0

    .line 3268
    :cond_4
    aget-object v6, v5, v2

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_5
    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3270
    :pswitch_0
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3281
    :goto_3
    invoke-virtual {v4, v0}, Lcom/avast/a/a/a/b/a$a$a;->d(I)Lcom/avast/a/a/a/b/a$a$a;

    goto :goto_0

    .line 3268
    :sswitch_0
    const-string/jumbo v2, "MB"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v3, "kB"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    goto :goto_2

    :sswitch_2
    const-string/jumbo v2, "B"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    goto :goto_2

    .line 3273
    :pswitch_1
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_3

    .line 3276
    :pswitch_2
    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v2, 0xf4240

    div-int/2addr v0, v2

    goto :goto_3

    .line 3297
    :cond_6
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3298
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3299
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v0}, Lcom/avast/a/a/a/b/a$a$a;->f(I)Lcom/avast/a/a/a/b/a$a$a;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3300
    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/b/a$a$a;->e(I)Lcom/avast/a/a/a/b/a$a$a;

    goto :goto_1

    .line 62
    :cond_7
    invoke-virtual {v0}, Lcom/avast/a/a/a/b/a$a;->s()[B

    move-result-object v0

    .line 63
    new-instance v1, Lcom/avast/android/burger/a/c;

    invoke-direct {v1, v0}, Lcom/avast/android/burger/a/c;-><init>([B)V

    return-object v1

    .line 3268
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x995 -> :sswitch_0
        0xd37 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 68
    .line 5069
    iget-object v0, p0, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    .line 68
    invoke-static {v0, v6}, Lcom/avast/android/burger/a/d;->a(Lcom/avast/a/b/a/a$g;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{\"deviceInfoEvent\": {"

    .line 69
    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", \"blobType\":1,\"blob\": {"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6069
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    .line 6254
    iget-object v0, v0, Lcom/avast/a/b/a/a$g;->f:Lcom/google/a/c;

    .line 73
    invoke-static {v0}, Lcom/avast/a/a/a/b/a$a;->a(Lcom/google/a/c;)Lcom/avast/a/a/a/b/a$a;

    move-result-object v3

    .line 74
    const-string/jumbo v0, "\"model\": \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6503
    iget-object v0, v3, Lcom/avast/a/a/a/b/a$a;->c:Ljava/lang/Object;

    .line 6504
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6505
    check-cast v0, Ljava/lang/String;

    .line 74
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"brand\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6562
    iget-object v0, v3, Lcom/avast/a/a/a/b/a$a;->d:Ljava/lang/Object;

    .line 6563
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6564
    check-cast v0, Ljava/lang/String;

    .line 75
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"manufacturer\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6699
    iget-object v0, v3, Lcom/avast/a/a/a/b/a$a;->g:Ljava/lang/Object;

    .line 6700
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 6701
    check-cast v0, Ljava/lang/String;

    .line 76
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"buildDate\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7673
    iget-wide v4, v3, Lcom/avast/a/a/a/b/a$a;->f:J

    .line 77
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"cpuName\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8618
    iget-object v0, v3, Lcom/avast/a/a/a/b/a$a;->e:Ljava/lang/Object;

    .line 8619
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 8620
    check-cast v0, Ljava/lang/String;

    .line 78
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"cpuPhysicalCount\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8834
    iget v1, v3, Lcom/avast/a/a/a/b/a$a;->i:I

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"cpuVirtualCount\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8858
    iget v1, v3, Lcom/avast/a/a/a/b/a$a;->j:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"cpuFrequency\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9810
    iget v1, v3, Lcom/avast/a/a/a/b/a$a;->h:I

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"ram\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9882
    iget v1, v3, Lcom/avast/a/a/a/b/a$a;->k:I

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MB\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"screenWidth\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9906
    iget v1, v3, Lcom/avast/a/a/a/b/a$a;->l:I

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"screenHeight\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9930
    iget v1, v3, Lcom/avast/a/a/a/b/a$a;->m:I

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_4
    const-string/jumbo v0, "}}}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6507
    :cond_0
    :try_start_1
    check-cast v0, Lcom/google/a/c;

    .line 6509
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 6510
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6511
    iput-object v1, v3, Lcom/avast/a/a/a/b/a$a;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 6513
    goto/16 :goto_0

    .line 6566
    :cond_2
    check-cast v0, Lcom/google/a/c;

    .line 6568
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 6569
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6570
    iput-object v1, v3, Lcom/avast/a/a/a/b/a$a;->d:Ljava/lang/Object;

    :cond_3
    move-object v0, v1

    .line 6572
    goto/16 :goto_1

    .line 6703
    :cond_4
    check-cast v0, Lcom/google/a/c;

    .line 6705
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 6706
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6707
    iput-object v1, v3, Lcom/avast/a/a/a/b/a$a;->g:Ljava/lang/Object;

    :cond_5
    move-object v0, v1

    .line 6709
    goto/16 :goto_2

    .line 8622
    :cond_6
    check-cast v0, Lcom/google/a/c;

    .line 8624
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 8625
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8626
    iput-object v1, v3, Lcom/avast/a/a/a/b/a$a;->e:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/a/i; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    move-object v0, v1

    .line 8628
    goto/16 :goto_3

    .line 85
    :catch_0
    move-exception v0

    .line 86
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v3, "Unable to parse own blob"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v4}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method
