.class final Lcom/google/android/gms/internal/aca$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aca;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/yb;

.field final synthetic b:Lcom/google/android/gms/internal/zzec;

.field final synthetic c:Lcom/google/android/gms/internal/ace;

.field final synthetic d:Lcom/google/android/gms/internal/aca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aca;Lcom/google/android/gms/internal/yb;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/ace;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aca$2;->d:Lcom/google/android/gms/internal/aca;

    iput-object p2, p0, Lcom/google/android/gms/internal/aca$2;->a:Lcom/google/android/gms/internal/yb;

    iput-object p3, p0, Lcom/google/android/gms/internal/aca$2;->b:Lcom/google/android/gms/internal/zzec;

    iput-object p4, p0, Lcom/google/android/gms/internal/aca$2;->c:Lcom/google/android/gms/internal/ace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aca$2;->a:Lcom/google/android/gms/internal/yb;

    iget-object v1, p0, Lcom/google/android/gms/internal/aca$2;->d:Lcom/google/android/gms/internal/aca;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/internal/aca;->a:Landroid/content/Context;

    .line 0
    invoke-static {v1}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/aca$2;->b:Lcom/google/android/gms/internal/zzec;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/aca$2;->c:Lcom/google/android/gms/internal/ace;

    iget-object v5, p0, Lcom/google/android/gms/internal/aca$2;->d:Lcom/google/android/gms/internal/aca;

    .line 2000
    iget-object v5, v5, Lcom/google/android/gms/internal/aca;->c:Ljava/lang/String;

    .line 0
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzec;Ljava/lang/String;Lcom/google/android/gms/internal/aci;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "Fail to initialize adapter "

    iget-object v0, p0, Lcom/google/android/gms/internal/aca$2;->d:Lcom/google/android/gms/internal/aca;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/aca;->b:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/adf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aca$2;->d:Lcom/google/android/gms/internal/aca;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aca;->a(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
