.class final Lcom/google/android/gms/internal/id$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/id$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/id$e;

.field final synthetic b:Lcom/google/android/gms/internal/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/id$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/id$5;->b:Lcom/google/android/gms/internal/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/id$5;->a:Lcom/google/android/gms/internal/id$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 0
    const-string/jumbo v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "w"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "w"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/id$5;->b:Lcom/google/android/gms/internal/id;

    iget-object v3, p0, Lcom/google/android/gms/internal/id$5;->a:Lcom/google/android/gms/internal/id$e;

    .line 1000
    iget-object v3, v3, Lcom/google/android/gms/internal/id$e;->b:Lcom/google/android/gms/internal/id$c;

    .line 0
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;Ljava/util/List;Lcom/google/android/gms/internal/id$c;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/id$5;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v1}, Lcom/google/android/gms/internal/id;->r(Lcom/google/android/gms/internal/id;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/id$5;->a:Lcom/google/android/gms/internal/id$e;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/id$e;->b:Lcom/google/android/gms/internal/id$c;

    .line 0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/id$e;

    iget-object v2, p0, Lcom/google/android/gms/internal/id$5;->a:Lcom/google/android/gms/internal/id$e;

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/id$5;->b:Lcom/google/android/gms/internal/id;

    iget-object v2, p0, Lcom/google/android/gms/internal/id$5;->a:Lcom/google/android/gms/internal/id$e;

    .line 3000
    iget-object v2, v2, Lcom/google/android/gms/internal/id$e;->b:Lcom/google/android/gms/internal/id$c;

    .line 0
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/id$c;)Lcom/google/android/gms/internal/id$e;

    const-string/jumbo v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/id$5;->a:Lcom/google/android/gms/internal/id$e;

    .line 4000
    iget-object v2, v2, Lcom/google/android/gms/internal/id$e;->a:Lcom/google/android/gms/internal/if;

    .line 0
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/id$5;->a:Lcom/google/android/gms/internal/id$e;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/id$e;->a:Lcom/google/android/gms/internal/if;

    .line 0
    invoke-interface {v0, v4, v4}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
