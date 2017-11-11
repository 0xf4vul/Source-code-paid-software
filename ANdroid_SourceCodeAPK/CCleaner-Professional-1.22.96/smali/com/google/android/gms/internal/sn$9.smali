.class public final Lcom/google/android/gms/internal/sn$9;
.super Lcom/google/android/gms/internal/sn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/sn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/sn$a",
        "<",
        "Lcom/google/android/gms/internal/yz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/android/gms/internal/sn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/sn;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sn$9;->b:Lcom/google/android/gms/internal/sn;

    iput-object p2, p0, Lcom/google/android/gms/internal/sn$9;->a:Landroid/app/Activity;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$9;->b:Lcom/google/android/gms/internal/sn;

    invoke-static {v0}, Lcom/google/android/gms/internal/sn;->h(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/yy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sn$9;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/yy;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/yz;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$9;->a:Landroid/app/Activity;

    const-string/jumbo v1, "ad_overlay"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 0
    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/sz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$9;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/sz;->createAdOverlay(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/internal/yz;

    move-result-object v0

    .line 0
    return-object v0
.end method
