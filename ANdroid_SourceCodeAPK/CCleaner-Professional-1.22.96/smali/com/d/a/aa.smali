.class public final Lcom/d/a/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/d/a/aa$a;
    }
.end annotation


# instance fields
.field final a:Landroid/os/HandlerThread;

.field final b:Lcom/d/a/d;

.field final c:Landroid/os/Handler;

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:J

.field l:I

.field m:I

.field n:I


# direct methods
.method public constructor <init>(Lcom/d/a/d;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/d/a/aa;->b:Lcom/d/a/d;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Picasso-Stats"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/d/a/aa;->a:Landroid/os/HandlerThread;

    .line 54
    iget-object v0, p0, Lcom/d/a/aa;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Lcom/d/a/aa$a;

    iget-object v1, p0, Lcom/d/a/aa;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/d/a/aa$a;-><init>(Landroid/os/Looper;Lcom/d/a/aa;)V

    iput-object v0, p0, Lcom/d/a/aa;->c:Landroid/os/Handler;

    .line 56
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/d/a/aa;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    return-void
.end method

.method final a(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    .line 117
    invoke-static {p1}, Lcom/d/a/ae;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/d/a/aa;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/d/a/aa;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method
