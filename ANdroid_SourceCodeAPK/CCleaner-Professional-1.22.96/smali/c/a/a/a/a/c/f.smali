.class public abstract Lc/a/a/a/a/c/f;
.super Lc/a/a/a/a/c/a;
.source "SourceFile"

# interfaces
.implements Lc/a/a/a/a/c/b;
.implements Lc/a/a/a/a/c/i;
.implements Lc/a/a/a/a/c/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/a/c/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lc/a/a/a/a/c/a",
        "<TParams;TProgress;TResult;>;",
        "Lc/a/a/a/a/c/b",
        "<",
        "Lc/a/a/a/a/c/l;",
        ">;",
        "Lc/a/a/a/a/c/i;",
        "Lc/a/a/a/a/c/l;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/a/a/c/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lc/a/a/a/a/c/a;-><init>()V

    .line 37
    new-instance v0, Lc/a/a/a/a/c/j;

    invoke-direct {v0}, Lc/a/a/a/a/c/j;-><init>()V

    iput-object v0, p0, Lc/a/a/a/a/c/f;->a:Lc/a/a/a/a/c/j;

    .line 38
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 76
    .line 5101
    iget-object v0, p0, Lc/a/a/a/a/c/f;->a:Lc/a/a/a/a/c/j;

    .line 76
    check-cast v0, Lc/a/a/a/a/c/i;

    invoke-interface {v0}, Lc/a/a/a/a/c/i;->a()I

    move-result v0

    return v0
.end method

.method public final a(Lc/a/a/a/a/c/l;)V
    .locals 2

    .prologue
    .line 58
    .line 1353
    iget v0, p0, Lc/a/a/a/a/c/a;->f:I

    .line 58
    sget v1, Lc/a/a/a/a/c/a$d;->a:I

    if-eq v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2101
    :cond_0
    iget-object v0, p0, Lc/a/a/a/a/c/f;->a:Lc/a/a/a/a/c/j;

    .line 61
    check-cast v0, Lc/a/a/a/a/c/i;

    check-cast v0, Lc/a/a/a/a/c/b;

    invoke-interface {v0, p1}, Lc/a/a/a/a/c/b;->a(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lc/a/a/a/a/c/l;

    invoke-virtual {p0, p1}, Lc/a/a/a/a/c/f;->a(Lc/a/a/a/a/c/l;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 91
    .line 8101
    iget-object v0, p0, Lc/a/a/a/a/c/f;->a:Lc/a/a/a/a/c/j;

    .line 91
    check-cast v0, Lc/a/a/a/a/c/i;

    check-cast v0, Lc/a/a/a/a/c/l;

    invoke-interface {v0, p1}, Lc/a/a/a/a/c/l;->a(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 81
    .line 6101
    iget-object v0, p0, Lc/a/a/a/a/c/f;->a:Lc/a/a/a/a/c/j;

    .line 81
    check-cast v0, Lc/a/a/a/a/c/i;

    check-cast v0, Lc/a/a/a/a/c/l;

    invoke-interface {v0, p1}, Lc/a/a/a/a/c/l;->a(Z)V

    .line 82
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1}, Lc/a/a/a/a/c/e;->a(Lc/a/a/a/a/c/i;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lc/a/a/a/a/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    .line 3101
    iget-object v0, p0, Lc/a/a/a/a/c/f;->a:Lc/a/a/a/a/c/j;

    .line 66
    check-cast v0, Lc/a/a/a/a/c/i;

    check-cast v0, Lc/a/a/a/a/c/b;

    invoke-interface {v0}, Lc/a/a/a/a/c/b;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 71
    .line 4101
    iget-object v0, p0, Lc/a/a/a/a/c/f;->a:Lc/a/a/a/a/c/j;

    .line 71
    check-cast v0, Lc/a/a/a/a/c/i;

    check-cast v0, Lc/a/a/a/a/c/b;

    invoke-interface {v0}, Lc/a/a/a/a/c/b;->g()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 86
    .line 7101
    iget-object v0, p0, Lc/a/a/a/a/c/f;->a:Lc/a/a/a/a/c/j;

    .line 86
    check-cast v0, Lc/a/a/a/a/c/i;

    check-cast v0, Lc/a/a/a/a/c/l;

    invoke-interface {v0}, Lc/a/a/a/a/c/l;->h()Z

    move-result v0

    return v0
.end method
