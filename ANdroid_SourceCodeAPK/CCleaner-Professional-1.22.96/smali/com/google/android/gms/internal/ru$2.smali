.class final Lcom/google/android/gms/internal/ru$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/rj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ru;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ru;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ru;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ru$2;->a:Lcom/google/android/gms/internal/ru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ru$2;->a:Lcom/google/android/gms/internal/ru;

    .line 1000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ru;->a()V

    .line 0
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$2;->a:Lcom/google/android/gms/internal/ru;

    invoke-static {v0}, Lcom/google/android/gms/internal/ru;->a(Lcom/google/android/gms/internal/ru;)V

    goto :goto_0
.end method
