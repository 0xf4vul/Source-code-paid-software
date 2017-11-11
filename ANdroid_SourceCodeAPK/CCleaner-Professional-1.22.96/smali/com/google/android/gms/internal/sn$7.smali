.class final Lcom/google/android/gms/internal/sn$7;
.super Lcom/google/android/gms/internal/sn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ya;)Lcom/google/android/gms/internal/abr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/sn$a",
        "<",
        "Lcom/google/android/gms/internal/abr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/ya;

.field final synthetic c:Lcom/google/android/gms/internal/sn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sn;Landroid/content/Context;Lcom/google/android/gms/internal/ya;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sn$7;->c:Lcom/google/android/gms/internal/sn;

    iput-object p2, p0, Lcom/google/android/gms/internal/sn$7;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/sn$7;->b:Lcom/google/android/gms/internal/ya;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/sn$a;-><init>(Lcom/google/android/gms/internal/sn;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$7;->c:Lcom/google/android/gms/internal/sn;

    invoke-static {v0}, Lcom/google/android/gms/internal/sn;->f(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/abv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sn$7;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/sn$7;->b:Lcom/google/android/gms/internal/ya;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/abv;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ya;)Lcom/google/android/gms/internal/abr;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$7;->a:Landroid/content/Context;

    const-string/jumbo v1, "rewarded_video"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/tq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tq;-><init>()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/sz;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$7;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sn$7;->b:Lcom/google/android/gms/internal/ya;

    const v2, 0x9d2290

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/sz;->createRewardedVideoAd(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/ya;I)Lcom/google/android/gms/internal/abr;

    move-result-object v0

    .line 0
    return-object v0
.end method
