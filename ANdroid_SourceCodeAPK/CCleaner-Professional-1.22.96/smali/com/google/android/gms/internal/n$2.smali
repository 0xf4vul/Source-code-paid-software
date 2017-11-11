.class final Lcom/google/android/gms/internal/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/b/a",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/f;

.field final synthetic b:Lcom/google/android/gms/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/n;Lcom/google/android/gms/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/n$2;->b:Lcom/google/android/gms/internal/n;

    iput-object p2, p0, Lcom/google/android/gms/internal/n$2;->a:Lcom/google/android/gms/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/b/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/e",
            "<TTResult;>;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/n$2;->b:Lcom/google/android/gms/internal/n;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/n;->b:Ljava/util/Map;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/n$2;->a:Lcom/google/android/gms/b/f;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
