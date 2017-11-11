.class final Lcom/google/android/gms/ads/internal/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/internal/zzec;Landroid/os/Bundle;Lcom/google/android/gms/internal/acy;)Lcom/google/android/gms/internal/zzmk$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aeh;

.field final synthetic b:Lcom/google/android/gms/internal/aee;

.field final synthetic c:Z

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aeh;Lcom/google/android/gms/internal/aee;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/b$4;->a:Lcom/google/android/gms/internal/aeh;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/b$4;->b:Lcom/google/android/gms/internal/aee;

    iput-boolean p3, p0, Lcom/google/android/gms/ads/internal/b$4;->c:Z

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/b$4;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b$4;->a:Lcom/google/android/gms/internal/aeh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aeh;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b$4;->a:Lcom/google/android/gms/internal/aeh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aeh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b$4;->b:Lcom/google/android/gms/internal/aee;

    new-instance v2, Lcom/google/android/gms/internal/zzmr;

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/b$4;->c:Z

    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/b$4;->d:Z

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/internal/zzmr;-><init>(ZZZ)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/aee;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Error receiving app streaming support"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
