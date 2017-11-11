.class final Lcom/google/android/gms/internal/xh$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aek$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xh;->a(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xh$d;

.field final synthetic b:Lcom/google/android/gms/internal/xh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh;Lcom/google/android/gms/internal/xh$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xh$3;->b:Lcom/google/android/gms/internal/xh;

    iput-object p2, p0, Lcom/google/android/gms/internal/xh$3;->a:Lcom/google/android/gms/internal/xh$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$3;->b:Lcom/google/android/gms/internal/xh;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/xh;->a:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$3;->b:Lcom/google/android/gms/internal/xh;

    .line 2000
    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/xh;->g:I

    .line 0
    const-string/jumbo v0, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$3;->a:Lcom/google/android/gms/internal/xh$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->c()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
