.class public abstract Lcom/google/android/gms/internal/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cn;


# instance fields
.field protected a:Landroid/view/MotionEvent;

.field protected b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected c:J

.field protected d:J

.field protected e:J

.field protected f:J

.field protected g:J

.field protected h:J

.field protected i:J

.field protected j:Z

.field protected k:Landroid/util/DisplayMetrics;

.field private l:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/co;->b:Ljava/util/LinkedList;

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->c:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->d:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->e:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->f:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->g:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->h:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->i:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/co;->l:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/co;->j:Z

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/bz;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/co;->k:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;[B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    const/4 v3, 0x0

    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    .line 5000
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/bs$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bs$a;-><init>()V

    .line 6000
    array-length v4, p5

    invoke-static {v0, p5, v4}, Lcom/google/android/gms/internal/qc;->a(Lcom/google/android/gms/internal/qc;[BI)Lcom/google/android/gms/internal/qc;

    move-result-object v0

    .line 5000
    check-cast v0, Lcom/google/android/gms/internal/bs$a;
    :try_end_0
    .catch Lcom/google/android/gms/internal/qb; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_0
    if-eqz p3, :cond_2

    :try_start_1
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/co;->a(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/internal/bv$a;

    move-result-object v0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/co;->l:Z

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/bv$a;->f()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/co;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bs$a;)Lcom/google/android/gms/internal/bv$a;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 7000
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ud;->bJ:Lcom/google/android/gms/internal/ty;

    .line 8000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 7000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 0
    :goto_3
    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    invoke-static {v3, p2, v0}, Lcom/google/android/gms/internal/bz;->a(Lcom/google/android/gms/internal/bv$a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 7000
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ud;->bP:Lcom/google/android/gms/internal/ty;

    .line 9000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 7000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    .line 0
    goto :goto_4

    :catch_1
    move-exception v0

    :goto_5
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method protected abstract a([Ljava/lang/StackTraceElement;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ep;
        }
    .end annotation
.end method

.method protected abstract a(Landroid/content/Context;Landroid/view/View;)Lcom/google/android/gms/internal/bv$a;
.end method

.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/bs$a;)Lcom/google/android/gms/internal/bv$a;
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/fg;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ud;->bO:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The caller must not be called from the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/co;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/co;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/fg;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ud;->bO:Lcom/google/android/gms/internal/ty;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The caller must not be called from the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/co;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(III)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/co;->a:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/co;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/co;->k:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    move/from16 v0, p3

    int-to-long v4, v0

    const/4 v6, 0x1

    move/from16 v0, p1

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/co;->k:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/co;->k:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/co;->a:Landroid/view/MotionEvent;

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/co;->j:Z

    return-void

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/co;->a:Landroid/view/MotionEvent;

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/co;->l:Z

    if-eqz v0, :cond_1

    iput-wide v6, p0, Lcom/google/android/gms/internal/co;->f:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/co;->e:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/co;->d:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/co;->c:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/co;->g:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/co;->i:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/co;->h:J

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/co;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/co;->a:Landroid/view/MotionEvent;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/co;->l:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/co;->j:Z

    return-void

    :pswitch_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/co;->a:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->b:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->e:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->e:J

    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/co;->a([Ljava/lang/StackTraceElement;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->g:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ep; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->c:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->c:J

    goto :goto_1

    :pswitch_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->f:J

    goto :goto_1

    :pswitch_3
    iget-wide v4, p0, Lcom/google/android/gms/internal/co;->d:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/co;->d:J

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/co;->b(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ff;

    move-result-object v3

    .line 3000
    iget-object v0, v3, Lcom/google/android/gms/internal/ff;->d:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/google/android/gms/internal/ff;->g:Ljava/lang/Long;

    if-eqz v0, :cond_5

    move v0, v1

    .line 0
    :goto_2
    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/google/android/gms/internal/co;->h:J

    iget-object v0, v3, Lcom/google/android/gms/internal/ff;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v3, Lcom/google/android/gms/internal/ff;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/co;->h:J

    .line 4000
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/co;->k:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/google/android/gms/internal/ff;->e:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/google/android/gms/internal/ff;->h:Ljava/lang/Long;

    if-eqz v0, :cond_6

    move v0, v1

    .line 0
    :goto_3
    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/co;->i:J

    iget-object v0, v3, Lcom/google/android/gms/internal/ff;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v3, Lcom/google/android/gms/internal/ff;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->i:J
    :try_end_1
    .catch Lcom/google/android/gms/internal/ep; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 3000
    goto :goto_2

    :cond_6
    move v0, v2

    .line 4000
    goto :goto_3

    .line 0
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract b(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ff;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ep;
        }
    .end annotation
.end method
