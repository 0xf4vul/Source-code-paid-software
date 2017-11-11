.class final Lcom/google/android/gms/internal/xh$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aek$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/xh$d;->m_()Lcom/google/android/gms/internal/xh$c;
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
        "Lcom/google/android/gms/internal/xe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xh$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xh$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xh$d$1;->a:Lcom/google/android/gms/internal/xh$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/xe;

    .line 1000
    const-string/jumbo v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$d$1;->a:Lcom/google/android/gms/internal/xh$c;

    invoke-interface {p1}, Lcom/google/android/gms/internal/xe;->b()Lcom/google/android/gms/internal/xj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xh$c;->a(Ljava/lang/Object;)V

    .line 0
    return-void
.end method
