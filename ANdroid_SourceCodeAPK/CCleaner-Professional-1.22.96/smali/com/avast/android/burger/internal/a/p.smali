.class public Lcom/avast/android/burger/internal/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/avast/android/burger/internal/a/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/avast/android/burger/internal/a/k;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/avast/android/burger/internal/a/p;->a:Lcom/avast/android/burger/internal/a/k;

    return-object v0
.end method

.method public static a(Lcom/avast/android/burger/internal/a/k;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/avast/android/burger/internal/a/p;->a:Lcom/avast/android/burger/internal/a/k;

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ComponentHolder already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    const-class v1, Lcom/avast/android/burger/internal/a/p;

    monitor-enter v1

    .line 28
    :try_start_0
    sput-object p0, Lcom/avast/android/burger/internal/a/p;->a:Lcom/avast/android/burger/internal/a/k;

    .line 29
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
