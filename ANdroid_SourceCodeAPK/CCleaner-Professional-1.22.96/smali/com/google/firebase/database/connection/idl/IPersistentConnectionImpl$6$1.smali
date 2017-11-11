.class final Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6$1;
.super Lcom/google/firebase/database/connection/idl/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6;->a(ZLcom/google/android/gms/internal/hx$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hx$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hx$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6$1;->a:Lcom/google/android/gms/internal/hx$a;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6$1;->a:Lcom/google/android/gms/internal/hx$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hx$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl$6$1;->a:Lcom/google/android/gms/internal/hx$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hx$a;->b(Ljava/lang/String;)V

    return-void
.end method
