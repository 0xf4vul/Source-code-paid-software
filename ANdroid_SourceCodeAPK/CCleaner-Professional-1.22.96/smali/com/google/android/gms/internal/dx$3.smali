.class final Lcom/google/android/gms/internal/dx$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/internal/zzauq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/internal/zzauq;

.field final synthetic c:Lcom/google/android/gms/internal/dx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dx;ZLcom/google/android/gms/internal/zzauq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dx$3;->c:Lcom/google/android/gms/internal/dx;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/dx$3;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/dx$3;->b:Lcom/google/android/gms/internal/zzauq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx$3;->c:Lcom/google/android/gms/internal/dx;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/dx;->b:Lcom/google/android/gms/internal/de;

    .line 0
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$3;->c:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->a:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/dx$3;->c:Lcom/google/android/gms/internal/dx;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dx$3;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/internal/de;Lcom/google/android/gms/common/internal/safeparcel/zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$3;->c:Lcom/google/android/gms/internal/dx;

    invoke-static {v0}, Lcom/google/android/gms/internal/dx;->b(Lcom/google/android/gms/internal/dx;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dx$3;->b:Lcom/google/android/gms/internal/zzauq;

    goto :goto_1
.end method
