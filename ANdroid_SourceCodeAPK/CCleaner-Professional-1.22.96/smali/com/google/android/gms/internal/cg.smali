.class public final Lcom/google/android/gms/internal/cg;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/internal/cg;


# instance fields
.field private final b:Lcom/google/android/gms/internal/cd;

.field private final c:Lcom/google/android/gms/internal/ce;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/internal/cg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cg;-><init>()V

    .line 1000
    const-class v1, Lcom/google/android/gms/internal/cg;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/cg;->a:Lcom/google/android/gms/internal/cg;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/cd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->b:Lcom/google/android/gms/internal/cd;

    new-instance v0, Lcom/google/android/gms/internal/ce;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ce;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->c:Lcom/google/android/gms/internal/ce;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/cd;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/cg;->c()Lcom/google/android/gms/internal/cg;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/cg;->b:Lcom/google/android/gms/internal/cd;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/ce;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/cg;->c()Lcom/google/android/gms/internal/cg;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/cg;->c:Lcom/google/android/gms/internal/ce;

    return-object v0
.end method

.method private static c()Lcom/google/android/gms/internal/cg;
    .locals 2

    const-class v1, Lcom/google/android/gms/internal/cg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/cg;->a:Lcom/google/android/gms/internal/cg;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
