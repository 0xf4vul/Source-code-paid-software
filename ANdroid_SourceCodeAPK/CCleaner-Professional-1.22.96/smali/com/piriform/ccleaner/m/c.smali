.class public final Lcom/piriform/ccleaner/m/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/m/l;


# instance fields
.field final a:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/piriform/ccleaner/m/c;->a:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/piriform/ccleaner/m/c;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 20
    return-void
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/m/c;->a:Ljava/util/concurrent/Semaphore;

    .line 1034
    invoke-static {v0, p1, p2, p3}, Lcom/piriform/ccleaner/c/a;->a(Ljava/util/concurrent/Semaphore;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 23
    return v0
.end method
