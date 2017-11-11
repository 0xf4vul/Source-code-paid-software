.class public final Lcom/google/firebase/database/d;
.super Lcom/google/firebase/database/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/d$a;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/k;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/b/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/lw;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    .line 2000
    invoke-virtual {p0}, Lcom/google/firebase/database/d;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/iu;)V

    invoke-virtual {p0}, Lcom/google/firebase/database/d;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/mx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mw;->a(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/lt;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mv;->a()Lcom/google/android/gms/internal/ms;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/d;->a:Lcom/google/android/gms/internal/iw;

    new-instance v3, Lcom/google/firebase/database/d$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/firebase/database/d$1;-><init>(Lcom/google/firebase/database/d;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ms;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/Runnable;)V

    .line 3000
    iget-object v0, v1, Lcom/google/android/gms/internal/ms;->a:Ljava/lang/Object;

    .line 2000
    check-cast v0, Lcom/google/android/gms/b/e;

    .line 0
    return-object v0
.end method

.method public final a()Lcom/google/firebase/database/d;
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/firebase/database/d;->a:Lcom/google/android/gms/internal/iw;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mr;->a()J

    move-result-wide v0

    .line 0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mu;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/lf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lf;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/d;

    iget-object v2, p0, Lcom/google/firebase/database/d;->a:Lcom/google/android/gms/internal/iw;

    invoke-virtual {p0}, Lcom/google/firebase/database/d;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/d;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Lcom/google/firebase/database/d;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Can\'t pass null for argument \'pathString\' in child()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/database/d;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/mw;->b(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/database/d;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/iu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/d;

    iget-object v2, p0, Lcom/google/firebase/database/d;->a:Lcom/google/android/gms/internal/iw;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/d;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)V

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/mw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/b/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/firebase/database/d;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/database/d;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->g()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/lf;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/firebase/database/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/database/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 0
    .line 4000
    invoke-virtual {p0}, Lcom/google/firebase/database/d;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->f()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/firebase/database/d;

    iget-object v2, p0, Lcom/google/firebase/database/d;->a:Lcom/google/android/gms/internal/iw;

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/database/d;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)V

    .line 0
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/d;->a:Lcom/google/android/gms/internal/iw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iw;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 4000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/database/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "+"

    const-string/jumbo v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v2, Lcom/google/firebase/database/c;

    const-string/jumbo v3, "Failed to URLEncode key: "

    invoke-virtual {p0}, Lcom/google/firebase/database/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v2, v0, v1}, Lcom/google/firebase/database/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
