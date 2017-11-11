.class public final Lcom/avast/android/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/avast/android/e/a;


# instance fields
.field public a:Lcom/avast/android/e/b/c;

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avast/android/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/e/a;->b:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method public static a()Lcom/avast/android/e/a;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/avast/android/e/a;->c:Lcom/avast/android/e/a;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/avast/android/e/a;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/avast/android/e/a;->c:Lcom/avast/android/e/a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/avast/android/e/a;

    invoke-direct {v0}, Lcom/avast/android/e/a;-><init>()V

    sput-object v0, Lcom/avast/android/e/a;->c:Lcom/avast/android/e/a;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/avast/android/e/a;->c:Lcom/avast/android/e/a;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
