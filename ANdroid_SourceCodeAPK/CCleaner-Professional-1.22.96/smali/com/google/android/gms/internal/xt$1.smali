.class final Lcom/google/android/gms/internal/xt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xt;->a(JJ)Lcom/google/android/gms/internal/xu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xs;

.field final synthetic b:Lcom/google/android/gms/internal/xt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xt;Lcom/google/android/gms/internal/xs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    iput-object p2, p0, Lcom/google/android/gms/internal/xt$1;->a:Lcom/google/android/gms/internal/xs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .prologue
    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    .line 1000
    iget-object v15, v1, Lcom/google/android/gms/internal/xt;->f:Ljava/lang/Object;

    .line 0
    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    .line 2000
    iget v1, v1, Lcom/google/android/gms/internal/xt;->m:I

    .line 0
    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    monitor-exit v15

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    .line 3000
    invoke-virtual {v2}, Lcom/google/android/gms/internal/xt;->b()Lcom/google/android/gms/internal/yb;

    move-result-object v2

    .line 4000
    iput-object v2, v1, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    .line 5000
    iget-object v1, v1, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    .line 0
    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/xt;->a(I)V

    monitor-exit v15

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    .line 6000
    invoke-virtual {v1}, Lcom/google/android/gms/internal/xt;->c()Z

    move-result v1

    .line 0
    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    .line 7000
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/xt;->b(I)Z

    move-result v1

    .line 0
    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    .line 8000
    iget-object v1, v1, Lcom/google/android/gms/internal/xt;->a:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Ignoring adapter "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " as delayed impression is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/xt;->a(I)V

    monitor-exit v15

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/xt$1;->a:Lcom/google/android/gms/internal/xs;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    .line 9000
    iget-object v3, v1, Lcom/google/android/gms/internal/xs;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v2, v1, Lcom/google/android/gms/internal/xs;->b:Lcom/google/android/gms/internal/xu$a;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/xt$1;->b:Lcom/google/android/gms/internal/xt;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/xt$1;->a:Lcom/google/android/gms/internal/xs;

    .line 11000
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v1, v1, Lcom/google/android/gms/internal/xp;->i:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xt;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->g:Lcom/google/android/gms/internal/zzqh;

    iget v1, v1, Lcom/google/android/gms/internal/zzqh;->c:I

    const v2, 0x3e8fa0

    if-ge v1, v2, :cond_4

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->d:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/gms/internal/xt;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/gms/internal/xt;->c:Lcom/google/android/gms/internal/zzec;

    invoke-interface {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/yc;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 0
    :goto_1
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 9000
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 11000
    :cond_3
    :try_start_8
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/gms/internal/xt;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/gms/internal/xt;->d:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/google/android/gms/internal/xt;->c:Lcom/google/android/gms/internal/zzec;

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/yc;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_9
    const-string/jumbo v2, "Could not request ad from mediation adapter."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xt;->a(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_a
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/google/android/gms/internal/xt;->h:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v8

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/google/android/gms/internal/xt;->c:Lcom/google/android/gms/internal/zzec;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v11, v1, Lcom/google/android/gms/internal/xp;->a:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/google/android/gms/internal/xt;->i:Lcom/google/android/gms/internal/zzhc;

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/google/android/gms/internal/xt;->j:Ljava/util/List;

    move-object v10, v5

    move-object v12, v6

    invoke-interface/range {v7 .. v14}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/yc;Lcom/google/android/gms/internal/zzhc;Ljava/util/List;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->d:Lcom/google/android/gms/internal/zzeg;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v8

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/google/android/gms/internal/xt;->c:Lcom/google/android/gms/internal/zzec;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v11, v1, Lcom/google/android/gms/internal/xp;->a:Ljava/lang/String;

    move-object v10, v5

    move-object v12, v6

    invoke-interface/range {v7 .. v12}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/yc;)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/google/android/gms/internal/xt;->k:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v1, v1, Lcom/google/android/gms/internal/xp;->l:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v8

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/google/android/gms/internal/xt;->c:Lcom/google/android/gms/internal/zzec;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v11, v1, Lcom/google/android/gms/internal/xp;->a:Ljava/lang/String;

    new-instance v13, Lcom/google/android/gms/internal/zzhc;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v1, v1, Lcom/google/android/gms/internal/xp;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/xt;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/b;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/google/android/gms/internal/zzhc;-><init>(Lcom/google/android/gms/ads/formats/b;)V

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v14, v1, Lcom/google/android/gms/internal/xp;->o:Ljava/util/List;

    move-object v10, v5

    move-object v12, v6

    invoke-interface/range {v7 .. v14}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/yc;Lcom/google/android/gms/internal/zzhc;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v8

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/google/android/gms/internal/xt;->d:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/google/android/gms/internal/xt;->c:Lcom/google/android/gms/internal/zzec;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v12, v1, Lcom/google/android/gms/internal/xp;->a:Ljava/lang/String;

    move-object v11, v5

    move-object v13, v6

    invoke-interface/range {v7 .. v13}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/yc;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/gms/internal/xt;->l:Lcom/google/android/gms/internal/yb;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v8

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/google/android/gms/internal/xt;->d:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/google/android/gms/internal/xt;->c:Lcom/google/android/gms/internal/zzec;

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/google/android/gms/internal/xt;->b:Lcom/google/android/gms/internal/xp;

    iget-object v12, v1, Lcom/google/android/gms/internal/xp;->a:Ljava/lang/String;

    move-object v11, v5

    move-object v13, v6

    invoke-interface/range {v7 .. v13}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/yc;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1
.end method
