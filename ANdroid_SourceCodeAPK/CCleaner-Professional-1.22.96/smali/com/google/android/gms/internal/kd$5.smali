.class final Lcom/google/android/gms/internal/kd$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ke$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ke$a",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/google/android/gms/internal/kq;",
        "Lcom/google/android/gms/internal/kc;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/kd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kd$5;->a:Lcom/google/android/gms/internal/kd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 0
    check-cast p2, Ljava/util/Map;

    .line 1000
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kc;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/kc;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/kd$5;->a:Lcom/google/android/gms/internal/kd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kc;->a()Lcom/google/android/gms/internal/kc;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kd;Lcom/google/android/gms/internal/kc;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 0
    return-object v0
.end method
