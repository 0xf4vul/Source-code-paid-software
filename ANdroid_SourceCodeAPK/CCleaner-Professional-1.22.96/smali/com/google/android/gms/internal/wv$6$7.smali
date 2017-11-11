.class final Lcom/google/android/gms/internal/wv$6$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/wv$6;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/wv$6$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ww;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ww;->f:Lcom/google/android/gms/internal/abt;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ww;->f:Lcom/google/android/gms/internal/abt;

    iget v1, p0, Lcom/google/android/gms/internal/wv$6$7;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/abt;->a(I)V

    :cond_0
    return-void
.end method
