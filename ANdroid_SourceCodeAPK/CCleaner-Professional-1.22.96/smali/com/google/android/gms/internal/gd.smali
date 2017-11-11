.class public abstract Lcom/google/android/gms/internal/gd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SuccessT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:I

.field protected final b:Lcom/google/android/gms/internal/gd$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gd$a;"
        }
    .end annotation
.end field

.field protected c:Lcom/google/firebase/b;

.field protected d:Lcom/google/firebase/auth/i;

.field protected e:Lcom/google/android/gms/internal/fy;

.field protected f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field protected g:Lcom/google/android/gms/internal/gc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gc",
            "<TSuccessT;>;"
        }
    .end annotation
.end field

.field protected h:Lcom/google/android/gms/internal/zzbmn;

.field protected i:Lcom/google/android/gms/internal/zzbmj;

.field protected j:Lcom/google/android/gms/internal/zzbmh;

.field protected k:Lcom/google/android/gms/internal/zzbmt;

.field protected l:Ljava/lang/String;

.field m:Z

.field n:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSuccessT;"
        }
    .end annotation
.end field

.field o:Lcom/google/android/gms/common/api/Status;

.field private p:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gd$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/gd$a;-><init>(Lcom/google/android/gms/internal/gd;B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gd;->b:Lcom/google/android/gms/internal/gd$a;

    iput p1, p0, Lcom/google/android/gms/internal/gd;->a:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gd;)V
    .locals 2

    .prologue
    .line 0
    .line 1000
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gd;->b()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gd;->p:Z

    const-string/jumbo v1, "no success or failure set on method implementation"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/c;->a(ZLjava/lang/Object;)V

    .line 0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/gc;)Lcom/google/android/gms/internal/gd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gc",
            "<TSuccessT;>;)",
            "Lcom/google/android/gms/internal/gd",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/gd;->g:Lcom/google/android/gms/internal/gc;

    return-object p0
.end method

.method public final a(Lcom/google/firebase/auth/i;)Lcom/google/android/gms/internal/gd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/i;",
            ")",
            "Lcom/google/android/gms/internal/gd",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string/jumbo v0, "firebaseUser cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/i;

    iput-object v0, p0, Lcom/google/android/gms/internal/gd;->d:Lcom/google/firebase/auth/i;

    return-object p0
.end method

.method public final a(Lcom/google/firebase/b;)Lcom/google/android/gms/internal/gd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/b;",
            ")",
            "Lcom/google/android/gms/internal/gd",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string/jumbo v0, "firebaseApp cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/b;

    iput-object v0, p0, Lcom/google/android/gms/internal/gd;->c:Lcom/google/firebase/b;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/gd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lcom/google/android/gms/internal/gd",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string/jumbo v0, "external callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gd;->f:Ljava/lang/Object;

    return-object p0
.end method

.method protected abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gd;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gd;->m:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/gd;->o:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->g:Lcom/google/android/gms/internal/gc;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/gc;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/fy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/gd;->e:Lcom/google/android/gms/internal/fy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gd;->a()V

    return-void
.end method

.method public abstract b()V
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuccessT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gd;->p:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gd;->m:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/gd;->n:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->g:Lcom/google/android/gms/internal/gc;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/gc;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
