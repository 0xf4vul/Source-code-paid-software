.class public final Lcom/google/android/exoplayer2/k/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Lcom/google/android/exoplayer2/k/e;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/k/e;)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/k/e$a;->a:Landroid/os/Handler;

    .line 121
    iput-object p2, p0, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    .line 122
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/e$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/k/e$a$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/k/e$a$6;-><init>(Lcom/google/android/exoplayer2/k/e$a;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/b/d;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/e$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/k/e$a$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/k/e$a$7;-><init>(Lcom/google/android/exoplayer2/k/e$a;Lcom/google/android/exoplayer2/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    :cond_0
    return-void
.end method
