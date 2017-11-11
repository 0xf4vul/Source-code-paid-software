.class final Lcom/google/android/gms/internal/wv$1;
.super Lcom/google/android/gms/internal/ss$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/wv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/wv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wv$1;->a:Lcom/google/android/gms/internal/wv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ss$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/wv$1;->a:Lcom/google/android/gms/internal/wv;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/wv;->a:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/wv$1$1;

    invoke-direct {v1}, Lcom/google/android/gms/internal/wv$1$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/wv$1;->a:Lcom/google/android/gms/internal/wv;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/wv;->a:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/wv$1$2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/wv$1$2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "Pooled interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/wv$1;->a:Lcom/google/android/gms/internal/wv;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/wv;->a:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/wv$1$3;

    invoke-direct {v1}, Lcom/google/android/gms/internal/wv$1$3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/wv$1;->a:Lcom/google/android/gms/internal/wv;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/wv;->a:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/wv$1$4;

    invoke-direct {v1}, Lcom/google/android/gms/internal/wv$1$4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/wv$1;->a:Lcom/google/android/gms/internal/wv;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/wv;->a:Ljava/util/List;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/wv$1$5;

    invoke-direct {v1}, Lcom/google/android/gms/internal/wv$1$5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
