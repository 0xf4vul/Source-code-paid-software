.class public final Lcom/google/android/gms/internal/ju;
.super Lcom/google/android/gms/internal/js;


# instance fields
.field final a:Lcom/google/android/gms/internal/ls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/js$a;->a:Lcom/google/android/gms/internal/js$a;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/js;-><init>(Lcom/google/android/gms/internal/js$a;Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ju;->a:Lcom/google/android/gms/internal/ls;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/js;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->e:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ju;->d:Lcom/google/android/gms/internal/jt;

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ju;->a:Lcom/google/android/gms/internal/ls;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ju;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ju;->d:Lcom/google/android/gms/internal/jt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ju;->e:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ju;->a:Lcom/google/android/gms/internal/ls;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ju;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "Overwrite { path=%s, source=%s, snapshot=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ju;->b()Lcom/google/android/gms/internal/jt;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/ju;->a:Lcom/google/android/gms/internal/ls;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
