.class public final Lcom/google/android/gms/internal/afy$d;
.super Lcom/google/android/gms/internal/afy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/afy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/internal/ah$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ah$a",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ah$a;Lcom/google/android/gms/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ah$a",
            "<*>;",
            "Lcom/google/android/gms/b/f",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/afy$a;-><init>(Lcom/google/android/gms/b/f;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/afy$d;->c:Lcom/google/android/gms/internal/ah$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/afy$a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/internal/n;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/afy$a;->a(Lcom/google/android/gms/internal/n;Z)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/x$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/x$a",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/x$a;->d:Ljava/util/Map;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/afy$d;->c:Lcom/google/android/gms/internal/ah$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/al;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/al;->a:Lcom/google/android/gms/internal/ak;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/ah;

    .line 3000
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ah;->a:Ljava/lang/Object;

    .line 0
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "UnregisterListenerTask"

    const-string/jumbo v1, "Received call to unregister a listener without a matching registration call."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/afy$d;->b:Lcom/google/android/gms/b/f;

    new-instance v1, Lcom/google/android/gms/common/api/l;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/l;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/f;->b(Ljava/lang/Exception;)Z

    goto :goto_0
.end method
