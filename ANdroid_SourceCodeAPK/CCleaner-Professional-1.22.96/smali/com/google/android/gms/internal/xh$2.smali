.class final Lcom/google/android/gms/internal/xh$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aek$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xh;->a(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/aek$c",
        "<",
        "Lcom/google/android/gms/internal/xe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xh$d;

.field final synthetic b:Lcom/google/android/gms/internal/xh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/xh$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xh$2;->b:Lcom/google/android/gms/internal/xh;

    iput-object p2, p0, Lcom/google/android/gms/internal/xh$2;->a:Lcom/google/android/gms/internal/xh$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$2;->b:Lcom/google/android/gms/internal/xh;

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/xh;->a:Ljava/lang/Object;

    .line 1000
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$2;->b:Lcom/google/android/gms/internal/xh;

    .line 3000
    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/gms/internal/xh;->g:I

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$2;->b:Lcom/google/android/gms/internal/xh;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    .line 1000
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$2;->a:Lcom/google/android/gms/internal/xh$d;

    iget-object v2, p0, Lcom/google/android/gms/internal/xh$2;->b:Lcom/google/android/gms/internal/xh;

    .line 5000
    iget-object v2, v2, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    .line 1000
    if-eq v0, v2, :cond_0

    const-string/jumbo v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$2;->b:Lcom/google/android/gms/internal/xh;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$2;->b:Lcom/google/android/gms/internal/xh;

    iget-object v2, p0, Lcom/google/android/gms/internal/xh$2;->a:Lcom/google/android/gms/internal/xh$d;

    .line 7000
    iput-object v2, v0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    .line 1000
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
