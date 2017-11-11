.class public abstract Lcom/google/android/gms/internal/zp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/adl;
.implements Lcom/google/android/gms/internal/aes$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/adl",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/aes$a;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/zr$a;

.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/google/android/gms/internal/aer;

.field protected final d:Lcom/google/android/gms/internal/acw$a;

.field protected e:Lcom/google/android/gms/internal/zzmn;

.field protected final f:Ljava/lang/Object;

.field g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/zr$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zp;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/zp;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zp;->d:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/zp;->d:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/acw$a;->b:Lcom/google/android/gms/internal/zzmn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zp;->c:Lcom/google/android/gms/internal/aer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zp;->a:Lcom/google/android/gms/internal/zr$a;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(I)V
    .locals 40

    .prologue
    .line 0
    const/4 v2, -0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzmn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzmn;->k:J

    move/from16 v0, p1

    invoke-direct {v2, v0, v4, v5}, Lcom/google/android/gms/internal/zzmn;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zp;->c:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->e()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zp;->a:Lcom/google/android/gms/internal/zr$a;

    move-object/from16 v39, v0

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zp;->d:Lcom/google/android/gms/internal/acw$a;

    iget-object v6, v2, Lcom/google/android/gms/internal/acw$a;->a:Lcom/google/android/gms/internal/zzmk;

    new-instance v2, Lcom/google/android/gms/internal/acw;

    iget-object v3, v6, Lcom/google/android/gms/internal/zzmk;->c:Lcom/google/android/gms/internal/zzec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zp;->c:Lcom/google/android/gms/internal/aer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzmn;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzmn;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzmn;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget v9, v9, Lcom/google/android/gms/internal/zzmn;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-wide v10, v10, Lcom/google/android/gms/internal/zzmn;->k:J

    iget-object v12, v6, Lcom/google/android/gms/internal/zzmk;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/zzmn;->h:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->d:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/acw$a;->d:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->d:Lcom/google/android/gms/internal/acw$a;

    iget-wide v0, v6, Lcom/google/android/gms/internal/acw$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzmn;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->d:Lcom/google/android/gms/internal/acw$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/acw$a;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->C:Lcom/google/android/gms/internal/zzoo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->D:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->E:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzmn;->F:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->G:Lcom/google/android/gms/internal/zzmp;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->J:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zp;->e:Lcom/google/android/gms/internal/zzmn;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzmn;->N:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/acw;-><init>(Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/aer;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/xp;Lcom/google/android/gms/internal/yb;Ljava/lang/String;Lcom/google/android/gms/internal/xq;Lcom/google/android/gms/internal/xs;JLcom/google/android/gms/internal/zzeg;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/vb$a;Lcom/google/android/gms/internal/zzoo;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzmp;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 0
    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zr$a;->b(Lcom/google/android/gms/internal/acw;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/aer;Z)V
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "WebView finished loading."

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, -0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zp;->a(I)V

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zp;->c:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zp;->c:Lcom/google/android/gms/internal/aer;

    invoke-static {v0}, Lcom/google/android/gms/internal/adk;->a(Lcom/google/android/gms/internal/aer;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zp;->a(I)V

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zp;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 0
    .line 2000
    const-string/jumbo v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zp$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zp$1;-><init>(Lcom/google/android/gms/internal/zp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zp;->h:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zp;->h:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ud;->bG:Lcom/google/android/gms/internal/ty;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 2000
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zp;->a()V

    const/4 v0, 0x0

    .line 0
    return-object v0
.end method
