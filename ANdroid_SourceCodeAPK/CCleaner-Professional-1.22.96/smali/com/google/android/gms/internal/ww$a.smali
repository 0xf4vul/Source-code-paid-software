.class final Lcom/google/android/gms/internal/ww$a;
.super Lcom/google/android/gms/internal/ss$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ss;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ss;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ss$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ww$a;->a:Lcom/google/android/gms/internal/ss;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/xb;->a()Lcom/google/android/gms/internal/xb;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ud;->bg:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2000
    iget v2, v1, Lcom/google/android/gms/internal/xb;->c:I

    .line 3000
    iget v3, v1, Lcom/google/android/gms/internal/xb;->b:I

    .line 0
    add-int/2addr v2, v3

    .line 4000
    iget v1, v1, Lcom/google/android/gms/internal/xb;->d:I

    .line 0
    int-to-float v2, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    cmpg-float v1, v2, v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ud;->be:Lcom/google/android/gms/internal/ty;

    .line 5000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/ud;->bf:Lcom/google/android/gms/internal/ty;

    .line 6000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v1, :cond_1

    if-gez v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->t()Lcom/google/android/gms/internal/wx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wx;->a()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ww$a;->a:Lcom/google/android/gms/internal/ss;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ss;->a()V

    return-void

    :cond_3
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ww$a$1;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ww$a$1;-><init>()V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ww$a;->a:Lcom/google/android/gms/internal/ss;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ss;->a(I)V

    return-void
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ww$a;->a:Lcom/google/android/gms/internal/ss;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ss;->b()V

    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ww$a;->a:Lcom/google/android/gms/internal/ss;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ss;->c()V

    return-void
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ww$a;->a:Lcom/google/android/gms/internal/ss;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ss;->d()V

    return-void
.end method
