.class abstract Lcom/google/android/gms/internal/dt;
.super Lcom/google/android/gms/internal/ds;


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dq;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ds;-><init>(Lcom/google/android/gms/internal/dq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->n:Lcom/google/android/gms/internal/dq;

    .line 1000
    iget v1, v0, Lcom/google/android/gms/internal/dq;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/dq;->j:I

    .line 0
    return-void
.end method


# virtual methods
.method final I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dt;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final J()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dt;->I()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final K()V
    .locals 2

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dt;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dt;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dt;->n:Lcom/google/android/gms/internal/dq;

    .line 2000
    iget v1, v0, Lcom/google/android/gms/internal/dq;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/dq;->k:I

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dt;->a:Z

    return-void
.end method

.method protected abstract a()V
.end method
