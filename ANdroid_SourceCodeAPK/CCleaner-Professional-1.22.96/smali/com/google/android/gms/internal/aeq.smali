.class public final Lcom/google/android/gms/internal/aeq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/aer;

.field final b:Landroid/content/Context;

.field final c:Landroid/view/ViewGroup;

.field d:Lcom/google/android/gms/ads/internal/overlay/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/aer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/aeq;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/aer;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/aer;B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aeq;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/aeq;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/aeq;->a:Lcom/google/android/gms/internal/aer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/overlay/m;
    .locals 1

    const-string/jumbo v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    return-object v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 0
    const-string/jumbo v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/m;->a:Lcom/google/android/gms/ads/internal/overlay/b;

    .line 2000
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/b;->a:Z

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/m;->b:Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/k;->c()V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->k()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aeq;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aeq;->d:Lcom/google/android/gms/ads/internal/overlay/m;

    :cond_1
    return-void
.end method
