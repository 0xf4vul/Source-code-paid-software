.class final Lcom/google/firebase/database/connection/idl/c$1;
.super Lcom/google/firebase/database/connection/idl/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/connection/idl/c;->a(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/ib;Ljava/lang/Long;Lcom/google/android/gms/internal/if;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ib;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ib;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/c$1;->a:Lcom/google/android/gms/internal/ib;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/c$1;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/c$1;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/firebase/database/connection/idl/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/c$1;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->c()Lcom/google/android/gms/internal/hv;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zza;->a(Lcom/google/android/gms/internal/hv;)Lcom/google/firebase/database/connection/idl/zza;

    move-result-object v0

    return-object v0
.end method
