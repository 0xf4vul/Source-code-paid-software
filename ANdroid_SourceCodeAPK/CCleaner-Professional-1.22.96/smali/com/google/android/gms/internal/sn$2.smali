.class public final Lcom/google/android/gms/internal/sn$2;
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

.field final synthetic d:Lcom/google/android/gms/internal/sn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/sn;Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sn$2;->d:Lcom/google/android/gms/internal/sn;

    iput-object p2, p0, Lcom/google/android/gms/internal/sn$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/sn$2;->b:Lcom/google/android/gms/internal/zzeg;

    iput-object p4, p0, Lcom/google/android/gms/internal/sn$2;->c:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$2;->d:Lcom/google/android/gms/internal/sn;

    invoke-static {v0}, Lcom/google/android/gms/internal/sn;->b(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/sg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sn$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/sn$2;->b:Lcom/google/android/gms/internal/zzeg;

    iget-object v3, p0, Lcom/google/android/gms/internal/sn$2;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/sg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/ya;I)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$2;->a:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/tn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tn;-><init>()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/sz;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/sn$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sn$2;->b:Lcom/google/android/gms/internal/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/internal/sn$2;->c:Ljava/lang/String;

    const v3, 0x9d2290

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/sz;->createSearchAdManager(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;I)Lcom/google/android/gms/internal/sw;

    move-result-object v0

    .line 0
    return-object v0
.end method
