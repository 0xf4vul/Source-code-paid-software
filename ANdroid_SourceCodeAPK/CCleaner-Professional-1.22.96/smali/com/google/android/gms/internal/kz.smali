.class public final Lcom/google/android/gms/internal/kz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ky;


# instance fields
.field final a:Lcom/google/android/gms/internal/kw;

.field final b:Lcom/google/android/gms/internal/lr;

.field final c:Lcom/google/android/gms/internal/lr;

.field private final d:Lcom/google/android/gms/internal/ll;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/kq;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/kw;

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 0
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/kw;-><init>(Lcom/google/android/gms/internal/ll;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kz;->a:Lcom/google/android/gms/internal/kw;

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/kz;->d:Lcom/google/android/gms/internal/ll;

    .line 3000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kq;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kq;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot get index start name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/kq;->d:Lcom/google/android/gms/internal/lf;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/kq;->d:Lcom/google/android/gms/internal/lf;

    .line 5000
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 6000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kq;->a()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot get index start value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4000
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/lf;->a()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    goto :goto_0

    .line 6000
    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/kq;->c:Lcom/google/android/gms/internal/ls;

    .line 3000
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ll;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lr;

    move-result-object v0

    .line 0
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/kz;->b:Lcom/google/android/gms/internal/lr;

    .line 8000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kq;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kq;->b()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot get index end name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7000
    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 3000
    invoke-static {}, Lcom/google/android/gms/internal/ll;->a()Lcom/google/android/gms/internal/lr;

    move-result-object v0

    goto :goto_1

    .line 9000
    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/kq;->f:Lcom/google/android/gms/internal/lf;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/kq;->f:Lcom/google/android/gms/internal/lf;

    .line 10000
    :goto_2
    iget-object v1, p1, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 11000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kq;->b()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot get index end value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9000
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/lf;->b()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    goto :goto_2

    .line 11000
    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/kq;->e:Lcom/google/android/gms/internal/ls;

    .line 8000
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ll;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lr;

    move-result-object v0

    .line 0
    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/kz;->c:Lcom/google/android/gms/internal/lr;

    return-void

    .line 12000
    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 8000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ll;->b()Lcom/google/android/gms/internal/lr;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ky;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->a:Lcom/google/android/gms/internal/kw;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/lr;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kz;->a(Lcom/google/android/gms/internal/lr;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->a:Lcom/google/android/gms/internal/kw;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/kw;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v3, p3

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;
    .locals 4

    .prologue
    .line 0
    .line 15000
    iget-object v0, p2, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/kz;->d:Lcom/google/android/gms/internal/ll;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->a:Lcom/google/android/gms/internal/kw;

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/internal/kw;->a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    return-object v0

    .line 16000
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v0

    .line 0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/lm;->b(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/lm;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kz;->a(Lcom/google/android/gms/internal/lr;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 17000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;
    .locals 0

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/internal/lr;)Z
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->d:Lcom/google/android/gms/internal/ll;

    .line 13000
    iget-object v1, p0, Lcom/google/android/gms/internal/kz;->b:Lcom/google/android/gms/internal/lr;

    .line 0
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ll;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->d:Lcom/google/android/gms/internal/ll;

    .line 14000
    iget-object v1, p0, Lcom/google/android/gms/internal/kz;->c:Lcom/google/android/gms/internal/lr;

    .line 0
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ll;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/ll;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kz;->d:Lcom/google/android/gms/internal/ll;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
