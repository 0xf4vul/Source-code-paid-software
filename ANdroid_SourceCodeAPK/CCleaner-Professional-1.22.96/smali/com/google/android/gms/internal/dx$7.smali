.class final Lcom/google/android/gms/internal/dx$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/measurement/AppMeasurement$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/AppMeasurement$f;

.field final synthetic b:Lcom/google/android/gms/internal/dx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dx;Lcom/google/android/gms/measurement/AppMeasurement$f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dx$7;->b:Lcom/google/android/gms/internal/dx;

    iput-object p2, p0, Lcom/google/android/gms/internal/dx$7;->a:Lcom/google/android/gms/measurement/AppMeasurement$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx$7;->b:Lcom/google/android/gms/internal/dx;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/dx;->b:Lcom/google/android/gms/internal/de;

    .line 0
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$7;->b:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx$7;->a:Lcom/google/android/gms/measurement/AppMeasurement$f;

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$7;->b:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/de;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dx$7;->b:Lcom/google/android/gms/internal/dx;

    invoke-static {v0}, Lcom/google/android/gms/internal/dx;->b(Lcom/google/android/gms/internal/dx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dx$7;->b:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dx;->u()Lcom/google/android/gms/internal/di;

    move-result-object v1

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dx$7;->a:Lcom/google/android/gms/measurement/AppMeasurement$f;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/AppMeasurement$f;->d:J

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$7;->a:Lcom/google/android/gms/measurement/AppMeasurement$f;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$f;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$7;->a:Lcom/google/android/gms/measurement/AppMeasurement$f;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$f;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$7;->b:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/de;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
