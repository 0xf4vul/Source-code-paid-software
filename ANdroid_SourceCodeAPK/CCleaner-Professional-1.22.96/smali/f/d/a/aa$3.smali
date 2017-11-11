.class final Lf/d/a/aa$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/aa;->a(Lf/d;Lf/c/d;)Lf/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Lf/c/d;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lf/c/d;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lf/d/a/aa$3;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lf/d/a/aa$3;->b:Lf/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 202
    check-cast p1, Lf/i;

    .line 1209
    :cond_0
    iget-object v0, p0, Lf/d/a/aa$3;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/aa$e;

    .line 1211
    if-nez v0, :cond_1

    .line 1213
    new-instance v2, Lf/d/a/aa$e;

    iget-object v1, p0, Lf/d/a/aa$3;->b:Lf/c/d;

    invoke-interface {v1}, Lf/c/d;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/d/a/aa$d;

    invoke-direct {v2, v1}, Lf/d/a/aa$e;-><init>(Lf/d/a/aa$d;)V

    .line 1215
    invoke-virtual {v2}, Lf/d/a/aa$e;->a()V

    .line 1217
    iget-object v1, p0, Lf/d/a/aa$3;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 1227
    :cond_1
    new-instance v1, Lf/d/a/aa$b;

    invoke-direct {v1, v0, p1}, Lf/d/a/aa$b;-><init>(Lf/d/a/aa$e;Lf/i;)V

    .line 1231
    invoke-virtual {v0, v1}, Lf/d/a/aa$e;->a(Lf/d/a/aa$b;)Z

    .line 1234
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/j;)V

    .line 1237
    iget-object v0, v0, Lf/d/a/aa$e;->a:Lf/d/a/aa$d;

    invoke-interface {v0, v1}, Lf/d/a/aa$d;->a(Lf/d/a/aa$b;)V

    .line 1241
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/f;)V

    .line 202
    return-void
.end method
