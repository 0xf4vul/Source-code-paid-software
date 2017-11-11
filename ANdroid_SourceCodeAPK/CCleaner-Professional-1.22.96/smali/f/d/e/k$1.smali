.class final Lf/d/e/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/e/k;->c(Lf/g;)Lf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Lf/c/a;",
        "Lf/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/d/c/b;

.field final synthetic b:Lf/d/e/k;


# direct methods
.method constructor <init>(Lf/d/e/k;Lf/d/c/b;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lf/d/e/k$1;->b:Lf/d/e/k;

    iput-object p2, p0, Lf/d/e/k$1;->a:Lf/d/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 99
    check-cast p1, Lf/c/a;

    .line 1102
    iget-object v0, p0, Lf/d/e/k$1;->a:Lf/d/c/b;

    .line 1135
    iget-object v0, v0, Lf/d/c/b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/c/b$b;

    invoke-virtual {v0}, Lf/d/c/b$b;->a()Lf/d/c/b$c;

    move-result-object v0

    .line 1136
    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Lf/d/c/b$c;->a(Lf/c/a;JLjava/util/concurrent/TimeUnit;)Lf/d/c/h;

    move-result-object v0

    .line 99
    return-object v0
.end method
