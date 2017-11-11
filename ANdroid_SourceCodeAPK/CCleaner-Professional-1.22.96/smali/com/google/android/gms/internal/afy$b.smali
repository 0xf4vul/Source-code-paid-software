.class public final Lcom/google/android/gms/internal/afy$b;
.super Lcom/google/android/gms/internal/afy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/afy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/google/android/gms/internal/f$a",
        "<+",
        "Lcom/google/android/gms/common/api/g;",
        "Lcom/google/android/gms/common/api/a$c;",
        ">;>",
        "Lcom/google/android/gms/internal/afy;"
    }
.end annotation


# instance fields
.field protected final b:Lcom/google/android/gms/internal/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/afy;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/afy$b;->b:Lcom/google/android/gms/internal/f$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/afy$b;->b:Lcom/google/android/gms/internal/f$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/f$a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/n;Z)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/afy$b;->b:Lcom/google/android/gms/internal/f$a;

    .line 2000
    iget-object v1, p1, Lcom/google/android/gms/internal/n;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/n$1;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/n$1;-><init>(Lcom/google/android/gms/internal/n;Lcom/google/android/gms/internal/h;)V

    .line 3000
    const/4 v2, 0x1

    const-string/jumbo v3, "Callback cannot be null."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/c;->b(ZLjava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/h;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/h;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/d$a;->a()V

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/x$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/x$a",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/afy$b;->b:Lcom/google/android/gms/internal/f$a;

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/internal/x$a;->a:Lcom/google/android/gms/common/api/a$f;

    .line 0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/f$a;->a(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method
