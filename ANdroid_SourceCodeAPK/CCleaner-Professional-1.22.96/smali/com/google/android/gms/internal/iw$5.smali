.class final Lcom/google/android/gms/internal/iw$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kg$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iw;->a(Ljava/util/List;Lcom/google/android/gms/internal/kg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/kg$b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/iw$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/gms/internal/iw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$5;->b:Lcom/google/android/gms/internal/iw;

    iput-object p2, p0, Lcom/google/android/gms/internal/iw$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/kg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$5;->b:Lcom/google/android/gms/internal/iw;

    iget-object v1, p0, Lcom/google/android/gms/internal/iw$5;->a:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;Ljava/util/List;Lcom/google/android/gms/internal/kg;)V

    return-void
.end method
