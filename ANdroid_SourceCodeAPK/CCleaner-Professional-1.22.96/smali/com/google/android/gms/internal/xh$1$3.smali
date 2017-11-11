.class final Lcom/google/android/gms/internal/xh$1$3;
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

.field final synthetic b:Lcom/google/android/gms/internal/adw;

.field final synthetic c:Lcom/google/android/gms/internal/xh$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh$1;Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/adw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xh$1$3;->c:Lcom/google/android/gms/internal/xh$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/xh$1$3;->a:Lcom/google/android/gms/internal/xe;

    iput-object p3, p0, Lcom/google/android/gms/internal/xh$1$3;->b:Lcom/google/android/gms/internal/adw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 4
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
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$3;->c:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/xh;->a:Ljava/lang/Object;

    .line 0
    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$3;->c:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 2000
    iget v0, v0, Lcom/google/android/gms/internal/xh;->g:I

    .line 0
    if-nez v0, :cond_0

    const-string/jumbo v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$3;->c:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    .line 3000
    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/xh;->g:I

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$3;->c:Lcom/google/android/gms/internal/xh$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/xh$1;->c:Lcom/google/android/gms/internal/xh;

    iget-object v2, p0, Lcom/google/android/gms/internal/xh$1$3;->c:Lcom/google/android/gms/internal/xh$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/xh$1;->a:Lcom/google/android/gms/internal/ej;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/xh;->a(Lcom/google/android/gms/internal/ej;)Lcom/google/android/gms/internal/xh$d;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/xh$1$3;->a:Lcom/google/android/gms/internal/xe;

    const-string/jumbo v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$1$3;->b:Lcom/google/android/gms/internal/adw;

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/internal/adw;->a:Ljava/lang/Object;

    .line 0
    check-cast v0, Lcom/google/android/gms/internal/wb;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/xe;->b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
