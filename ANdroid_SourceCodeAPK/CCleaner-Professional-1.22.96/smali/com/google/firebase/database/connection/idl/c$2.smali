.class final Lcom/google/firebase/database/connection/idl/c$2;
.super Lcom/google/firebase/database/connection/idl/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/idl/c;->a(Lcom/google/android/gms/internal/if;)Lcom/google/firebase/database/connection/idl/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/if;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/if;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/c$2;->a:Lcom/google/android/gms/internal/if;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/c$2;->a:Lcom/google/android/gms/internal/if;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
