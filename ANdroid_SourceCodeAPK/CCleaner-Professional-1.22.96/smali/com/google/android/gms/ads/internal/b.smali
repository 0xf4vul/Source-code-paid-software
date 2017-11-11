.class public abstract Lcom/google/android/gms/ads/internal/b;
.super Lcom/google/android/gms/ads/internal/a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/i;
.implements Lcom/google/android/gms/ads/internal/purchase/j;
.implements Lcom/google/android/gms/ads/internal/t;
.implements Lcom/google/android/gms/internal/wd;
.implements Lcom/google/android/gms/internal/xr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field protected final j:Lcom/google/android/gms/internal/ya;

.field protected transient k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/ads/internal/e;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/w;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/ads/internal/w;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;)V

    invoke-direct {p0, v0, p4, p6}, Lcom/google/android/gms/ads/internal/b;-><init>(Lcom/google/android/gms/ads/internal/w;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/ads/internal/e;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/internal/w;Lcom/google/android/gms/internal/ya;Lcom/google/android/gms/ads/internal/e;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/ads/internal/w;Lcom/google/android/gms/ads/internal/e;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/b;->j:Lcom/google/android/gms/internal/ya;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->k:Z

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/zzec;Landroid/os/Bundle;Lcom/google/android/gms/internal/acy;)Lcom/google/android/gms/internal/zzmk$a;
    .locals 47

    .prologue
    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v2

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/bd;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/w$a;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/w$a;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v6, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/w$a;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/w$a;->getHeight()I

    move-result v10

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/w$a;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int v4, v3, v7

    if-lez v4, :cond_0

    add-int v4, v6, v10

    if-lez v4, :cond_0

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v3, v4, :cond_0

    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v6, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    const/4 v11, 0x5

    invoke-direct {v4, v11}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v11, "x"

    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "y"

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "width"

    invoke-virtual {v4, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "height"

    invoke-virtual {v4, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "visible"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acz;->c()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    new-instance v3, Lcom/google/android/gms/internal/acx;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    invoke-direct {v3, v10, v6}, Lcom/google/android/gms/internal/acx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/google/android/gms/ads/internal/w;->l:Lcom/google/android/gms/internal/acx;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->l:Lcom/google/android/gms/internal/acx;

    .line 14000
    iget-object v3, v2, Lcom/google/android/gms/internal/acx;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/google/android/gms/internal/acx;->i:J

    iget-object v6, v2, Lcom/google/android/gms/internal/acx;->a:Lcom/google/android/gms/internal/acz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/acz;->d()Lcom/google/android/gms/internal/ada;

    move-result-object v6

    iget-wide v12, v2, Lcom/google/android/gms/internal/acx;->i:J

    .line 15000
    iget-object v7, v6, Lcom/google/android/gms/internal/ada;->f:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acz;->m()J

    move-result-wide v14

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v16

    iget-wide v0, v6, Lcom/google/android/gms/internal/ada;->b:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v2, v18, v20

    if-nez v2, :cond_4

    sub-long v14, v16, v14

    sget-object v2, Lcom/google/android/gms/internal/ud;->aL:Lcom/google/android/gms/internal/ty;

    .line 16000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v2

    .line 15000
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v2, v14, v18

    if-lez v2, :cond_3

    .line 17000
    const/4 v2, -0x1

    iput v2, v6, Lcom/google/android/gms/internal/ada;->d:I

    .line 15000
    :goto_1
    iput-wide v12, v6, Lcom/google/android/gms/internal/ada;->b:J

    iget-wide v12, v6, Lcom/google/android/gms/internal/ada;->b:J

    iput-wide v12, v6, Lcom/google/android/gms/internal/ada;->a:J

    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    const-string/jumbo v11, "gw"

    const/4 v12, 0x2

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14000
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/zzeg;)Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->p:Lcom/google/android/gms/internal/ta;

    if-eqz v2, :cond_2

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->p:Lcom/google/android/gms/internal/ta;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ta;->a()J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v22

    :cond_2
    :goto_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0, v10}, Lcom/google/android/gms/internal/acz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/adb;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/h/k;

    invoke-virtual {v2}, Landroid/support/v4/h/k;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/h/k;

    invoke-virtual {v2, v3}, Landroid/support/v4/h/k;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    :catch_0
    move-exception v2

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 15000
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acz;->o()I

    move-result v2

    .line 18000
    iput v2, v6, Lcom/google/android/gms/internal/ada;->d:I

    goto/16 :goto_1

    .line 15000
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    .line 14000
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 15000
    :cond_4
    :try_start_7
    iput-wide v12, v6, Lcom/google/android/gms/internal/ada;->a:J

    goto/16 :goto_2

    :cond_5
    iget v2, v6, Lcom/google/android/gms/internal/ada;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/google/android/gms/internal/ada;->c:I

    iget v2, v6, Lcom/google/android/gms/internal/ada;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/google/android/gms/internal/ada;->d:I

    iget v2, v6, Lcom/google/android/gms/internal/ada;->d:I

    if-nez v2, :cond_6

    const-wide/16 v12, 0x0

    iput-wide v12, v6, Lcom/google/android/gms/internal/ada;->e:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/acz;->a(J)Ljava/util/concurrent/Future;

    :goto_6
    monitor-exit v7

    goto/16 :goto_3

    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acz;->n()J

    move-result-wide v12

    sub-long v12, v16, v12

    iput-wide v12, v6, Lcom/google/android/gms/internal/ada;->e:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 0
    :catch_1
    move-exception v2

    const-string/jumbo v2, "Cannot get correlation id, default to 0."

    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->q:Lcom/google/android/gms/internal/zf;

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->r:Lcom/google/android/gms/internal/zj;

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/acz;->r()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_8
    new-instance v6, Lcom/google/android/gms/ads/internal/b$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/google/android/gms/ads/internal/b$1;-><init>(Lcom/google/android/gms/ads/internal/b;)V

    invoke-static {v6}, Lcom/google/android/gms/internal/adi;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/aeh;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/ads/internal/b$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/b$2;-><init>(Lcom/google/android/gms/ads/internal/b;)V

    invoke-static {v7}, Lcom/google/android/gms/internal/adi;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/aeh;

    move-result-object v36

    new-instance v7, Lcom/google/android/gms/ads/internal/b$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/google/android/gms/ads/internal/b$3;-><init>(Lcom/google/android/gms/ads/internal/b;)V

    invoke-static {v7}, Lcom/google/android/gms/internal/adi;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/aeh;

    move-result-object v46

    const/16 v37, 0x0

    if-eqz p3, :cond_8

    .line 19000
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/google/android/gms/internal/acy;->d:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 0
    :cond_8
    new-instance v28, Lcom/google/android/gms/internal/aee;

    invoke-direct/range {v28 .. v28}, Lcom/google/android/gms/internal/aee;-><init>()V

    new-instance v7, Lcom/google/android/gms/ads/internal/b$4;

    move-object/from16 v0, v28

    invoke-direct {v7, v6, v0, v2, v3}, Lcom/google/android/gms/ads/internal/b$4;-><init>(Lcom/google/android/gms/internal/aeh;Lcom/google/android/gms/internal/aee;ZZ)V

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/aeh;->a(Ljava/lang/Runnable;)V

    new-instance v3, Lcom/google/android/gms/internal/zzmk$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    .line 20000
    iget-object v11, v2, Lcom/google/android/gms/internal/acz;->b:Ljava/lang/String;

    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v12, v2, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v14, v2, Lcom/google/android/gms/ads/internal/w;->B:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acz;->g()Z

    move-result v17

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    invoke-static {}, Lcom/google/android/gms/internal/ud;->a()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/w;->a:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/w;->w:Lcom/google/android/gms/internal/zzhc;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    .line 21000
    iget-boolean v5, v2, Lcom/google/android/gms/ads/internal/w;->J:Z

    if-eqz v5, :cond_9

    iget-boolean v5, v2, Lcom/google/android/gms/ads/internal/w;->K:Z

    if-nez v5, :cond_f

    :cond_9
    iget-boolean v5, v2, Lcom/google/android/gms/ads/internal/w;->J:Z

    if-eqz v5, :cond_d

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/w;->L:Z

    if-eqz v2, :cond_c

    const-string/jumbo v29, "top-scrollable"

    .line 0
    :goto_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    invoke-static {}, Lcom/google/android/gms/internal/adj;->d()F

    move-result v30

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    invoke-static {}, Lcom/google/android/gms/internal/adj;->e()Z

    move-result v31

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/adj;->i(Landroid/content/Context;)I

    move-result v32

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-static {v2}, Lcom/google/android/gms/internal/adj;->b(Landroid/view/View;)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    instance-of v0, v2, Landroid/app/Activity;

    move/from16 v34, v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/acz;->l()Z

    move-result v35

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    .line 22000
    iget-boolean v0, v2, Lcom/google/android/gms/internal/acz;->h:Z

    move/from16 v38, v0

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->B()Lcom/google/android/gms/internal/wp;

    move-result-object v2

    .line 23000
    iget-object v2, v2, Lcom/google/android/gms/internal/wp;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v39

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    invoke-static {}, Lcom/google/android/gms/internal/adj;->f()Landroid/os/Bundle;

    move-result-object v40

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->m()Lcom/google/android/gms/internal/adn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adn;->a()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/w;->y:Lcom/google/android/gms/internal/zzfc;

    move-object/from16 v42, v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->m()Lcom/google/android/gms/internal/adn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adn;->b()Z

    move-result v43

    invoke-static {}, Lcom/google/android/gms/internal/xb;->a()Lcom/google/android/gms/internal/xb;

    move-result-object v2

    .line 24000
    new-instance v44, Landroid/os/Bundle;

    invoke-direct/range {v44 .. v44}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "ipl"

    iget v0, v2, Lcom/google/android/gms/internal/xb;->a:I

    move/from16 v16, v0

    move-object/from16 v0, v44

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "ipds"

    iget v0, v2, Lcom/google/android/gms/internal/xb;->b:I

    move/from16 v16, v0

    move-object/from16 v0, v44

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "ipde"

    iget v0, v2, Lcom/google/android/gms/internal/xb;->c:I

    move/from16 v16, v0

    move-object/from16 v0, v44

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "iph"

    iget v0, v2, Lcom/google/android/gms/internal/xb;->d:I

    move/from16 v16, v0

    move-object/from16 v0, v44

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "ipm"

    iget v2, v2, Lcom/google/android/gms/internal/xb;->e:I

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    .line 27000
    const-string/jumbo v16, "admob"

    const/16 v45, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v45

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 26000
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v16

    const-string/jumbo v45, "never_pool_slots"

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v45

    move-object/from16 v5, p1

    move-object/from16 v16, p2

    .line 0
    invoke-direct/range {v3 .. v46}, Lcom/google/android/gms/internal/zzmk$a;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzhc;Ljava/util/concurrent/Future;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/zzfc;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;)V

    return-object v3

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 21000
    :cond_c
    const-string/jumbo v29, "top-locked"

    goto/16 :goto_9

    :cond_d
    iget-boolean v5, v2, Lcom/google/android/gms/ads/internal/w;->K:Z

    if-eqz v5, :cond_f

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/w;->L:Z

    if-eqz v2, :cond_e

    const-string/jumbo v29, "bottom-scrollable"

    goto/16 :goto_9

    :cond_e
    const-string/jumbo v29, "bottom-locked"

    goto/16 :goto_9

    :cond_f
    const-string/jumbo v29, ""

    goto/16 :goto_9
.end method


# virtual methods
.method public final A()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->f()V

    return-void
.end method

.method public final B()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->d()V

    return-void
.end method

.method public final C()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->q:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Mediation adapter "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/acw;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->u()V

    return-void
.end method

.method public final D()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->E()V

    return-void
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/acw;Z)V

    return-void
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public G()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "showInterstitial is not supported for current ad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    new-instance v0, Lcom/google/android/gms/ads/internal/b$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/b$6;-><init>(Lcom/google/android/gms/ads/internal/b;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/adj;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final I()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    new-instance v0, Lcom/google/android/gms/ads/internal/b$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/b$7;-><init>(Lcom/google/android/gms/ads/internal/b;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/adj;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Lcom/google/android/gms/internal/qx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qx;->a(Lcom/google/android/gms/internal/acw;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->k:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->r()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/w;->l:Lcom/google/android/gms/internal/acx;

    .line 11000
    iget-object v2, v1, Lcom/google/android/gms/internal/acx;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v4, v1, Lcom/google/android/gms/internal/acx;->j:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/acx;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/acx;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/acx$a;

    .line 12000
    iget-wide v4, v0, Lcom/google/android/gms/internal/acx$a;->b:J

    .line 11000
    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 13000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/acx$a;->b:J

    .line 11000
    iget-object v0, v1, Lcom/google/android/gms/internal/acx;->a:Lcom/google/android/gms/internal/acz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/acz;->a(Lcom/google/android/gms/internal/acx;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lcom/google/android/gms/internal/acw;Z)V
    .locals 7

    if-nez p1, :cond_1

    const-string/jumbo v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->c(Lcom/google/android/gms/internal/acw;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v0, v0, Lcom/google/android/gms/internal/xq;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/acq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->x()Lcom/google/android/gms/internal/xv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v2, v2, Lcom/google/android/gms/internal/xq;->d:Ljava/util/List;

    invoke-static {v6, v2}, Lcom/google/android/gms/ads/internal/b;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/xv;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/acw;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v0, v0, Lcom/google/android/gms/internal/xq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/acq;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    iget-object v0, v0, Lcom/google/android/gms/internal/xp;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->x()Lcom/google/android/gms/internal/xv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    iget-object v5, v2, Lcom/google/android/gms/internal/xp;->g:Ljava/util/List;

    move-object v2, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/xv;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/acw;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/zf;)V
    .locals 1

    const-string/jumbo v0, "setInAppPurchaseListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->q:Lcom/google/android/gms/internal/zf;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zj;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "setPlayStorePurchaseParams must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    new-instance v1, Lcom/google/android/gms/ads/internal/purchase/k;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/internal/purchase/k;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->C:Lcom/google/android/gms/ads/internal/purchase/k;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->r:Lcom/google/android/gms/internal/zj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acz;->f()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/c;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->r:Lcom/google/android/gms/internal/zj;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->C:Lcom/google/android/gms/ads/internal/purchase/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/purchase/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zj;Lcom/google/android/gms/ads/internal/purchase/k;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/d;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->q:Lcom/google/android/gms/internal/zf;

    if-nez v1, :cond_5

    const-string/jumbo v1, "InAppPurchaseListener is not set. Try to launch default purchase flow."

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/aea;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "Google Play Service unavailable, cannot launch default purchase flow."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->r:Lcom/google/android/gms/internal/zj;

    if-nez v1, :cond_1

    const-string/jumbo v0, "PlayStorePurchaseListener is not set."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->C:Lcom/google/android/gms/ads/internal/purchase/k;

    if-nez v1, :cond_2

    const-string/jumbo v0, "PlayStorePurchaseVerifier is not initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/w;->G:Z

    if-eqz v1, :cond_3

    const-string/jumbo v0, "An in-app purchase request is already in progress, abort"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/w;->G:Z

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->r:Lcom/google/android/gms/internal/zj;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/w;->G:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/w;->G:Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->s()Lcom/google/android/gms/ads/internal/purchase/i;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzqh;->d:Z

    new-instance v3, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/w;->C:Lcom/google/android/gms/ads/internal/purchase/k;

    invoke-direct {v3, v4, v5, v0, p0}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/purchase/k;Lcom/google/android/gms/internal/ze;Lcom/google/android/gms/ads/internal/purchase/j;)V

    .line 28000
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.google.android.gms.ads.purchase.InAppPurchaseActivity"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "com.google.android.gms.ads.internal.purchase.useClientJar"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, v3}, Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;->a(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/GInAppPurchaseManagerInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 0
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->q:Lcom/google/android/gms/internal/zf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zf;->a(Lcom/google/android/gms/internal/ze;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/f;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->r:Lcom/google/android/gms/internal/zj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/w;->r:Lcom/google/android/gms/internal/zj;

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/g;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/purchase/g;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/f;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zj;->a(Lcom/google/android/gms/internal/zi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/b$5;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/ads/internal/b$5;-><init>(Lcom/google/android/gms/ads/internal/b;Landroid/content/Intent;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Fail to invoke PlayStorePurchaseListener."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/acw;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->g:Lcom/google/android/gms/internal/zzec;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->g:Lcom/google/android/gms/internal/zzec;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/b;->g:Lcom/google/android/gms/internal/zzec;

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/acw;Z)Z

    move-result v0

    return v0

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/acw;->a:Lcom/google/android/gms/internal/zzec;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "_noRefresh"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/acw;Lcom/google/android/gms/internal/acw;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 0
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/acw;->s:Lcom/google/android/gms/internal/xs;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/acw;->s:Lcom/google/android/gms/internal/xs;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/xs;->a(Lcom/google/android/gms/internal/xr;)V

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/acw;->s:Lcom/google/android/gms/internal/xs;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/google/android/gms/internal/acw;->s:Lcom/google/android/gms/internal/xs;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/xs;->a(Lcom/google/android/gms/internal/xr;)V

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget v1, v0, Lcom/google/android/gms/internal/xq;->p:I

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget v0, v0, Lcom/google/android/gms/internal/xq;->q:I

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->D:Lcom/google/android/gms/internal/adc;

    .line 8000
    iget-object v3, v2, Lcom/google/android/gms/internal/adc;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput v1, v2, Lcom/google/android/gms/internal/adc;->b:I

    iput v0, v2, Lcom/google/android/gms/internal/adc;->c:I

    iget-object v0, v2, Lcom/google/android/gms/internal/adc;->d:Lcom/google/android/gms/internal/acz;

    iget-object v1, v2, Lcom/google/android/gms/internal/adc;->e:Ljava/lang/String;

    .line 9000
    iget-object v4, v0, Lcom/google/android/gms/internal/acz;->a:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/acz;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8000
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 0
    const/4 v0, 0x1

    return v0

    .line 9000
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 8000
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/acw;Z)Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 0
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/acw;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/s;

    iget-wide v2, p2, Lcom/google/android/gms/internal/acw;->h:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/s;->a(Lcom/google/android/gms/internal/zzec;J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/s;

    .line 10000
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/s;->b:Z

    .line 0
    return v0

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-wide v0, v0, Lcom/google/android/gms/internal/xq;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/s;

    iget-object v1, p2, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-wide v2, v1, Lcom/google/android/gms/internal/xq;->i:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/ads/internal/s;->a(Lcom/google/android/gms/internal/zzec;J)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/acw;->n:Z

    if-nez v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/acw;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/s;->a(Lcom/google/android/gms/internal/zzec;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/ul;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->x()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/acz;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/rk;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v8, v5

    .line 0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/s;->a()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iput v3, v0, Lcom/google/android/gms/ads/internal/w;->F:I

    sget-object v0, Lcom/google/android/gms/internal/ud;->cD:Lcom/google/android/gms/internal/ty;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acz;->p()Lcom/google/android/gms/internal/acy;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->A()Lcom/google/android/gms/ads/internal/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    move-object v7, v5

    .line 3000
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/h;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzqh;ZLcom/google/android/gms/internal/acy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 0
    :goto_2
    invoke-direct {p0, p1, v8, v4}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/zzec;Landroid/os/Bundle;Lcom/google/android/gms/internal/acy;)Lcom/google/android/gms/internal/zzmk$a;

    move-result-object v1

    const-string/jumbo v0, "seq_num"

    iget-object v2, v1, Lcom/google/android/gms/internal/zzmk$a;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ul;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "request_id"

    iget-object v2, v1, Lcom/google/android/gms/internal/zzmk$a;->u:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ul;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "session_id"

    iget-object v2, v1, Lcom/google/android/gms/internal/zzmk$a;->h:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ul;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/zzmk$a;->f:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "app_version"

    iget-object v2, v1, Lcom/google/android/gms/internal/zzmk$a;->f:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/ul;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->a()Lcom/google/android/gms/internal/aah;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    .line 5000
    iget-object v0, v1, Lcom/google/android/gms/internal/zzmk$a;->b:Lcom/google/android/gms/internal/zzec;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzec;->c:Landroid/os/Bundle;

    const-string/jumbo v4, "sdk_less_server_data"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/aau;

    invoke-direct {v0, v3, v1, p0}, Lcom/google/android/gms/internal/aau;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk$a;Lcom/google/android/gms/internal/aah$a;)V

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    .line 0
    iput-object v0, v2, Lcom/google/android/gms/ads/internal/w;->g:Lcom/google/android/gms/internal/ade;

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1000
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/adj;->a(Lcom/google/android/gms/internal/rk;)Landroid/os/Bundle;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_1

    .line 5000
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/aai;

    invoke-direct {v0, v3, v1, p0}, Lcom/google/android/gms/internal/aai;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzmk$a;Lcom/google/android/gms/internal/aah$a;)V

    goto :goto_3

    :cond_4
    move-object v4, v5

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Lcom/google/android/gms/internal/qx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qx;->b(Lcom/google/android/gms/internal/acw;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/acw;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 0
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/acw;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Disable the debug gesture detector on the mediation ad frame."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    .line 6000
    const-string/jumbo v1, "Disable debug gesture detector on adFrame."

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/google/android/gms/ads/internal/w$a;->c:Z

    .line 0
    :cond_0
    const-string/jumbo v0, "Pinging network fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->x()Lcom/google/android/gms/internal/xv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    iget-object v5, v2, Lcom/google/android/gms/internal/xp;->h:Ljava/util/List;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/xv;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/acw;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v0, v0, Lcom/google/android/gms/internal/xq;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v0, v0, Lcom/google/android/gms/internal/xq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "Pinging urls remotely"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v1, v1, Lcom/google/android/gms/internal/xq;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/acw;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v0, v0, Lcom/google/android/gms/internal/xq;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->x()Lcom/google/android/gms/internal/xv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v5, v2, Lcom/google/android/gms/internal/xq;->e:Ljava/util/List;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/xv;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/acw;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v0, "Enable the debug gesture detector on the admob ad frame."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    .line 7000
    const-string/jumbo v1, "Enable debug gesture detector on adFrame."

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/w$a;->c:Z

    goto :goto_0
.end method

.method protected final b(Lcom/google/android/gms/internal/zzec;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/a;->b(Lcom/google/android/gms/internal/zzec;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Lcom/google/android/gms/internal/qx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qx;->c(Lcom/google/android/gms/internal/acw;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/b;->k:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->t()V

    return-void
.end method

.method public final e()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v0, v0, Lcom/google/android/gms/internal/xq;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/acq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->x()Lcom/google/android/gms/internal/xv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v5, v5, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v5, v5, Lcom/google/android/gms/internal/xq;->c:Ljava/util/List;

    invoke-static {v6, v5}, Lcom/google/android/gms/ads/internal/b;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/xv;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/acw;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->r:Lcom/google/android/gms/internal/xq;

    iget-object v0, v0, Lcom/google/android/gms/internal/xq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/acq;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    iget-object v0, v0, Lcom/google/android/gms/internal/xp;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->x()Lcom/google/android/gms/internal/xv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/internal/zzqh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v5, v5, Lcom/google/android/gms/internal/acw;->o:Lcom/google/android/gms/internal/xp;

    iget-object v5, v5, Lcom/google/android/gms/internal/xp;->f:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/xv;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/acw;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/a;->e()V

    goto/16 :goto_0
.end method

.method public m()V
    .locals 2

    const-string/jumbo v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-static {v0}, Lcom/google/android/gms/internal/adk;->a(Lcom/google/android/gms/internal/aer;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/yb;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Lcom/google/android/gms/internal/qx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qx;->b(Lcom/google/android/gms/internal/acw;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/s;->b()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public n()V
    .locals 2

    const-string/jumbo v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/w;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->b:Lcom/google/android/gms/internal/aer;

    invoke-static {v1}, Lcom/google/android/gms/internal/adk;->b(Lcom/google/android/gms/internal/aer;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    iget-object v1, v1, Lcom/google/android/gms/internal/acw;->p:Lcom/google/android/gms/internal/yb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/yb;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->u()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/ads/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/s;->c()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->h:Lcom/google/android/gms/internal/qx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/internal/acw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qx;->c(Lcom/google/android/gms/internal/acw;)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Could not resume mediation adapter."

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected x()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.permission.INTERNET"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final y()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->e()V

    return-void
.end method

.method public final z()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/b;->a()V

    return-void
.end method
