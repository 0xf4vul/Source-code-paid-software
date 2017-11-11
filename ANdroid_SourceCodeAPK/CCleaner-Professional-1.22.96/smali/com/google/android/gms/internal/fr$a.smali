.class public final Lcom/google/android/gms/internal/fr$a;
.super Lcom/google/android/gms/internal/gd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gd",
        "<",
        "Lcom/google/firebase/auth/j;",
        "Lcom/google/android/gms/internal/gq;",
        ">;"
    }
.end annotation


# instance fields
.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gd;-><init>(I)V

    const-string/jumbo v0, "refresh token cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fr$a;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fr$a;->e:Lcom/google/android/gms/internal/fy;

    iget-object v1, p0, Lcom/google/android/gms/internal/fr$a;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/fr$a;->b:Lcom/google/android/gms/internal/gd$a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/fy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/fr$a;->h:Lcom/google/android/gms/internal/zzbmn;

    iget-object v1, p0, Lcom/google/android/gms/internal/fr$a;->p:Ljava/lang/String;

    .line 1000
    invoke-static {v1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbmn;->b:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/fr$a;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/gq;

    iget-object v1, p0, Lcom/google/android/gms/internal/fr$a;->h:Lcom/google/android/gms/internal/zzbmn;

    iget-object v2, p0, Lcom/google/android/gms/internal/fr$a;->d:Lcom/google/firebase/auth/i;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gq;->a(Lcom/google/android/gms/internal/zzbmn;Lcom/google/firebase/auth/i;)V

    new-instance v0, Lcom/google/firebase/auth/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/fr$a;->h:Lcom/google/android/gms/internal/zzbmn;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzbmn;->c:Ljava/lang/String;

    .line 0
    invoke-direct {v0, v1}, Lcom/google/firebase/auth/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fr$a;->b(Ljava/lang/Object;)V

    return-void
.end method
