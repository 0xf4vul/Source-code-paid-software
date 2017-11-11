.class public final Lcom/google/android/gms/internal/xh$e;
.super Lcom/google/android/gms/internal/ael;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/xh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ael",
        "<",
        "Lcom/google/android/gms/internal/xi;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/xh$c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/xh$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ael;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/xh$e;->a:Lcom/google/android/gms/internal/xh$c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$e;->a:Lcom/google/android/gms/internal/xh$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$c;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/aek$c",
            "<",
            "Lcom/google/android/gms/internal/xi;",
            ">;",
            "Lcom/google/android/gms/internal/aek$a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$e;->a:Lcom/google/android/gms/internal/xh$c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/xh$c;->a(Lcom/google/android/gms/internal/aek$c;Lcom/google/android/gms/internal/aek$a;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/xi;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/xh$e;->a:Lcom/google/android/gms/internal/xh$c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/xh$c;->a(Ljava/lang/Object;)V

    .line 0
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$e;->a:Lcom/google/android/gms/internal/xh$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$c;->b()I

    move-result v0

    return v0
.end method

.method public final finalize()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xh$e;->a:Lcom/google/android/gms/internal/xh$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xh$c;->l_()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/xh$e;->a:Lcom/google/android/gms/internal/xh$c;

    return-void
.end method
