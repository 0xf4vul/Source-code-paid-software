.class final Lcom/google/android/gms/internal/abg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/abg;->a(Landroid/content/Context;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/abf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/abg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/abg;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/abg$1;->b:Lcom/google/android/gms/internal/abg;

    iput-object p2, p0, Lcom/google/android/gms/internal/abg$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/abg$1;->b:Lcom/google/android/gms/internal/abg;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/abg;->a:Ljava/util/WeakHashMap;

    .line 1000
    iget-object v1, p0, Lcom/google/android/gms/internal/abg$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/abg$a;

    if-eqz v0, :cond_1

    .line 3000
    iget-wide v2, v0, Lcom/google/android/gms/internal/abg$a;->a:J

    sget-object v1, Lcom/google/android/gms/internal/ud;->bq:Lcom/google/android/gms/internal/ty;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v1

    .line 3000
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    .line 1000
    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ud;->bp:Lcom/google/android/gms/internal/ty;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v1

    .line 1000
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/abf$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/abg$1;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/abg$a;->b:Lcom/google/android/gms/internal/abf;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/abf$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/abf;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/abf$a;->a()Lcom/google/android/gms/internal/abf;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/abg$1;->b:Lcom/google/android/gms/internal/abg;

    .line 6000
    iget-object v1, v1, Lcom/google/android/gms/internal/abg;->a:Ljava/util/WeakHashMap;

    .line 1000
    iget-object v2, p0, Lcom/google/android/gms/internal/abg$1;->a:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/abg$a;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/abg$a;-><init>(Lcom/google/android/gms/internal/abf;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    return-object v0

    .line 3000
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1000
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/abf$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/abg$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/abf$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/abf$a;->a()Lcom/google/android/gms/internal/abf;

    move-result-object v0

    goto :goto_1
.end method
