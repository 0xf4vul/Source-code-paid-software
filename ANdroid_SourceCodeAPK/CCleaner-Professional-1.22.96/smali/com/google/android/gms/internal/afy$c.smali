.class public final Lcom/google/android/gms/internal/afy$c;
.super Lcom/google/android/gms/internal/afy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/afy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/afy;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/internal/as;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/as",
            "<",
            "Lcom/google/android/gms/common/api/a$c;",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/f",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ap;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/as;Lcom/google/android/gms/b/f;Lcom/google/android/gms/internal/ap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/as",
            "<",
            "Lcom/google/android/gms/common/api/a$c;",
            "TTResult;>;",
            "Lcom/google/android/gms/b/f",
            "<TTResult;>;",
            "Lcom/google/android/gms/internal/ap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/afy;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/afy$c;->c:Lcom/google/android/gms/b/f;

    iput-object p2, p0, Lcom/google/android/gms/internal/afy$c;->b:Lcom/google/android/gms/internal/as;

    iput-object p4, p0, Lcom/google/android/gms/internal/afy$c;->d:Lcom/google/android/gms/internal/ap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/afy$c;->c:Lcom/google/android/gms/b/f;

    iget-object v1, p0, Lcom/google/android/gms/internal/afy$c;->d:Lcom/google/android/gms/internal/ap;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ap;->a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/f;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/n;Z)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/afy$c;->c:Lcom/google/android/gms/b/f;

    .line 2000
    iget-object v1, p1, Lcom/google/android/gms/internal/n;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    iget-object v1, v0, Lcom/google/android/gms/b/f;->a:Lcom/google/android/gms/b/n;

    .line 2000
    new-instance v2, Lcom/google/android/gms/internal/n$2;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/n$2;-><init>(Lcom/google/android/gms/internal/n;Lcom/google/android/gms/b/f;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/e;->a(Lcom/google/android/gms/b/a;)Lcom/google/android/gms/b/e;

    .line 0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/x$a;)V
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
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/afy$c;->b:Lcom/google/android/gms/internal/as;

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/internal/x$a;->a:Lcom/google/android/gms/common/api/a$f;

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/afy$c;->c:Lcom/google/android/gms/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/as;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/b/f;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/internal/afy;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/afy$c;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method
