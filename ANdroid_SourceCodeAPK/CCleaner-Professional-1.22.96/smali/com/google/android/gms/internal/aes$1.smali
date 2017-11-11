.class final Lcom/google/android/gms/internal/aes$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aes;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/aes;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aes;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aes$1;->a:Lcom/google/android/gms/internal/aes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aes$1;->a:Lcom/google/android/gms/internal/aes;

    iget-object v0, v0, Lcom/google/android/gms/internal/aes;->l:Lcom/google/android/gms/internal/acn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aes$1;->a:Lcom/google/android/gms/internal/aes;

    iget-object v0, v0, Lcom/google/android/gms/internal/aes;->l:Lcom/google/android/gms/internal/acn;

    iget-object v0, p0, Lcom/google/android/gms/internal/aes$1;->a:Lcom/google/android/gms/internal/aes;

    iget-object v0, v0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    :cond_0
    return-void
.end method
