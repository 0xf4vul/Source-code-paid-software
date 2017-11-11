.class final Lcom/google/android/gms/internal/aaz$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aek$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aaz$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/aek$c",
        "<",
        "Lcom/google/android/gms/internal/xi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/uj;

.field final synthetic b:Lcom/google/android/gms/internal/aaz$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aaz$2;Lcom/google/android/gms/internal/uj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aaz$2$1;->b:Lcom/google/android/gms/internal/aaz$2;

    iput-object p2, p0, Lcom/google/android/gms/internal/aaz$2$1;->a:Lcom/google/android/gms/internal/uj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/xi;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/aaz$2$1;->b:Lcom/google/android/gms/internal/aaz$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/aaz$2;->c:Lcom/google/android/gms/internal/ul;

    iget-object v1, p0, Lcom/google/android/gms/internal/aaz$2$1;->a:Lcom/google/android/gms/internal/uj;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ul;->a(Lcom/google/android/gms/internal/uj;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/aaz$2$1;->b:Lcom/google/android/gms/internal/aaz$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/aaz$2;->c:Lcom/google/android/gms/internal/ul;

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/ul;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ul;->a()Lcom/google/android/gms/internal/uj;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ul;->d:Lcom/google/android/gms/internal/uj;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    const-string/jumbo v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/aaz$2$1;->b:Lcom/google/android/gms/internal/aaz$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/aaz$2;->b:Lcom/google/android/gms/internal/abb;

    iget-object v1, v1, Lcom/google/android/gms/internal/abb;->f:Lcom/google/android/gms/internal/wb;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/aaz$2$1;->b:Lcom/google/android/gms/internal/aaz$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/aaz$2;->b:Lcom/google/android/gms/internal/abb;

    iget-object v1, v1, Lcom/google/android/gms/internal/abb;->g:Lcom/google/android/gms/internal/wb;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/aaz$2$1;->b:Lcom/google/android/gms/internal/aaz$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/aaz$2;->b:Lcom/google/android/gms/internal/abb;

    iget-object v1, v1, Lcom/google/android/gms/internal/abb;->h:Lcom/google/android/gms/internal/wb;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    :try_start_1
    const-string/jumbo v0, "AFMA_getAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/aaz$2$1;->b:Lcom/google/android/gms/internal/aaz$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/aaz$2;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/xi;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    .line 2000
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1000
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
