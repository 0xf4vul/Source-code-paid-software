.class final Lcom/google/android/gms/internal/iw$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/iw;->b(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/kg$a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/iw$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/internal/iw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iw;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/iw$6;->b:Lcom/google/android/gms/internal/iw;

    const/16 v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/iw$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/kg;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/iw$a;",
            ">;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/iw$6;->b:Lcom/google/android/gms/internal/iw;

    iget v1, p0, Lcom/google/android/gms/internal/iw$6;->a:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/iw;->a(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/kg;I)V

    const/4 v0, 0x0

    return v0
.end method
