.class public final Lcom/google/android/gms/internal/so;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/internal/so;


# instance fields
.field private final c:Lcom/google/android/gms/internal/aea;

.field private final d:Lcom/google/android/gms/internal/sn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/so;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/so;

    invoke-direct {v0}, Lcom/google/android/gms/internal/so;-><init>()V

    .line 1000
    sget-object v1, Lcom/google/android/gms/internal/so;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/so;->b:Lcom/google/android/gms/internal/so;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/aea;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aea;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/so;->c:Lcom/google/android/gms/internal/aea;

    new-instance v0, Lcom/google/android/gms/internal/sn;

    new-instance v1, Lcom/google/android/gms/internal/sg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/sg;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/sf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/sf;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/tl;

    invoke-direct {v3}, Lcom/google/android/gms/internal/tl;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/vs;

    invoke-direct {v4}, Lcom/google/android/gms/internal/vs;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/abv;

    invoke-direct {v5}, Lcom/google/android/gms/internal/abv;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/zl;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zl;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/yy;

    invoke-direct {v7}, Lcom/google/android/gms/internal/yy;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/sn;-><init>(Lcom/google/android/gms/internal/sg;Lcom/google/android/gms/internal/sf;Lcom/google/android/gms/internal/tl;Lcom/google/android/gms/internal/vs;Lcom/google/android/gms/internal/abv;Lcom/google/android/gms/internal/zl;Lcom/google/android/gms/internal/yy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/so;->d:Lcom/google/android/gms/internal/sn;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/aea;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/so;->c()Lcom/google/android/gms/internal/so;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/so;->c:Lcom/google/android/gms/internal/aea;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/sn;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/so;->c()Lcom/google/android/gms/internal/so;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/so;->d:Lcom/google/android/gms/internal/sn;

    return-object v0
.end method

.method private static c()Lcom/google/android/gms/internal/so;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/so;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/so;->b:Lcom/google/android/gms/internal/so;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
