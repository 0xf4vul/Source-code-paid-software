.class public final Lcom/google/android/gms/internal/tk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field private static c:Lcom/google/android/gms/internal/tk;


# instance fields
.field public b:Lcom/google/android/gms/internal/tb;

.field private d:Lcom/google/android/gms/ads/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/tk;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/tk;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/tk;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/tk;->c:Lcom/google/android/gms/internal/tk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/tk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/tk;->c:Lcom/google/android/gms/internal/tk;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/tk;->c:Lcom/google/android/gms/internal/tk;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;
    .locals 3

    sget-object v1, Lcom/google/android/gms/internal/tk;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tk;->d:Lcom/google/android/gms/ads/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tk;->d:Lcom/google/android/gms/ads/a/b;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/xy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xy;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/so;->b()Lcom/google/android/gms/internal/sn;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ya;)Lcom/google/android/gms/internal/abr;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/abz;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/abz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/abr;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/tk;->d:Lcom/google/android/gms/ads/a/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/tk;->d:Lcom/google/android/gms/ads/a/b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
