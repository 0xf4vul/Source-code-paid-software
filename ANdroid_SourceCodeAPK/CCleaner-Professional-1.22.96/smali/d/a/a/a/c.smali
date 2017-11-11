.class public abstract Ld/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/a/a/a/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/a/a/a/c;->a:Ljava/util/List;

    .line 23
    iget-object v0, p0, Ld/a/a/a/c;->a:Ljava/util/List;

    new-instance v1, Ld/a/a/a/b/a;

    invoke-direct {v1}, Ld/a/a/a/b/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method private declared-synchronized b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ld/a/a/a/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/a/a/a/c;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    const-string/jumbo v0, "null"

    .line 122
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo p2, "empty message"

    .line 115
    :cond_0
    invoke-virtual {p0}, Ld/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ld/a/a/a/c;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, p2, p3, v1}, Ld/a/a/a/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/List;)V

    .line 116
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x3

    invoke-static {p1, p2}, Ld/a/a/a/c;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public final varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x6

    invoke-static {p2, p3}, Ld/a/a/a/c;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x4

    invoke-static {p1, p2}, Ld/a/a/a/c;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x5

    invoke-static {p1, p2}, Ld/a/a/a/c;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x6

    invoke-static {p1, p2}, Ld/a/a/a/c;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ld/a/a/a/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method
