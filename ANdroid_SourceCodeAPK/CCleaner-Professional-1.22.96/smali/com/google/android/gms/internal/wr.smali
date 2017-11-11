.class public final Lcom/google/android/gms/internal/wr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 3
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
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->B()Lcom/google/android/gms/internal/wp;

    const-string/jumbo v0, "abort"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/wp;->a(Lcom/google/android/gms/internal/aer;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Precache abort but no preload task running."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "Precache video action is missing the src parameter."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v1, "player"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v1, "mimetype"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "mimetype"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/wp;->b(Lcom/google/android/gms/internal/aer;)Lcom/google/android/gms/internal/wo;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 0
    :goto_2
    if-eqz v1, :cond_5

    const-string/jumbo v0, "Precache task already running."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 0
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->h()Lcom/google/android/gms/ads/internal/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/l;->a(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->h()Lcom/google/android/gms/ads/internal/e;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/e;->a:Lcom/google/android/gms/internal/ws;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ws;->a(Lcom/google/android/gms/internal/aer;)Lcom/google/android/gms/internal/wq;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/wo;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/internal/wo;-><init>(Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/wq;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ade;->c()Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
