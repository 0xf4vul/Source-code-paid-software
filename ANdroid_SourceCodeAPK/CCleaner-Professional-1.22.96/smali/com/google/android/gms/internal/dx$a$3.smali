.class final Lcom/google/android/gms/internal/dx$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dx$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/de;

.field final synthetic b:Lcom/google/android/gms/internal/dx$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dx$a;Lcom/google/android/gms/internal/de;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dx$a$3;->b:Lcom/google/android/gms/internal/dx$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/dx$a$3;->a:Lcom/google/android/gms/internal/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/dx$a$3;->b:Lcom/google/android/gms/internal/dx$a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dx$a$3;->b:Lcom/google/android/gms/internal/dx$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/dx$a;->a(Lcom/google/android/gms/internal/dx$a;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$a$3;->b:Lcom/google/android/gms/internal/dx$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$a$3;->b:Lcom/google/android/gms/internal/dx$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dx;->u()Lcom/google/android/gms/internal/di;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/di;->f:Lcom/google/android/gms/internal/di$a;

    .line 0
    const-string/jumbo v2, "Connected to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/di$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dx$a$3;->b:Lcom/google/android/gms/internal/dx$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/dx$a;->c:Lcom/google/android/gms/internal/dx;

    iget-object v2, p0, Lcom/google/android/gms/internal/dx$a$3;->a:Lcom/google/android/gms/internal/de;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/internal/de;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
