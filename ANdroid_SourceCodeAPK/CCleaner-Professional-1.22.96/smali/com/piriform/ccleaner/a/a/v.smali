.class public final Lcom/piriform/ccleaner/a/a/v;
.super Lcom/piriform/ccleaner/a/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/b/l$a;


# instance fields
.field public final i:Lcom/piriform/ccleaner/core/b/l;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/piriform/ccleaner/s/h;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/core/b/l;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/b/e;)V
    .locals 7

    .prologue
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/a/a/v;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/core/b/l;Ljava/util/List;Ljava/util/List;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/b/e;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/core/b/l;Ljava/util/List;Ljava/util/List;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/b/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/a/q;",
            "Lcom/piriform/ccleaner/core/b/l;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;",
            "Lcom/piriform/ccleaner/s/h;",
            "Lcom/piriform/ccleaner/b/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    sget-object v1, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-direct {p0, p1, v0, v1, p6}, Lcom/piriform/ccleaner/a/a/a;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/a/c;Lcom/piriform/ccleaner/b/e;)V

    .line 41
    iput-object p2, p0, Lcom/piriform/ccleaner/a/a/v;->i:Lcom/piriform/ccleaner/core/b/l;

    .line 42
    iput-object p3, p0, Lcom/piriform/ccleaner/a/a/v;->j:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lcom/piriform/ccleaner/a/a/v;->k:Ljava/util/List;

    .line 44
    iput-object p5, p0, Lcom/piriform/ccleaner/a/a/v;->m:Lcom/piriform/ccleaner/s/h;

    .line 45
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 5

    .prologue
    .line 128
    .line 16053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 128
    const v1, 0x7f080053

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/a/v;->a(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method protected final c()I
    .locals 18

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/a/a/v;->m:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v2}, Lcom/piriform/ccleaner/s/h;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    sget v2, Lcom/piriform/ccleaner/a/a/d$a;->e:I

    .line 68
    :goto_0
    return v2

    .line 1053
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 52
    const v3, 0x7f080052

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/a/a/v;->a(Ljava/lang/String;)V

    .line 54
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/piriform/ccleaner/a/a/v;->i:Lcom/piriform/ccleaner/core/b/l;

    .line 2047
    iget-object v2, v12, Lcom/piriform/ccleaner/core/b/l;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2048
    iget-object v2, v12, Lcom/piriform/ccleaner/core/b/l;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2049
    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lcom/piriform/ccleaner/core/b/l;->f:J

    .line 2050
    const/4 v2, 0x0

    iput v2, v12, Lcom/piriform/ccleaner/core/b/l;->h:I

    .line 2051
    const/4 v2, 0x0

    iput v2, v12, Lcom/piriform/ccleaner/core/b/l;->g:I

    .line 2053
    iget-object v2, v12, Lcom/piriform/ccleaner/core/b/l;->a:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    .line 2054
    if-eqz v13, :cond_7

    .line 2061
    iget-object v2, v12, Lcom/piriform/ccleaner/core/b/l;->c:Lcom/piriform/ccleaner/n/b;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/n/b;->a()Ljava/util/Set;

    move-result-object v14

    .line 2063
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2065
    invoke-static {v13}, Lcom/piriform/ccleaner/core/b/l;->a(Ljava/util/List;)[I

    move-result-object v2

    .line 2066
    iget-object v3, v12, Lcom/piriform/ccleaner/core/b/l;->a:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v16

    .line 2068
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    .line 2069
    const/4 v2, 0x0

    move v11, v2

    :goto_1
    move/from16 v0, v17

    if-ge v11, v0, :cond_7

    .line 2070
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2072
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "com.piriform.ccleaner"

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2075
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 2076
    invoke-interface {v14, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 2078
    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/piriform/ccleaner/core/data/i;

    .line 2080
    aget-object v2, v16, v11

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v6, 0x400

    mul-long/2addr v6, v2

    .line 2081
    if-nez v10, :cond_6

    .line 2084
    :try_start_0
    iget-object v2, v12, Lcom/piriform/ccleaner/core/b/l;->b:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 2085
    iget-object v2, v12, Lcom/piriform/ccleaner/core/b/l;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2144
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 2086
    :goto_2
    if-eqz v2, :cond_4

    .line 2087
    new-instance v2, Lcom/piriform/ccleaner/core/data/i;

    sget-object v3, Lcom/piriform/ccleaner/core/data/j;->c:Lcom/piriform/ccleaner/core/data/j;

    invoke-direct/range {v2 .. v9}, Lcom/piriform/ccleaner/core/data/i;-><init>(Lcom/piriform/ccleaner/core/data/j;Ljava/lang/String;Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2088
    if-nez v9, :cond_8

    .line 2089
    :try_start_1
    iget v3, v12, Lcom/piriform/ccleaner/core/b/l;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v12, Lcom/piriform/ccleaner/core/b/l;->g:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v2

    .line 2099
    :goto_3
    :try_start_2
    iget-object v2, v12, Lcom/piriform/ccleaner/core/b/l;->e:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2100
    invoke-interface {v15, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2107
    :goto_4
    if-nez v9, :cond_1

    if-eqz v10, :cond_1

    .line 4057
    iget-object v2, v10, Lcom/piriform/ccleaner/core/data/i;->a:Lcom/piriform/ccleaner/core/data/j;

    .line 2107
    sget-object v3, Lcom/piriform/ccleaner/core/data/j;->b:Lcom/piriform/ccleaner/core/data/j;

    if-ne v2, v3, :cond_1

    .line 2108
    iget-wide v2, v12, Lcom/piriform/ccleaner/core/b/l;->f:J

    add-long/2addr v2, v6

    iput-wide v2, v12, Lcom/piriform/ccleaner/core/b/l;->f:J

    .line 2110
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v11, v1}, Lcom/piriform/ccleaner/core/b/l$a;->c(II)V

    .line 2069
    :cond_2
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_1

    .line 2144
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 2092
    :cond_4
    :try_start_3
    new-instance v2, Lcom/piriform/ccleaner/core/data/i;

    sget-object v3, Lcom/piriform/ccleaner/core/data/j;->b:Lcom/piriform/ccleaner/core/data/j;

    invoke-direct/range {v2 .. v9}, Lcom/piriform/ccleaner/core/data/i;-><init>(Lcom/piriform/ccleaner/core/data/j;Ljava/lang/String;Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Z)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2093
    :try_start_4
    iget-object v3, v12, Lcom/piriform/ccleaner/core/b/l;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2094
    iget-object v3, v12, Lcom/piriform/ccleaner/core/b/l;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Lcom/piriform/ccleaner/core/b/l$a;->b(I)V

    .line 2095
    if-nez v9, :cond_5

    .line 2096
    iget v3, v12, Lcom/piriform/ccleaner/core/b/l;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v12, Lcom/piriform/ccleaner/core/b/l;->h:I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    move-object v10, v2

    goto :goto_3

    .line 3073
    :cond_6
    iget-wide v2, v10, Lcom/piriform/ccleaner/core/data/i;->d:J

    add-long/2addr v2, v6

    iput-wide v2, v10, Lcom/piriform/ccleaner/core/data/i;->d:J

    goto :goto_4

    .line 55
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/a/a/v;->i:Lcom/piriform/ccleaner/core/b/l;

    .line 4152
    iget-object v2, v2, Lcom/piriform/ccleaner/core/b/l;->d:Ljava/util/List;

    .line 55
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/piriform/ccleaner/a/a/v;->j:Ljava/util/List;

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/a/a/v;->i:Lcom/piriform/ccleaner/core/b/l;

    .line 4156
    iget-object v2, v2, Lcom/piriform/ccleaner/core/b/l;->e:Ljava/util/List;

    .line 56
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/piriform/ccleaner/a/a/v;->k:Ljava/util/List;

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/a/a/v;->i:Lcom/piriform/ccleaner/core/b/l;

    .line 4168
    iget v2, v2, Lcom/piriform/ccleaner/core/b/l;->h:I

    .line 59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/piriform/ccleaner/a/a/v;->i:Lcom/piriform/ccleaner/core/b/l;

    .line 5164
    iget v3, v3, Lcom/piriform/ccleaner/core/b/l;->g:I

    .line 7053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 6084
    const v5, 0x7f090016

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v2, v6}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 6085
    const v6, 0x7f090016

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v4, v6, v3, v7}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 6086
    const v7, 0x7f0800df

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v6, v8, v5

    invoke-interface {v4, v7, v8}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 62
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/piriform/ccleaner/a/a/v;->i:Lcom/piriform/ccleaner/core/b/l;

    .line 7172
    iget v6, v5, Lcom/piriform/ccleaner/core/b/l;->g:I

    iget v5, v5, Lcom/piriform/ccleaner/core/b/l;->h:I

    add-int/2addr v5, v6

    .line 63
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/piriform/ccleaner/a/a/v;->i:Lcom/piriform/ccleaner/core/b/l;

    .line 8160
    iget-wide v6, v6, Lcom/piriform/ccleaner/core/b/l;->f:J

    .line 64
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v9, v5}, Lcom/piriform/ccleaner/a/a/v;->a(Ljava/lang/String;JI)V

    .line 8257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 9052
    iput-wide v6, v4, Lcom/piriform/ccleaner/core/i;->b:J

    .line 9257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 10072
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 11053
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 10074
    const v7, 0x7f080177

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10075
    const v7, 0x7f090016

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v2, v8}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10076
    const v2, 0x7f080170

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v6, v2, v7}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10077
    const v2, 0x7f090016

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v2, v3, v7}, Lcom/piriform/ccleaner/a/q;->a(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11112
    iget-object v2, v4, Lcom/piriform/ccleaner/core/i;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 11113
    iget-object v2, v4, Lcom/piriform/ccleaner/core/i;->f:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    sget v2, Lcom/piriform/ccleaner/a/a/d$a;->a:I

    goto/16 :goto_0

    .line 2102
    :catch_0
    move-exception v2

    goto/16 :goto_4

    :catch_1
    move-exception v3

    move-object v10, v2

    goto/16 :goto_4

    :catch_2
    move-exception v3

    move-object v10, v2

    goto/16 :goto_4

    :cond_8
    move-object v10, v2

    goto/16 :goto_3
.end method

.method public final c(II)V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/piriform/ccleaner/a/a/v;->a(II)V

    .line 135
    return-void
.end method

.method protected final f()Lcom/piriform/ccleaner/a/a/d$b;
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 91
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/v;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 95
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/v;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v2

    move-wide v4, v6

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/i;

    .line 96
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1, v9}, Lcom/piriform/ccleaner/a/a/v;->b(II)V

    .line 12061
    iget-object v1, v0, Lcom/piriform/ccleaner/core/data/i;->b:Ljava/lang/String;

    .line 12081
    iget-boolean v11, v0, Lcom/piriform/ccleaner/core/data/i;->f:Z

    .line 98
    if-nez v11, :cond_1

    .line 99
    iget-object v11, p0, Lcom/piriform/ccleaner/a/a/v;->i:Lcom/piriform/ccleaner/core/b/l;

    invoke-virtual {v11, v1}, Lcom/piriform/ccleaner/core/b/l;->a(Ljava/lang/String;)V

    .line 100
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13069
    iget-wide v0, v0, Lcom/piriform/ccleaner/core/data/i;->d:J

    .line 101
    add-long/2addr v0, v4

    :goto_1
    move-wide v4, v0

    move v1, v3

    .line 103
    goto :goto_0

    .line 105
    :cond_0
    iput-object v8, p0, Lcom/piriform/ccleaner/a/a/v;->l:Ljava/util/List;

    .line 14053
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->f:Lcom/piriform/ccleaner/a/q;

    .line 107
    const v1, 0x7f0800ee

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-interface {v0, v1, v3}, Lcom/piriform/ccleaner/a/q;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v6, v7, v1}, Lcom/piriform/ccleaner/a/a/v;->a(Ljava/lang/String;JI)V

    .line 14257
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/a;->h:Lcom/piriform/ccleaner/core/i;

    .line 15052
    iput-wide v4, v0, Lcom/piriform/ccleaner/core/i;->b:J

    .line 114
    sget-object v0, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    return-object v0

    :cond_1
    move-wide v0, v4

    goto :goto_1
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/v;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/a/a/v;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
