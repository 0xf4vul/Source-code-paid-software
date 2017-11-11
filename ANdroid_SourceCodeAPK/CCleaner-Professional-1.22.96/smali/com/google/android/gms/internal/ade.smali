.class public abstract Lcom/google/android/gms/internal/ade;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/adl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/adl",
        "<",
        "Ljava/util/concurrent/Future;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Z

.field volatile k:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ade$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ade$1;-><init>(Lcom/google/android/gms/internal/ade;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ade;->a:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ade;->b:Z

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ade$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ade$1;-><init>(Lcom/google/android/gms/internal/ade;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ade;->a:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ade;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ade;->g_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ade;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ade;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 0
    .line 1000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ade;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ade;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/adi;->a(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/aeh;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ade;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/adi;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/aeh;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract g_()V
.end method
