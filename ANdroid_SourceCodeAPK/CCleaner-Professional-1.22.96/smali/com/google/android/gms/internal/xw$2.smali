.class final Lcom/google/android/gms/internal/xw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xw;->a(Lcom/google/android/gms/internal/aeh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aeh;

.field final synthetic b:Lcom/google/android/gms/internal/xw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xw;Lcom/google/android/gms/internal/aeh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xw$2;->b:Lcom/google/android/gms/internal/xw;

    iput-object p2, p0, Lcom/google/android/gms/internal/xw$2;->a:Lcom/google/android/gms/internal/aeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xw$2;->b:Lcom/google/android/gms/internal/xw;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/xw;->e:Ljava/util/Map;

    .line 0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    check-cast v0, Lcom/google/android/gms/internal/aeh;

    iget-object v2, p0, Lcom/google/android/gms/internal/xw$2;->a:Lcom/google/android/gms/internal/aeh;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/xw$2;->b:Lcom/google/android/gms/internal/xw;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/xw;->e:Ljava/util/Map;

    .line 0
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xt;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
