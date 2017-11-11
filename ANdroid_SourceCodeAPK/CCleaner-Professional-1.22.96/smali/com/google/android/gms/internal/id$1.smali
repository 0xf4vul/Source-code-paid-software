.class final Lcom/google/android/gms/internal/id$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/id;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/internal/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/id;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/id$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    const-string/jumbo v3, "Trying to fetch auth token"

    new-array v4, v2, [Ljava/lang/Object;

    .line 1000
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->b(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/id$b;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/id$b;->a:Lcom/google/android/gms/internal/id$b;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Not in disconnected state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v4}, Lcom/google/android/gms/internal/id;->b(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/id$b;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    sget-object v1, Lcom/google/android/gms/internal/id$b;->b:Lcom/google/android/gms/internal/id$b;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/id$b;)Lcom/google/android/gms/internal/id$b;

    iget-object v0, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->c(Lcom/google/android/gms/internal/id;)J

    iget-object v0, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/id;->d(Lcom/google/android/gms/internal/id;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/id$1;->b:Lcom/google/android/gms/internal/id;

    invoke-static {v2}, Lcom/google/android/gms/internal/id;->f(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/hx;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/id$1;->a:Z

    new-instance v4, Lcom/google/android/gms/internal/id$1$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/gms/internal/id$1$1;-><init>(Lcom/google/android/gms/internal/id$1;J)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/hx;->a(ZLcom/google/android/gms/internal/hx$a;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
