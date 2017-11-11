.class public final Lcom/piriform/ccleaner/p/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$c",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lf/d",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Integer;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/p/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    iput-object v1, p0, Lcom/piriform/ccleaner/p/a;->b:Ljava/lang/Integer;

    .line 18
    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/p/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/p/a;->b:Ljava/lang/Integer;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lf/d;

    .line 1026
    new-instance v0, Lcom/piriform/ccleaner/p/a$1;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/p/a$1;-><init>(Lcom/piriform/ccleaner/p/a;Lf/d;)V

    invoke-static {v0}, Lf/d;->a(Lf/c/d;)Lf/d;

    move-result-object v0

    .line 10
    return-object v0
.end method
