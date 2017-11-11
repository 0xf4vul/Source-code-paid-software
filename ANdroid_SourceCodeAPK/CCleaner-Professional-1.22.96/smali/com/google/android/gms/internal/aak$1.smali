.class final Lcom/google/android/gms/internal/aak$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aek$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/aek$c",
        "<",
        "Lcom/google/android/gms/internal/zzmk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aar;

.field final synthetic b:Lcom/google/android/gms/internal/aak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aak;Lcom/google/android/gms/internal/aar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aak$1;->b:Lcom/google/android/gms/internal/aak;

    iput-object p2, p0, Lcom/google/android/gms/internal/aak$1;->a:Lcom/google/android/gms/internal/aar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/zzmk;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/aak$1;->b:Lcom/google/android/gms/internal/aak;

    iget-object v1, p0, Lcom/google/android/gms/internal/aak$1;->a:Lcom/google/android/gms/internal/aar;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/aak;->a(Lcom/google/android/gms/internal/aar;Lcom/google/android/gms/internal/zzmk;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aak$1;->b:Lcom/google/android/gms/internal/aak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aak;->d()V

    .line 0
    :cond_0
    return-void
.end method
