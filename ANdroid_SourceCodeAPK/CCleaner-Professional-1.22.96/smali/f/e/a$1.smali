.class public final Lf/e/a$1;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;

.field final synthetic c:Lf/d/a/d;

.field final synthetic d:Lf/e/a;


# direct methods
.method public constructor <init>(Lf/e/a;Ljava/util/concurrent/BlockingQueue;Lf/d/a/d;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lf/e/a$1;->d:Lf/e/a;

    iput-object p2, p0, Lf/e/a$1;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lf/e/a$1;->c:Lf/d/a/d;

    invoke-direct {p0}, Lf/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lf/e/a$1;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lf/d/a/d;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 525
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lf/e/a$1;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 521
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lf/e/a$1;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method
