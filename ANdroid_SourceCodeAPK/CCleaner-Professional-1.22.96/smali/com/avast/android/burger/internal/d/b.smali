.class public final Lcom/avast/android/burger/internal/d/b;
.super Lcom/avast/android/burger/internal/d/a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/android/burger/internal/d/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "Events"

    invoke-direct {p0, v0}, Lcom/avast/android/burger/internal/d/a;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x1f4

    return v0
.end method

.method public final a(Landroid/content/Context;Lcom/avast/android/burger/b;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avast/android/burger/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/avast/android/burger/internal/d/b;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 67
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 50
    const/4 v2, 0x0

    .line 52
    :try_start_0
    invoke-static {v0}, Lcom/avast/a/b/a/a$g;->a([B)Lcom/avast/a/b/a/a$g;

    move-result-object v2

    .line 53
    invoke-static {v2}, Lcom/avast/android/burger/a/d;->c(Lcom/avast/a/b/a/a$g;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Skipping invalid persisted entity. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/avast/android/burger/a/d;->b(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v4, "Error parsing from byte array."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4, v5}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 57
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/avast/android/burger/a/d;->a(Lcom/avast/a/b/a/a$g;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$g;->f()Lcom/avast/a/b/a/a$g$a;

    move-result-object v0

    .line 1417
    iget v4, p2, Lcom/avast/android/burger/b;->h:I

    .line 58
    invoke-virtual {v0, v4}, Lcom/avast/a/b/a/a$g$a;->a(I)Lcom/avast/a/b/a/a$g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$g$a;->a()Lcom/avast/a/b/a/a$g;

    move-result-object v2

    .line 60
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/a/i; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 63
    :catch_1
    move-exception v0

    .line 64
    sget-object v4, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to process: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/avast/android/burger/a/d;->b(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v2, v5}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 67
    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/avast/a/b/a/a$g;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 30
    if-nez p2, :cond_0

    .line 31
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "Unable to save null."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-static {p2}, Lcom/avast/android/burger/a/d;->c(Lcom/avast/a/b/a/a$g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "Invalid argument"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcom/avast/a/b/a/a$g;->s()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/burger/internal/d/b;->a(Landroid/content/Context;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/avast/android/burger/internal/d/b;->c(Landroid/content/Context;)V

    .line 73
    return-void
.end method
