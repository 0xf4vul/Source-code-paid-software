.class final Lcom/google/firebase/database/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ls;

.field final synthetic b:Lcom/google/android/gms/internal/ms;

.field final synthetic c:Lcom/google/firebase/database/d;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/d;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ms;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/d$1;->c:Lcom/google/firebase/database/d;

    iput-object p2, p0, Lcom/google/firebase/database/d$1;->a:Lcom/google/android/gms/internal/ls;

    iput-object p3, p0, Lcom/google/firebase/database/d$1;->b:Lcom/google/android/gms/internal/ms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/database/d$1;->c:Lcom/google/firebase/database/d;

    iget-object v8, v0, Lcom/google/firebase/database/d;->a:Lcom/google/android/gms/internal/iw;

    iget-object v0, p0, Lcom/google/firebase/database/d$1;->c:Lcom/google/firebase/database/d;

    invoke-virtual {v0}, Lcom/google/firebase/database/d;->e()Lcom/google/android/gms/internal/iu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/d$1;->a:Lcom/google/android/gms/internal/ls;

    iget-object v0, p0, Lcom/google/firebase/database/d$1;->b:Lcom/google/android/gms/internal/ms;

    .line 1000
    iget-object v12, v0, Lcom/google/android/gms/internal/ms;->b:Ljava/lang/Object;

    .line 0
    check-cast v12, Lcom/google/firebase/database/d$a;

    .line 2000
    iget-object v0, v8, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/google/android/gms/internal/iw;->c:Lcom/google/android/gms/internal/lc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "set: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    .line 3000
    invoke-virtual {v0, v3, v10, v4}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2000
    :cond_0
    iget-object v0, v8, Lcom/google/android/gms/internal/iw;->d:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/google/android/gms/internal/iw;->d:Lcom/google/android/gms/internal/lc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "set: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    .line 4000
    invoke-virtual {v0, v3, v10, v4}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2000
    :cond_1
    iget-object v0, v8, Lcom/google/android/gms/internal/iw;->a:Lcom/google/android/gms/internal/mr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/mm;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/ls;Ljava/util/Map;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/iw;->c()J

    move-result-wide v4

    iget-object v0, v8, Lcom/google/android/gms/internal/iw;->g:Lcom/google/android/gms/internal/je;

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;JZZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/iw;->b:Lcom/google/android/gms/internal/ic;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/iu;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v6}, Lcom/google/android/gms/internal/ls;->a(Z)Ljava/lang/Object;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/internal/iw$13;

    move-object v9, v1

    move-wide v10, v4

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/iw$13;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;JLcom/google/firebase/database/d$a;)V

    invoke-interface {v0, v3, v2, v7}, Lcom/google/android/gms/internal/ic;->a(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;)V

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/iw;->b(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    .line 0
    return-void
.end method
