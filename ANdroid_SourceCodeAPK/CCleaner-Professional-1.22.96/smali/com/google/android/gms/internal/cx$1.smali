.class final Lcom/google/android/gms/internal/cx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cx;-><init>(Lcom/google/android/gms/internal/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cx$1;->a:Lcom/google/android/gms/internal/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->a:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->a(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/internal/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()Lcom/google/android/gms/internal/dp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/dp;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->a:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cx$1;->a:Lcom/google/android/gms/internal/cx;

    invoke-static {v1}, Lcom/google/android/gms/internal/cx;->b(Lcom/google/android/gms/internal/cx;)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->a:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->c(Lcom/google/android/gms/internal/cx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->a:Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx;->a()V

    goto :goto_0
.end method
