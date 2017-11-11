.class final Lcom/google/android/gms/internal/ade$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ade;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ade;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ade$1;->a:Lcom/google/android/gms/internal/ade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ade$1;->a:Lcom/google/android/gms/internal/ade;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 1000
    iput-object v1, v0, Lcom/google/android/gms/internal/ade;->k:Ljava/lang/Thread;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ade$1;->a:Lcom/google/android/gms/internal/ade;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ade;->a()V

    return-void
.end method
