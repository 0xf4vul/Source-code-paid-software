.class final Lcom/google/android/gms/internal/dx$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dx;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dx$6;->a:Lcom/google/android/gms/internal/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx$6;->a:Lcom/google/android/gms/internal/dx;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/dx;->b:Lcom/google/android/gms/internal/de;

    .line 0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$6;->a:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Discarding data. Failed to send app launch"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dx$6;->a:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dx;->i()Lcom/google/android/gms/internal/df;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/dx$6;->a:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/dx;->u()Lcom/google/android/gms/internal/di;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/di;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/df;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzatd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/zzatd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dx$6;->a:Lcom/google/android/gms/internal/dx;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/internal/de;Lcom/google/android/gms/common/internal/safeparcel/zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$6;->a:Lcom/google/android/gms/internal/dx;

    invoke-static {v0}, Lcom/google/android/gms/internal/dx;->b(Lcom/google/android/gms/internal/dx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dx$6;->a:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dx;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Failed to send app launch to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
