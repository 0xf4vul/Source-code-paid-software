.class public final Lcom/google/android/gms/internal/td;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/abx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/td$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/td$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/td$1;-><init>(Lcom/google/android/gms/internal/td;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/td;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/aaw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/za",
            "<*>;",
            "Lcom/google/android/gms/internal/aaw",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/td;->a(Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/aaw;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/aaw;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/za",
            "<*>;",
            "Lcom/google/android/gms/internal/aaw",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/za;->h:Z

    .line 0
    const-string/jumbo v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/td;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/td$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/td$a;-><init>(Lcom/google/android/gms/internal/td;Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/aaw;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/afg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/za",
            "<*>;",
            "Lcom/google/android/gms/internal/afg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    const-string/jumbo v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    .line 2000
    new-instance v0, Lcom/google/android/gms/internal/aaw;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/aaw;-><init>(Lcom/google/android/gms/internal/afg;)V

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/td;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/td$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/google/android/gms/internal/td$a;-><init>(Lcom/google/android/gms/internal/td;Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/aaw;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
