.class public final Lcom/avast/android/burger/internal/config/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avast/android/burger/internal/config/a;


# instance fields
.field private a:Lcom/avast/android/burger/b;


# direct methods
.method public constructor <init>(Lcom/avast/android/burger/b;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/avast/android/burger/internal/config/b;->a:Lcom/avast/android/burger/b;

    .line 22
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/avast/android/burger/b;
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/burger/internal/config/b;->a:Lcom/avast/android/burger/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/avast/android/burger/b;)V
    .locals 3

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/avast/android/burger/internal/config/b;->a:Lcom/avast/android/burger/b;

    .line 32
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Config has changed:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/avast/android/burger/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
