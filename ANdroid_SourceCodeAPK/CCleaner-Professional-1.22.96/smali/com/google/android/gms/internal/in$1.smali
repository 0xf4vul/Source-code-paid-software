.class final Lcom/google/android/gms/internal/in$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/in;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ij;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/in$1;->a:Lcom/google/android/gms/internal/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/google/android/gms/internal/hx$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/in$1;->a:Lcom/google/android/gms/internal/ij;

    new-instance v1, Lcom/google/android/gms/internal/in$1$1;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/in$1$1;-><init>(Lcom/google/android/gms/internal/hx$a;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ij;->a(ZLcom/google/android/gms/internal/ij$a;)V

    return-void
.end method
