.class public final Lcom/google/android/gms/internal/jr;
.super Lcom/google/android/gms/internal/js;


# instance fields
.field final a:Lcom/google/android/gms/internal/ik;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/js$a;->b:Lcom/google/android/gms/internal/js$a;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/js;-><init>(Lcom/google/android/gms/internal/js$a;Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/jr;->a:Lcom/google/android/gms/internal/ik;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/js;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->e:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->a:Lcom/google/android/gms/internal/ik;

    new-instance v2, Lcom/google/android/gms/internal/iu;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/lf;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/iu;-><init>([Lcom/google/android/gms/internal/lf;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ik;->d(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ik;

    move-result-object v1

    .line 1000
    iget-object v2, v1, Lcom/google/android/gms/internal/ik;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ke;->b()Z

    move-result v2

    .line 0
    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ik;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ju;

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->d:Lcom/google/android/gms/internal/jt;

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ik;->b()Lcom/google/android/gms/internal/ls;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ju;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/jr;

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->d:Lcom/google/android/gms/internal/jt;

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/jr;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->e:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/lf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/jr;

    iget-object v1, p0, Lcom/google/android/gms/internal/jr;->d:Lcom/google/android/gms/internal/jt;

    iget-object v2, p0, Lcom/google/android/gms/internal/jr;->e:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iu;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/jr;->a:Lcom/google/android/gms/internal/ik;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/jr;-><init>(Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "Merge { path=%s, source=%s, children=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jr;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jr;->b()Lcom/google/android/gms/internal/jt;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/jr;->a:Lcom/google/android/gms/internal/ik;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
