.class public final Lf/d/a/e;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lf/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lf/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e/b",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lf/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/b",
            "<-",
            "Lf/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/e/b;Lf/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/e/b",
            "<+TT;>;",
            "Lf/c/b",
            "<-",
            "Lf/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 46
    iput-object p1, p0, Lf/d/a/e;->a:Lf/e/b;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lf/d/a/e;->b:I

    .line 48
    iput-object p2, p0, Lf/d/a/e;->c:Lf/c/b;

    .line 49
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 32
    check-cast p1, Lf/i;

    .line 1052
    iget-object v0, p0, Lf/d/a/e;->a:Lf/e/b;

    invoke-static {p1}, Lf/f/d;->a(Lf/i;)Lf/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/e/b;->a(Lf/i;)Lf/j;

    .line 1054
    invoke-virtual {p0}, Lf/d/a/e;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lf/d/a/e;->b:I

    if-ne v0, v1, :cond_0

    .line 1055
    iget-object v0, p0, Lf/d/a/e;->a:Lf/e/b;

    iget-object v1, p0, Lf/d/a/e;->c:Lf/c/b;

    invoke-virtual {v0, v1}, Lf/e/b;->b(Lf/c/b;)V

    .line 32
    :cond_0
    return-void
.end method
