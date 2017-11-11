.class public final Lcom/google/android/gms/internal/sn$5;
.super Lcom/google/android/gms/internal/sn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/tb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/sn$a",
        "<",
        "Lcom/google/android/gms/internal/tb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/sn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/sn;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sn$5;->b:Lcom/google/android/gms/internal/sn;

    iput-object p2, p0, Lcom/google/android/gms/internal/sn$5;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/sn$a;-><init>(Lcom/google/android/gms/internal/sn;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$5;->b:Lcom/google/android/gms/internal/sn;

    invoke-static {v0}, Lcom/google/android/gms/internal/sn;->d(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/tl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sn$5;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tl;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/tb;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$5;->a:Landroid/content/Context;

    const-string/jumbo v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/to;

    invoke-direct {v0}, Lcom/google/android/gms/internal/to;-><init>()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/sz;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    const v1, 0x9d2290

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/sz;->getMobileAdsSettingsManagerWithClientJarVersion(Lcom/google/android/gms/a/a;I)Lcom/google/android/gms/internal/tb;

    move-result-object v0

    .line 0
    return-object v0
.end method
