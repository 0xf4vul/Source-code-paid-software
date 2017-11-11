.class public Lcom/google/android/gms/internal/gv;
.super Lcom/google/firebase/auth/i;


# instance fields
.field public a:Lcom/google/android/gms/internal/zzbmn;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/gt;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field public e:Z

.field public f:Lcom/google/android/gms/internal/np;

.field private g:Lcom/google/android/gms/internal/gt;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/b;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/b;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/auth/k;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/auth/i;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gv;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/fw;->a()Lcom/google/android/gms/internal/np;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gv;->f:Lcom/google/android/gms/internal/np;

    const-string/jumbo v0, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object v0, p0, Lcom/google/android/gms/internal/gv;->h:Ljava/lang/String;

    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/google/android/gms/internal/gv;->d:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gv;->a(Ljava/util/List;)Lcom/google/firebase/auth/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/google/firebase/auth/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/auth/k;",
            ">;)",
            "Lcom/google/firebase/auth/i;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gv;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gv;->i:Ljava/util/List;

    new-instance v0, Landroid/support/v4/h/a;

    invoke-direct {v0}, Landroid/support/v4/h/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gv;->j:Ljava/util/Map;

    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/k;

    invoke-interface {v0}, Lcom/google/firebase/auth/k;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "firebase"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/gt;

    iput-object v1, p0, Lcom/google/android/gms/internal/gv;->g:Lcom/google/android/gms/internal/gt;

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/gv;->c:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/gt;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/gv;->j:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/firebase/auth/k;->a()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/google/android/gms/internal/gt;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gv;->i:Ljava/util/List;

    invoke-interface {v0}, Lcom/google/firebase/auth/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->g:Lcom/google/android/gms/internal/gt;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gt;

    iput-object v0, p0, Lcom/google/android/gms/internal/gv;->g:Lcom/google/android/gms/internal/gt;

    :cond_2
    return-object p0
.end method

.method public final synthetic a(Z)Lcom/google/firebase/auth/i;
    .locals 0

    .prologue
    .line 0
    .line 5000
    iput-boolean p1, p0, Lcom/google/android/gms/internal/gv;->e:Z

    .line 0
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->g:Lcom/google/android/gms/internal/gt;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/gt;->b:Ljava/lang/String;

    .line 0
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/zzbmn;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbmn;

    iput-object v0, p0, Lcom/google/android/gms/internal/gv;->a:Lcom/google/android/gms/internal/zzbmn;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->g:Lcom/google/android/gms/internal/gt;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/gt;->a:Ljava/lang/String;

    .line 0
    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gv;->e:Z

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/firebase/auth/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->c:Ljava/util/List;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/zzbmn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->a:Lcom/google/android/gms/internal/zzbmn;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/internal/gv;->a:Lcom/google/android/gms/internal/zzbmn;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzbmn;->c:Ljava/lang/String;

    .line 0
    return-object v0
.end method
