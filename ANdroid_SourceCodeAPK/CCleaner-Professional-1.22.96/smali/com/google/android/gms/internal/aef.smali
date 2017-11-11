.class public final Lcom/google/android/gms/internal/aef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aeh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/aeh",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/aei;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aef;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/aei;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aei;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aef;->b:Lcom/google/android/gms/internal/aei;

    iget-object v0, p0, Lcom/google/android/gms/internal/aef;->b:Lcom/google/android/gms/internal/aei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aei;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aef;->b:Lcom/google/android/gms/internal/aei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aei;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aef;->b:Lcom/google/android/gms/internal/aei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aei;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final cancel(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/aef;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/aef;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
