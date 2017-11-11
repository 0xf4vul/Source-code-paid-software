.class public final Lcom/google/android/gms/internal/zz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/gms/internal/ej;

.field final c:Lcom/google/android/gms/internal/acw$a;

.field final d:Lcom/google/android/gms/internal/ul;

.field final e:Lcom/google/android/gms/ads/internal/r;

.field f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final h:Ljava/lang/Object;

.field private i:Lcom/google/android/gms/internal/adu;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ej;Lcom/google/android/gms/internal/acw$a;Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/ads/internal/r;)V
    .locals 4

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zz;->h:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/zz;->j:I

    iput v1, p0, Lcom/google/android/gms/internal/zz;->k:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zz;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zz;->b:Lcom/google/android/gms/internal/ej;

    iput-object p3, p0, Lcom/google/android/gms/internal/zz;->c:Lcom/google/android/gms/internal/acw$a;

    iput-object p4, p0, Lcom/google/android/gms/internal/zz;->d:Lcom/google/android/gms/internal/ul;

    iput-object p5, p0, Lcom/google/android/gms/internal/zz;->e:Lcom/google/android/gms/ads/internal/r;

    new-instance v0, Lcom/google/android/gms/internal/adu;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/adu;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zz;->i:Lcom/google/android/gms/internal/adu;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zz;Ljava/lang/ref/WeakReference;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1000
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zz;->i:Lcom/google/android/gms/internal/adu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/adu;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v3, p0, Lcom/google/android/gms/internal/zz;->a:Landroid/content/Context;

    aget v5, v4, v2

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/aea;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v5, p0, Lcom/google/android/gms/internal/zz;->a:Landroid/content/Context;

    aget v4, v4, v1

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/aea;->b(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zz;->h:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v6, p0, Lcom/google/android/gms/internal/zz;->j:I

    if-ne v6, v3, :cond_3

    iget v6, p0, Lcom/google/android/gms/internal/zz;->k:I

    if-eq v6, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/zz;->j:I

    iput v4, p0, Lcom/google/android/gms/internal/zz;->k:I

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->l()Lcom/google/android/gms/internal/aes;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/zz;->j:I

    iget v6, p0, Lcom/google/android/gms/internal/zz;->k:I

    if-nez p2, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v6, v0}, Lcom/google/android/gms/internal/aes;->a(IIZ)V

    :cond_4
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
