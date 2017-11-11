.class final Lcom/google/android/gms/internal/r$d$1;
.super Lcom/google/android/gms/internal/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/r$d;->a(Lcom/google/android/gms/internal/zzbaw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/r;

.field final synthetic b:Lcom/google/android/gms/internal/zzbaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/r;Lcom/google/android/gms/internal/zzbaw;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/r$d$1;->a:Lcom/google/android/gms/internal/r;

    iput-object p3, p0, Lcom/google/android/gms/internal/r$d$1;->b:Lcom/google/android/gms/internal/zzbaw;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/v$a;-><init>(Lcom/google/android/gms/internal/u;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/r$d$1;->a:Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/internal/r$d$1;->b:Lcom/google/android/gms/internal/zzbaw;

    .line 2000
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/r;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3000
    iget-object v2, v1, Lcom/google/android/gms/internal/zzbaw;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzbaw;->c:Lcom/google/android/gms/common/internal/zzaf;

    .line 5000
    iget-object v2, v1, Lcom/google/android/gms/common/internal/zzaf;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v1, "GoogleApiClientConnecting"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/r;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/r;->g:Z

    .line 6000
    iget-object v2, v1, Lcom/google/android/gms/common/internal/zzaf;->b:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/y$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/y;

    move-result-object v2

    .line 2000
    iput-object v2, v0, Lcom/google/android/gms/internal/r;->h:Lcom/google/android/gms/common/internal/y;

    .line 7000
    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/zzaf;->d:Z

    .line 2000
    iput-boolean v2, v0, Lcom/google/android/gms/internal/r;->i:Z

    .line 8000
    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/zzaf;->e:Z

    .line 2000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/r;->j:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/r;->e()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/r;->f()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/r;->e()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/r;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
