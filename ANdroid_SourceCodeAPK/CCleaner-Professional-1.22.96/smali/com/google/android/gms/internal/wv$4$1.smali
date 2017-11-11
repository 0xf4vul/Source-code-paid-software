.class final Lcom/google/android/gms/internal/wv$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/wv$4;->a(Lcom/google/android/gms/internal/uo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/uo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/uo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wv$4$1;->a:Lcom/google/android/gms/internal/uo;

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

    iget-object v0, p1, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/up;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ww;->d:Lcom/google/android/gms/internal/up;

    iget-object v1, p0, Lcom/google/android/gms/internal/wv$4$1;->a:Lcom/google/android/gms/internal/uo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/up;->a(Lcom/google/android/gms/internal/uo;)V

    :cond_0
    return-void
.end method
