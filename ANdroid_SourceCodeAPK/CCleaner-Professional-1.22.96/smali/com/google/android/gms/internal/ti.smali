.class public final Lcom/google/android/gms/internal/ti;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/xy;

.field public final b:Lcom/google/android/gms/ads/g;

.field public final c:Lcom/google/android/gms/internal/sq;

.field public d:Lcom/google/android/gms/internal/sb;

.field public e:Lcom/google/android/gms/ads/a;

.field public f:[Lcom/google/android/gms/ads/d;

.field public g:Lcom/google/android/gms/ads/doubleclick/a;

.field public h:Lcom/google/android/gms/ads/e;

.field public i:Lcom/google/android/gms/internal/sw;

.field public j:Lcom/google/android/gms/ads/purchase/a;

.field public k:Lcom/google/android/gms/ads/doubleclick/b;

.field public l:Lcom/google/android/gms/ads/purchase/b;

.field public m:Lcom/google/android/gms/ads/h;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Landroid/view/ViewGroup;

.field public q:I

.field public r:Z

.field private final s:Lcom/google/android/gms/internal/sj;

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/sj;->a()Lcom/google/android/gms/internal/sj;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ti;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/sj;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/sj;->a()Lcom/google/android/gms/internal/sj;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ti;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/sj;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/sj;->a()Lcom/google/android/gms/internal/sj;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ti;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/sj;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/sj;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/xy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ti;->a:Lcom/google/android/gms/internal/xy;

    new-instance v0, Lcom/google/android/gms/ads/g;

    invoke-direct {v0}, Lcom/google/android/gms/ads/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ti;->b:Lcom/google/android/gms/ads/g;

    new-instance v0, Lcom/google/android/gms/internal/ti$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ti$1;-><init>(Lcom/google/android/gms/internal/ti;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ti;->c:Lcom/google/android/gms/internal/sq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ti;->p:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ti;->s:Lcom/google/android/gms/internal/sj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ti;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p5, p0, Lcom/google/android/gms/internal/ti;->q:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/sm;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/sm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1000
    if-nez p3, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/sm;->a:[Lcom/google/android/gms/ads/d;

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The adSizes XML attribute is only allowed on PublisherAdViews."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    new-instance v2, Lcom/google/android/gms/internal/zzeg;

    sget-object v3, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lcom/google/android/gms/internal/aea;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/google/android/gms/internal/sm;->a:[Lcom/google/android/gms/ads/d;

    .line 0
    iput-object v2, p0, Lcom/google/android/gms/internal/ti;->f:[Lcom/google/android/gms/ads/d;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/sm;->b:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/ti;->n:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->f:[Lcom/google/android/gms/ads/d;

    aget-object v0, v0, v4

    iget v2, p0, Lcom/google/android/gms/internal/ti;->q:I

    .line 3000
    new-instance v3, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ti;->a(I)Z

    move-result v0

    .line 4000
    iput-boolean v0, v3, Lcom/google/android/gms/internal/zzeg;->j:Z

    .line 0
    const-string/jumbo v0, "Ads by Google"

    .line 5000
    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    invoke-static {p1, v3, v0, v1, v2}, Lcom/google/android/gms/internal/aea;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/sj;IB)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ti;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/sj;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/zzeg;
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/internal/zzeg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzeg;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ti;->a(I)Z

    move-result v1

    .line 7000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzeg;->j:Z

    .line 0
    return-object v0
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/d;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sw;->j()Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeg;->c()Lcom/google/android/gms/ads/d;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->f:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->f:[Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    .prologue
    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ti;->e:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->c:Lcom/google/android/gms/internal/sq;

    .line 6000
    iget-object v1, v0, Lcom/google/android/gms/internal/sq;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Lcom/google/android/gms/internal/sq;->b:Lcom/google/android/gms/ads/a;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/ads/h;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ti;->m:Lcom/google/android/gms/ads/h;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/zzft;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzft;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/ads/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set video options."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/sb;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ti;->d:Lcom/google/android/gms/internal/sb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/sc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/sc;-><init>(Lcom/google/android/gms/internal/sb;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/sr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ti;->n:Ljava/lang/String;

    return-void
.end method

.method public final varargs a([Lcom/google/android/gms/ads/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->f:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ti;->b([Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sw;->F()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs b([Lcom/google/android/gms/ads/d;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ti;->f:[Lcom/google/android/gms/ads/d;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ti;->f:[Lcom/google/android/gms/ads/d;

    iget v3, p0, Lcom/google/android/gms/internal/ti;->q:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ti;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/sw;->a(Lcom/google/android/gms/internal/zzeg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ti;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/te;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ti;->i:Lcom/google/android/gms/internal/sw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/sw;->q()Lcom/google/android/gms/internal/te;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Failed to retrieve VideoController."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
