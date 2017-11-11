.class final Lcom/piriform/ccleaner/ui/b/t;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/piriform/ccleaner/core/a/r;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/core/a/r;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b/t;->a:Lcom/piriform/ccleaner/core/a/r;

    .line 15
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b/t;->a:Lcom/piriform/ccleaner/core/a/r;

    invoke-interface {v0}, Lcom/piriform/ccleaner/core/a/r;->e()V

    .line 20
    return-void
.end method
