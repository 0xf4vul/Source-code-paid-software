.class final Lcom/google/android/gms/internal/ih$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/android/gms/internal/ih;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ih;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ih$1;->b:Lcom/google/android/gms/internal/ih;

    iput-object p2, p0, Lcom/google/android/gms/internal/ih$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ih$1;->b:Lcom/google/android/gms/internal/ih;

    .line 1000
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ih;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ih$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
