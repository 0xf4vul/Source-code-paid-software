.class public final Lcom/google/android/gms/internal/sn$1;
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
        "Lcom/google/android/gms/internal/sw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/zzeg;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/internal/ya;

.field final synthetic e:Lcom/google/android/gms/internal/sn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/sn;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sn$1;->e:Lcom/google/android/gms/internal/sn;

    iput-object p2, p0, Lcom/google/android/gms/internal/sn$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/sn$1;->b:Lcom/google/android/gms/internal/zzeg;

    iput-object p4, p0, Lcom/google/android/gms/internal/sn$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/sn$1;->d:Lcom/google/android/gms/internal/ya;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/sn$a;-><init>(Lcom/google/android/gms/internal/sn;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$1;->e:Lcom/google/android/gms/internal/sn;

    invoke-static {v0}, Lcom/google/android/gms/internal/sn;->b(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/sg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sn$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/sn$1;->b:Lcom/google/android/gms/internal/zzeg;

    iget-object v3, p0, Lcom/google/android/gms/internal/sn$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/sn$1;->d:Lcom/google/android/gms/internal/ya;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/sg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;I)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$1;->a:Landroid/content/Context;

    const-string/jumbo v1, "banner"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/tn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tn;-><init>()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/sz;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/sn$1;->b:Lcom/google/android/gms/internal/zzeg;

    iget-object v3, p0, Lcom/google/android/gms/internal/sn$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/sn$1;->d:Lcom/google/android/gms/internal/ya;

    const v5, 0x9d2290

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/sz;->createBannerAdManager(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;I)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    .line 0
    return-object v0
.end method
