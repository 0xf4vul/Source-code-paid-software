.class final Lcom/google/android/gms/internal/zp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zp$1;->a:Lcom/google/android/gms/internal/zp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zp$1;->a:Lcom/google/android/gms/internal/zp;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zp;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Timed out waiting for WebView to finish loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zp$1;->a:Lcom/google/android/gms/internal/zp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zp;->b()V

    goto :goto_0
.end method
