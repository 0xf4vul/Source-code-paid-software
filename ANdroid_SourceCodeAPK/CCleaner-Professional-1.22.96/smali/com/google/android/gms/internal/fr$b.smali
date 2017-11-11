.class final Lcom/google/android/gms/internal/fr$b;
.super Lcom/google/android/gms/internal/as;

# interfaces
.implements Lcom/google/android/gms/internal/gc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/as",
        "<",
        "Lcom/google/android/gms/internal/fs;",
        "TResultT;>;",
        "Lcom/google/android/gms/internal/gc",
        "<TResultT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/gd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gd",
            "<TResultT;TCallbackT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/f",
            "<TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gd",
            "<TResultT;TCallbackT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/as;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fr$b;->a:Lcom/google/android/gms/internal/gd;

    iget-object v0, p0, Lcom/google/android/gms/internal/fr$b;->a:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gc;)Lcom/google/android/gms/internal/gd;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/b/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/fs;

    .line 1000
    iput-object p2, p0, Lcom/google/android/gms/internal/fr$b;->b:Lcom/google/android/gms/b/f;

    iget-object v0, p0, Lcom/google/android/gms/internal/fr$b;->a:Lcom/google/android/gms/internal/gd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/fs;->j()Lcom/google/android/gms/internal/fy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/fy;)V

    .line 0
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fr$b;->b:Lcom/google/android/gms/b/f;

    const-string/jumbo v1, "doExecute must be called before onComplete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fr$b;->b:Lcom/google/android/gms/b/f;

    invoke-static {p2}, Lcom/google/android/gms/internal/fu;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/f;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fr$b;->b:Lcom/google/android/gms/b/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/f;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
