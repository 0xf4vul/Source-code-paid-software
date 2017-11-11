.class final Lcom/google/android/gms/ads/internal/o$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/o;->a(Lcom/google/android/gms/internal/ye;Lcom/google/android/gms/internal/yf;Lcom/google/android/gms/ads/internal/g$a;)Lcom/google/android/gms/internal/wb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ye;

.field final synthetic b:Lcom/google/android/gms/ads/internal/g$a;

.field final synthetic c:Lcom/google/android/gms/internal/yf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ye;Lcom/google/android/gms/ads/internal/g$a;Lcom/google/android/gms/internal/yf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/o$5;->a:Lcom/google/android/gms/internal/ye;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/o$5;->b:Lcom/google/android/gms/ads/internal/g$a;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/o$5;->c:Lcom/google/android/gms/internal/yf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/o$5;->a:Lcom/google/android/gms/internal/ye;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/o$5;->a:Lcom/google/android/gms/internal/ye;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ye;->k()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/o$5;->a:Lcom/google/android/gms/internal/ye;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ye;->a(Lcom/google/android/gms/a/a;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/o$5;->b:Lcom/google/android/gms/ads/internal/g$a;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g$a;->a:Lcom/google/android/gms/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/g;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unable to call handleClick on mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/o;->a(Lcom/google/android/gms/internal/aer;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/o$5;->c:Lcom/google/android/gms/internal/yf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/o$5;->c:Lcom/google/android/gms/internal/yf;

    invoke-interface {v1}, Lcom/google/android/gms/internal/yf;->i()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/o$5;->c:Lcom/google/android/gms/internal/yf;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/yf;->a(Lcom/google/android/gms/a/a;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/o$5;->b:Lcom/google/android/gms/ads/internal/g$a;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/g$a;->a:Lcom/google/android/gms/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/g;->e()V

    goto :goto_0

    .line 0
    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/o;->a(Lcom/google/android/gms/internal/aer;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
