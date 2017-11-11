.class final Lcom/google/android/gms/internal/kb$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ke$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kb;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ke$a;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ke$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ke$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kb$3;->a:Lcom/google/android/gms/internal/ke$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 0
    check-cast p2, Ljava/lang/Boolean;

    .line 1000
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kb$3;->a:Lcom/google/android/gms/internal/ke$a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/gms/internal/ke$a;->a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    return-object p3
.end method
