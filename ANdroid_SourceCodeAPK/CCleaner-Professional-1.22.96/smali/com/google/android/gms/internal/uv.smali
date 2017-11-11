.class public final Lcom/google/android/gms/internal/uv;
.super Lcom/google/android/gms/internal/vj$a;

# interfaces
.implements Lcom/google/android/gms/internal/vb$b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/uu;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/vf;

.field private e:Ljava/lang/String;

.field private f:D

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/internal/us;

.field private j:Landroid/os/Bundle;

.field private k:Lcom/google/android/gms/internal/te;

.field private l:Landroid/view/View;

.field private m:Ljava/lang/Object;

.field private n:Lcom/google/android/gms/internal/vb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/vf;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/us;Landroid/os/Bundle;Lcom/google/android/gms/internal/te;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/vj$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/uv;->m:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/uv;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/uv;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/uv;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/uv;->d:Lcom/google/android/gms/internal/vf;

    iput-object p5, p0, Lcom/google/android/gms/internal/uv;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/uv;->f:D

    iput-object p8, p0, Lcom/google/android/gms/internal/uv;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/uv;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/uv;->i:Lcom/google/android/gms/internal/us;

    iput-object p11, p0, Lcom/google/android/gms/internal/uv;->j:Landroid/os/Bundle;

    iput-object p12, p0, Lcom/google/android/gms/internal/uv;->k:Lcom/google/android/gms/internal/te;

    iput-object p13, p0, Lcom/google/android/gms/internal/uv;->l:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/vb;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/uv;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/uv;->n:Lcom/google/android/gms/internal/vb;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/vf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->d:Lcom/google/android/gms/internal/vf;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/uv;->f:D

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/te;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->k:Lcom/google/android/gms/internal/te;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->n:Lcom/google/android/gms/internal/vb;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/us;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->i:Lcom/google/android/gms/internal/us;

    return-object v0
.end method

.method public final n()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public final o()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uv;->l:Landroid/view/View;

    return-object v0
.end method

.method public final p()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->b:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->d:Lcom/google/android/gms/internal/vf;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/uv;->f:D

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->i:Lcom/google/android/gms/internal/us;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->j:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->m:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->n:Lcom/google/android/gms/internal/vb;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->k:Lcom/google/android/gms/internal/te;

    iput-object v2, p0, Lcom/google/android/gms/internal/uv;->l:Landroid/view/View;

    return-void
.end method
