.class public final Lcom/google/android/gms/internal/wo;
.super Lcom/google/android/gms/internal/ade;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/aer;

.field final b:Lcom/google/android/gms/internal/wq;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/wq;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ade;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wo;->a:Lcom/google/android/gms/internal/aer;

    iput-object p2, p0, Lcom/google/android/gms/internal/wo;->b:Lcom/google/android/gms/internal/wq;

    iput-object p3, p0, Lcom/google/android/gms/internal/wo;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->B()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/wp;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wo;->b:Lcom/google/android/gms/internal/wq;

    iget-object v1, p0, Lcom/google/android/gms/internal/wo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wq;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/wo$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/wo$1;-><init>(Lcom/google/android/gms/internal/wo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/wo$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/wo$1;-><init>(Lcom/google/android/gms/internal/wo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public final g_()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wo;->b:Lcom/google/android/gms/internal/wq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wq;->b()V

    return-void
.end method
