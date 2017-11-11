.class public final Lcom/google/android/gms/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/u;


# instance fields
.field final a:Lcom/google/android/gms/internal/v;

.field b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/q;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/q;->b(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    iget-object v0, v0, Lcom/google/android/gms/internal/v;->n:Lcom/google/android/gms/internal/ac$a;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/q;->b:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ac$a;->a(IZ)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;
    .locals 3
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

    .prologue
    .line 0
    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    iget-object v0, v0, Lcom/google/android/gms/internal/v;->m:Lcom/google/android/gms/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/internal/t;->k:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/internal/h;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    iget-object v0, v0, Lcom/google/android/gms/internal/v;->m:Lcom/google/android/gms/internal/t;

    .line 2000
    iget-object v1, p1, Lcom/google/android/gms/internal/f$a;->a:Lcom/google/android/gms/common/api/a$d;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/t;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    iget-object v1, v1, Lcom/google/android/gms/internal/v;->g:Ljava/util/Map;

    .line 4000
    iget-object v2, p1, Lcom/google/android/gms/internal/f$a;->a:Lcom/google/android/gms/common/api/a$d;

    .line 1000
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/f$a;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 0
    :goto_0
    return-object p1

    .line 1000
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/common/internal/i;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/i;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/common/internal/i;->a:Lcom/google/android/gms/common/api/a$h;

    .line 1000
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/f$a;->a(Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    new-instance v1, Lcom/google/android/gms/internal/q$1;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/q$1;-><init>(Lcom/google/android/gms/internal/q;Lcom/google/android/gms/internal/u;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/v$a;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/q;->b:Z

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    iget-object v2, v2, Lcom/google/android/gms/internal/v;->m:Lcom/google/android/gms/internal/t;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/t;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/q;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    iget-object v0, v0, Lcom/google/android/gms/internal/v;->m:Lcom/google/android/gms/internal/t;

    iget-object v0, v0, Lcom/google/android/gms/internal/t;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/at;

    .line 6000
    iput-object v3, v0, Lcom/google/android/gms/internal/at;->c:Lcom/google/android/gms/common/api/i;

    goto :goto_1

    :cond_1
    move v0, v1

    .line 0
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/q;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/q;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/v;

    new-instance v1, Lcom/google/android/gms/internal/q$2;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/q$2;-><init>(Lcom/google/android/gms/internal/q;Lcom/google/android/gms/internal/u;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/v$a;)V

    :cond_0
    return-void
.end method
