.class public Lcom/google/android/gms/ads/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/sj;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/st;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/st;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/sj;->a()Lcom/google/android/gms/internal/sj;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/st;Lcom/google/android/gms/internal/sj;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/st;Lcom/google/android/gms/internal/sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/b;->c:Lcom/google/android/gms/internal/st;

    iput-object p3, p0, Lcom/google/android/gms/ads/b;->a:Lcom/google/android/gms/internal/sj;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/c;)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/th;

    .line 2000
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/b;->c:Lcom/google/android/gms/internal/st;

    iget-object v2, p0, Lcom/google/android/gms/ads/b;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/sj;->a(Landroid/content/Context;Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/zzec;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/st;->a(Lcom/google/android/gms/internal/zzec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
