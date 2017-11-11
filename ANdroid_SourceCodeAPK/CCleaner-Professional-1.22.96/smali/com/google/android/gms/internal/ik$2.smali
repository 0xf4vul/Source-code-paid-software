.class final Lcom/google/android/gms/internal/ik$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ke$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ik;->d()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ke$a",
        "<",
        "Lcom/google/android/gms/internal/ls;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ik$2;->a:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ik$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 0
    check-cast p2, Lcom/google/android/gms/internal/ls;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/ik$2;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iu;->b()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ik$2;->b:Z

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ls;->a(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 0
    return-object v0
.end method
