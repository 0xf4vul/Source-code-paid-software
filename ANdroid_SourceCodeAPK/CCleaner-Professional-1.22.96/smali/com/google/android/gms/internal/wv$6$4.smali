.class final Lcom/google/android/gms/internal/wv$6$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/wv$6;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ww;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ww;->f:Lcom/google/android/gms/internal/abt;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ww;->f:Lcom/google/android/gms/internal/abt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/abt;->d()V

    :cond_0
    return-void
.end method
