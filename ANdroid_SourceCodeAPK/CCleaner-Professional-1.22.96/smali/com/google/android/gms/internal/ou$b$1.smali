.class final Lcom/google/android/gms/internal/ou$b$1;
.super Lcom/google/android/gms/internal/ou$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ou$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ou$c",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ou$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ou$b;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ou$b$1;->a:Lcom/google/android/gms/internal/ou$b;

    iget-object v0, p1, Lcom/google/android/gms/internal/ou$b;->a:Lcom/google/android/gms/internal/ou;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ou$c;-><init>(Lcom/google/android/gms/internal/ou;B)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ou$b$1;->a()Lcom/google/android/gms/internal/ou$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ou$d;->f:Ljava/lang/Object;

    return-object v0
.end method
