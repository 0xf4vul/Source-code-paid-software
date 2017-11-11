.class public final Lcom/google/android/gms/internal/jp;
.super Lcom/google/android/gms/internal/js;


# instance fields
.field final a:Z

.field final b:Lcom/google/android/gms/internal/ke;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/js$a;->c:Lcom/google/android/gms/internal/js$a;

    sget-object v1, Lcom/google/android/gms/internal/jt;->a:Lcom/google/android/gms/internal/jt;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/js;-><init>(Lcom/google/android/gms/internal/js$a;Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/jp;->b:Lcom/google/android/gms/internal/ke;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/jp;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/js;
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->e:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->e:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lf;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "operationForChild called for unrelated child."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mv;->a(ZLjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/jp;

    iget-object v1, p0, Lcom/google/android/gms/internal/jp;->e:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/jp;->b:Lcom/google/android/gms/internal/ke;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/jp;->a:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/jp;-><init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;Z)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->b:Lcom/google/android/gms/internal/ke;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->b:Lcom/google/android/gms/internal/ke;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->b:Lcom/google/android/gms/internal/hk;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk;->d()Z

    move-result v0

    const-string/jumbo v1, "affectedTree should not have overlapping affected paths."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mv;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->b:Lcom/google/android/gms/internal/ke;

    new-instance v1, Lcom/google/android/gms/internal/iu;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/lf;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/iu;-><init>([Lcom/google/android/gms/internal/lf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ke;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ke;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/jp;

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/jp;->a:Z

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/jp;-><init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "AckUserWrite { path=%s, revert=%s, affectedTree=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jp;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/jp;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/jp;->b:Lcom/google/android/gms/internal/ke;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
