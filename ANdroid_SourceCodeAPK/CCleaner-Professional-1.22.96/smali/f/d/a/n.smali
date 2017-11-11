.class public final Lf/d/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "iterable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lf/d/a/n;->a:Ljava/lang/Iterable;

    .line 43
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 34
    check-cast p1, Lf/i;

    .line 1051
    :try_start_0
    iget-object v0, p0, Lf/d/a/n;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1053
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1108
    iget-object v2, p1, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v2, v2, Lf/d/e/l;->b:Z

    .line 1059
    if-nez v2, :cond_0

    .line 1060
    if-nez v1, :cond_1

    .line 1061
    invoke-virtual {p1}, Lf/i;->onCompleted()V

    :cond_0
    :goto_0
    return-void

    .line 1055
    :catch_0
    move-exception v0

    invoke-static {v0, p1}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;)V

    goto :goto_0

    .line 1063
    :cond_1
    new-instance v1, Lf/d/a/n$a;

    invoke-direct {v1, p1, v0}, Lf/d/a/n$a;-><init>(Lf/i;Ljava/util/Iterator;)V

    invoke-virtual {p1, v1}, Lf/i;->a(Lf/f;)V

    goto :goto_0
.end method
