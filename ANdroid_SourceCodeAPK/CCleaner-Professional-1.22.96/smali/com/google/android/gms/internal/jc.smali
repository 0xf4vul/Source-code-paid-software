.class final Lcom/google/android/gms/internal/jc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jc$a;,
        Lcom/google/android/gms/internal/jc$b;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/ls;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/lf;",
            "Lcom/google/android/gms/internal/jc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jc;->a:Lcom/google/android/gms/internal/ls;

    iput-object v0, p0, Lcom/google/android/gms/internal/jc;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/jc$b;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->a:Lcom/google/android/gms/internal/ls;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->a:Lcom/google/android/gms/internal/ls;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/jc$b;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/jc$1;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/jc$1;-><init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/jc$b;)V

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/lf;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jc;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/jc$a;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/jc;)V

    goto :goto_0
.end method
