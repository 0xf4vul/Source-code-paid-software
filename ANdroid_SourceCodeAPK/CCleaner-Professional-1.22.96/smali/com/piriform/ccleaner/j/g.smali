.class public Lcom/piriform/ccleaner/j/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/j/g;->a:Landroid/content/Context;

    .line 110
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/piriform/ccleaner/core/a/m;)Lcom/d/a/t;
    .locals 19

    .prologue
    .line 435
    new-instance v9, Lcom/d/a/t$a;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/d/a/t$a;-><init>(Landroid/content/Context;)V

    .line 1770
    if-nez p1, :cond_0

    .line 1771
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "RequestHandler must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1773
    :cond_0
    iget-object v1, v9, Lcom/d/a/t$a;->g:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lcom/d/a/t$a;->g:Ljava/util/List;

    .line 1776
    :cond_1
    iget-object v1, v9, Lcom/d/a/t$a;->g:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1777
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "RequestHandler already registered."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1779
    :cond_2
    iget-object v1, v9, Lcom/d/a/t$a;->g:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1810
    iget-object v2, v9, Lcom/d/a/t$a;->a:Landroid/content/Context;

    .line 1812
    iget-object v1, v9, Lcom/d/a/t$a;->b:Lcom/d/a/j;

    if-nez v1, :cond_3

    .line 1813
    invoke-static {v2}, Lcom/d/a/ae;->a(Landroid/content/Context;)Lcom/d/a/j;

    move-result-object v1

    iput-object v1, v9, Lcom/d/a/t$a;->b:Lcom/d/a/j;

    .line 1815
    :cond_3
    iget-object v1, v9, Lcom/d/a/t$a;->d:Lcom/d/a/d;

    if-nez v1, :cond_4

    .line 1816
    new-instance v1, Lcom/d/a/m;

    invoke-direct {v1, v2}, Lcom/d/a/m;-><init>(Landroid/content/Context;)V

    iput-object v1, v9, Lcom/d/a/t$a;->d:Lcom/d/a/d;

    .line 1818
    :cond_4
    iget-object v1, v9, Lcom/d/a/t$a;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_5

    .line 1819
    new-instance v1, Lcom/d/a/v;

    invoke-direct {v1}, Lcom/d/a/v;-><init>()V

    iput-object v1, v9, Lcom/d/a/t$a;->c:Ljava/util/concurrent/ExecutorService;

    .line 1821
    :cond_5
    iget-object v1, v9, Lcom/d/a/t$a;->f:Lcom/d/a/t$f;

    if-nez v1, :cond_6

    .line 1822
    sget-object v1, Lcom/d/a/t$f;->a:Lcom/d/a/t$f;

    iput-object v1, v9, Lcom/d/a/t$a;->f:Lcom/d/a/t$f;

    .line 1825
    :cond_6
    new-instance v7, Lcom/d/a/aa;

    iget-object v1, v9, Lcom/d/a/t$a;->d:Lcom/d/a/d;

    invoke-direct {v7, v1}, Lcom/d/a/aa;-><init>(Lcom/d/a/d;)V

    .line 1827
    new-instance v1, Lcom/d/a/i;

    iget-object v3, v9, Lcom/d/a/t$a;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/d/a/t;->a:Landroid/os/Handler;

    iget-object v5, v9, Lcom/d/a/t$a;->b:Lcom/d/a/j;

    iget-object v6, v9, Lcom/d/a/t$a;->d:Lcom/d/a/d;

    invoke-direct/range {v1 .. v7}, Lcom/d/a/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/d/a/j;Lcom/d/a/d;Lcom/d/a/aa;)V

    .line 1829
    new-instance v8, Lcom/d/a/t;

    iget-object v11, v9, Lcom/d/a/t$a;->d:Lcom/d/a/d;

    iget-object v12, v9, Lcom/d/a/t$a;->e:Lcom/d/a/t$c;

    iget-object v13, v9, Lcom/d/a/t$a;->f:Lcom/d/a/t$f;

    iget-object v14, v9, Lcom/d/a/t$a;->g:Ljava/util/List;

    iget-object v0, v9, Lcom/d/a/t$a;->h:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v0

    iget-boolean v0, v9, Lcom/d/a/t$a;->i:Z

    move/from16 v17, v0

    iget-boolean v0, v9, Lcom/d/a/t$a;->j:Z

    move/from16 v18, v0

    move-object v9, v2

    move-object v10, v1

    move-object v15, v7

    invoke-direct/range {v8 .. v18}, Lcom/d/a/t;-><init>(Landroid/content/Context;Lcom/d/a/i;Lcom/d/a/d;Lcom/d/a/t$c;Lcom/d/a/t$f;Ljava/util/List;Lcom/d/a/aa;Landroid/graphics/Bitmap$Config;ZZ)V

    .line 437
    return-object v8
.end method

.method static a(Landroid/content/Context;Lcom/piriform/ccleaner/a/q;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/m/k;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Landroid/content/ClipboardManager;Lcom/piriform/ccleaner/f/m;Ljava/util/concurrent/Executor;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/b;
    .locals 12

    .prologue
    .line 317
    new-instance v0, Lcom/piriform/ccleaner/a/i;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/piriform/ccleaner/a/i;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/a/q;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/m/k;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Landroid/content/ClipboardManager;Lcom/piriform/ccleaner/f/m;Ljava/util/concurrent/Executor;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method

.method static a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/b;Lcom/piriform/ccleaner/m/m;Landroid/content/pm/PackageManager;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/e;
    .locals 9

    .prologue
    .line 289
    new-instance v0, Lcom/piriform/ccleaner/a/j;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/piriform/ccleaner/a/j;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/b;Lcom/piriform/ccleaner/m/m;Landroid/content/pm/PackageManager;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method

.method static a(Lcom/piriform/ccleaner/alarm/j;)Lcom/piriform/ccleaner/alarm/c;
    .locals 0

    .prologue
    .line 126
    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/piriform/ccleaner/o/b;Lcom/piriform/ccleaner/o/c;Lf/g;)Lcom/piriform/ccleaner/alarm/j;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/piriform/ccleaner/alarm/k;

    new-instance v1, Lcom/piriform/ccleaner/alarm/e;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/alarm/e;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/piriform/ccleaner/alarm/k;-><init>(Lcom/piriform/ccleaner/alarm/c;Lcom/piriform/ccleaner/o/b;Lcom/piriform/ccleaner/o/c;Lf/g;)V

    return-object v0
.end method

.method static a()Lcom/piriform/ccleaner/b/e;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/piriform/ccleaner/b/g;

    invoke-direct {v0}, Lcom/piriform/ccleaner/b/g;-><init>()V

    return-object v0
.end method

.method static a(Ljava/util/concurrent/Executor;)Lcom/piriform/ccleaner/b;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/piriform/ccleaner/b;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/b;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/piriform/ccleaner/cleaning/advanced/p;)Lcom/piriform/ccleaner/cleaning/advanced/b;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/b;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/b;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/cleaning/advanced/p;)V

    return-object v0
.end method

.method static a(Lcom/piriform/ccleaner/b/a;)Lcom/piriform/ccleaner/cleaning/b;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/piriform/ccleaner/cleaning/b;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/cleaning/b;-><init>(Lcom/piriform/ccleaner/b/a;)V

    return-object v0
.end method

.method static a(Lcom/d/a/t;)Lcom/piriform/ccleaner/core/a/a;
    .locals 1

    .prologue
    .line 450
    new-instance v0, Lcom/piriform/ccleaner/core/a/a;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/core/a/a;-><init>(Lcom/d/a/t;)V

    return-object v0
.end method

.method static a(Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;)Lcom/piriform/ccleaner/core/a/m;
    .locals 1

    .prologue
    .line 444
    new-instance v0, Lcom/piriform/ccleaner/core/a/m;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/core/a/m;-><init>(Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/piriform/ccleaner/core/b/g;)Lcom/piriform/ccleaner/f/m;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Lcom/piriform/ccleaner/f/t;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/f/t;-><init>(Landroid/content/Context;)V

    .line 251
    new-instance v1, Lcom/piriform/ccleaner/f/f;

    invoke-direct {v1, v0, p1}, Lcom/piriform/ccleaner/f/f;-><init>(Lcom/piriform/ccleaner/f/l;Lcom/piriform/ccleaner/core/b/g;)V

    .line 252
    new-instance v2, Lcom/piriform/ccleaner/f/s;

    invoke-direct {v2, v1, v0}, Lcom/piriform/ccleaner/f/s;-><init>(Lcom/piriform/ccleaner/f/n;Lcom/piriform/ccleaner/f/l;)V

    return-object v2
.end method

.method static a(Lcom/piriform/ccleaner/m/i;Landroid/content/pm/PackageManager;)Lcom/piriform/ccleaner/m/h;
    .locals 2

    .prologue
    .line 383
    .line 1016
    iget-object v0, p0, Lcom/piriform/ccleaner/m/i;->a:Lcom/piriform/ccleaner/s/e;

    .line 1042
    iget v0, v0, Lcom/piriform/ccleaner/s/e;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1016
    :goto_0
    if-eqz v0, :cond_1

    .line 1017
    new-instance v0, Lcom/piriform/ccleaner/m/f;

    invoke-direct {v0}, Lcom/piriform/ccleaner/m/f;-><init>()V

    :goto_1
    return-object v0

    .line 1042
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1019
    :cond_1
    new-instance v0, Lcom/piriform/ccleaner/m/e;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/m/e;-><init>(Landroid/content/pm/PackageManager;)V

    goto :goto_1
.end method

.method static a(Lcom/piriform/ccleaner/s/e;)Lcom/piriform/ccleaner/m/i;
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/piriform/ccleaner/m/i;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/m/i;-><init>(Lcom/piriform/ccleaner/s/e;)V

    return-object v0
.end method

.method static a(Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/m/k;
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lcom/piriform/ccleaner/m/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/piriform/ccleaner/m/b;-><init>(Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method

.method static a(Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/h;)Lcom/piriform/ccleaner/m/m;
    .locals 1

    .prologue
    .line 374
    new-instance v0, Lcom/piriform/ccleaner/m/m;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/m/m;-><init>(Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/h;)V

    return-object v0
.end method

.method static a(Lcom/piriform/ccleaner/scheduler/n;)Lcom/piriform/ccleaner/professional/o;
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/piriform/ccleaner/professional/b;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/professional/b;-><init>(Lcom/piriform/ccleaner/scheduler/n;)V

    return-object v0
.end method

.method static a(Lcom/piriform/ccleaner/alarm/c;Lcom/piriform/ccleaner/n/a;)Lcom/piriform/ccleaner/reminder/d;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/piriform/ccleaner/reminder/d;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/reminder/d;-><init>(Lcom/piriform/ccleaner/alarm/c;Lcom/piriform/ccleaner/n/a;)V

    return-object v0
.end method

.method static a(Landroid/content/ContentResolver;)Lcom/piriform/ccleaner/s/d;
    .locals 1

    .prologue
    .line 356
    new-instance v0, Lcom/piriform/ccleaner/s/d;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/s/d;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method static a(Lcom/piriform/ccleaner/s/e;Lcom/piriform/ccleaner/s/i;Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/s/j;)Lcom/piriform/ccleaner/s/h;
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/piriform/ccleaner/s/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/piriform/ccleaner/s/a;-><init>(Lcom/piriform/ccleaner/s/e;Lcom/piriform/ccleaner/s/i;Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/s/j;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/piriform/ccleaner/s/i;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/piriform/ccleaner/s/i;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/s/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/s/h;)Lcom/piriform/ccleaner/s/k;
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/piriform/ccleaner/s/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/piriform/ccleaner/s/b;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/s/h;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/settings/a;
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lcom/piriform/ccleaner/settings/a;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/settings/a;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method

.method static a(Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/s/k;Lcom/piriform/ccleaner/m/k;Lf/g;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/storageanalyzer/backend/b;
    .locals 6

    .prologue
    .line 340
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;-><init>(Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/s/k;Lcom/piriform/ccleaner/m/k;Lf/g;Lcom/piriform/ccleaner/b/e;)V

    return-object v0
.end method

.method static a(Ljava/util/concurrent/Executor;Lcom/piriform/ccleaner/t/s;)Lcom/piriform/ccleaner/t/p;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/piriform/ccleaner/t/p;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/t/p;-><init>(Ljava/util/concurrent/Executor;Lcom/piriform/ccleaner/t/s;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/piriform/ccleaner/s/h;)Lcom/piriform/ccleaner/ui/d/a;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/piriform/ccleaner/ui/d/a;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/ui/d/a;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/s/h;)V

    return-object v0
.end method

.method static b(Landroid/content/ContentResolver;)Lcom/piriform/ccleaner/core/b/g;
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/piriform/ccleaner/core/b/g;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/core/b/g;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method static b()Lcom/piriform/ccleaner/professional/l;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/piriform/ccleaner/professional/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/professional/a;-><init>()V

    return-object v0
.end method

.method static b(Landroid/content/Context;)Lcom/piriform/ccleaner/reminder/b;
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/piriform/ccleaner/reminder/b;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/reminder/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static b(Landroid/content/Context;Lcom/piriform/ccleaner/s/h;)Lcom/piriform/ccleaner/ui/d/b;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/piriform/ccleaner/ui/d/b;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/ui/d/b;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/s/h;)V

    return-object v0
.end method

.method static c(Landroid/content/Context;)Landroid/content/ClipboardManager;
    .locals 1

    .prologue
    .line 264
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method static c()Lcom/piriform/ccleaner/s/e;
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/piriform/ccleaner/s/e;

    invoke-direct {v0}, Lcom/piriform/ccleaner/s/e;-><init>()V

    return-object v0
.end method

.method static c(Landroid/content/ContentResolver;)Lcom/piriform/ccleaner/storageanalyzer/backend/a;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/backend/a;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/backend/a;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method static d(Landroid/content/Context;)Lcom/piriform/ccleaner/appmanager/c;
    .locals 3

    .prologue
    .line 270
    new-instance v1, Lcom/piriform/ccleaner/appmanager/c;

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v0, "activity"

    .line 272
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {v1, v2, v0}, Lcom/piriform/ccleaner/appmanager/c;-><init>(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V

    return-object v1
.end method

.method static d()Lcom/piriform/ccleaner/s/j;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/piriform/ccleaner/s/c;

    invoke-direct {v0}, Lcom/piriform/ccleaner/s/c;-><init>()V

    return-object v0
.end method

.method static e(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static e()Lcom/piriform/ccleaner/f/d;
    .locals 1

    .prologue
    .line 418
    new-instance v0, Lcom/piriform/ccleaner/f/c;

    invoke-direct {v0}, Lcom/piriform/ccleaner/f/c;-><init>()V

    return-object v0
.end method

.method static f(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static g(Landroid/content/Context;)Lcom/piriform/ccleaner/a/q;
    .locals 2

    .prologue
    .line 412
    new-instance v0, Lcom/piriform/ccleaner/a/k;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/a/k;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method static h(Landroid/content/Context;)Lcom/novoda/notils/c/b/e;
    .locals 1

    .prologue
    .line 423
    invoke-static {p0}, Lcom/novoda/notils/c/b/e;->a(Landroid/content/Context;)Lcom/novoda/notils/c/b/e;

    move-result-object v0

    return-object v0
.end method
