.class public final Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/avast/android/burger/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;->a:J

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 41
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "noConnectivity"

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static {}, Lcom/avast/android/burger/internal/a/p;->a()Lcom/avast/android/burger/internal/a/k;

    move-result-object v0

    .line 48
    if-nez v0, :cond_2

    .line 50
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DI F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_2
    sget-object v1, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;->c:Lcom/avast/android/burger/b/b;

    if-nez v1, :cond_3

    .line 55
    invoke-interface {v0}, Lcom/avast/android/burger/internal/a/k;->b()Lcom/avast/android/burger/b/b;

    move-result-object v1

    sput-object v1, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;->c:Lcom/avast/android/burger/b/b;

    .line 57
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 59
    sget-object v1, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    invoke-static {p1}, Lcom/avast/android/f/c/b;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-wide v4, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;->a:J

    sub-long/2addr v2, v4

    sget-object v4, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;->c:Lcom/avast/android/burger/b/b;

    .line 61
    invoke-interface {v4}, Lcom/avast/android/burger/b/b;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 62
    invoke-interface {v0}, Lcom/avast/android/burger/internal/a/k;->a()Lcom/avast/android/burger/internal/c/i;

    move-result-object v0

    const-string/jumbo v2, "BurgerJob"

    invoke-interface {v0, v2}, Lcom/avast/android/burger/internal/c/i;->a(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;->c:Lcom/avast/android/burger/b/b;

    invoke-interface {v0}, Lcom/avast/android/burger/b/b;->g()V

    .line 65
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
