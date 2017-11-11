.class final Lcom/google/android/gms/internal/hf$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hf;->a(ZLcom/google/android/gms/internal/ij$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/b/c",
        "<",
        "Lcom/google/firebase/auth/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ij$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ij$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hf$2;->a:Lcom/google/android/gms/internal/ij$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/firebase/auth/j;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/hf$2;->a:Lcom/google/android/gms/internal/ij$a;

    .line 2000
    iget-object v1, p1, Lcom/google/firebase/auth/j;->a:Ljava/lang/String;

    .line 1000
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ij$a;->a(Ljava/lang/String;)V

    .line 0
    return-void
.end method
