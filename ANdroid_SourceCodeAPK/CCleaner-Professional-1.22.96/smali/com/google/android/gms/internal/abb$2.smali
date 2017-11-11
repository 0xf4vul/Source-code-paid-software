.class final Lcom/google/android/gms/internal/abb$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/abb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/abb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/abb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/abb$2;->a:Lcom/google/android/gms/internal/abb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 6
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
    iget-object v0, p0, Lcom/google/android/gms/internal/abb$2;->a:Lcom/google/android/gms/internal/abb;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/abb;->a:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abb$2;->a:Lcom/google/android/gms/internal/abb;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/abb;->d:Lcom/google/android/gms/internal/aee;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/aee;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/abe;

    const/4 v0, -0x2

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/abe;-><init>(ILjava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/abb$2;->a:Lcom/google/android/gms/internal/abb;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/abb;->b:Ljava/lang/String;

    .line 4000
    iget-object v3, v2, Lcom/google/android/gms/internal/abe;->f:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5000
    :cond_1
    :try_start_1
    iget-object v3, v2, Lcom/google/android/gms/internal/abe;->h:Ljava/lang/String;

    .line 0
    if-nez v3, :cond_2

    const-string/jumbo v0, "URL missing in loadAdUrl GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "%40mediation_adapters%40"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v0, "check_adapters"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/abb$2;->a:Lcom/google/android/gms/internal/abb;

    .line 6000
    iget-object v5, v5, Lcom/google/android/gms/internal/abb;->c:Ljava/lang/String;

    .line 0
    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/add;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "%40mediation_adapters%40"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7000
    iput-object v0, v2, Lcom/google/android/gms/internal/abe;->h:Ljava/lang/String;

    .line 0
    const-string/jumbo v3, "Ad request URL modified to "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/abb$2;->a:Lcom/google/android/gms/internal/abb;

    .line 8000
    iget-object v0, v0, Lcom/google/android/gms/internal/abb;->d:Lcom/google/android/gms/internal/aee;

    .line 0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/aee;->b(Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
