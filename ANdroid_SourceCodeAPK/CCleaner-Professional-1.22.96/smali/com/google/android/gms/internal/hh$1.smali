.class final Lcom/google/android/gms/internal/hh$1;
.super Lcom/google/android/gms/internal/mo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hh;->a(Lcom/google/android/gms/internal/in;)Lcom/google/android/gms/internal/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/lc;

.field final synthetic b:Lcom/google/android/gms/internal/hh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/lc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hh$1;->b:Lcom/google/android/gms/internal/hh;

    iput-object p2, p0, Lcom/google/android/gms/internal/hh$1;->a:Lcom/google/android/gms/internal/lc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/internal/mo;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hh$1;->a:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/hh$1;->b:Lcom/google/android/gms/internal/hh;

    .line 1000
    iget-object v2, v2, Lcom/google/android/gms/internal/hh;->a:Landroid/content/Context;

    .line 0
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/internal/hh$1$1;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/hh$1$1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/mo;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 0
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
