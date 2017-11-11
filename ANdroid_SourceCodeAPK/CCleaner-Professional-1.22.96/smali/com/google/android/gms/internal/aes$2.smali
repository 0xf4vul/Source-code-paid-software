.class final Lcom/google/android/gms/internal/aes$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aes;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aes;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aes$2;->a:Lcom/google/android/gms/internal/aes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aes$2;->a:Lcom/google/android/gms/internal/aes;

    iget-object v0, v0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->B()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aes$2;->a:Lcom/google/android/gms/internal/aes;

    iget-object v0, v0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->i()Lcom/google/android/gms/ads/internal/overlay/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/f;->l:Lcom/google/android/gms/ads/internal/overlay/f$b;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/f;->f:Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/f$b;->removeView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/f;->a(Z)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aes$2;->a:Lcom/google/android/gms/internal/aes;

    invoke-static {v0}, Lcom/google/android/gms/internal/aes;->a(Lcom/google/android/gms/internal/aes;)Lcom/google/android/gms/internal/aes$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aes$2;->a:Lcom/google/android/gms/internal/aes;

    invoke-static {v0}, Lcom/google/android/gms/internal/aes;->a(Lcom/google/android/gms/internal/aes;)Lcom/google/android/gms/internal/aes$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/aes$c;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aes$2;->a:Lcom/google/android/gms/internal/aes;

    invoke-static {v0}, Lcom/google/android/gms/internal/aes;->b(Lcom/google/android/gms/internal/aes;)Lcom/google/android/gms/internal/aes$c;

    :cond_1
    return-void
.end method
