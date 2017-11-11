.class final Lcom/google/android/gms/internal/hh$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hh;->a(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/hy;Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/internal/ic$a;)Lcom/google/android/gms/internal/ic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ic;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hh$2;->a:Lcom/google/android/gms/internal/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hh$2;->a:Lcom/google/android/gms/internal/ic;

    const-string/jumbo v1, "app_in_background"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ic;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hh$2;->a:Lcom/google/android/gms/internal/ic;

    const-string/jumbo v1, "app_in_background"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ic;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
