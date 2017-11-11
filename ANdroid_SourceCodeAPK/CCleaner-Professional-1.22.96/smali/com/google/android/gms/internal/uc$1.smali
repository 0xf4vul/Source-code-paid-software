.class final Lcom/google/android/gms/internal/uc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ty;

.field final synthetic b:Lcom/google/android/gms/internal/uc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/uc;Lcom/google/android/gms/internal/ty;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/uc$1;->b:Lcom/google/android/gms/internal/uc;

    iput-object p2, p0, Lcom/google/android/gms/internal/uc$1;->a:Lcom/google/android/gms/internal/ty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/uc$1;->a:Lcom/google/android/gms/internal/ty;

    iget-object v1, p0, Lcom/google/android/gms/internal/uc$1;->b:Lcom/google/android/gms/internal/uc;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/internal/uc;->d:Landroid/content/SharedPreferences;

    .line 0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ty;->a(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
