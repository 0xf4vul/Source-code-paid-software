.class public final Lcom/google/android/gms/internal/ux;
.super Lcom/google/android/gms/internal/vn$a;

# interfaces
.implements Lcom/google/android/gms/internal/vb$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/us;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/support/v4/h/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/uu;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/support/v4/h/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/te;

.field private f:Landroid/view/View;

.field private final g:Ljava/lang/Object;

.field private h:Lcom/google/android/gms/internal/vb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/h/k;Landroid/support/v4/h/k;Lcom/google/android/gms/internal/us;Lcom/google/android/gms/internal/te;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/uu;",
            ">;",
            "Landroid/support/v4/h/k",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/us;",
            "Lcom/google/android/gms/internal/te;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/vn$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ux;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ux;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ux;->c:Landroid/support/v4/h/k;

    iput-object p3, p0, Lcom/google/android/gms/internal/ux;->d:Landroid/support/v4/h/k;

    iput-object p4, p0, Lcom/google/android/gms/internal/ux;->a:Lcom/google/android/gms/internal/us;

    iput-object p5, p0, Lcom/google/android/gms/internal/ux;->e:Lcom/google/android/gms/internal/te;

    iput-object p6, p0, Lcom/google/android/gms/internal/ux;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->d:Landroid/support/v4/h/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->c:Landroid/support/v4/h/k;

    invoke-virtual {v0}, Landroid/support/v4/h/k;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ux;->d:Landroid/support/v4/h/k;

    invoke-virtual {v1}, Landroid/support/v4/h/k;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->c:Landroid/support/v4/h/k;

    invoke-virtual {v0}, Landroid/support/v4/h/k;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->c:Landroid/support/v4/h/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/h/k;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->d:Landroid/support/v4/h/k;

    invoke-virtual {v0}, Landroid/support/v4/h/k;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->d:Landroid/support/v4/h/k;

    invoke-virtual {v0, v2}, Landroid/support/v4/h/k;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/vb;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ux;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ux;->h:Lcom/google/android/gms/internal/vb;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/a/a;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ux;->h:Lcom/google/android/gms/internal/vb;

    if-nez v1, :cond_1

    const-string/jumbo v1, "Attempt to call renderVideoInMediaView before ad initialized."

    invoke-static {v1}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ux;->f:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ux$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ux$1;-><init>(Lcom/google/android/gms/internal/ux;)V

    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ux;->h:Lcom/google/android/gms/internal/vb;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/vb;->a(Landroid/view/View;Lcom/google/android/gms/internal/uy;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/te;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->e:Lcom/google/android/gms/internal/te;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/vf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->c:Landroid/support/v4/h/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vf;

    return-object v0
.end method

.method public final c()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ux;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->h:Lcom/google/android/gms/internal/vb;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Attempt to perform recordImpression before ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->h:Lcom/google/android/gms/internal/vb;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/vb;->a(Landroid/view/View;Ljava/util/Map;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/ux;->g:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->h:Lcom/google/android/gms/internal/vb;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Attempt to call performClick before ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;)V

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->h:Lcom/google/android/gms/internal/vb;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/vb;->a(Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Landroid/view/View;)V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Lcom/google/android/gms/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->h:Lcom/google/android/gms/internal/vb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vb;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ux;->h:Lcom/google/android/gms/internal/vb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ux;->e:Lcom/google/android/gms/internal/te;

    iput-object v0, p0, Lcom/google/android/gms/internal/ux;->f:Landroid/view/View;

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "3"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/us;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->a:Lcom/google/android/gms/internal/us;

    return-object v0
.end method

.method public final o()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ux;->f:Landroid/view/View;

    return-object v0
.end method
