.class public final Lcom/google/android/gms/internal/ki;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/internal/lm;

.field final b:Z

.field final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/lm;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ki;->b:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ki;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/iu;)Z
    .locals 1

    .prologue
    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ki;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/lf;)Z
    .locals 1

    .prologue
    .line 0
    .line 2000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ki;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
