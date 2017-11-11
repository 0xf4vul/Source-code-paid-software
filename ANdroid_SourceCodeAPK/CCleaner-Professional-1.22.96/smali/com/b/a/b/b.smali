.class final Lcom/b/a/b/b;
.super Lcom/b/a/b/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lc/a/a/a/a$b;


# direct methods
.method public constructor <init>(Lc/a/a/a/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/b/a/b/a;-><init>()V

    .line 18
    new-instance v0, Lcom/b/a/b/b$1;

    invoke-direct {v0, p0}, Lcom/b/a/b/b$1;-><init>(Lcom/b/a/b/b;)V

    iput-object v0, p0, Lcom/b/a/b/b;->d:Lc/a/a/a/a$b;

    .line 38
    iput-object p2, p0, Lcom/b/a/b/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 39
    iget-object v0, p0, Lcom/b/a/b/b;->d:Lc/a/a/a/a$b;

    invoke-virtual {p1, v0}, Lc/a/a/a/a;->a(Lc/a/a/a/a$b;)Z

    .line 40
    return-void
.end method
