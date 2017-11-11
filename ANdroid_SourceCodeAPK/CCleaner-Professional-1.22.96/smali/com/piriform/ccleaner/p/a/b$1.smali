.class final Lcom/piriform/ccleaner/p/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/p/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/a;

.field final synthetic b:Lcom/piriform/ccleaner/p/a/b;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/p/a/b;Lf/a;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/piriform/ccleaner/p/a/b$1;->b:Lcom/piriform/ccleaner/p/a/b;

    iput-object p2, p0, Lcom/piriform/ccleaner/p/a/b$1;->a:Lf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/b$1;->a:Lf/a;

    check-cast p2, Lcom/piriform/ccleaner/r/a;

    invoke-interface {p2}, Lcom/piriform/ccleaner/r/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/a;->onNext(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/b$1;->a:Lf/a;

    invoke-interface {v0}, Lf/a;->onCompleted()V

    .line 58
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
