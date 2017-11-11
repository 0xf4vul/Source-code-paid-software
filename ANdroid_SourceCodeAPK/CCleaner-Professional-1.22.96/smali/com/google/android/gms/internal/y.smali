.class public final Lcom/google/android/gms/internal/y;
.super Lcom/google/android/gms/internal/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Lcom/google/android/gms/internal/p;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/n",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n",
            "<TO;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/p;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/y;->a:Lcom/google/android/gms/common/api/n;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/y;->a:Lcom/google/android/gms/common/api/n;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->c:Landroid/os/Looper;

    .line 0
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "R::",
            "Lcom/google/android/gms/common/api/g;",
            "T:",
            "Lcom/google/android/gms/internal/f$a",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/y;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/at;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/f$a",
            "<+",
            "Lcom/google/android/gms/common/api/g;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/y;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/at;)V
    .locals 0

    return-void
.end method
