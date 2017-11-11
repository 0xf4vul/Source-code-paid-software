.class final Lcom/google/android/gms/internal/xh$c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aek$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xh$c;->l_()V
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
        "Lcom/google/android/gms/internal/xi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xh$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xh$c$2;->a:Lcom/google/android/gms/internal/xh$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 0
    .line 1000
    const-string/jumbo v0, "Releasing engine reference."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$c$2;->a:Lcom/google/android/gms/internal/xh$c;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/xh$c;->a:Lcom/google/android/gms/internal/xh$d;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$d;->n_()V

    .line 0
    return-void
.end method
