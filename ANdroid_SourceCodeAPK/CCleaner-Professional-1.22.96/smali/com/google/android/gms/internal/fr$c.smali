.class public final Lcom/google/android/gms/internal/fr$c;
.super Lcom/google/android/gms/internal/gd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gd",
        "<",
        "Lcom/google/firebase/auth/a;",
        "Lcom/google/android/gms/internal/gq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gd;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fr$c;->e:Lcom/google/android/gms/internal/fy;

    iget-object v1, p0, Lcom/google/android/gms/internal/fr$c;->b:Lcom/google/android/gms/internal/gd$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/fr$c;->c:Lcom/google/firebase/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/fr$c;->i:Lcom/google/android/gms/internal/zzbmj;

    .line 2000
    invoke-static {v2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/gt;

    const-string/jumbo v4, "firebase"

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/gt;-><init>(Lcom/google/android/gms/internal/zzbmj;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzbmj;->g:Lcom/google/android/gms/internal/zzbmr;

    .line 4000
    iget-object v4, v0, Lcom/google/android/gms/internal/zzbmr;->b:Ljava/util/List;

    .line 2000
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v5, Lcom/google/android/gms/internal/gt;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbmp;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/gt;-><init>(Lcom/google/android/gms/internal/zzbmp;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/gv;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/gv;-><init>(Lcom/google/firebase/b;Ljava/util/List;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gv;->a(Z)Lcom/google/firebase/auth/i;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/fr$c;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/gq;

    iget-object v2, p0, Lcom/google/android/gms/internal/fr$c;->h:Lcom/google/android/gms/internal/zzbmn;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/gq;->a(Lcom/google/android/gms/internal/zzbmn;Lcom/google/firebase/auth/i;)V

    new-instance v0, Lcom/google/android/gms/internal/gs;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gs;-><init>(Lcom/google/android/gms/internal/gv;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fr$c;->b(Ljava/lang/Object;)V

    return-void
.end method
