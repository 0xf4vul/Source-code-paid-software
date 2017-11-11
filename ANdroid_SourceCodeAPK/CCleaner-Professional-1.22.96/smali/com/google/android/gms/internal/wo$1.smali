.class final Lcom/google/android/gms/internal/wo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/wo;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/wo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wo$1;->a:Lcom/google/android/gms/internal/wo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->B()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/wo$1;->a:Lcom/google/android/gms/internal/wo;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/wp;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 0
    return-void
.end method
