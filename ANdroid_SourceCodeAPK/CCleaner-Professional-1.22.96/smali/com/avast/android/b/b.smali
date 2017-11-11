.class public abstract Lcom/avast/android/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Landroid/os/Bundle;

.field c:Lcom/avast/android/b/a;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/b/b;->a:Z

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/avast/android/b/b;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/avast/android/b/b;->b:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/avast/android/b/a;)V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/avast/android/b/b;->c:Lcom/avast/android/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 55
    :cond_0
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/avast/android/b/b;->b(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/avast/android/b/b;->b:Landroid/os/Bundle;

    .line 61
    iget-object v0, p0, Lcom/avast/android/b/b;->c:Lcom/avast/android/b/a;

    if-nez v0, :cond_1

    .line 62
    monitor-exit p0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 64
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/avast/android/b/b;->a:Z

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/avast/android/b/b;->d:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avast/android/b/b;->d:Landroid/os/Handler;

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/avast/android/b/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/avast/android/b/b$1;

    invoke-direct {v1, p0}, Lcom/avast/android/b/b$1;-><init>(Lcom/avast/android/b/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/avast/android/b/b;->c:Lcom/avast/android/b/a;

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/avast/android/b/b;->b:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/avast/android/b/a;->a(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public abstract b(Ljava/lang/Object;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/os/Bundle;"
        }
    .end annotation
.end method
