.class final Lcom/google/android/gms/internal/wv$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/wv$3;->a(Lcom/google/android/gms/internal/ze;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wv$3$1;->a:Lcom/google/android/gms/internal/ze;

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

    iget-object v0, p1, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/zf;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ww;->c:Lcom/google/android/gms/internal/zf;

    iget-object v1, p0, Lcom/google/android/gms/internal/wv$3$1;->a:Lcom/google/android/gms/internal/ze;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zf;->a(Lcom/google/android/gms/internal/ze;)V

    :cond_0
    return-void
.end method
