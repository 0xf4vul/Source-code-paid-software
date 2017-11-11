.class public final Lcom/avast/android/burger/internal/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 201
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-static {}, Ljava/io/File;->listRoots()[Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "sys/devices/system/cpu/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "CPU Count: Failed. Path is not valid"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :goto_0
    return v0

    .line 209
    :cond_0
    new-instance v2, Lcom/avast/android/burger/internal/e/a$a;

    invoke-direct {v2}, Lcom/avast/android/burger/internal/e/a$a;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 210
    if-nez v1, :cond_1

    .line 211
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "CPU Count: Failed. Path exists but no CPUs are present"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v3, "CPU Count: Failed."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_1
    :try_start_1
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CPU Count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    array-length v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    const-string/jumbo v1, ":"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 170
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget-object v2, v1, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/avast/a/a/a/b/a$a$a;)V
    .locals 12

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 41
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 46
    :goto_0
    array-length v1, v0

    if-nez v1, :cond_2

    .line 156
    :cond_0
    :goto_1
    return-void

    .line 44
    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v1, v0, v5

    goto :goto_0

    .line 51
    :cond_2
    array-length v8, v0

    move v7, v2

    move v1, v2

    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v9, v0, v7

    .line 52
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 56
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    move v4, v3

    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 75
    sget-object v4, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Unknown CPU architecture: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v9, v10}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_4
    :goto_4
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_2

    .line 56
    :sswitch_0
    const-string/jumbo v4, "mips"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :sswitch_1
    const-string/jumbo v4, "mips64"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_3

    :sswitch_2
    const-string/jumbo v4, "x86"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_3

    :sswitch_3
    const-string/jumbo v4, "x86_64"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    goto :goto_3

    :sswitch_4
    const-string/jumbo v4, "arm64"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    goto :goto_3

    :sswitch_5
    const-string/jumbo v4, "armeabi-v7a-hard"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    goto :goto_3

    :sswitch_6
    const-string/jumbo v4, "armeabi-v7a"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x6

    goto :goto_3

    :sswitch_7
    const-string/jumbo v4, "armeabi"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x7

    goto :goto_3

    .line 59
    :pswitch_0
    or-int/lit16 v1, v1, 0x1000

    .line 60
    goto :goto_4

    .line 63
    :pswitch_1
    or-int/lit16 v1, v1, 0x100

    .line 64
    goto :goto_4

    .line 67
    :pswitch_2
    or-int/lit8 v1, v1, 0x10

    .line 68
    goto :goto_4

    .line 72
    :pswitch_3
    or-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_4

    .line 80
    :cond_5
    :try_start_0
    const-string/jumbo v0, "/proc/cpuinfo"

    const-string/jumbo v4, "UTF-8"

    .line 2268
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2285
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avast/android/f/d/c;->b(Ljava/io/InputStreamReader;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 85
    array-length v0, v5

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 91
    const/16 v4, 0x1000

    if-lt v1, v4, :cond_a

    .line 93
    array-length v4, v5

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_8

    aget-object v6, v5, v1

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "cpu model"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 95
    invoke-static {v6}, Lcom/avast/android/burger/internal/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 81
    :catch_0
    move-exception v0

    .line 82
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v3, "Unable to read cpuinfo"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 98
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_8
    move v1, v2

    move-object v2, v0

    move v0, v3

    .line 141
    :cond_9
    :goto_6
    if-eqz v2, :cond_14

    .line 2709
    if-nez v2, :cond_13

    .line 2710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 103
    :cond_a
    const/16 v4, 0x100

    if-lt v1, v4, :cond_f

    .line 105
    array-length v6, v5

    move v1, v2

    move v4, v2

    move-object v2, v0

    move v0, v3

    :goto_7
    if-ge v4, v6, :cond_9

    aget-object v7, v5, v4

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string/jumbo v8, "model name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 107
    invoke-static {v7}, Lcom/avast/android/burger/internal/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_b
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 110
    :cond_c
    if-nez v1, :cond_d

    const-string/jumbo v8, "cpu cores"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 111
    invoke-static {v7}, Lcom/avast/android/burger/internal/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 113
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    .line 117
    :cond_d
    if-ne v0, v3, :cond_e

    const-string/jumbo v8, "siblings"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 118
    invoke-static {v7}, Lcom/avast/android/burger/internal/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 124
    :cond_e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    if-eqz v1, :cond_b

    if-ne v0, v3, :cond_9

    goto :goto_8

    .line 129
    :cond_f
    if-lez v1, :cond_17

    .line 131
    array-length v4, v5

    move v1, v2

    :goto_9
    if-ge v1, v4, :cond_12

    aget-object v6, v5, v1

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string/jumbo v7, "Hardware"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 133
    invoke-static {v6}, Lcom/avast/android/burger/internal/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 136
    :cond_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    :cond_12
    move v1, v2

    move-object v2, v0

    move v0, v3

    goto/16 :goto_6

    .line 2712
    :cond_13
    iget v3, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/avast/a/a/a/b/a$a$a;->a:I

    .line 2713
    iput-object v2, p0, Lcom/avast/a/a/a/b/a$a$a;->d:Ljava/lang/Object;

    .line 144
    :cond_14
    if-lez v1, :cond_16

    .line 145
    invoke-virtual {p0, v1}, Lcom/avast/a/a/a/b/a$a$a;->b(I)Lcom/avast/a/a/a/b/a$a$a;

    .line 149
    :goto_a
    if-ltz v0, :cond_15

    .line 150
    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/b/a$a$a;->c(I)Lcom/avast/a/a/a/b/a$a$a;

    .line 152
    :cond_15
    invoke-static {}, Lcom/avast/android/burger/internal/e/a;->b()I

    move-result v0

    .line 153
    if-lez v0, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/b/a$a$a;->a(I)Lcom/avast/a/a/a/b/a$a$a;

    goto/16 :goto_1

    .line 147
    :cond_16
    invoke-static {}, Lcom/avast/android/burger/internal/e/a;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/avast/a/a/a/b/a$a$a;->b(I)Lcom/avast/a/a/a/b/a$a$a;

    goto :goto_a

    :cond_17
    move v1, v2

    move-object v2, v0

    move v0, v3

    goto/16 :goto_6

    .line 56
    :sswitch_data_0
    .sparse-switch
        -0x40038063 -> :sswitch_1
        -0x300b59d9 -> :sswitch_3
        -0x2c0bb1c1 -> :sswitch_7
        -0x2b6fd39a -> :sswitch_5
        0x1c976 -> :sswitch_2
        0x33249f -> :sswitch_0
        0x58c5a1a -> :sswitch_4
        0x8ab4d72 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static b()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 234
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    invoke-static {}, Ljava/io/File;->listRoots()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    .line 3300
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/avast/android/f/d/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v0, v1, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v3, "Unable to determine max cpu0 frequency"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
