.class final Lcom/google/android/gms/internal/zz$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zz$2;->a:Lcom/google/android/gms/internal/zz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zz$2;->a:Lcom/google/android/gms/internal/zz;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zz;->e:Lcom/google/android/gms/ads/internal/r;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/r;->J()V

    return-void
.end method
