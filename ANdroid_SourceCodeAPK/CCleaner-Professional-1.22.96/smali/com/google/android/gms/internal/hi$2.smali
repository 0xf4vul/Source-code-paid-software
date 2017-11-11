.class final Lcom/google/android/gms/internal/hi$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ke$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/kb;Ljava/util/List;)V
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
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ke;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/google/android/gms/internal/iu;

.field final synthetic d:Lcom/google/android/gms/internal/ls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ke;Ljava/util/List;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hi$2;->a:Lcom/google/android/gms/internal/ke;

    iput-object p2, p0, Lcom/google/android/gms/internal/hi$2;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/hi$2;->c:Lcom/google/android/gms/internal/iu;

    iput-object p4, p0, Lcom/google/android/gms/internal/hi$2;->d:Lcom/google/android/gms/internal/ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$2;->a:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hi$2;->b:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/ms;

    iget-object v2, p0, Lcom/google/android/gms/internal/hi$2;->c:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/hi$2;->d:Lcom/google/android/gms/internal/ls;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ms;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 0
    return-object v0
.end method
