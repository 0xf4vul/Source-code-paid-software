.class public final Lcom/google/android/gms/internal/kt;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/internal/ki;

.field final b:Lcom/google/android/gms/internal/ki;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/internal/ki;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    iput-object p2, p0, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lm;ZZ)Lcom/google/android/gms/internal/kt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/kt;

    new-instance v1, Lcom/google/android/gms/internal/ki;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/lm;ZZ)V

    iget-object v2, p0, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/kt;-><init>(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/internal/ki;)V

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/internal/ls;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 1000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/lm;ZZ)Lcom/google/android/gms/internal/kt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/kt;

    iget-object v1, p0, Lcom/google/android/gms/internal/kt;->a:Lcom/google/android/gms/internal/ki;

    new-instance v2, Lcom/google/android/gms/internal/ki;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/lm;ZZ)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/kt;-><init>(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/internal/ki;)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ls;
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 4000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ki;->b:Z

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kt;->b:Lcom/google/android/gms/internal/ki;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->a:Lcom/google/android/gms/internal/lm;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
