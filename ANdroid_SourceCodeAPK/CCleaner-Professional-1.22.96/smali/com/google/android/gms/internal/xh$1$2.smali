.class final Lcom/google/android/gms/internal/xh$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xh$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xe;

.field final synthetic b:Lcom/google/android/gms/internal/xh$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh$1;Lcom/google/android/gms/internal/xe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xh$1$2;->b:Lcom/google/android/gms/internal/xh$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/xh$1$2;->a:Lcom/google/android/gms/internal/xe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$2;->b:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/xh;->a:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$2;->b:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->b:Lcom/google/android/gms/internal/xh$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->b()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$2;->b:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->b:Lcom/google/android/gms/internal/xh$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$2;->b:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 2000
    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/gms/internal/xh;->g:I

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$2;->b:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/xh;->e:Lcom/google/android/gms/internal/ado;

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/xh$1$2;->a:Lcom/google/android/gms/internal/xe;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ado;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$2;->b:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->b:Lcom/google/android/gms/internal/xh$d;

    iget-object v2, p0, Lcom/google/android/gms/internal/xh$1$2;->a:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/xh$d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$2;->b:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    iget-object v2, p0, Lcom/google/android/gms/internal/xh$1$2;->b:Lcom/google/android/gms/internal/xh$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/xh$1;->b:Lcom/google/android/gms/internal/xh$d;

    .line 4000
    iput-object v2, v0, Lcom/google/android/gms/internal/xh;->f:Lcom/google/android/gms/internal/xh$d;

    .line 0
    const-string/jumbo v0, "Successfully loaded JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
