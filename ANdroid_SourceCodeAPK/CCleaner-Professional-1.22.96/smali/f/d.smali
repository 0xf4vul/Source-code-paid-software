.class public Lf/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d$c;,
        Lf/d$b;,
        Lf/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lf/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lf/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lf/d;->a:Lf/d$a;

    .line 60
    return-void
.end method

.method public static a()Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1795
    invoke-static {}, Lf/d/a/b;->a()Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lf/c/b;I)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/c/b",
            "<",
            "Lf/a",
            "<TT;>;>;I)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2015
    new-instance v0, Lf/d/a/l;

    invoke-direct {v0, p0, p1}, Lf/d/a/l;-><init>(Lf/c/b;I)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lf/c/d;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/c/d",
            "<",
            "Lf/d",
            "<TT;>;>;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1773
    new-instance v0, Lf/d/a/h;

    invoke-direct {v0, p0}, Lf/d/a/h;-><init>(Lf/c/d;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lf/d$a;)Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d$a",
            "<TT;>;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lf/d;

    invoke-static {p0}, Lf/g/c;->a(Lf/d$a;)Lf/d$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/d;-><init>(Lf/d$a;)V

    return-object v0
.end method

.method public static a(Lf/d;Lf/d;)Lf/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d",
            "<+TT;>;",
            "Lf/d",
            "<+TT;>;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11207
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 11963
    array-length v1, v0

    .line 11964
    if-nez v1, :cond_0

    .line 12795
    invoke-static {}, Lf/d/a/b;->a()Lf/d;

    move-result-object v0

    .line 15054
    :goto_0
    new-instance v1, Lf/d/e/n$1;

    invoke-direct {v1}, Lf/d/e/n$1;-><init>()V

    .line 15110
    instance-of v2, v0, Lf/d/e/k;

    if-eqz v2, :cond_2

    .line 15111
    check-cast v0, Lf/d/e/k;

    .line 15112
    invoke-virtual {v0, v1}, Lf/d/e/k;->d(Lf/c/e;)Lf/d;

    move-result-object v0

    :goto_1
    return-object v0

    .line 11967
    :cond_0
    if-ne v1, v3, :cond_1

    .line 11968
    aget-object v0, v0, v2

    .line 13181
    invoke-static {v0}, Lf/d/e/k;->c(Ljava/lang/Object;)Lf/d/e/k;

    move-result-object v0

    goto :goto_0

    .line 11970
    :cond_1
    new-instance v1, Lf/d/a/k;

    invoke-direct {v1, v0}, Lf/d/a/k;-><init>([Ljava/lang/Object;)V

    invoke-static {v1}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    goto :goto_0

    .line 15114
    :cond_2
    new-instance v2, Lf/d/a/g;

    invoke-direct {v2, v0, v1}, Lf/d/a/g;-><init>(Lf/d;Lf/c/e;)V

    invoke-static {v2}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lf/d;Lf/d;Lf/c/f;)Lf/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d",
            "<+TT1;>;",
            "Lf/d",
            "<+TT2;>;",
            "Lf/c/f",
            "<-TT1;-TT2;+TR;>;)",
            "Lf/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 691
    const/4 v0, 0x2

    new-array v0, v0, [Lf/d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lf/c/h;->a(Lf/c/f;)Lf/c/g;

    move-result-object v1

    .line 11041
    new-instance v2, Lf/d/a/f;

    invoke-direct {v2, v0, v1}, Lf/d/a/f;-><init>(Ljava/lang/Iterable;Lf/c/g;)V

    invoke-static {v2}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    .line 691
    return-object v0
.end method

.method public static a(Lf/e/c;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/e/c",
            "<TS;TT;>;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1940
    new-instance v0, Lf/d/a/n;

    invoke-direct {v0, p0}, Lf/d/a/n;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2181
    invoke-static {p0}, Lf/d/e/k;->c(Ljava/lang/Object;)Lf/d/e/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2044
    new-instance v0, Lf/d/a/m;

    invoke-direct {v0, p0}, Lf/d/a/m;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lf/i;Lf/d;)Lf/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/i",
            "<-TT;>;",
            "Lf/d",
            "<TT;>;)",
            "Lf/j;"
        }
    .end annotation

    .prologue
    .line 10218
    if-nez p0, :cond_0

    .line 10219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "subscriber can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10221
    :cond_0
    iget-object v0, p1, Lf/d;->a:Lf/d$a;

    if-nez v0, :cond_1

    .line 10222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10230
    :cond_1
    invoke-virtual {p0}, Lf/i;->d()V

    .line 10237
    instance-of v0, p0, Lf/f/a;

    if-nez v0, :cond_2

    .line 10239
    new-instance v0, Lf/f/a;

    invoke-direct {v0, p0}, Lf/f/a;-><init>(Lf/i;)V

    move-object p0, v0

    .line 10246
    :cond_2
    :try_start_0
    iget-object v0, p1, Lf/d;->a:Lf/d$a;

    invoke-static {p1, v0}, Lf/g/c;->a(Lf/d;Lf/d$a;)Lf/d$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lf/d$a;->call(Ljava/lang/Object;)V

    .line 10247
    invoke-static {p0}, Lf/g/c;->a(Lf/j;)Lf/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10269
    :goto_0
    return-object v0

    .line 10248
    :catch_0
    move-exception v0

    .line 10250
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 20108
    iget-object v1, p0, Lf/i;->b:Lf/d/e/l;

    .line 21059
    iget-boolean v1, v1, Lf/d/e/l;->b:Z

    .line 10252
    if-eqz v1, :cond_3

    .line 10253
    invoke-static {v0}, Lf/g/c;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lf/g/c;->a(Ljava/lang/Throwable;)V

    .line 10269
    :goto_1
    invoke-static {}, Lf/j/d;->a()Lf/j;

    move-result-object v0

    goto :goto_0

    .line 10257
    :cond_3
    :try_start_1
    invoke-static {v0}, Lf/g/c;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf/i;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 10258
    :catch_1
    move-exception v1

    .line 10259
    invoke-static {v1}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 10262
    new-instance v2, Lf/b/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lf/b/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10264
    invoke-static {v2}, Lf/g/c;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10266
    throw v2
.end method

.method public static b()Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3447
    invoke-static {}, Lf/d/a/c;->a()Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lf/d;Lf/d;Lf/c/f;)Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d",
            "<+TT1;>;",
            "Lf/d",
            "<+TT2;>;",
            "Lf/c/f",
            "<-TT1;-TT2;+TR;>;)",
            "Lf/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4013
    const/4 v0, 0x2

    new-array v0, v0, [Lf/d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 15181
    invoke-static {v0}, Lf/d/e/k;->c(Ljava/lang/Object;)Lf/d/e/k;

    move-result-object v0

    .line 4013
    new-instance v1, Lf/d/a/ag;

    invoke-direct {v1, p2}, Lf/d/a/ag;-><init>(Lf/c/f;)V

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lf/c/a;)Lf/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/a;",
            ")",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5798
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v0

    .line 5799
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v1

    .line 5800
    new-instance v2, Lf/d/e/a;

    invoke-direct {v2, v0, v1, p1}, Lf/d/e/a;-><init>(Lf/c/b;Lf/c/b;Lf/c/a;)V

    .line 5802
    new-instance v0, Lf/d/a/i;

    invoke-direct {v0, p0, v2}, Lf/d/a/i;-><init>(Lf/d;Lf/e;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lf/c/b;)Lf/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/b",
            "<-TT;>;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5900
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v0

    .line 5901
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v1

    .line 5902
    new-instance v2, Lf/d/e/a;

    invoke-direct {v2, p1, v0, v1}, Lf/d/e/a;-><init>(Lf/c/b;Lf/c/b;Lf/c/a;)V

    .line 5904
    new-instance v0, Lf/d/a/i;

    invoke-direct {v0, p0, v2}, Lf/d/a/i;-><init>(Lf/d;Lf/e;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lf/c/e;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/e",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6563
    new-instance v0, Lf/d/a/j;

    invoke-direct {v0, p0, p1}, Lf/d/a/j;-><init>(Lf/d;Lf/c/e;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lf/d$b;)Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d$b",
            "<+TR;-TT;>;)",
            "Lf/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lf/d/a/o;

    iget-object v1, p0, Lf/d;->a:Lf/d$a;

    invoke-direct {v0, v1, p1}, Lf/d/a/o;-><init>(Lf/d$a;Lf/d$b;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lf/d$c;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/d$c",
            "<-TT;+TR;>;)",
            "Lf/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-interface {p1, p0}, Lf/d$c;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d;

    return-object v0
.end method

.method public final a(Lf/d;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d",
            "<+TT;>;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5195
    invoke-static {p0, p1}, Lf/d;->a(Lf/d;Lf/d;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lf/g;)Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g;",
            ")",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7623
    sget v0, Lf/d/e/i;->b:I

    .line 16728
    instance-of v1, p0, Lf/d/e/k;

    if-eqz v1, :cond_0

    .line 16729
    check-cast p0, Lf/d/e/k;

    invoke-virtual {p0, p1}, Lf/d/e/k;->c(Lf/g;)Lf/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 16731
    :cond_0
    new-instance v1, Lf/d/a/y;

    invoke-direct {v1, p1, v0}, Lf/d/a/y;-><init>(Lf/g;I)V

    invoke-virtual {p0, v1}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lf/e;)Lf/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/e",
            "<-TT;>;)",
            "Lf/j;"
        }
    .end annotation

    .prologue
    .line 10115
    instance-of v0, p1, Lf/i;

    if-eqz v0, :cond_0

    .line 10116
    check-cast p1, Lf/i;

    .line 18213
    invoke-static {p1, p0}, Lf/d;->a(Lf/i;Lf/d;)Lf/j;

    move-result-object v0

    .line 10121
    :goto_0
    return-object v0

    .line 10118
    :cond_0
    if-nez p1, :cond_1

    .line 10119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "observer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10121
    :cond_1
    new-instance v0, Lf/d/e/f;

    invoke-direct {v0, p1}, Lf/d/e/f;-><init>(Lf/e;)V

    .line 19213
    invoke-static {v0, p0}, Lf/d;->a(Lf/i;Lf/d;)Lf/j;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lf/i;)Lf/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)",
            "Lf/j;"
        }
    .end annotation

    .prologue
    .line 10148
    :try_start_0
    invoke-virtual {p1}, Lf/i;->d()V

    .line 10150
    iget-object v0, p0, Lf/d;->a:Lf/d$a;

    invoke-static {p0, v0}, Lf/g/c;->a(Lf/d;Lf/d$a;)Lf/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/d$a;->call(Ljava/lang/Object;)V

    .line 10151
    invoke-static {p1}, Lf/g/c;->a(Lf/j;)Lf/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10168
    :goto_0
    return-object v0

    .line 10152
    :catch_0
    move-exception v0

    .line 10154
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 10157
    :try_start_1
    invoke-static {v0}, Lf/g/c;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lf/i;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 10168
    invoke-static {}, Lf/j/d;->a()Lf/j;

    move-result-object v0

    goto :goto_0

    .line 10158
    :catch_1
    move-exception v1

    .line 10159
    invoke-static {v1}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 10162
    new-instance v2, Lf/b/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lf/b/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10164
    invoke-static {v2}, Lf/g/c;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10166
    throw v2
.end method

.method public final b(Lf/c/a;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/a;",
            ")",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6016
    new-instance v0, Lf/d/a/v;

    invoke-direct {v0, p1}, Lf/d/a/v;-><init>(Lf/c/a;)V

    invoke-virtual {p0, v0}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lf/c/e;)Lf/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/c/e",
            "<-TT;+",
            "Lf/d",
            "<+TR;>;>;)",
            "Lf/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6734
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lf/d/e/k;

    if-ne v0, v1, :cond_0

    .line 6735
    check-cast p0, Lf/d/e/k;

    invoke-virtual {p0, p1}, Lf/d/e/k;->d(Lf/c/e;)Lf/d;

    move-result-object v0

    .line 15574
    :goto_0
    return-object v0

    .line 6737
    :cond_0
    invoke-virtual {p0, p1}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v0

    .line 15573
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lf/d/e/k;

    if-ne v1, v2, :cond_1

    .line 15574
    check-cast v0, Lf/d/e/k;

    .line 16054
    new-instance v1, Lf/d/e/n$1;

    invoke-direct {v1}, Lf/d/e/n$1;-><init>()V

    .line 15574
    invoke-virtual {v0, v1}, Lf/d/e/k;->d(Lf/c/e;)Lf/d;

    move-result-object v0

    goto :goto_0

    .line 16079
    :cond_1
    sget-object v1, Lf/d/a/x$a;->a:Lf/d/a/x;

    .line 15576
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lf/d;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d",
            "<+TT;>;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5418
    new-instance v0, Lf/d/a/ad;

    invoke-direct {v0, p1}, Lf/d/a/ad;-><init>(Lf/d;)V

    invoke-virtual {p0, v0}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lf/g;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g;",
            ")",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10294
    instance-of v0, p0, Lf/d/e/k;

    if-eqz v0, :cond_0

    .line 10295
    check-cast p0, Lf/d/e/k;

    invoke-virtual {p0, p1}, Lf/d/e/k;->c(Lf/g;)Lf/d;

    move-result-object v0

    .line 10297
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lf/d/a/ac;

    invoke-direct {v0, p0, p1}, Lf/d/a/ac;-><init>(Lf/d;Lf/g;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lf/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9700
    .line 17181
    invoke-static {p1}, Lf/d/e/k;->c(Ljava/lang/Object;)Lf/d/e/k;

    move-result-object v0

    .line 9700
    invoke-static {v0, p0}, Lf/d;->a(Lf/d;Lf/d;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lf/c/e;)Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/c/e",
            "<-TT;+TR;>;)",
            "Lf/d",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7540
    new-instance v0, Lf/d/a/p;

    invoke-direct {v0, p0, p1}, Lf/d/a/p;-><init>(Lf/d;Lf/c/e;)V

    invoke-static {v0}, Lf/d;->a(Lf/d$a;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lf/j;
    .locals 4

    .prologue
    .line 9985
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v0

    .line 9986
    sget-object v1, Lf/d/e/d;->g:Lf/c/b;

    .line 9987
    invoke-static {}, Lf/c/c;->a()Lf/c/c$b;

    move-result-object v2

    .line 9988
    new-instance v3, Lf/d/e/b;

    invoke-direct {v3, v0, v1, v2}, Lf/d/e/b;-><init>(Lf/c/b;Lf/c/b;Lf/c/a;)V

    .line 17213
    invoke-static {v3, p0}, Lf/d;->a(Lf/i;Lf/d;)Lf/j;

    move-result-object v0

    .line 9988
    return-object v0
.end method
