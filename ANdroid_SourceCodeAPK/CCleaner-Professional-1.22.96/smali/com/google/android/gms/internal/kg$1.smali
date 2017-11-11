.class final Lcom/google/android/gms/internal/kg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kg$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/kg$b;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/kg$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/kg$b;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kg$b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kg$1;->a:Lcom/google/android/gms/internal/kg$b;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/kg$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/kg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kg",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kg$1;->a:Lcom/google/android/gms/internal/kg$b;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/kg$1;->b:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/kg;->a(Lcom/google/android/gms/internal/kg$b;ZZ)V

    return-void
.end method
