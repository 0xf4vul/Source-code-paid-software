.class public final Lf/d/d/a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lf/j;",
        ">;",
        "Lf/j;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lf/d/d/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/j;

    .line 177
    sget-object v1, Lf/d/d/b;->a:Lf/d/d/b;

    if-eq v0, v1, :cond_0

    .line 178
    sget-object v0, Lf/d/d/b;->a:Lf/d/d/b;

    invoke-virtual {p0, v0}, Lf/d/d/a;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/j;

    .line 179
    if-eqz v0, :cond_0

    sget-object v1, Lf/d/d/b;->a:Lf/d/d/b;

    if-eq v0, v1, :cond_0

    .line 180
    invoke-interface {v0}, Lf/j;->b()V

    .line 183
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lf/d/d/a;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lf/d/d/b;->a:Lf/d/d/b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
