.class final Lcom/google/android/gms/internal/ik$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ke$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)Lcom/google/android/gms/internal/ik;
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
        "Lcom/google/android/gms/internal/ik;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ik$1;->a:Lcom/google/android/gms/internal/iu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    check-cast p2, Lcom/google/android/gms/internal/ls;

    check-cast p3, Lcom/google/android/gms/internal/ik;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/ik$1;->a:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/google/android/gms/internal/ik;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ik;

    move-result-object v0

    .line 0
    return-object v0
.end method
