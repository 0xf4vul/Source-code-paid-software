.class public Lcom/google/android/gms/internal/hc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hc$a;
    }
.end annotation


# static fields
.field private static b:Lcom/google/android/gms/internal/hc;


# instance fields
.field public a:Lcom/google/android/gms/dynamite/DynamiteModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/hc;
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/hc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/hc;->b:Lcom/google/android/gms/internal/hc;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/hc;->b:Lcom/google/android/gms/internal/hc;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/hc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hc;->b:Lcom/google/android/gms/internal/hc;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/hb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/hc$a;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/dynamite/DynamiteModule;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/dynamite/DynamiteModule;

    const-string/jumbo v1, "com.google.firebase.crash.internal.api.FirebaseCrashApiImpl"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hb$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hb;
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/hc$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/hc$a;-><init>(Ljava/lang/Throwable;B)V

    throw v1
.end method
